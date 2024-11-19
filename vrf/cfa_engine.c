/*
 * cfa_engine.c
 *
 *  Created on: Aug 25, 2022
 *      Author: aj4775
 */

#ifndef __cfa_engine
#define __cfa_engine

#include "cfa_engine.h"
#include <string.h>
#include "usart.h"
#include "serial_messages.h"
#include "uECC.h"
#include "Hacl_SHA2_256.h"
#include "stm32l5xx_hal.h"
#include "test_application.h"
/*
    ---------------------------------------------------------------------------------
	----------------------------- FUNCTION DEFINITIONS ------------------------------
	---------------------------------------------------------------------------------
*/

// Public
void CFA_ENGINE_new_log_entry(uint32_t value);
void CFA_ENGINE_run_attestation();
void CFA_ENGINE_initialize(); // Initial setup of attestation variables
void CFA_ENGINE_register_callback(); // Register the function to be attested
void CFA_ENGINE_wait_request();

// Private
void _generate_partial_report(); // emptya
void _full_report_routine(); // empty
void _INTERRUPT_cfa_engine_timeout(); // empty
void _generate_final_report(); // empty
void _send_final_report_to_vrf(); // empty
void _send_partial_report_to_vrf(); // empty
void _software_reset();
void _run_application();
void _calculate_log_hash();
void _recalculate_log_table();
void _clean();
void _send_report();
void _read_serial_loop();
void _heal_function();
void _attest_memory();
void _sign_report();
void _send_report_message();
void _receive_request(int size,uint8_t *read_char);
uint8_t _receive_challenge();
uint8_t _authenticate();
void update_flash();
/*
    ---------------------------------------------------------------------------------
	----------------------------- LOCAL DEFS  ---------------------------------------
	---------------------------------------------------------------------------------
*/

#define RUN_APP_CALLBACK() cfa_engine_conf.iac.app_start_address()
#define SIZEOF_MESSAGE_FACTOR (sizeof(unsigned int)/sizeof(char))

/*
    ---------------------------------------------------------------------------------
	----------------------------- GLOBAL VARIABLES ----------------------------------
	---------------------------------------------------------------------------------
*/


CFA_ENGINE_CONFIG cfa_engine_conf;
CFA_REPORT report_secure;
VRF_RESPONSE vrf_resp;

#if CFLOG_TYPE == CFLOG_FLASH
FLASH_EraseInitTypeDef EraseInitStruct;
uint32_t FLASH_CFLog[MAX_CF_LOG_SIZE] __attribute__((section(".cfa_data")));  //
#endif

extern void *pAttestationFunctionCallback;



uint8_t private_key[32] = {0x89, 0x8b, 0xc, 0xde, 0xab, 0xb5, 0x86, 0x97,
						 0x3c, 0x0d, 0xa9, 0x15, 0x8e, 0x01, 0x84, 0xe7,
						 0x43, 0xf7, 0x7c, 0x35, 0xb9, 0xc2, 0xb8, 0xf7,
						 0x93, 0x62, 0x92, 0x87, 0xca, 0x59, 0x8b, 0xb2};

uint8_t public_key[SIGNATURE_SIZE_BYTES] = {0x74, 0x2f, 0xbe, 0xaf, 0x4f, 0xf4, 0x1d, 0x27,
										  0x48, 0xad, 0x4e, 0x23, 0x84, 0x79, 0xa4, 0x42,
										  0x68, 0x8b, 0xe6, 0x18, 0x98, 0x45, 0x99, 0xf1,
										  0x10, 0x3, 0x4e, 0xf6, 0x5e, 0xe1, 0x1e, 0x4f,
										  0x49, 0xd0, 0x8e, 0xe0, 0x53, 0xa0, 0xe2, 0x7d,
										  0xb5, 0x9, 0xf1, 0xfd, 0x2e, 0xa5, 0x63, 0x70,
										  0xc0, 0x5e, 0x20, 0x31, 0xc5, 0xc0, 0xcb, 0x4b,
										  0x1, 0x75, 0xd7, 0x38, 0xeb, 0x2b, 0x44, 0x1b};


