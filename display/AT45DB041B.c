#include "gdef.h"
#include "time.h"

#define  CS0_HIGH     P4OUT |= chip_selector;
#define  CS0_LOW      P4OUT &= ~chip_selector;

static char chip_selector = BIT0;

void AT45DB041_init(void)
{
    P4DIR |= BIT0;  // ���� 1 ����������
    P4OUT |= BIT0;
    
    P4DIR |= BIT1;  // ���� 2 ����������
    P4OUT |= BIT1;    

    P3DIR |= BIT1;  // ����� ������
    P3SEL |= BIT1;    
    
    P3DIR &= ~BIT2; // ���� ������
    P3SEL |= BIT2;
    
    P3DIR |= BIT3;  // ����� ������������
    P3SEL |= BIT3;        

    U0CTL = 0;
    U0CTL |= SWRST;   // ���� 

    // ������� U0CTL
    U0CTL |= CHAR;      // ��������� 8 ���
    U0CTL &= ~LISTEN;   // ������ ��������� ������
    U0CTL |= SYNC;      // ����� ������ SPI
    U0CTL |= MM;        // �� ������
           
    // ������� U0TCTL
    U0TCTL = 0;
    U0TCTL |= SSEL1;     // ������������ SMCLK        
    U0TCTL |= CKPL;      // ��������� ������� ������� - ������ ������ �� �����     
//    U0TCTL |= CKPH;      // ���� - �������� �� ��������
    U0TCTL |= STC;       // 3 ��� ����� STE �� ������������
    U0TCTL |= TXEPT;     // ���������� ����� � ������
     
    // ������� U0RCTL                        
    U0RCTL = 0;               
    U0RCTL &= ~URXWIE;   // ����� ���� ���������� - ���������� ��� ������ ������ �������
    U0RCTL &= ~URXEIE;   // ������ ���������� ��� ������               
    U0RCTL &= ~RXERR;    // ������ ����������� ������                    
      
    // ����� �������� 100000 ��� ��� ������ 11,0592 ���
    U0BR0 = 0xFF &  (11059200 / 2 / 1000000);
    U0BR1 = 0xFF & ((11059200 / 2 / 1000000) >> 8);    
    
    U0MCTL = 0;       // ��������� �� ����������
                   
    ME1 |= USPIE0;     // ���������� SPI0
    
    U0CTL &= ~SWRST;  // ���                                              	
}
//--------------------------------------------------------------------
void AT45DB041_chip_select(int chip)
{
	const char mask[2] = {BIT0,BIT1};	
	chip_selector =  mask[chip];
}
//--------------------------------------------------------------------
char AT45DB041_read_status(void)
{
	char s;
	
	CS0_LOW

    while(0 == (U0TCTL & TXEPT));   
	U0TXBUF = 0x57;
    while(0 == (U0TCTL & TXEPT));
	U0TXBUF = 0xFF;		

	IFG1 &= ~URXIFG0;
    while(0 == (IFG1 & URXIFG0));	          		
	s = U0RXBUF;		

	CS0_HIGH
	return s;
}
//-------------------------------------------------------------------------------------------------------
void AT45DB041_array_read(char* pd, unsigned short num, unsigned short page, unsigned short offset)
{
	unsigned long addr[2] = {0,0};	
	char* pa = (char*)&addr[0];		
	int i;

	addr[1] = page & 0x07FF;   
	addr[1] = addr[1] << 9;
	addr[1] += offset & 0x01FF;
	pa[7] = 0x68;
			
	CS0_LOW
	
	// ������ ������� � ������
	for(i = 7; i >= 0; i--)
	{
	    while(0 == (U0TCTL & TXEPT));   	
		U0TXBUF = pa[i];
	}
	
	for(i = 0; i < num; i++)
	{
        while(0 == (U0TCTL & TXEPT));   			
		U0TXBUF = 0xFF;		

		IFG1 &= ~URXIFG0;		
        while(0 == (IFG1 & URXIFG0));	          				
		pd[i] = U0RXBUF;
	}		
	
	CS0_HIGH
}
//-------------------------------------------------------------------------------------------------------
void AT45DB041_flashpage_to_buffer(unsigned short page)
{
	unsigned short pof = page << 1;
	
	CS0_LOW
	
    while(0 == (U0TCTL & TXEPT));   	
	U0TXBUF = 0x53;

    while(0 == (U0TCTL & TXEPT));   	
	U0TXBUF = ((char*)&pof)[1];	

    while(0 == (U0TCTL & TXEPT));   		
	U0TXBUF = ((char*)&pof)[0];		
	
    while(0 == (U0TCTL & TXEPT));   	
	U0TXBUF = 0x00;				
	
    while(0 == (U0TCTL & TXEPT));   			
	CS0_HIGH	
	
	while(1)
	{
		if(0x80 & AT45DB041_read_status()) break;
	}	
}
//--------------------------------------------------------------------
void AT45DB041_flashpage_prog_from_buffer(unsigned short page)
{
	unsigned short pg = page << 1;
	
	CS0_LOW
	
    while(0 == (U0TCTL & TXEPT));   	
	U0TXBUF = 0x83;

    while(0 == (U0TCTL & TXEPT));   	
	U0TXBUF = ((char*)&pg)[1];	

    while(0 == (U0TCTL & TXEPT));   		
	U0TXBUF = ((char*)&pg)[0];		
	
    while(0 == (U0TCTL & TXEPT));   	
	U0TXBUF = 0x00;				
	
    while(0 == (U0TCTL & TXEPT));   			
	CS0_HIGH
	
	// � ����� ������� �������� ���������������� ���� ������
	while(1)
	{
		if(0x80 & AT45DB041_read_status()) break;
	}
}
//--------------------------------------------------------------------
void AT45DB041_write_buffer(char* pd, int num, unsigned short offset)
{
	unsigned short pof = offset;
	register int i;
	
	CS0_LOW
	
    while(0 == (U0TCTL & TXEPT));   	
	U0TXBUF = 0x84;

    while(0 == (U0TCTL & TXEPT));   	
	U0TXBUF = 0x00;	

    while(0 == (U0TCTL & TXEPT));   	
	U0TXBUF = ((char*)&pof)[1];	

    while(0 == (U0TCTL & TXEPT));   		
	U0TXBUF = ((char*)&pof)[0];			
	
	
	for(i = 0; i < num; i++)
	{
	    while(0 == (U0TCTL & TXEPT));   			
		U0TXBUF = pd[i];
	}	
	

    while(0 == (U0TCTL & TXEPT));   			
	CS0_HIGH
}
//--------------------------------------------------------------------
void AT45DB041_read_buffer(char* pd, int num, unsigned short offset)
{
	unsigned short pof = offset;
	register int i;
		
	CS0_LOW
	
    while(0 == (U0TCTL & TXEPT));   	
	U0TXBUF = 0x54;

    while(0 == (U0TCTL & TXEPT));   	
	U0TXBUF = 0x00;	

    while(0 == (U0TCTL & TXEPT));   	
	U0TXBUF = ((char*)&pof)[1];	

    while(0 == (U0TCTL & TXEPT));   		
	U0TXBUF = ((char*)&pof)[0];			
	
    while(0 == (U0TCTL & TXEPT));   	
	U0TXBUF = 0x00;		

	for(i = 0; i < num; i++)
	{
        while(0 == (U0TCTL & TXEPT));   			
		U0TXBUF = 0xFF;		

		IFG1 &= ~URXIFG0;		
        while(0 == (IFG1 & URXIFG0));	          				
		pd[i] = U0RXBUF;
	}	
	
	CS0_HIGH
}
//---------------------------------------------------------
