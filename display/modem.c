// Версия 3

#include "string.h"
#include "stdlib.h"
#include "gdef.h"
#include "time.h"
#include "serial.h"
#include "modem_def.h"

/*--------------------------------------------------------------------------------
  Открытие последовательного интерфейса
--------------------------------------------------------------------------------*/
void modem_init(void)
{
  serial_init_port0();
}
/*--------------------------------------------------------------------------------*/
void modem_reset(void)
{
  P3DIR |= BIT0;       

  P3OUT &= ~BIT0;       
  time_wait(10);      
  P3OUT |= BIT0;         
  
  P3DIR &= ~BIT0;    
}
/*--------------------------------------------------------------------------------*/
int modem_detect(void)
{
  char buffer[8];
  buffer[0] = 0x01;
  serial_write(0, 1, buffer);
  serial_read(0, 6, buffer);  
  return 0;
}
/*--------------------------------------------------------------------------------*/
char modem_setmode(char mode)
{ 
  char buf;
  int ret;
  
  buf = 0;
  
  serial_write(0, 1, &mode);    
  ret = serial_read(0, 1, &buf);    
  if(ret)
  {
      if(buf == mode) return 1;
      else return 0;
  }
  return 0;
}
/*--------------------------------------------------------------------------------*/
int modem_trdata(char* data)
{
  char buffer = 0;
  serial_write(0, 4, data);           
  serial_read(0, 1, &buffer);       

  return buffer;
}
/*--------------------------------------------------------------------------------*/
// int serial_read(unsigned int port_id, unsigned int num_byte,char* p_buff)
/*--------------------------------------------------------------------------------*/
void modem_setaddress(char addr)
{
   char buffer[2];
   buffer[0] = 0x08;
   buffer[1] = addr;               
   serial_write(0, 2, buffer);              
}
/*--------------------------------------------------------------------------------*/