uint8_t report_hash[HASH_SIZE_BYTES]; //internal for signature
uint8_t ecdsa_signature[SIGNATURE_SIZE_BYTES];
uint8_t response_hash[HASH_SIZE_BYTES]; // internal for vrf_signature
const struct uECC_Curve_t * curve;

uint32_t ticks_sign_report;
uint32_t recv_verify_response_time;
uint32_t app_exec_time;

uint8_t logged_first = 0;

/*
    ---------------------------------------------------------------------------------
	----------------------------- SUPERVISOR  --------------------------------------------
	---------------------------------------------------------------------------------
*/

//-------------------------- UTILS -------//
void _setup_data(){
	for(unsigned int i = 0; i < CHAL_SIZE; ++i ){
		cfa_engine_conf.hash_key[i] = i;
		cfa_engine_conf.challenge[i] = 0x65+i;
	}
}

void _update_challenge(uint8_t* chl){
	memcpy(cfa_engine_conf.challenge,chl, CHAL_SIZE);
	memcpy(vrf_resp.new_challenge,chl, CHAL_SIZE);
	cfa_engine_conf.challenge_renewed = TRUE;
}

void _clean(){
	report_secure.number_of_logs_sent = 0;
	cfa_engine_conf.initialized = INITIALIZED;
	cfa_engine_conf.attestation_status = INACTIVE;
	report_secure.num_CF_Log_size = 0;
	cfa_engine_conf.challenge_renewed = FALSE;
	report_secure.isFinal = FALSE;
	#if CFLOG_TYPE == CFLOG_RAM
	for(int i=0; i<MAX_CF_LOG_SIZE; i++) report_secure.CFLog[i] = 0;
	#endif
}

void _run_application(){
	//start app
	if (cfa_engine_conf.iac.app_start_address != NULL){
		cfa_engine_conf.iac.app_start_address();
	}
	return;
}

uint32_t output_data = 0;
void record_output_data(uint32_t value){
	output_data = value;
}

#if CFLOG_TYPE == CFLOG_FLASH
void update_flash(uint32_t addr, uint64_t data){
	uint32_t page_err;
	EraseInitStruct.TypeErase = FLASH_TYPEERASE_PAGES;
	EraseInitStruct.NbPages = 1;
	HAL_FLASH_Unlock();
	HAL_FLASHEx_Erase(&EraseInitStruct, &page_err);
	HAL_FLASH_Program(FLASH_TYPEPROGRAM_DOUBLEWORD, addr, data);
	HAL_FLASH_Lock();
}
#endif


void CFA_ENGINE_start(){
	while(1){
		_attest_memory();
		_setup_data();
		_clean();
		_read_serial_loop();
	}
}

void CFA_ENGINE_register_callback(){
	cfa_engine_conf.iac.app_start_address = (funcptr_NS)  pAttestationFunctionCallback;
	return;
}

/* --------------- - STATE HANDLING --------------------- */



int STATE_initialize_attestation(){
	if (cfa_engine_conf.attestation_status == INACTIVE){

		// send response to vrf
		uint8_t ready_char[COMMAND_SIZE+1] = INIT_ATTESTATION;
		SecureUartTx(ready_char, COMMAND_SIZE);

		// receive challange
		if(_receive_challenge()) return 1;

		// start application
		cfa_engine_conf.attestation_status = ACTIVE;
		CFA_ENGINE_run_attestation();
		cfa_engine_conf.attestation_status = COMPLETE;

		// Send final report
		_send_report();
	}
	return CONTINUE_LOOP;
}

