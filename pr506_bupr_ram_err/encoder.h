#ifndef _ENCODER_H
#define _ENCODER_H

#include "MDR32Fx.h"

extern void encoder_init();
extern uint32_t encoder_crc(uint32_t e);

static inline void encoder_start(void)
{
	MDR_SSP1->DR = 0x555; // start encoder request<---->
}

#endif
