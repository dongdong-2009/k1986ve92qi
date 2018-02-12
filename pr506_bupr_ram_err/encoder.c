#include "gdef.h"

void encoder_init()
{
	MDR_RST_CLK->PER_CLOCK |= 1<<8;	 				//clock of SPI1
	MDR_RST_CLK->SSP_CLOCK = (1<<RST_CLK_SSP_CLOCK_SSP1_CLK_EN_Pos) | (10 << RST_CLK_SSP_CLOCK_SSP1_BRG_Pos); // SSP1_CLK = HCLK
	
	MDR_SSP1->CR1 = 0;	
	MDR_SSP1->CPSR = 10; // предделитель
	//MDR_SSP1->CR0 = (0x02 << SSP_CR0_SCR_Pos) + (0x00 << SSP_CR0_FRF_Pos) | (11 << SSP_CR0_DSS_Pos) | SSP_CR0_SPO;
	MDR_SSP1->CR0 = (0x02 << SSP_CR0_SCR_Pos) + (0x01 << SSP_CR0_FRF_Pos) + ((16-1) << SSP_CR0_DSS_Pos);
	MDR_SSP1->CR1 = SSP_CR1_SSE; // enable ssp
}

uint32_t b2g(uint32_t b)
{
	return b ^ (b >> 1);
}

uint32_t g2b(uint32_t g)
{
	uint32_t b = 0;
	for(b = 0; g; (g = g >> 1)){
		b = b ^ g;
	}
	return b;
}

uint32_t encoder_crc(uint32_t e)
{
	static uint32_t code = 0;
	uint32_t crc;
	uint32_t b = e;
	
	for(crc=0; b; (b = b>>1)) crc = crc ^ b;		
	(1&crc) || (code = (MAXENC-1) & e);

	return code;
}