int STATE_accept_report(){
	if (cfa_engine_conf.attestation_status == COMPLETE){
		cfa_engine_conf.attestation_status = INACTIVE; //temp
		_clean();
		return EXIT_LOOP;
	}
	return CONTINUE_LOOP;
}

int STATE_heal(){
	if (cfa_engine_conf.attestation_status == COMPLETE || cfa_engine_conf.attestation_status == WAITING_PARTIAL){
		_heal_function();
		return EXIT_LOOP;
	}
	return CONTINUE_LOOP;
}

int STATE_continue(){

	_receive_challenge();

	cfa_engine_conf.attestation_status = ACTIVE;

	return EXIT_LOOP;
}

/* ---------------------------  PROTOCOL  ----------------------------------------- */


char translate_command(int8_t command_received[]){
	command_received[COMMAND_SIZE] = '\0';
	if (!strcmp(command_received,INIT_ATTESTATION))
		return INIT_ATTESTATION_CHAR;
	else if (!strcmp(command_received,ACCEPTED_REPORT))
		return ACCEPT_REPORT_CHAR;
	else if (!strcmp(command_received,CONTINUE_REQUEST))
		return CONTINUE_CHAR;
	else if (!strcmp(command_received,HEAL_REQUEST))
		return HEAL_CHAR;
	return 'X';

}

void wait_for_command(char pattern[],int size){
	int found_size = 0;
	int i = 0;
	char read_char;
	while(found_size != size){
		SecureUartRx((uint8_t*)&read_char, 1);
		if (read_char == pattern[i]){
			i++;
			found_size++;
		}
		else{
			i = 0;
			found_size = 0;
		}
	}
}

void _read_serial_loop(){
	uint8_t command_received[COMMAND_SIZE+1];
	uint8_t state = CONTINUE_LOOP;
	char aaa;
	while(state == CONTINUE_LOOP){
		wait_for_command(BEGGINING_OF_COMMAND,COMMAND_SIZE);
		_receive_request(COMMAND_SIZE, command_received);
		aaa = translate_command(command_received);
		switch(aaa){

			case INIT_ATTESTATION_CHAR:
				state = STATE_initialize_attestation();
				break;

			case ACCEPT_REPORT_CHAR:
				state = STATE_accept_report();
				break;

			case HEAL_CHAR:
				state = STATE_heal();
				break;

			case CONTINUE_CHAR:
				state = STATE_continue();
				break;

			default:
				state = CONTINUE_LOOP;
				break;
		}
	}
}

/* -----------------------------  SENDING REPORT ------------------------------------ */
uint32_t receive_resp_time;
uint32_t verify_resp_time;
uint8_t  _receive_challenge(){
	uint8_t chl[64];
//	uint8_t init_chal[] = BEGGINING_OF_CHALLANGE;

	uint32_t start = HAL_GetTick();
	SecureUartRx((uint8_t*)chl, 64);
//	SecureUartTx(init_chal, COMMAND_SIZE); // echo for debug
//	SecureUartTx((uint8_t*)chl, 64);
	_update_challenge(chl);

	// read verifier signature
	SecureUartRx((uint8_t*)(&vrf_resp.signature), SIGNATURE_SIZE_BYTES);
//	SecureUartTx((uint8_t*)(&vrf_resp.signature), SIGNATURE_SIZE_BYTES);

	vrf_resp.verify_result = 1;
	uint32_t stop = HAL_GetTick();
	receive_resp_time = stop-start;

	start = HAL_GetTick();
	// check verifier signature by sig = ECDSA(private_key, hash(report))
	// 1) get SHA256 hash over report (excluding buffer that holds signature)
	uint32_t response_size = CHAL_SIZE + 1 + HASH_SIZE_BYTES;
	Hacl_SHA2_256_hash(response_hash, (uint8_t*)(&vrf_resp), response_size);
	// 2) verify signature of hash
    curve = uECC_secp256r1();
    int t =  uECC_verify(public_key, response_hash, HASH_SIZE_BYTES, vrf_resp.signature, curve);
    stop = HAL_GetTick();
    verify_resp_time = stop-start;

    recv_verify_response_time = receive_resp_time + verify_resp_time;
	return 0;
}

