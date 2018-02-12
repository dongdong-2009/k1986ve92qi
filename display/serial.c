// ������ 3.2
#include "gdef.h"
#include "time.h"

#define RX_BUFF_SIZE_PORT0  128
#define RX_BUFF_SIZE_PORT1  256

static char rx_buffer[RX_BUFF_SIZE_PORT0];
static char rx_buffer_port1[RX_BUFF_SIZE_PORT1];

static int i_uart0_read = 0;
static int i_uart1_read = 0;
unsigned int serial_read_timeout = PORT0_TIMEOUT;

/*--------------------------------------------------------------------------------
  �������� ����������������� ����������
--------------------------------------------------------------------------------*/
void serial_init_port0(void)
{
    P3DIR |= BIT4;  // ����� �����������
    P3SEL |= BIT4;    
    
    P3DIR &= ~BIT5; // ���� ���������    
    P3SEL |= BIT5;

    U0CTL = 0;
    U0CTL |= SWRST;   // ���� UART

    // ������� U0CTL
    U0CTL &= ~PENA;     // ��� �������� ��������
    U0CTL &= ~PEV;      // ��� �������� �� ��������            
    U0CTL &= ~SPB;      // ���� ���� ���   
    U0CTL |= CHAR;      // ��������� 8 ���
    U0CTL &= ~LISTEN;   // ������ ��������� ������
    U0CTL &= ~SYNC;     // ����� ������ UART        
    U0CTL &= ~MM;       // ������������������ ����� �� ��������� ������           
           
    // ������� U0TCTL
    U0TCTL = 0;
    U0TCTL &= ~TXWAKE;   // ������ ������������ ���� - ������
    U0TCTL &= ~URXSE;    // 
    U0TCTL |= SSEL1;     // ������������ SMCLK        
    U0TCTL &= ~CKPL;     //     
    U0TCTL |= TXEPT;     // ���������� ����� � ������
     
    // ������� U0RCTL                        
    U0RCTL = 0;               
    U0RCTL &= ~URXWIE;   // ����� ���� ���������� - ���������� ��� ������ ������ �������
    U0RCTL &= ~URXEIE;   // ������ ���������� ��� ������               
    U0RCTL &= ~RXERR;    // ������ ����������� ������                    
      
    // ����� �������� 2400 ��� ��� ������ 11,0592 ���
    U0BR0 = 0xFF & (11059200 / 2 / 2400);
    U0BR1 = 0xFF & ((11059200 / 2 / 2400) >> 8);    
    
    U0MCTL = 0;       // ��������� �� ����������
                   
    ME1 |= UTXE0;     // ���������� �����������
    ME1 |= URXE0;     // ���������� ���������
    
    U0CTL &= ~SWRST;  // ��� UART           
    
//    IE1 |= UTXIE0;    // ���������� ���������� �� �����������
//    IE1 |= URXIE0;    // ���������� ���������� �� ���������                                       

    // ��������� DMA            
    DMA0CTL = 0;

    // register DMACTL0    
    DMACTL0 &= ~0x000f;    // ������� ���� ������0
    DMACTL0 |= DMA0TSEL_3; // ���������� DMA0 �� URXIFG0

    // register DMA0CTL        
    DMA0CTL |= DMADT_4;      // single repeate
    DMA0CTL |= DMADSTINCR_3; // dest address incremented
    DMA0CTL |= DMADSTBYTE;   // dest address incremented by one
    
    DMA0SA = (unsigned short)&U0RXBUF;       // source address
    DMA0DA = (unsigned short)rx_buffer;      // dest address
    DMA0SZ = RX_BUFF_SIZE_PORT0;
    
    i_uart0_read = 0;
    
    DMA0CTL |= DMAEN;        // DMA on
}
/*--------------------------------------------------------------------------------*/
void serial_init_port1(void)
{
    P3DIR |= BIT6;  // ����� �����������
    P3SEL |= BIT6;    
    
    P3DIR &= ~BIT7; // ���� ���������    
    P3SEL |= BIT7;

    U1CTL = 0;
    U1CTL |= SWRST;   // ���� UART

    // ������� U1CTL
    U1CTL &= ~PENA;     // ��� �������� ��������
    U1CTL &= ~PEV;      // ��� �������� �� ��������            
    U1CTL &= ~SPB;      // ���� ���� ���   
    U1CTL |= CHAR;      // ��������� 8 ���
    U1CTL &= ~LISTEN;   // ������ ��������� ������
    U1CTL &= ~SYNC;     // ����� ������ UART        
    U1CTL &= ~MM;       // ������������������ ����� �� ��������� ������           
           
    // ������� U1TCTL
    U1TCTL = 0;
    U1TCTL &= ~TXWAKE;   // ������ ������������ ���� - ������
    U1TCTL &= ~URXSE;    // 
    U1TCTL |= SSEL1;     // ������������ SMCLK        
    U1TCTL &= ~CKPL;     //     
    U1TCTL |= TXEPT;     // ���������� ����� � ������
     
    // ������� U1RCTL                        
    U1RCTL = 0;               
    U1RCTL &= ~URXWIE;   // ����� ���� ���������� - ���������� ��� ������ ������ �������
    U1RCTL &= ~URXEIE;   // ������ ���������� ��� ������               
    U1RCTL &= ~RXERR;    // ������ ����������� ������                    
      
    // ����� �������� 9600 ��� ��� ������ 11,0592 ���
    U1BR0 = 0xFF &  (11059200 / 2 / 9600);
    U1BR1 = 0xFF & ((11059200 / 2 / 9600) >> 8);    
    
    U1MCTL = 0;       // ��������� �� ����������
                   
    ME2 |= UTXE1;     // ���������� �����������
    ME2 |= URXE1;     // ���������� ���������
    
    U1CTL &= ~SWRST;  // ��� UART                                                   

    // ��������� DMA            

    // register DMACTL0    
    DMACTL0 &= ~0x00f0;    // ������� ���� ������1    
    DMACTL0 |= DMA1TSEL_9; // ���������� DMA1 �� URXIFG1

    // register DMA1CTL        
    DMA1CTL = 0;    
    DMA1CTL |= DMADT_4;      // single repeate
    DMA1CTL |= DMADSTINCR_3; // dest address incremented
    DMA1CTL |= DMADSTBYTE;   // dest address incremented by one
    
    DMA1SA = (unsigned short)&U1RXBUF;       // source address
    DMA1DA = (unsigned short)rx_buffer_port1;      // dest address
    DMA1SZ = RX_BUFF_SIZE_PORT1;
    
    i_uart1_read = 0;
    
    DMA1CTL |= DMAEN;        // DMA on
}

