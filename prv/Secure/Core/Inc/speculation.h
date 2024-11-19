/*
 * speculation.h
 *
 *  Created on: Aug 21, 2023
 */

#include "stdint.h"
#include "cfa_engine.h"

#ifndef INC_SPECULATION_H_
#define INC_SPECULATION_H_

/*** MASKS ***/
#define BLOCK0_MASK	0x01
#define BLOCK1_MASK	0x02
#define BLOCK2_MASK	0x04
#define BLOCK3_MASK	0x08
#define BLOCK4_MASK	0x10
#define BLOCK5_MASK	0x20
#define BLOCK6_MASK	0x40
#define BLOCK7_MASK	0x80

/*** IDS ***/
#define SPEC_ID_BIT_LEN    16
#define SPEC_CTR_BIT_LEN   32

#define SPEC_ID_SYMBOL 0x11
#define SPEC_ID_LENGTH 3
#define REPEAT_SYMBOL 0xff
#define REPEAT_LENGTH 2

#define BLOCK0_ID	0x11111100
#define BLOCK1_ID	0x11111101
#define BLOCK2_ID	0x11111102
#define BLOCK3_ID	0x11111103
#define BLOCK4_ID	0x11111104
#define BLOCK5_ID	0x11111105
#define BLOCK6_ID	0x11111106
#define BLOCK7_ID	0x11111107

/*** FUNCS ***/
int SPECCFA_process_log_entry(uint32_t, CFA_REPORT *, uint8_t *);
void SPECCFA_speculate(uint32_t,  CFA_REPORT *);
void SPECCFA_detect_path(uint32_t, uint32_t *, uint8_t, uint8_t, CFA_REPORT *);
void SPECCFA_detect_paths(uint32_t, CFA_REPORT *);
void SPECCFA_reset();

#endif /* INC_SPECULATION_H_ */