void _receive_request(int size,uint8_t* read_char){
	SecureUartRx(read_char, size);
	return;
}
uint32_t send_report_time;
uint32_t send_report_start;
uint32_t send_report_stop;
void _send_report_message(){
	send_report_start = HAL_GetTick();
	uint8_t init_report[] = BEGGINING_OF_REPORT;
	SecureUartTx(init_report, COMMAND_SIZE);
	// Baseline End-to-end APP
//	SecureUartTx((uint8_t *)(&output_data), 4);
//	SecureUartTx(report_secure.signature, SIGNATURE_SIZE_BYTES);

	// CFA or TRACES
	report_secure.num_CF_Log_size++; //convert from last index to size
	int data_size = 2 + SIGNATURE_SIZE_BYTES + HASH_SIZE_BYTES + 2 + 4*report_secure.num_CF_Log_size + 2;
	uint8_t * report_addr = (uint8_t*)(&report_secure);
	SecureUartTx(report_addr, data_size);
	send_report_stop = HAL_GetTick();
	send_report_time = send_report_stop - send_report_start;

	// timing for debug
	SecureUartTx((uint8_t *)(&send_report_time), 4);
}
uint32_t compute_send_report_time;
uint32_t compute_send_report_start;
uint32_t compute_send_report_stop;
void _send_report(){
	logged_first = 0;
	report_secure.number_of_logs_sent ++;
	if (cfa_engine_conf.attestation_status == COMPLETE){
		report_secure.isFinal = FINAL_REPORT;
		compute_send_report_start = HAL_GetTick();
		_sign_report(); // must come after isFinal is set since signs all report data
		_send_report_message();
		compute_send_report_stop = HAL_GetTick();
	}
	else if(cfa_engine_conf.attestation_status == WAITING_PARTIAL){
		report_secure.isFinal = PARTIAL_REPORT;
		compute_send_report_start = HAL_GetTick();
		_sign_report();
		_send_report_message();
		report_secure.num_CF_Log_size = 0;
		compute_send_report_stop = HAL_GetTick();
	}

	compute_send_report_time = compute_send_report_stop - compute_send_report_start;
	return;
}


/*
    ---------------------------------------------------------------------------------
	----------------------------- CFA ENGINE ----------------------------------------
	---------------------------------------------------------------------------------
*/

/* ----------------------------- CRYPTO-OPERATIONS --------------------------------- */
uint32_t time_hash_memory;
uint32_t time_hash_memory_start;
uint32_t time_hash_memory_end;
void _attest_memory(){
	time_hash_memory_start = HAL_GetTick();
	// Compute sigle hash of non-secure memory
	Hacl_SHA2_256_hash(report_secure.mem_hash, (uint8_t*)(NONSECURE_FLASH_START), NONSECURE_FLASH_SIZE);
	time_hash_memory_end = HAL_GetTick();
	time_hash_memory = time_hash_memory_end-time_hash_memory_start;
}

uint32_t time_sign_report;
uint32_t time_sign_report_start;
uint32_t time_sign_report_end;
void _sign_report(){
	time_sign_report_start = HAL_GetTick();
	// Copy from Flash to Report Struct
	#if CFLOG_TYPE == CFLOG_FLASH
	unsigned int i;
	for(i=0; i<report_secure.num_CF_Log_size; i++){
		report_secure.CFLog[i] = FLASH_CFLog[i];
	}
	#endif

	// Compute ECDSA signature by sig = ECDSA(private_key, hash(report))

	// Baseline End-to-end APP
//	uint32_t report_size = 4; // in bytes
//	Hacl_SHA2_256_hash(report_hash, (uint8_t*)(&output_data), report_size);

	// CFA or TRACES
	uint32_t report_size = 2 + HASH_SIZE_BYTES + 2 + 4*report_secure.num_CF_Log_size;
	Hacl_SHA2_256_hash(report_hash, (uint8_t*)(&report_secure.isFinal), report_size);

	// sign hash
    curve = uECC_secp256r1();
    int t =  uECC_sign(private_key, report_hash, HASH_SIZE_BYTES, report_secure.signature, curve);

    time_sign_report_end = HAL_GetTick();
	time_sign_report = time_sign_report_end-time_sign_report_start;
}

