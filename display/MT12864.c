#include "MT12864_def.h"

int LCD_light = 0;
const   unsigned char SELTBL[2] = {SE1,SE2};

static void write_bus(unsigned char data);
static unsigned char read_bus(void);


#define cycle_delay  //asm("nop"); //asm("nop"); //asm("nop");

/*--------------------------------------------------------------------------------*/
void DisplayInit(void)
{ 
      
      CLRPIN(SE);
      CLRPIN(SRW);   // режим модуля - ввод
      SETPIN(SRES);
      
      SELCHIP1;
      
      CLRPIN(SRES); // сброс модуля
      time_wait(2);
      SETPIN(SRES);
      time_wait(2);   
  
}
/*--------------------------------------------------------------------------------*/
void write_bus(unsigned char data)
{
  CLRPIN(SRW);   // режим модуля - ввод  

  SETPIN(SE);      
  P1DIR = 0xff;   // наша шина данных на выход     
  P1OUT = data;   // выставляем данные на шину   
  CLRPIN(SE);     // защелкиваем данные               
  P1DIR = 0x00;   // наша шина данных на вход     
  
  cycle_delay
    
}
/*--------------------------------------------------------------------------------*/
unsigned char read_bus(void)
{
  unsigned char data;
  
  P1DIR = 0x00; // наша шина данных на вход   
  SETPIN(SRW);   // режим модуля - ввод    

  SETPIN(SE);  
  
  asm("nop");   
  asm("nop");   
  asm("nop");     
  
  data = P1IN;   // read data from bus
   
  CLRPIN(SE);     
  
  cycle_delay       
  return data;        
}
/*--------------------------------------------------------------------------------*/
void DisplayOn(void)
{
  CLRPIN(SA0);  
  SELCHIP1
  write_bus(0x3f);    
  SELCHIP2
  write_bus(0x3f);     
}
/*--------------------------------------------------------------------------------*/
void DisplayOff(void)
{
  CLRPIN(SA0);  
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
  CLRPIN(SA0);  
  write_bus(0xC0 | line);           
}
/*--------------------------------------------------------------------------------*/
void DisplaySetPage( unsigned char page)
{
  CLRPIN(SA0);  
  write_bus(0xB8 | page);                 
}
/*--------------------------------------------------------------------------------*/
void DisplaySetAddress( unsigned char addr)
{
  CLRPIN(SA0);  
  write_bus(0x40 | addr);                 
}
/*--------------------------------------------------------------------------------*/
unsigned char DisplayReadStatus(void)
{
  CLRPIN(SA0);  
  return read_bus();
}
/*--------------------------------------------------------------------------------*/
void DisplayWriteData(unsigned char data)
{
  SETPIN(SA0);
  write_bus(data);                       
}
/*--------------------------------------------------------------------------------*/
unsigned char DisplayReadData(void)
{
  SETPIN(SA0);
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
   
  CLRPIN(SA0);  
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

