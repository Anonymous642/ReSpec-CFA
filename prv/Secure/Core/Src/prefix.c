/*
 * prefix.c
 *
 * Created on: Oct 7, 2024
 */

#include "prefix.h"
#include "speculation.h"
#include "cfa_engine.h"

uint32_t prefix_mask;
uint32_t prefix;

void prefix_reset(){
	prefix = 0;
	prefix_mask = 0;
	for(int i=0; i<PREFIX_BIT_LEN; i++){
		prefix_mask = 0x80000000 | (prefix_mask >> 1);
	}
}

int prefix_handler(uint32_t write_value, CFA_REPORT * report_secure, uint8_t * to_log){
	int size = SUFFIX_BYTE_LEN; // Default to the prefixes matching

	if ((to_log[3] == REPEAT_SYMBOL) && (to_log[2]== REPEAT_SYMBOL)){ // If its a repeat count
		size = 3;
	}else if ((to_log[3] == SPEC_ID_SYMBOL) && (to_log[2] == SPEC_ID_SYMBOL) && (to_log[1] == SPEC_ID_SYMBOL)){ // or a subpath-id, adjust accordingly
		size = 2;
	}else if ((write_value & prefix_mask) != prefix){ // otherwise if the prefixes are different, update and log the new active prefix
		prefix = (write_value & prefix_mask);
		for(int i=4; i<4+SUFFIX_BYTE_LEN; i++){
			to_log[i] = 0x33;
		}
		size = size + 4;
	}
	return size;
}