/*** SPEC-CFA ***/
#define BLOCK0_MASK	0x01
#define BLOCK1_MASK	0x02
#define BLOCK2_MASK	0x04
#define BLOCK3_MASK	0x08
#define BLOCK4_MASK	0x10
#define BLOCK5_MASK	0x20
#define BLOCK6_MASK	0x40
#define BLOCK7_MASK	0x80

#define BLOCK0_SIZE	1
#define BLOCK1_SIZE	1
#define BLOCK2_SIZE	3
#define BLOCK3_SIZE	3
#define BLOCK4_SIZE	2
#define BLOCK5_SIZE	1
#define BLOCK6_SIZE	1
#define BLOCK7_SIZE	1
uint8_t block_sizes[8] = {BLOCK0_SIZE, BLOCK1_SIZE, BLOCK2_SIZE, BLOCK3_SIZE, BLOCK4_SIZE, BLOCK5_SIZE, BLOCK6_SIZE, BLOCK7_SIZE};

#define BLOCK0_ID	0x11110000;
#define BLOCK1_ID	0x11110001;
#define BLOCK2_ID	0x11110002;
#define BLOCK3_ID	0x11110003;
#define BLOCK4_ID	0x11110004;
#define BLOCK5_ID	0x11110005;
#define BLOCK6_ID	0x11110006;
#define BLOCK7_ID	0x11110007;

#define TOTAL_BLOCKS	5
uint32_t path0[BLOCK0_SIZE] = {0x804027c};
uint32_t path1[BLOCK1_SIZE] = {0x8040246};
uint32_t path2[BLOCK2_SIZE] = {0x804029c, 0x80402ee, 0x8040322};
uint32_t path3[BLOCK3_SIZE] = {0x8040258, 0x80402de, 0x804026c};
uint32_t path4[BLOCK4_SIZE] = {0x8040258, 0x80402cc};
uint32_t path5[BLOCK5_SIZE] = {0};
uint32_t path6[BLOCK6_SIZE] = {0};
uint32_t path7[BLOCK7_SIZE] = {0};
uint32_t * path_base_addrs[8] = {path0, path1, path2, path3, path3, path5, path6, path7};
/********************************/


uint8_t spec_monitor = 0x00;
uint8_t spec_detect = 0x00;
uint8_t spec_monitor_count[8] = {0, 0, 0, 0, 0, 0, 0, 0};


uint32_t log_entry;
uint8_t repeat_detect = 0;
uint16_t repeat_count = 1;
signed int increment;

#define LOOP_OPT
#define SPECULATE

