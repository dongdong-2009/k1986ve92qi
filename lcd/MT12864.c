#include "MT12864_def.h"

int LCD_light = 0;
const   unsigned char SELTBL[2] = {SE1,SE2};

static void write_bus(unsigned char data);
static unsigned char read_bus(void);


static void cycle_delay(uint32_t n)
{
	int32_t i;
	for(i = 0; i < n; i++){};
}

/*--------------------------------------------------------------------------------*/
void DisplayInit(void)
{ 
      
      CLRPIN_SE;
      CLRPIN(SRW);   // режим модуля - ввод
      SETPIN(SRES);
      
      SELCHIP1;
      
      CLRPIN(SRES); // сброс модуля
      cycle_delay(100000);
      SETPIN(SRES);
      cycle_delay(100000);   
  
}
/*--------------------------------------------------------------------------------*/
void write_bus(unsigned char data)
{
  CLRPIN(SRW);   // режим модуля - ввод  

  SETPIN_SE;      
  
  MDR_PORTA->OE |= (1<<0)+(1<<1)+(1<<2)+(1<<3)+(1<<4)+(1<<5);
  MDR_PORTF->OE |= (1<<2)+(1<<3);
  
  //P1OUT = data;   // выставляем данные на шину   
  MDR_PORTA->RXTX &= ~((1<<0)+(1<<1)+(1<<2)+(1<<3)+(1<<4)+(1<<5));
  MDR_PORTF->RXTX &= ~((1<<2)+(1<<3));
  MDR_PORTA->RXTX |= 0x3f&data;
  MDR_PORTF->RXTX |= (data>>4)&0x0c;
  
  CLRPIN_SE;     // защелкиваем данные
                 
  MDR_PORTA->OE &= ~((1<<0)+(1<<1)+(1<<2)+(1<<3)+(1<<4)+(1<<5));
  MDR_PORTF->OE &= ~((1<<2)+(1<<3));
  
  cycle_delay(30);
    
}
/*--------------------------------------------------------------------------------*/
unsigned char read_bus(void)
{
  unsigned char data;
  
  MDR_PORTA->OE &= ~((1<<0)+(1<<1)+(1<<2)+(1<<3)+(1<<4)+(1<<5));
  MDR_PORTF->OE &= ~((1<<2)+(1<<3));

  SETPIN(SRW);   // режим модуля - ввод    

  SETPIN_SE;  
  
  asm("nop");   
  asm("nop");   
  asm("nop");     
  
  data = (MDR_PORTA->RXTX & 0x3f)+( ((MDR_PORTF->RXTX)<<4)&0xc0 ) ;   // read data from bus
   
  CLRPIN_SE;     
  
  cycle_delay(30);       
  return data;        
}
/*--------------------------------------------------------------------------------*/
void DisplayOn(void)
{
  CLRPIN_SA0;  
  SELCHIP1
  write_bus(0x3f);    
  SELCHIP2
  write_bus(0x3f);     
}
/*--------------------------------------------------------------------------------*/
void DisplayOff(void)
{
  CLRPIN_SA0;  
  SELCHIP1
  write_bus(0x3e);
  SELCHIP2
  write_bus(0x3e);  

}
/*--------------------------------------------------------------------------------*/
void DisplaySelectChip(int sel)
{
  CLRPIN((SE1|SE2));
  SETPIN(SELTBL[sel]);
    
}
/*--------------------------------------------------------------------------------*/
void DisplaySTARTLine( unsigned char line)
{   
  CLRPIN_SA0;  
  write_bus(0xC0 | line);           
}
/*--------------------------------------------------------------------------------*/
void DisplaySetPage( unsigned char page)
{
  CLRPIN_SA0;  
  write_bus(0xB8 | page);                 
}
/*--------------------------------------------------------------------------------*/
void DisplaySetAddress( unsigned char addr)
{
  CLRPIN_SA0;  
  write_bus(0x40 | addr);                 
}
/*--------------------------------------------------------------------------------*/
unsigned char DisplayReadStatus(void)
{
  CLRPIN_SA0;  
  return read_bus();
}
/*--------------------------------------------------------------------------------*/
void DisplayWriteData(unsigned char data)
{
  SETPIN_SA0;
  write_bus(data);                       
}
/*--------------------------------------------------------------------------------*/
unsigned char DisplayReadData(void)
{
  SETPIN_SA0;
  return read_bus();
}
/*--------------------------------------------------------------------------------*/
void DisplayClear(void)
{
  int i,j,k;
  
  for(k = 0; k < 2; k++)
  {
      DisplaySelectChip(k);
      for(i = 0; i < 8; i++)
      {
          DisplaySetPage(i);
          for(j = 0; j < 64; j++) DisplayWriteData(0x00);                 
      }
  }       
}
/*--------------------------------------------------------------------------------*/
void DisplayCopy(unsigned char* psrc)
{
    int i,j;  

    SELCHIP1
    DisplaySetAddress(0);                
    SELCHIP2
    DisplaySetAddress(0);            
       
    for(i = 0; i < 8; i++) // перебор страниц
    {
        SELCHIP1
        DisplaySetPage(i);   
        
        for(j = 0; j < 64; j++) // копирование текущей страницы
        {
            DisplayWriteData(psrc[j]);
        }         
        psrc += 64;
        
        SELCHIP2
        DisplaySetPage(i);   
        
        for(j = 0; j < 64; j++) // копирование текущей страницы
        {
            DisplayWriteData(psrc[j]);
        }     
        psrc += 64;          
    }
   
  CLRPIN_SA0;  
  SELCHIP1
  write_bus(0x3f);    
  SELCHIP2
  write_bus(0x3f);         
}
/*--------------------------------------------------------------------------------*/
void DisplaySetPixel(unsigned char x, unsigned char y, unsigned char color)
{
/*
  unsigned char chip;
  unsigned char page;
  unsigned char col;  
  unsigned char data;
  
  chip = x < 64 ? 0:1;
  page = y >> 3;  
  col =  x & 0x3F;
  data = 0x01 << (y & 0x07);
  
  DisplaySelectChip(chip);
  DisplaySetPage(page);   
  DisplaySetAddress(col);  

  DisplayWriteData(data);  
*/         
}
/*--------------------------------------------------------------------------------*/

