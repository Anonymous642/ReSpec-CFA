/*
 * speculation.c
 *
 *  Created on: Aug 21, 2023
 */

#include "speculation.h"
#include "cfa_engine.h"

#define HUFFMAN


#define TOTAL_BLOCKS 8
uint32_t monitor_cflog_idxs[TOTAL_BLOCKS];// = {0,0,0,0,0,0,0,0};
short monitor_cflog_bit_idxs[TOTAL_BLOCKS];

//------------------- Change this for each app
#define BLOCK0_SIZE		1
uint32_t path0[BLOCK0_SIZE] = {
		0x8040246
};
#if TOTAL_BLOCKS >= 2
#define BLOCK1_SIZE		9
uint32_t path1[BLOCK1_SIZE] = {
		0x08040322, 0x080402ae, 0x080402d0, 0x080402de, 0x080402fe, 0x08040318, 0x08040322, 0x080402ae, 0x080402d0

};
#endif
#if TOTAL_BLOCKS >= 3 //
#define BLOCK2_SIZE		2
uint32_t path2[BLOCK2_SIZE] = {
		0x80402ae, 0x8040322
};
#endif
#if TOTAL_BLOCKS >= 4
#define BLOCK3_SIZE		8
uint32_t path3[BLOCK3_SIZE] = {
		0x08040322, 0x080402ae, 0x080402d0, 0x080402de, 0x080402fe, 0x08040318, 0x08040322, 0x08040332

};
#endif
#if TOTAL_BLOCKS >= 5
#define BLOCK4_SIZE		4
uint32_t path4[BLOCK4_SIZE] = {
		0x0804033c, 0x08040370, 0x080403aa, 0x080403e8

};
#endif
#if TOTAL_BLOCKS >= 6
#define BLOCK5_SIZE		3
uint32_t path5[BLOCK5_SIZE] = {
		0x804039c, 0x8040268, 0x8040238
};
#endif
#if TOTAL_BLOCKS >= 7
#define BLOCK6_SIZE		3
uint32_t path6[BLOCK6_SIZE] = {
		0x8040258, 0x8040280, 0x8040238

};
#endif
#if TOTAL_BLOCKS >= 8
#define BLOCK7_SIZE		3
uint32_t path7[BLOCK7_SIZE] = {
		0x8040258, 0x8040292, 0x8040238


};
#endif
//-----------------------

uint8_t block_sizes[TOTAL_BLOCKS] =
{  BLOCK0_SIZE
 #if TOTAL_BLOCKS >= 2
 , BLOCK1_SIZE
 #endif
#if TOTAL_BLOCKS >= 3
 , BLOCK2_SIZE
#endif
#if TOTAL_BLOCKS >= 4
 , BLOCK3_SIZE
#endif
#if TOTAL_BLOCKS >= 5
 , BLOCK4_SIZE
#endif
#if TOTAL_BLOCKS >= 6
 , BLOCK5_SIZE
#endif
#if TOTAL_BLOCKS >= 7
 , BLOCK6_SIZE
#endif
#if TOTAL_BLOCKS >= 8
 , BLOCK7_SIZE
#endif
 };


uint32_t * path_base_addrs[TOTAL_BLOCKS] =
{ path0
#if TOTAL_BLOCKS >= 2
, path1
#endif
#if TOTAL_BLOCKS >= 3
, path2
#endif
#if TOTAL_BLOCKS >= 4
, path3
#endif
#if TOTAL_BLOCKS >= 5
, path4
#endif
#if TOTAL_BLOCKS >= 6
, path5
#endif
#if TOTAL_BLOCKS >= 7
, path6
#endif
#if TOTAL_BLOCKS >= 8
, path7
#endif
};

uint8_t spec_monitor_count[TOTAL_BLOCKS];

/********************************/

uint8_t spec_monitor = 0x00;
uint8_t spec_detect = 0x00;


uint32_t log_entry;
uint8_t repeat_detect = 0;
uint32_t repeat_count = 0xffff0002;
uint32_t prev_value = 0;
uint32_t prev_addr = 0;