void CFA_ENGINE_new_log_entry(uint32_t value){
	if(report_secure.num_CF_Log_size % MAX_CF_LOG_SIZE == 0 && report_secure.num_CF_Log_size > 0){
//		app_exec_time = htim3.Instance->CNT;
		cfa_engine_conf.attestation_status = WAITING_PARTIAL;

		_send_report();

		#if CFLOG_TYPE == CFLOG_RAM
		report_secure.CFLog[report_secure.num_CF_Log_size] = value;
		#else
		uint32_t addr = (uint32_t)(&FLASH_CFLog[report_secure.num_CF_Log_size]);
		uint64_t data = (prev_entry << 32) | value;
		update_flash(addr, data);
		#endif

		report_secure.num_CF_Log_size++;
		_read_serial_loop();
	}
	else{

		#ifdef SPECULATE
		speccfa_detect_paths(value);
		if(spec_detect == 0){
			increment = 1;
			log_entry = value;
		} else{
			speccfa_speculate(value);
		}
		#endif
		// after these two calls:
		// - log_entry holds either an entry or subpath ID
		// - num_CF_Log_size has been updated accordingly

		#ifdef LOOP_OPT
		/** Check for repeats **/
		if(report_secure.num_CF_Log_size != 0 && report_secure.CFLog[report_secure.num_CF_Log_size] == log_entry){
			if (repeat_detect == 0){
				// since first instance of repeat, set flag
				repeat_detect ^= 1;
			} else if (repeat_detect == 1){
				// if more than one instance, increment counter
				repeat_count++;
			}
		}
		else{ // enter this block either because 1) not a loop or 2) loop exit
			if(repeat_detect == 1){
				// if loop exit, clear flag and increment log size for next entry
				repeat_detect = 0;
				report_secure.num_CF_Log_size++;
				report_secure.CFLog[report_secure.num_CF_Log_size] = (0xffff0000 + repeat_count);
				repeat_count = 1;
			}
			if(logged_first==0){
				report_secure.CFLog[report_secure.num_CF_Log_size] = log_entry;
				logged_first = 1;
			} else {
				report_secure.num_CF_Log_size += increment;
				report_secure.CFLog[report_secure.num_CF_Log_size] = log_entry;
			}
		}
		#else
		report_secure.CFLog[report_secure.num_CF_Log_size] = value;
		report_secure.num_CF_Log_size++;
		#endif

	}
	return;
}

void speccfa_speculate(uint32_t value){
	if((spec_detect & BLOCK0_MASK) == BLOCK0_MASK){
		spec_detect &= ~BLOCK0_MASK;
		increment = 2-BLOCK0_SIZE; // get -(blocksize-2) without mult
		log_entry = BLOCK0_ID;
	}
	else if((spec_detect & BLOCK1_MASK) == BLOCK1_MASK){
		spec_detect &= ~BLOCK1_MASK;
		increment = 2-BLOCK1_SIZE;
		log_entry = BLOCK1_ID;
	}
	else if((spec_detect & BLOCK2_MASK) == BLOCK2_MASK){
		spec_detect &= ~BLOCK2_MASK;
		increment = 2-BLOCK2_SIZE;
		log_entry = BLOCK2_ID;
	}
	else if((spec_detect & BLOCK3_MASK) == BLOCK3_MASK){
		spec_detect &= ~BLOCK3_MASK;
		increment = 2-BLOCK3_SIZE;
		log_entry = BLOCK3_ID;
	}
	else if((spec_detect & BLOCK4_MASK) == BLOCK4_MASK){
		spec_detect &= ~BLOCK4_MASK;
		increment = 2-BLOCK4_SIZE;
		log_entry = BLOCK4_ID;
	}
	/***
	else if((spec_detect & BLOCK5_MASK) == BLOCK5_MASK){
		spec_detect &= ~BLOCK5_MASK;
		increment = 2-BLOCK5_SIZE;
		log_entry = BLOCK5_ID;
	}
	else if((spec_detect & BLOCK6_MASK) == BLOCK6_MASK){
		spec_detect &= ~BLOCK6_MASK;
		increment = 2-BLOCK6_SIZE;
		log_entry = BLOCK6_ID;
	}
	else if((spec_detect & BLOCK7_MASK) == BLOCK7_MASK){
		spec_detect &= ~BLOCK7_MASK;
		increment = 2-BLOCK7_SIZE;
		log_entry = BLOCK7_ID;
	}
	***/
}

