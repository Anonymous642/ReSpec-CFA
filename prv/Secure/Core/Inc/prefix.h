#include "stdint.h"
#include "cfa_engine.h"

#define PREFIX_BYTE_LEN   2
#define PREFIX_BIT_LEN    8*PREFIX_BYTE_LEN
#define SUFFIX_BIT_LEN    32-PREFIX_BIT_LEN
#define SUFFIX_BYTE_LEN   4-PREFIX_BYTE_LEN
#define PREFIX_LOG_ID	  0x33333300

void prefix_reset();
int prefix_handler(uint32_t, CFA_REPORT *, uint8_t *);