void init_spec(){
	SPECCFA_reset();
}

void SPECCFA_reset(){
	spec_monitor = 0x00;
	spec_detect = 0x00;
	for(int i=0; i<TOTAL_BLOCKS; i++){
		spec_monitor_count[i] = 0;
		monitor_cflog_idxs[i] = 0;
		monitor_cflog_bit_idxs[i] = 0;
	}
	repeat_detect = 0;
	repeat_count = 0xffff0002;

	prev_value = 0;
	prev_addr = 0;
}

int speculating;
int SPECCFA_process_log_entry(uint32_t addr, CFA_REPORT * report_secure, uint8_t * to_log){

	speculating = 0;
	uint32_t write_value;
	SPECCFA_detect_paths(addr,report_secure);
	if(spec_detect == 0){
		// no sub-path detect, so append log normally
		write_value = addr;

		if(spec_monitor == 0){
			repeat_detect = 0;
			repeat_count = 0xffff0002;
			prev_value = 0xffffffff;
		}

	} else{
		speculating = 1;
		SPECCFA_speculate(addr, report_secure);

		// if not repeating and no repeat detected, log subpath normally, set prev_value
		if (repeat_detect == 0 && ((prev_value != log_entry))){// || (prev_addr+1 != active_addr))){
			write_value = log_entry;
			prev_value = log_entry;
			prev_addr = report_secure->num_CF_Log_size;
		}
		// if not repeating but repeat is detected, this is the first instance. Set repeat_detect and log the ctr.
		else if(repeat_detect == 0 && prev_value == log_entry){// && prev_addr+1 == active_addr){
			repeat_detect = 1;
			prev_addr = report_secure->num_CF_Log_size;
			write_value = repeat_count;
		}
		// if repeating and repeat is continuing, increment the counter, increment and log counter
		else if(repeat_detect == 1 && prev_value == log_entry){// && prev_addr+1 == active_addr){
			report_secure->num_CF_Log_size = prev_addr;
			repeat_count++;
			write_value = repeat_count;
		}
		// if repeat_detect and a different subpath has occurred, reset repeat signals and log current sub-path
		else {
			repeat_detect = 0;
			repeat_count = 0xffff0002;
			write_value = log_entry;
			prev_value = log_entry;
			prev_addr = report_secure->num_CF_Log_size;
		}

		for(int i=0; i<4; i++){
			to_log[i] = ((uint8_t *)&write_value)[i];
		}
	}
	return speculating;
}