void speccfa_detect_path(uint32_t value, uint32_t * path, uint8_t block_num, uint8_t size){
	uint8_t mask = (0x01 << block_num);

	if(value == path[spec_monitor_count[block_num]]){
		// If match, increment the count and set the bit in monitor
		spec_monitor_count[block_num]++;
		spec_monitor |= mask;

		// If the count equals the subpath size, the entire subpath occurred in the log
		if(spec_monitor_count[block_num] == size){
			// Turn on detect bit, turn off monitor bit, and reset count
			spec_detect |= mask;
			spec_monitor &= ~mask;
			spec_monitor_count[block_num] = 0;
		}
	}  else if((spec_monitor & mask) == mask){
		// Reaches here if value != to the next subpath entry.
		// If we are currently monitoring when this occurs, this means a mismatch
		// Therefore reset the mask and turn off monitor bit
		spec_monitor &= ~mask;
		spec_monitor_count[block_num] = 0;
	}
}

void speccfa_detect_paths(uint32_t value){
	for(int i=0; i<TOTAL_BLOCKS; i++){
		speccfa_detect_path(value, path_base_addrs[i], i, block_sizes[i]);
	}

//	// check if the dest addr matches the next entry of the subpath
//	if(value == path0[spec_monitor_count[0]]){
//		// If match, increment the count and set the bit in monitor
//		spec_monitor_count[0]++;
//		spec_monitor |= BLOCK0_MASK;
//
//		// If the count equals the subpath size, the entire subpath occurred in the log
//		if(spec_monitor_count[0] == BLOCK0_SIZE){
//			// Turn on detect bit, turn off monitor bit, and reset count
//			spec_detect |= BLOCK0_MASK;
//			spec_monitor &= ~BLOCK0_MASK;
//			spec_monitor_count[0] = 0;
//		}
//	}  else if((spec_monitor & BLOCK0_MASK) == BLOCK0_MASK){
//		// Reaches here if value != to the next subpath entry.
//		// If we are currently monitoring when this occurs, this means a mismatch
//		// Therefore reset the count and turn off monitor bit
//		spec_monitor &= ~BLOCK0_MASK;
//		spec_monitor_count[0] = 0;
//	}
//
//	// Repeat same blocks for remaining subpaths
//
//	if(value == path1[spec_monitor_count[1]]){
//		spec_monitor_count[1]++;
//		spec_monitor |= BLOCK1_MASK;
//		if(spec_monitor_count[1] == BLOCK1_SIZE){
//			spec_detect |= BLOCK1_MASK;
//			spec_monitor &= ~BLOCK1_MASK;
//			spec_monitor_count[1] = 0;
//		}
//	} else if((spec_monitor & BLOCK1_MASK) == BLOCK1_MASK){
//		spec_monitor &= ~BLOCK1_MASK;
//		spec_monitor_count[1] = 0;
//	}
//
//
//	if(value == path2[spec_monitor_count[2]]){
//		spec_monitor_count[2]++;
//		spec_monitor |= BLOCK2_MASK;
//		if(spec_monitor_count[2] == BLOCK2_SIZE){
//			spec_detect |= BLOCK2_MASK;
//			spec_monitor &= ~BLOCK2_MASK;
//			spec_monitor_count[2] = 0;
//		}
//	} else if((spec_monitor & BLOCK2_MASK) == BLOCK2_MASK){
//		spec_monitor &= ~BLOCK2_MASK;
//		spec_monitor_count[2] = 0;
//	}
//
//	if(value == path3[spec_monitor_count[3]]){
//		spec_monitor_count[3]++;
//		spec_monitor |= BLOCK3_MASK;
//		if(spec_monitor_count[3] == BLOCK3_SIZE){
//			spec_detect |= BLOCK3_MASK;
//			spec_monitor &= ~BLOCK3_MASK;
//			spec_monitor_count[3] = 0;
//		}
//	}  else if((spec_monitor & BLOCK3_MASK) == BLOCK3_MASK){
//		spec_monitor &= ~BLOCK3_MASK;
//		spec_monitor_count[3] = 0;
//	}
//
//
//	if(value == path4[spec_monitor_count[4]]){
//		spec_monitor_count[4]++;
//		spec_monitor |= BLOCK4_MASK;
//		if(spec_monitor_count[4] == BLOCK4_SIZE){
//			spec_detect |= BLOCK4_MASK;
//			spec_monitor &= ~BLOCK4_MASK;
//			spec_monitor_count[4] = 0;
//		}
//	} else if((spec_monitor & BLOCK4_MASK) == BLOCK4_MASK){
//		spec_monitor &= ~BLOCK4_MASK;
//		spec_monitor_count[4] = 0;
//	}
//
////	if(value == path5[spec_monitor_count[5]]){
////		spec_monitor_count[5]++;
////		spec_monitor |= BLOCK5_MASK;
////		if(spec_monitor_count[5] == BLOCK5_SIZE){
////			spec_detect |= BLOCK5_MASK;
////			spec_monitor &= ~BLOCK5_MASK;
////			spec_monitor_count[5] = 0;
////		}
////	} else if((spec_monitor & BLOCK5_MASK) == BLOCK5_MASK){
////		spec_monitor &= ~BLOCK5_MASK;
////		spec_monitor_count[5] = 0;
////	}
////
////	if(value == path6[spec_monitor_count[6]]){
////		spec_monitor_count[6]++;
////		spec_monitor |= BLOCK6_MASK;
////		if(spec_monitor_count[6] == BLOCK6_SIZE){
////			spec_detect |= BLOCK6_MASK;
////			spec_monitor &= ~BLOCK6_MASK;
////			spec_monitor_count[6] = 0;
////		}
////	} else if((spec_monitor & BLOCK6_MASK) == BLOCK6_MASK){
////		spec_monitor &= ~BLOCK6_MASK;
////		spec_monitor_count[6] = 0;
////	}
////
////	if(value == path7[spec_monitor_count[7]]){
////		spec_monitor_count[7]++;
////		spec_monitor |= BLOCK7_MASK;
////		if(spec_monitor_count[7] == BLOCK7_SIZE){
////			spec_detect |= BLOCK7_MASK;
////			spec_monitor &= ~BLOCK7_MASK;
////			spec_monitor_count[7] = 0;
////		}
////	}  else if((spec_monitor & BLOCK7_MASK) == BLOCK7_MASK){
////		spec_monitor &= ~BLOCK7_MASK;
////		spec_monitor_count[7] = 0;
////	}

}

