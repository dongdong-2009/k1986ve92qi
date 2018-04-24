#include "MDR32Fx.h"

#define DMA_TRANS_NUM 2
#define DMA_DST_INC 0x02
#define DMA_DST_SZ	0x02
#define DMA_SRC_INC	0x03
#define DMA_SRC_SZ	0x02
#define DMA_CH_POS	8

struct DMA_CTR_STRUCT
{
	uint32_t	SourceEndPointer;
	uint32_t	DestinationEndPointer;
	uint32_t	Control;
	uint32_t	Unused;
};

struct DMA_CTR_STRUCT			dma_ctr_str[32]			__attribute__ ((section(".dma_sec")));
uint32_t						adc_dma_buffer[8]		__attribute__ ((section(".dma_sec")));


void adc_init()
{
	MDR_RST_CLK->PER_CLOCK |= (1<<17);
	MDR_RST_CLK->ADC_MCO_CLOCK = (0x02 << 4) + (1 << 13);  // fadc=fSHE=8MHz
	 
	// множ преобр
	MDR_ADC->ADC1_CFG = 0 ;
	MDR_ADC->ADC1_CFG |= ADC1_CFG_REG_ADON + ADC1_CFG_REG_CLKS +
					 ADC1_CFG_REG_CHCH;    							// переключение каналов выбранных в регистре CHSEL
					 				
	MDR_ADC->ADC1_CHSEL |= (1<<7) + (1<<8); 				// выбор каналов для авт переключения
	MDR_ADC->ADC1_STATUS = ADC_STATUS_ECOIF_IE; 							// прерывание по окончанию преобразования
	//MDR_ADC->ADC1_CFG |= ADC1_CFG_REG_SAMPLE; 	// start ADC
	
	//NVIC_EnableIRQ(ADC_IRQn);					
}

void dma_init(void)
{

	MDR_RST_CLK->PER_CLOCK |= 1<<5;

	MDR_DMA->CTRL_BASE_PTR = (int32_t)dma_ctr_str;
	MDR_DMA->CHNL_ENABLE_CLR = 0xFFFFFFFF;		//disable all channel
	MDR_DMA->CHNL_REQ_MASK_SET = 0xFFFFFFFF;	//disable all request
	MDR_DMA->CHNL_PRI_ALT_CLR = 0xFFFFFFFF;		//all channel use primary management structure
	MDR_DMA->CHNL_USEBURST_CLR = 1<<DMA_CH_POS;			//enable dma_sreq[] for ADC
	MDR_DMA->CHNL_REQ_MASK_CLR = 1<<DMA_CH_POS;			//enable dma_sreq[] for ADC
	//MDR_DMA->CHNL_ENABLE_SET = 1<<DMA_CH_POS;			//enable channel DMA_CH_POS for ADC

	MDR_DMA->CFG=1;								//DMA enable
	
	// setting DMA control struct in SRAM
	dma_ctr_str[DMA_CH_POS].SourceEndPointer = (uint32_t)(&(MDR_ADC->ADC1_RESULT));
	dma_ctr_str[DMA_CH_POS].DestinationEndPointer = (uint32_t)(&adc_dma_buffer[1]);
	dma_ctr_str[DMA_CH_POS].Control = (DMA_DST_INC<<30) + (DMA_DST_SZ<<28) + 
							(DMA_SRC_INC<<26) + (DMA_SRC_SZ<<24) + 
							((DMA_TRANS_NUM-1)<<4) + 0x01;	
}

void adc_dma_init(void)
{
	adc_init();
	dma_init();
}

void adc_dma_start(void)
{
	//int buf = ADC->ADC1_RESULT;	
	MDR_ADC->ADC1_CFG |= ADC1_CFG_REG_SAMPLE; 	// start ADC
	MDR_DMA->CHNL_ENABLE_SET = 1<<DMA_CH_POS;			//enable channel DMA_CH_POS for ADC			
}

void adc_dma_wait(void)
{
	while( (dma_ctr_str[DMA_CH_POS].Control & 0x07) );	// waiting for the dma transaction to complete
	MDR_ADC->ADC1_CFG &= ~ADC1_CFG_REG_SAMPLE;  // stop ADC	
	
	// once again set control struct
	dma_ctr_str[DMA_CH_POS].Control = (DMA_DST_INC<<30) + (DMA_DST_SZ<<28) + 
									  (DMA_SRC_INC<<26) + (DMA_SRC_SZ<<24) + 
									  ((DMA_TRANS_NUM-1)<<4) + 0x01;
}