void SPECCFA_speculate(uint32_t addr,  CFA_REPORT * report_secure){
	if((spec_detect & BLOCK0_MASK) == BLOCK0_MASK){
		spec_detect &= ~BLOCK0_MASK;
		log_entry = BLOCK0_ID;
		report_secure->num_CF_Log_size = monitor_cflog_idxs[0];
		report_secure->bits_left = monitor_cflog_bit_idxs[0];
	}
	#if TOTAL_BLOCKS >= 2
	else if((spec_detect & BLOCK1_MASK) == BLOCK1_MASK){
		spec_detect &= ~BLOCK1_MASK;
		log_entry = BLOCK1_ID;
		report_secure->num_CF_Log_size = monitor_cflog_idxs[1];
		report_secure->bits_left = monitor_cflog_bit_idxs[1];
	}
	#endif
	#if TOTAL_BLOCKS >= 3
	else if((spec_detect & BLOCK2_MASK) == BLOCK2_MASK){
		spec_detect &= ~BLOCK2_MASK;
		log_entry = BLOCK2_ID;
		report_secure->num_CF_Log_size = monitor_cflog_idxs[2];
		report_secure->bits_left = monitor_cflog_bit_idxs[2];
	}
	#endif
	#if TOTAL_BLOCKS >= 4
	else if((spec_detect & BLOCK3_MASK) == BLOCK3_MASK){
		spec_detect &= ~BLOCK3_MASK;
		log_entry = BLOCK3_ID;
		report_secure->num_CF_Log_size = monitor_cflog_idxs[3];
		report_secure->bits_left = monitor_cflog_bit_idxs[3];
	}
	#endif
	#if TOTAL_BLOCKS >= 5
	else if((spec_detect & BLOCK4_MASK) == BLOCK4_MASK){
		spec_detect &= ~BLOCK4_MASK;
		log_entry = BLOCK4_ID;
		report_secure->num_CF_Log_size = monitor_cflog_idxs[4];
		report_secure->bits_left = monitor_cflog_bit_idxs[4];
	}
	#endif
	#if TOTAL_BLOCKS >= 6
	else if((spec_detect & BLOCK5_MASK) == BLOCK5_MASK){
		spec_detect &= ~BLOCK5_MASK;
		log_entry = BLOCK5_ID;
		report_secure->num_CF_Log_size = monitor_cflog_idxs[5];
		report_secure->bits_left = monitor_cflog_bit_idxs[5];
	}
	#endif
	#if TOTAL_BLOCKS >= 7
	else if((spec_detect & BLOCK6_MASK) == BLOCK6_MASK){
		spec_detect &= ~BLOCK6_MASK;
		log_entry = BLOCK6_ID;
		report_secure->num_CF_Log_size = monitor_cflog_idxs[6];
		report_secure->bits_left = monitor_cflog_bit_idxs[6];
	}
	#endif
	#if TOTAL_BLOCKS >= 8
	else if((spec_detect & BLOCK7_MASK) == BLOCK7_MASK){
		spec_detect &= ~BLOCK7_MASK;
		log_entry = BLOCK7_ID;
		report_secure->num_CF_Log_size = monitor_cflog_idxs[7];
		report_secure->bits_left = monitor_cflog_bit_idxs[7];
	}
	#endif
}

void SPECCFA_detect_path(uint32_t value, uint32_t * path, uint8_t block_num, uint8_t size, CFA_REPORT * report_secure){
	uint8_t mask = (0x01 << block_num);

	uint32_t next_in_path = path[spec_monitor_count[block_num]];

	if(value == next_in_path){

		// If this is the first match, grab the current log_ptr value
		if(spec_monitor_count[block_num] == 0){
			monitor_cflog_idxs[block_num] = report_secure->num_CF_Log_size;
			if((repeat_detect == 0) || (prev_value != (0x11111100 | block_num))){
			    monitor_cflog_bit_idxs[block_num] = report_secure->bits_left;
			}
		}

		// If match, increment the count and set the bit in monitor
		spec_monitor_count[block_num]++;
		spec_monitor |= mask;

		// If the count equals the subpath size, the entire subpath occurred in the log
		if(spec_monitor_count[block_num] == size){
			// Turn on detect bit, reset everything
			spec_detect = mask;
			spec_monitor = 0;
			for(int i=0; i<TOTAL_BLOCKS; i++){
				spec_monitor_count[i] = 0;
			}
		}

	}  else if((spec_monitor & mask) == mask){
		// Reaches here if value != to the next subpath entry.

		// If current log entry is the first entry in sub-path, must reset counter to 1 and stay in monitor mode
		if(value == path[0]){
			spec_monitor_count[block_num] = 1;
			monitor_cflog_idxs[block_num] = report_secure->num_CF_Log_size;
			monitor_cflog_bit_idxs[block_num] = report_secure->bits_left;
		}
		// Otherwise, set counter to 0 and clear from monitor
		else{
			spec_monitor &= ~mask;
			spec_monitor_count[block_num] = 0;
			monitor_cflog_idxs[block_num] = 0;
			monitor_cflog_bit_idxs[block_num] = 0;
		}

	}
}

void SPECCFA_detect_paths(uint32_t addr, CFA_REPORT * report_secure){
	for(int i=0; i<TOTAL_BLOCKS; i++){
		SPECCFA_detect_path(addr, path_base_addrs[i], i, block_sizes[i], report_secure);
	}
}

