// Версия 3

#include  "gdef.h"

#define   CLK   BIT4
#define   SDI   BIT5
#define   LD    BIT1

#define   DIV_8000HZ  11059200/2/8000

/*
typedef enum 
{
	SOUND_STOPED,
	SOUND_PAUSED,	
	SOUND_PLAYING
	
} SOUND_STATE;
*/

void  (*dma_proc)(void) = 0;

/*-----------------------------------------------------------------------------------------------------*/
void sound_init(void)
{
      // Настройка ЦАП
      // установки для канала 1
      DAC12_1CTL |= DAC12IR;        // масштаб 1          
      DAC12_1CTL |= DAC12AMP_7;     // максимальное быстродействие выходного усилителя
      DAC12_1CTL |= DAC12DF;        // дополнительных код
      DAC12_1CTL |= DAC12RES;        // 8 бит      
      DAC12_1CTL |= DAC12SREF_2;    // внешнее опорное напряжение    

      DAC12_1CTL |= DAC12LSEL_1;            
      DAC12_1CTL |= DAC12ENC;     
      
      // запускаем калибровку ЦАП
      DAC12_1CTL |= DAC12CALON;      
      while(DAC12_1CTL & DAC12CALON);           
                 
      //  настройка таймера B
      //  настройка первого блока 
      TBCTL = TBCLR;             // Стоп таймер B      
      TBCCTL0 &= ~CAP;           // Режим сравнения
      TBCCR0 = DIV_8000HZ;       // Опорное значение для сравнения
      
      //  настройка третьего блока 
      TBCCTL2 &= ~CAP;     // Режим сравнения
      TBCCTL2 |= OUTMOD_7;
      TBCCTL2 |= CLLD_3;
      TBCCR2 = 0x30;  //DIV_8000HZ/2;               // Опорное значение для сравнения
      
      P4DIR |= BIT2;        // вывод ШИМ для управления громкостью
      P4SEL |= BIT2;     
      
      TBCTL |= TASSEL_2;   // источник тактирования SMCLK
     
    // Настройка канала 2 DMA            
    // register DMACTL0    
    DMACTL0 &= ~0x0f00;    // очищаем поле канала2    
    DMACTL0 |= DMA2TSEL_8; // управление DMA2 от TBCCR0

    // register DMA2CTL        
    DMA2CTL = 0;    
    //DMA2CTL |= DMADT_4;    // single repeate
    DMA2CTL |= DMADT_0;      // single 
    DMA2CTL |= DMASRCINCR_3; // инкремент адреса источника              
    DMA2CTL |= DMASRCBYTE;   // пересылка побайтно                     
    DMA2CTL |= DMADSTBYTE;             
    DMA2CTL |= DMAIE;        // разрешение прерывания
    
    DMA2DA = (unsigned short)&DAC12_1DAT;                // dest address    
              
    P6DIR |= BIT5;
    P6OUT |= BIT5;    // вкл пит
}
/*-----------------------------------------------------------------------------------------------------*/
void sound_pwr_on(void)
{
    P6DIR |= BIT5;
    P6OUT |= BIT5;    // вкл пит
        
    TBCTL |= MC_1+TBCLR;     // пуск таймера B в режиме Up   
    P4DIR |= BIT2;        // вывод ШИМ для управления громкостью
    
    DAC12_1CTL |= DAC12AMP_7;     // максимальное быстродействие выходного усилителя   
    DAC12_1CTL |= DAC12ENC;     
      
    // запускаем калибровку ЦАП
    DAC12_1CTL |= DAC12CALON;      
    while(DAC12_1CTL & DAC12CALON);                    
}
/*-----------------------------------------------------------------------------------------------------*/
void sound_pwr_off(void)
{
    P6OUT &= ~BIT5;    
    P6DIR &= ~BIT5;   // выкл пит
    
    // выкл ЦАП
    DAC12_1CTL &= ~DAC12ENC;       // запрет ЦАП  
    DAC12_1CTL &= ~DAC12AMP_7;     // выкл усилитель
    
    TBCTL &= ~MC_1;        // стоп таймер B 
    P4DIR &= ~BIT2;        // вывод ШИМ для управления громкостью в Z состояние            
}
/*-----------------------------------------------------------------------------------------------------*/
void sound_pause(void)
{
    DMACTL0 |= DMA2TSEL_4;  // остановка DMA
}
/*-----------------------------------------------------------------------------------------------------*/
void sound_resume(void)
{
    TBCCTL0 &= ~CCIFG;    
    DMACTL0 &= ~DMA2TSEL_4; // возобновляем DMA    
}
/*-----------------------------------------------------------------------------------------------------*/
void sound_stop(void)
{
    DMA2CTL &= ~DMAEN;         // DMA2 off     
}
/*-----------------------------------------------------------------------------------------------------*/
void sound_play(char* pbuf, unsigned short ns, int loop)
{
    TBCTL &= ~MC_1;            // Стоп таймер B     
    TBCCTL0 &= ~CCIFG;
    DMA2CTL &= ~DMAEN;         // DMA2 off     

    if(loop) DMA2CTL |= DMADT_4;  // single repeate
    else DMA2CTL |= DMADT_0;      // single 

    DMA2SA = (unsigned short)pbuf;  // адрес источника отсчетов
    DMA2SZ = ns;                    // количество отсчетов в буфере  
  
    TBCTL |= MC_1+TBCLR;     // пуск таймера B в режиме Up   
    DMA2CTL |= DMAEN;        // DMA2 on     
}
/*-----------------------------------------------------------------------------------------------------*/
void sound_set_volume(int volume)
{
    if(volume < 10) volume = 10;
    if(volume > 600) volume = 600;
        
    TBCCR2 = volume;
}
/*-----------------------------------------------------------------------------------------------------*/
void sound_set_dma_proc(void  (*proc)(void))
{
    dma_proc = proc;
}
/*-------------------------------------------------------------------------------------------------------
 Прерывание от DMA
-------------------------------------------------------------------------------------------------------*/
#pragma vector=DACDMA_VECTOR
__interrupt void work_DMA (void)
{
   DMA2CTL &= ~DMAIFG;    
   if(dma_proc) dma_proc();
}
/*-----------------------------------------------------------------------------------------------------*/

