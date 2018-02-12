// Версия 3.2
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
  Открытие последовательного интерфейса
--------------------------------------------------------------------------------*/
void serial_init_port0(void)
{
    P3DIR |= BIT4;  // выход передатчика
    P3SEL |= BIT4;    
    
    P3DIR &= ~BIT5; // вход приемника    
    P3SEL |= BIT5;

    U0CTL = 0;
    U0CTL |= SWRST;   // выкл UART

    // регистр U0CTL
    U0CTL &= ~PENA;     // нет проверки четности
    U0CTL &= ~PEV;      // тип проверки на четность            
    U0CTL &= ~SPB;      // один стоп бит   
    U0CTL |= CHAR;      // сообщение 8 бит
    U0CTL &= ~LISTEN;   // запрет петлевого режима
    U0CTL &= ~SYNC;     // выбор режима UART        
    U0CTL &= ~MM;       // мультипроцессорный режим со свободной линией           
           
    // регистр U0TCTL
    U0TCTL = 0;
    U0TCTL &= ~TXWAKE;   // первый передаваемый байт - данные
    U0TCTL &= ~URXSE;    // 
    U0TCTL |= SSEL1;     // тактирование SMCLK        
    U0TCTL &= ~CKPL;     //     
    U0TCTL |= TXEPT;     // передатчик готов к работе
     
    // регистр U0RCTL                        
    U0RCTL = 0;               
    U0RCTL &= ~URXWIE;   // выбор типа прерываний - прерывания при приеме любого символа
    U0RCTL &= ~URXEIE;   // запрет прерываний при ошибке               
    U0RCTL &= ~RXERR;    // запрет обнаружения ошибок                    
      
    // выбор скорости 2400 бод при кварце 11,0592 МГц
    U0BR0 = 0xFF & (11059200 / 2 / 2400);
    U0BR1 = 0xFF & ((11059200 / 2 / 2400) >> 8);    
    
    U0MCTL = 0;       // модулятор не используем
                   
    ME1 |= UTXE0;     // разрешение передатчика
    ME1 |= URXE0;     // разрешение приемника
    
    U0CTL &= ~SWRST;  // вкл UART           
    
//    IE1 |= UTXIE0;    // разрешение прерываний от передатчика
//    IE1 |= URXIE0;    // разрешение прерываний от приемника                                       

    // Настройка DMA            
    DMA0CTL = 0;

    // register DMACTL0    
    DMACTL0 &= ~0x000f;    // очищаем поле канала0
    DMACTL0 |= DMA0TSEL_3; // управление DMA0 от URXIFG0

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
    P3DIR |= BIT6;  // выход передатчика
    P3SEL |= BIT6;    
    
    P3DIR &= ~BIT7; // вход приемника    
    P3SEL |= BIT7;

    U1CTL = 0;
    U1CTL |= SWRST;   // выкл UART

    // регистр U1CTL
    U1CTL &= ~PENA;     // нет проверки четности
    U1CTL &= ~PEV;      // тип проверки на четность            
    U1CTL &= ~SPB;      // один стоп бит   
    U1CTL |= CHAR;      // сообщение 8 бит
    U1CTL &= ~LISTEN;   // запрет петлевого режима
    U1CTL &= ~SYNC;     // выбор режима UART        
    U1CTL &= ~MM;       // мультипроцессорный режим со свободной линией           
           
    // регистр U1TCTL
    U1TCTL = 0;
    U1TCTL &= ~TXWAKE;   // первый передаваемый байт - данные
    U1TCTL &= ~URXSE;    // 
    U1TCTL |= SSEL1;     // тактирование SMCLK        
    U1TCTL &= ~CKPL;     //     
    U1TCTL |= TXEPT;     // передатчик готов к работе
     
    // регистр U1RCTL                        
    U1RCTL = 0;               
    U1RCTL &= ~URXWIE;   // выбор типа прерываний - прерывания при приеме любого символа
    U1RCTL &= ~URXEIE;   // запрет прерываний при ошибке               
    U1RCTL &= ~RXERR;    // запрет обнаружения ошибок                    
      
    // выбор скорости 9600 бод при кварце 11,0592 МГц
    U1BR0 = 0xFF &  (11059200 / 2 / 9600);
    U1BR1 = 0xFF & ((11059200 / 2 / 9600) >> 8);    
    
    U1MCTL = 0;       // модулятор не используем
                   
    ME2 |= UTXE1;     // разрешение передатчика
    ME2 |= URXE1;     // разрешение приемника
    
    U1CTL &= ~SWRST;  // вкл UART                                                   

    // Настройка DMA            

    // register DMACTL0    
    DMACTL0 &= ~0x00f0;    // очищаем поле канала1    
    DMACTL0 |= DMA1TSEL_9; // управление DMA1 от URXIFG1

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
 Очистка последовательного порта
--------------------------------------------------------------------------------*/
void serial_flush(void)
{
    U0CTL |= SWRST;   // выкл UART
    
    DMA0CTL &= ~DMAEN;        // DMA off       
   
    DMA0SA = (unsigned short)&U0RXBUF;       // source address
    DMA0DA = (unsigned short)rx_buffer;      // dest address
    DMA0SZ = RX_BUFF_SIZE_PORT0;
    
    i_uart0_read = 0;
    
    DMA0CTL |= DMAEN;        // DMA on   
        
    U0CTL &= ~SWRST;  // вкл UART                       
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
// процедура проверяет состояние буфера и при наличии необходимого колличества данных
// считывает их в буфер и возвращает результат 1, иначе 0. Для нулевого порта
// Добавлено А.М. Нестерович
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
 Прерывание от RX
--------------------------------------------------------------------------------*/
/*
#pragma vector = USART0RX_VECTOR
__interrupt void int_RX (void)
{
 
}
*/
/*--------------------------------------------------------------------------------
 Прерывание от TX
--------------------------------------------------------------------------------*/
/*
#pragma vector = USART0TX_VECTOR
__interrupt void int_TX (void)
{
 
}
*/
/*--------------------------------------------------------------------------------*/