uint32_t start;
uint32_t end;
void CFA_ENGINE_run_attestation(){
	if (cfa_engine_conf.initialized != INITIALIZED){
	//	*ERROR = ERROR_CFA_ENGINE_NOT_INITIALIZED;
		return;
	}

	report_secure.num_CF_Log_size = 0;
	cfa_engine_conf.attestation_status = ACTIVE;
	report_secure.number_of_logs_sent = 0;

	// Call the application
	start = HAL_GetTick();
	_run_application();
//	test_application();
	end = HAL_GetTick();
	app_exec_time = end - start;

	// Set Final report Flag
	report_secure.isFinal = TRUE;
	return;
}

void CFA_ENGINE_initialize(){
	if (cfa_engine_conf.initialized == INITIALIZED){
		return; //ERROR_cfa_engine_ALREADY_INITIALIZED;;
	}
	_attest_memory();
	_setup_data();
	_clean();

	return;
}

/* ---------------------------  ------------------------------------------------------
 * --------------------------- CFV Resolver  -----------------------------------------
 * --------------------------------------------------------------------------------- */
void _software_reset(){
	HAL_NVIC_SystemReset();
	return;
}


void _heal_function(){
	while(1);
}

///////////////////////////
//#define TEST_DEMO
#ifdef TEST_DEMO
#endif

#endif /* __cfa_engine */
