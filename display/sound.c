// ������ 3

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
      // ��������� ���
      // ��������� ��� ������ 1
      DAC12_1CTL |= DAC12IR;        // ������� 1          
      DAC12_1CTL |= DAC12AMP_7;     // ������������ �������������� ��������� ���������
      DAC12_1CTL |= DAC12DF;        // �������������� ���
      DAC12_1CTL |= DAC12RES;        // 8 ���      
      DAC12_1CTL |= DAC12SREF_2;    // ������� ������� ����������    

      DAC12_1CTL |= DAC12LSEL_1;            
      DAC12_1CTL |= DAC12ENC;     
      
      // ��������� ���������� ���
      DAC12_1CTL |= DAC12CALON;      
      while(DAC12_1CTL & DAC12CALON);           
                 
      //  ��������� ������� B
      //  ��������� ������� ����� 
      TBCTL = TBCLR;             // ���� ������ B      
      TBCCTL0 &= ~CAP;           // ����� ���������
      TBCCR0 = DIV_8000HZ;       // ������� �������� ��� ���������
      
      //  ��������� �������� ����� 
      TBCCTL2 &= ~CAP;     // ����� ���������
      TBCCTL2 |= OUTMOD_7;
      TBCCTL2 |= CLLD_3;
      TBCCR2 = 0x30;  //DIV_8000HZ/2;               // ������� �������� ��� ���������
      
      P4DIR |= BIT2;        // ����� ��� ��� ���������� ����������
      P4SEL |= BIT2;     
      
      TBCTL |= TASSEL_2;   // �������� ������������ SMCLK
     
    // ��������� ������ 2 DMA            
    // register DMACTL0    
    DMACTL0 &= ~0x0f00;    // ������� ���� ������2    
    DMACTL0 |= DMA2TSEL_8; // ���������� DMA2 �� TBCCR0

    // register DMA2CTL        
    DMA2CTL = 0;    
    //DMA2CTL |= DMADT_4;    // single repeate
    DMA2CTL |= DMADT_0;      // single 
    DMA2CTL |= DMASRCINCR_3; // ��������� ������ ���������              
    DMA2CTL |= DMASRCBYTE;   // ��������� ��������                     
    DMA2CTL |= DMADSTBYTE;             
    DMA2CTL |= DMAIE;        // ���������� ����������
    
    DMA2DA = (unsigned short)&DAC12_1DAT;                // dest address    
              
    P6DIR |= BIT5;
    P6OUT |= BIT5;    // ��� ���
}
/*-----------------------------------------------------------------------------------------------------*/
void sound_pwr_on(void)
{
    P6DIR |= BIT5;
    P6OUT |= BIT5;    // ��� ���
        
    TBCTL |= MC_1+TBCLR;     // ���� ������� B � ������ Up   
    P4DIR |= BIT2;        // ����� ��� ��� ���������� ����������
    
    DAC12_1CTL |= DAC12AMP_7;     // ������������ �������������� ��������� ���������   
    DAC12_1CTL |= DAC12ENC;     
      
    // ��������� ���������� ���
    DAC12_1CTL |= DAC12CALON;      
    while(DAC12_1CTL & DAC12CALON);                    
}
/*-----------------------------------------------------------------------------------------------------*/
void sound_pwr_off(void)
{
    P6OUT &= ~BIT5;    
    P6DIR &= ~BIT5;   // ���� ���
    
    // ���� ���
    DAC12_1CTL &= ~DAC12ENC;       // ������ ���  
    DAC12_1CTL &= ~DAC12AMP_7;     // ���� ���������
    
    TBCTL &= ~MC_1;        // ���� ������ B 
    P4DIR &= ~BIT2;        // ����� ��� ��� ���������� ���������� � Z ���������            
}
/*-----------------------------------------------------------------------------------------------------*/
void sound_pause(void)
{
    DMACTL0 |= DMA2TSEL_4;  // ��������� DMA
}
/*-----------------------------------------------------------------------------------------------------*/
void sound_resume(void)
{
    TBCCTL0 &= ~CCIFG;    
    DMACTL0 &= ~DMA2TSEL_4; // ������������ DMA    
}
/*-----------------------------------------------------------------------------------------------------*/
void sound_stop(void)
{
    DMA2CTL &= ~DMAEN;         // DMA2 off     
}
/*-----------------------------------------------------------------------------------------------------*/
void sound_play(char* pbuf, unsigned short ns, int loop)
{
    TBCTL &= ~MC_1;            // ���� ������ B     
    TBCCTL0 &= ~CCIFG;
    DMA2CTL &= ~DMAEN;         // DMA2 off     

    if(loop) DMA2CTL |= DMADT_4;  // single repeate
    else DMA2CTL |= DMADT_0;      // single 

    DMA2SA = (unsigned short)pbuf;  // ����� ��������� ��������
    DMA2SZ = ns;                    // ���������� �������� � ������  
  
    TBCTL |= MC_1+TBCLR;     // ���� ������� B � ������ Up   
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
 ���������� �� DMA
-------------------------------------------------------------------------------------------------------*/
#pragma vector=DACDMA_VECTOR
__interrupt void work_DMA (void)
{
   DMA2CTL &= ~DMAIFG;    
   if(dma_proc) dma_proc();
}
/*-----------------------------------------------------------------------------------------------------*/