/*--------------------------------------------------------------------------------
 ������� ����������������� �����
--------------------------------------------------------------------------------*/
void serial_flush(void)
{
    U0CTL |= SWRST;   // ���� UART
    
    DMA0CTL &= ~DMAEN;        // DMA off       
   
    DMA0SA = (unsigned short)&U0RXBUF;       // source address
    DMA0DA = (unsigned short)rx_buffer;      // dest address
    DMA0SZ = RX_BUFF_SIZE_PORT0;
    
    i_uart0_read = 0;
    
    DMA0CTL |= DMAEN;        // DMA on   
        
    U0CTL &= ~SWRST;  // ��� UART                       
}
/*--------------------------------------------------------------------------------*/
/*
void serial_set_readtimeout(unsigned int t)
{
    read_timeout = t;
}
*/
/*--------------------------------------------------------------------------------*/
void serial_break(unsigned int port_id)
{
    P3SEL &= ~BIT4;    

    P3OUT &= ~BIT4;  
    time_wait(10);
    P3OUT |= BIT4;      

    P3SEL |= BIT4;        
}

/*--------------------------------------------------------------------------------*/
int serial_read(unsigned int port_id, unsigned int num_byte,char* p_buff)
{
    unsigned long int timeout;
    int i,test;
    
    timeout = system_time + serial_read_timeout;
    for(i = 0; i < num_byte; i++)    
    {
        test = RX_BUFF_SIZE_PORT0 - i_uart0_read;        
        
        while( DMA0SZ == test)
        {
            if(system_time >= timeout) return i;
        }
        p_buff[i] = rx_buffer[i_uart0_read];                           
        i_uart0_read = (RX_BUFF_SIZE_PORT0 - 1)&(i_uart0_read + 1);
    }    
    
    return i;           
}
/*--------------------------------------------------------------------------------*/
int serial_read_port1(unsigned int num_byte, char* p_buff)
{
    unsigned long int timeout;
    int i,test;
    
    timeout = system_time + serial_read_timeout;
    for(i = 0; i < num_byte; i++)    
    {
        test = RX_BUFF_SIZE_PORT1 - i_uart1_read;        
        
        while( DMA1SZ == test)
        {
            if(system_time >= timeout) return i;
        }
        p_buff[i] = rx_buffer_port1[i_uart1_read];                           
        i_uart1_read = (RX_BUFF_SIZE_PORT1 - 1)&(i_uart1_read + 1);
    }    
    
    return i;           
}
/*--------------------------------------------------------------------------------*/
int serial_write(unsigned int port_id, unsigned int num_byte, char* p_buff)
{
    int i;
    
    switch(port_id)
    {
        case PORT0:
          {
              while((U0TCTL & TXEPT) == 0);              
              
              for(i = 0; i < num_byte; i++)
              {
                  while((U0TCTL & TXEPT) == 0);
                  U0TXBUF = p_buff[i];                   
              } 
           }        
           break;
        
        case PORT1:
          {
              while((U1TCTL & TXEPT) == 0);              
              
              for(i = 0; i < num_byte; i++)
              {
                  while((U1TCTL & TXEPT) == 0);
                  U1TXBUF = p_buff[i];                   
              } 
           }        
           break;    
     }
     
    return 0; 
       
}

/*--------------------------------------------------------------------------------*/
// ��������� ��������� ��������� ������ � ��� ������� ������������ ����������� ������
// ��������� �� � ����� � ���������� ��������� 1, ����� 0. ��� �������� �����
// ��������� �.�. ����������
/*
int serial_read_paket(unsigned int port_id, unsigned int num_byte,char* p_buff)
{
    int i,test;
    for(i = 0; i < num_byte; i++)    
        {
        test = RX_BUFF_SIZE_0 - i_uart0_read;        
        while( DMA0SZ == test)
        {
        i_uart0_read -= i;
        if (i_uart0_read < 0) i_uart0_read = RX_BUFF_SIZE_0 - i_uart0_read;
        return 0;
        }
        p_buff[i] = rx_buffer[i_uart0_read];                           
        i_uart0_read = (RX_BUFF_SIZE_0 - 1)&(i_uart0_read + 1);
    }     
    return 1;          
}
*/
/*--------------------------------------------------------------------------------
 ���������� �� RX
--------------------------------------------------------------------------------*/
/*
#pragma vector = USART0RX_VECTOR
__interrupt void int_RX (void)
{
 
}
*/
/*--------------------------------------------------------------------------------
 ���������� �� TX
--------------------------------------------------------------------------------*/
/*
#pragma vector = USART0TX_VECTOR
__interrupt void int_TX (void)
{
 
}
*/
/*--------------------------------------------------------------------------------*/


