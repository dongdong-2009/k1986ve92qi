#include "string.h"
#include "stdlib.h"
#include "strutils.h"

#include "gdef.h"
#include "time.h"
#include "gl.h"
#include "MT12864.h"
#include "test_bmp.h"
#include "font_bmp.h"
#include "map_bmp.h"
#include "modem.h"
#include "modem_def.h"
#include "buttons.h"
#include "buttons_def.h"
#include "ico_bmp_alpha.h"
#include "menu.h"
#include "serial.h"

#include "AT45DB041B.h"
#include "file.h"

#include "sound.h"
#include  "wav_tbl.h"
#include "gps.h"

static void (*MainProc)(void) = 0;
static void system_shutdown(void);
static void wait_on(void);
static void MenuProc(void);
static void BkgProc(void);
static void shutdown_proc(void);
static void modem_rx(void);
//static void modem_tx(void);
//static void modem_addr(void);
static void modem_reset_proc(void);
static void modem_id(void);
static void modem_rssi(void);
static void lcd_setlig(void);
//static void modem_setpacksize(void);
static void send_commands(void);

//static void GeoTest(void);
//static void MapTest(void);
void HelpProc(void);
void gps_test(void);

#define NUM_MENU_ITEMS 8

const MENU_ITEM MenuItems[NUM_MENU_ITEMS] = {{"Read", HelpProc}, 
                                {"Send", send_commands}, 
                                {"Modem RSSI", modem_rssi}, 
                                {"Modem id", modem_id},   
                                {"Modem reset", modem_reset_proc},                                                                 
                                {"LCD options", lcd_setlig}, 
                                {"GPS", gps_test},                                                                 
                                {"Shutdown", shutdown_proc}};
                                
MENU_DESCRIPTOR MainMenuDes = {"MAIN MENU", 0, 4, NUM_MENU_ITEMS, (MENU_ITEM*)MenuItems};

/*-------------------------------------------------------------------------------------------------------*/
void Intro(void)
{
  char* text = "Patria o muerte";
  int i;
     
  glClear((unsigned char*)test_bmp_tbl);         
  
  glRasterPos(64,12);            
  glDrawText((char*)text,8,GL_LUMINANCE);            

  glRasterPos(64,24);            
  glDrawText((char*)text+9,6,GL_LUMINANCE);       
  glFlush();  
  
  MainProc = BkgProc;  
  /*
  sound_pwr_on();
  sound_set_volume(1000);
  time_wait(1000);    
  
  for(i = 0; i < 3; i++)
  {
	  sound_play((char*)wav_table, NUM_SAMPLES, 0);        
	  time_wait(1000);    
  }
  
  sound_pwr_off();  
  */
}   
/*-------------------------------------------------------------------------------------------------------*/
int DlgBox(char* text)
{
    int state;
    char* pstr;
    
    glColor(0);
    glPolygonMode(GL_FILL);       
    glRect(17, 10, 108, 49);          
    
    glColor(1);
    glPolygonMode(GL_LINE);       
    glRect(17, 10, 108, 49);          
    
    glRect(29, 35, 49, 45);            
    glRasterPos(31, 37);
    glDrawText(" OK",20,GL_LUMINANCE);   
        
    glRect(62, 35, 100, 45);            
    glRasterPos(64, 37);            
    glDrawText("Cansel",20,GL_LUMINANCE);       
    
    glRasterPos(25, 15);            
    pstr = glDrawText(text,12,GL_LUMINANCE);   
    if(*pstr)
    {
        glRasterPos(25, 15+8);                
        glDrawText(pstr, 12, GL_LUMINANCE);           
    }
    
    glFlush();                        

    while(1)
    {
        __bis_SR_register(CPUOFF);
        state = get_butclick();   
      
        if(state & BUT_ENTER) return 1;
        else if(state & BUT_ESCAPE) return 0;                        
    }    
}
/*-------------------------------------------------------------------------------------------------------*/
void MenuProc(void)
{
   static int sel = 0;

   while(1)
   {  
      unsigned char state = 0;
      state = get_butclick();                    
             
      if(state & BUT_ENTER) 
      {
          MainProc = MenuItems[sel].proc;
          return;
      }
      else if(state & BUT_ESCAPE) 
      {
          MainProc = BkgProc;                                    
          return;        
      }
      
      if(state & BUT_UP) 
      {
        sel--;
        if(sel > (NUM_MENU_ITEMS-1)) sel = 0;
        if(sel < 0) sel = (NUM_MENU_ITEMS-1);
      }
      if(state & BUT_DOWN)  
      {
        sel++;
        if(sel > (NUM_MENU_ITEMS-1)) sel = 0;
        if(sel < 0) sel = (NUM_MENU_ITEMS-1);        
      }      
  
      glClear((unsigned char*)map_bmp_tbl);  
      glColor(1);                     
//      glPolygonMode(GL_LINE);            
//      glRect(0, 0, 127, 63);                
                                 
      DrawMenu(&MainMenuDes, sel);       
                  
      glFlush();      
      
      __bis_SR_register(CPUOFF);     
   }  
}   
/*-------------------------------------------------------------------------------------------------------*/
/*
void GeoTest(void)
{    
    glColor(0);
    glClear(0);  
    
    glColor(1);      
    glBegin(GL_LINE_STRIP);     
    glVertex(10,10);
    glVertex(20,20);      
    glVertex(30,30);      
    glVertex(40,40);            
    glEnd();
    
    glPolygonMode(GL_LINE);       
    glCircle(50, 30, 20);
    glRect(50, 30, 100, 60);
         
    glFlush();    
    
    while(1)
    {
        __bis_SR_register(CPUOFF);
        int state = get_butclick();       
        if(state & BUT_ESCAPE) 
        {    
            MainProc = MenuProc;      
            return;
        }
    }        
}
*/
/*-------------------------------------------------------------------------------------------------------*/
/*void MapTest(void)
{
   int x = 20;
   int y = 20;
      
   while(1)
   {  
      unsigned char state = get_butclick();

      if(state & BUT_ESCAPE) 
      {
          MainProc = MenuProc;      
          return;
      }        
      //if(state & BUT_ENTER) y+=4;      
      if(state & BUT_UP) y+=4;
      if(state & BUT_DOWN) y-=4;               

      glClear((unsigned char*)map_bmp_tbl);              
      
      glRasterPos(x, y);
      glDrawPixels(16, 16, GL_LUMINANCE_ALPHA, GL_BITMAP, (unsigned char*)ico_bmp_alpha_tbl);
      
      glFlush();      
      
      __bis_SR_register(CPUOFF);         
   }
}
*/
/*-------------------------------------------------------------------------------------------------------*/
static void gps_test(void)
{
   int i,n,y;
   char sum;
   char txt[128];
   char* pstr;
   
   while(1)
   {  
      unsigned char state = get_butclick();
      
      if(state & BUT_ESCAPE) 
      {
          MainProc = MenuProc;      
          return;
      }        
      
     
      n = gps_read_GPRMC(126, txt);
      if(n)
      {
        sum = 0;
        for(i = 1; i < n-5; i++)
        {
           sum ^= txt[i];
        }        
        
        glColor(0);
        glClear(0);        
        
        glRasterPos(0, 0);            
        pstr = glDrawText(txt,20,GL_LUMINANCE);   
        y = 8;
        while(*pstr)
        {
            glRasterPos(3, y);            
            pstr = glDrawText(pstr,20,GL_LUMINANCE);   
            y += 8;
        }
    
        glFlush();                              
      }                 
      
      __bis_SR_register(CPUOFF);         
   }          
}
/*-------------------------------------------------------------------------------------------------------*/
static void lcd_setlig(void)
{

   while(1)
   {  
      unsigned char state = get_butclick();
      
      if(state & BUT_ESCAPE) 
      {
          MainProc = MenuProc;      
          return;
      }        
      
      if(state & BUT_ENTER)
      {
          LCD_LIGHT_SWITCH
          LCD_light ^= 1;
      }
      
      glColor(0);
      glClear(0);
      
      glRasterPos(4, 8);  
      if(LCD_light)         
        glDrawText("LCD light: ON",21,GL_LUMINANCE);             
      else
        glDrawText("LCD light: OFF",21,GL_LUMINANCE);             
      glFlush();                  
      
      __bis_SR_register(CPUOFF);         
   }      
}
/*-------------------------------------------------------------------------------------------------------*/
void modem_id(void)
{
    char str[32] = "Error!";      
    
    serial_flush();           
    serial_read_timeout = 1000;  
    
    if(modem_setmode(MODEM_ID))
    {
        serial_read(0, 15, str);                       
    }

    DlgBox(str);     
    MainProc = MenuProc;      
    return;    
}
/*-------------------------------------------------------------------------------------------------------*/
void send_commands(void)
{   
    register int sel = 0;
    unsigned char params[3] = {0,0,0};
    const char pack_size = 2;    
    
    MENU_ITEM menu_items[5];
    MENU_DESCRIPTOR menu_des;
    
    char item1_str[12] = "Addres=0";
    char item2_str[12] = "Byte1= 0";
    char item3_str[12] = "Byte2= 0";           
    const char item4_str[12] = "Send";           
    const char item5_str[12] = "Exit";                   
    
    menu_items[0].text = item1_str;    
    menu_items[0].proc = 0;        
    
    menu_items[1].text = item2_str;    
    menu_items[1].proc = 0;   
    
    menu_items[2].text = item3_str;    
    menu_items[2].proc = 0;                     
    
    menu_items[3].text = (char*)item4_str;    
    menu_items[3].proc = 0;   
    
    menu_items[4].text = (char*)item5_str;    
    menu_items[4].proc = 0;                     
    
    menu_des.caption = (char*)"Send command";   
    menu_des.imin = 0;
    menu_des.imax = 4;
    menu_des.num_items = 5;
    menu_des.items = menu_items;
    
    serial_flush();           
    serial_read_timeout = 3000;    
    
   while(1)
   {  
      unsigned char state = get_butclick();
                  
      if( state & BUT_ENTER )
      { 
          if(sel < 3) 
          {
              params[sel]++;
              itoa(menu_items[sel].text+7, params[sel]);            
          }
          else
          {      
              if(sel == 4)
              {
                  // exit
                  MainProc = MenuProc;      
                  return;
              }
              else
              {
                  // Tr data
                  if(modem_setmode(MODEM_SETDSTADDR)) 
                  {
                      serial_write(0, 1, (char*)&params[0]);        
                      if(modem_setmode(MODEM_SETPACKSIZE))
                      {
                           serial_write(0, 1, (char*)&pack_size);                                   

                           
                           
                           if( modem_setmode(MODEM_TX) ) 
                           {
                                char ret;
                                serial_write(0, pack_size, (char*)&params[1]); 
                                if(!serial_read(0, 1, &ret))  DlgBox("modem no answer!");                    
                           }             
                           else
                           {
                                DlgBox("Error set TX mode!");        
                           } 
                                                     
                      }                               
                      else  DlgBox("Error set pack size!");                              
                      
                  }
                  else  DlgBox("Error set dest addr!");                              
              }    
          }          
          
      }      
      

      if(state & BUT_ESCAPE) 
      {
          if(sel < 3) 
          {
              params[sel]--;  
              itoa(menu_items[sel].text+7, params[sel]);        
          }              
      }       
      
      if(state & BUT_DOWN)
      {
         sel++;
         if(sel > 4) sel = 0;         
      }

      if(state & BUT_UP)
      {
         sel--; 
         if(sel < 0) sel = 4;                                               
      }               
                       
      glColor(0);
      glClear(0);
      
      DrawMenu(&menu_des, sel);       
      glFlush();                  
      
      __bis_SR_register(CPUOFF);         
   }      
}
/*-------------------------------------------------------------------------------------------------------*/
/*
void modem_setpacksize(void)
{    
    char str[16] = "Pack size = ";
    unsigned char pack_size = 2;           
    
    serial_flush();     
    serial_set_readtimeout(1000);      
    
    if(modem_setmode(MODEM_GETPACKSIZE))
    {
        serial_read(0, 1, (char*)&pack_size);   
    }
    else
    {
        DlgBox("Get packsize fault!");        
        MainProc = MenuProc;              
        return;   
    }          
        
   while(1)
   {  
      unsigned char state = get_butclick();
                  
      if(state & BUT_ESCAPE) 
      {
          MainProc = MenuProc;      
          return;
      }       
      
      if(state & BUT_UP) pack_size++;
      if(state & BUT_DOWN) pack_size--;                                       
      
      if( state & BUT_ENTER )
      {                        
           MainProc = MenuProc;      
           if(modem_setmode(MODEM_SETPACKSIZE))
           {
                serial_write(0, 1, (char*)&pack_size);       
                
                if(modem_setmode(MODEM_GETPACKSIZE))
                {
                    unsigned char check;
                    serial_read(0, 1, (char*)&check);                       
                    if(check == pack_size) return;
                }
           }

          DlgBox("Set packsize fault!");                     
          return;                   
      }
            
      itoa(str+12, pack_size);
      
      glColor(0);
      glClear(0);
                        
      glRasterPos(4, 4);            
      glDrawText(str,21,GL_LUMINANCE);             
      glFlush();                  
      
      __bis_SR_register(CPUOFF);         
   }  
              
}
*/
/*-------------------------------------------------------------------------------------------------------*/
/*void modem_tx(void)
{
   char i = 0;        
   char pack_size;  
   char dstaddr;                                          

   serial_flush();     
   serial_set_readtimeout(3000);   
      
   if(modem_setmode(MODEM_GETPACKSIZE))
   {
       serial_read(0, 1, &pack_size);   
   }
   else
   {
        DlgBox("Get packsize fault!");        
        MainProc = MenuProc;              
        return;   
   }
      
  dstaddr = 3;
  if(modem_setmode(MODEM_SETDSTADDR)) 
  {
      serial_write(0, 1, (char*)&dstaddr);                 
  }
  else  DlgBox("Error set dest addr!");            
         
   while(1)
   {  
      unsigned char state = get_butclick();
      char str[16];
      
      if(state & BUT_ESCAPE) 
      {
          MainProc = MenuProc;      
          return;
      }        
      
      if(state & BUT_ENTER)
      {
          char buff[32];

           if( modem_setmode(MODEM_TX) ) 
           {
                serial_write(0, pack_size, buff); 
                if(!serial_read(0, 1, &i))  DlgBox("modem no answer!");                    
           }             
           else
           {
                DlgBox("Error set TX mode!");        
           }
          
      }
      
      glColor(0);
      glClear(0);
      
      glRasterPos(4, 4);            
      glDrawText(itoa(str, i),3,GL_LUMINANCE);             
      glFlush();                  
      
      __bis_SR_register(CPUOFF);         
   }
}
*/
/*--------------------------------------------------------------------------------------------*/
void modem_rssi(void)
{
   serial_flush();     
   serial_read_timeout = 1000;   
        

   if( !modem_setmode(MODEM_RSSIMETER) ) 
   {
        MainProc = MenuProc;      
        DlgBox("Error RSSI!");        
        return;   
   }   

   while(1)
   {  
      unsigned char state = get_butclick();
      unsigned char rssi;
      char str[16];
      
      time_wait(300);        
      glColor(0);
      glClear(0);
      
      glRasterPos(4, 0);            
      glDrawText("RSSI:",5,GL_LUMINANCE);                   

      if(state & BUT_ESCAPE) 
      {
          modem_setmode(MODEM_OFF);   
          MainProc = MenuProc;      
          return;
      }        
                                                          
      if(serial_read(0, 1, (char*)&rssi))
      {
          glRasterPos(4, 8);            
          glDrawText(itoa(str, rssi),3,GL_LUMINANCE);     
      }                       
      
      glFlush();            
   }

}
/*--------------------------------------------------------------------------------------------*/
typedef struct 
{
    unsigned char packet[4];
} RX_MESSAGE;

#define NUM_LINES 6

void modem_rx(void)
{
   char buff[16];   
   const char pack_size = 2;  

   static RX_MESSAGE msg[NUM_LINES]; 
   static int num_msg = 0; 
   static int imsg = NUM_LINES-1;

   serial_flush();        
   serial_read_timeout = 1000;   
   
  
   if(modem_setmode(MODEM_SETPACKSIZE))
   {
        serial_write(0, 1, (char*)&pack_size);    
   }
   else
   {
        DlgBox("Set packsize fault!");       
        MainProc = MenuProc;      
        return;                        
   }      
                      
   if( !modem_setmode(MODEM_RX) ) 
   {
        MainProc = MenuProc;      
        DlgBox("Error RX!");        
        return;   
   }   

   while(1)
   {  
      unsigned char state = get_butclick();
      register int i,j,k,x,y,flag;
      char str[16];
      char *pstr;

      if(state & BUT_ESCAPE) 
      {
          modem_setmode(MODEM_OFF);   
          MainProc = MenuProc;      
          return;
      }        
                                                                
      glColor(0);
      glClear(0);
      
      glRasterPos(2, 0);            
      pstr = glDrawText("Addr Byte1 Byte2 RSSI",21,GL_LUMINANCE);                   
      
      glColor(1);      
      glBegin(GL_LINES);     

        glVertex(32,0);
        glVertex(32,63);      
  
        glVertex(64,0);      
        glVertex(64,63);            
        
        glVertex(96,0);      
        glVertex(96,63);             
        
        glVertex(0,10);      
        glVertex(127,10);           

      glEnd();               
      
      if( 4 == serial_read(1, pack_size+2, buff) )      
      {
          imsg ++;
          if(imsg >= NUM_LINES) imsg = 0;          
          if(num_msg < NUM_LINES) num_msg++;                    
           
          msg[imsg].packet[0] = buff[0]; 
          msg[imsg].packet[1] = buff[1];
          msg[imsg].packet[2] = buff[2];
          msg[imsg].packet[3] = buff[3];                              
      }            
                
      y = 12;
      i = imsg;
      flag = GL_LUMINANCE_INV;          
      
      glPolygonMode(GL_FILL);       
      glRect(0, y-1, 127, y+7);           
      
      for(k = 0; k < num_msg; k++)
      {          
          pstr = str;    
          x = 2;                          
          for(j = 0; j < 4; j++)
          {
              glRasterPos(x, y);            
              pstr = glDrawText(itoa(pstr, msg[i].packet[j]),3,flag);                             
              x += 32;
          }                  
                            
          i --;
          if(i < 0) i = NUM_LINES-1;

          y += 8;                      
          flag = GL_LUMINANCE;
      }
                 
      glFlush();                       
   }
}
/*-------------------------------------------------------------------------------------------------------*/
/*
void modem_addr(void)
{
   int getaddr = 0;
   int setaddr = 0;   
          
   while(1)
   {  
      unsigned char state = get_butclick();
      char str[16];

      if(state & BUT_ESCAPE) 
      {
          MainProc = MenuProc;      
          return;
      }        
      
      if(state & BUT_ENTER)
      {
          if(modem_setmode(MODEM_SETLOCADDR)) 
          {
              serial_write(0, 1, (char*)&setaddr);           
              
              if(modem_setmode(MODEM_GETLOCADDR)) serial_read(0, 1, (char*)&getaddr);               
              else DlgBox("Error get!");                    
          }
          else  DlgBox("Error set!");                    
      }
                            
      if(state & BUT_UP) setaddr++;
      if(state & BUT_DOWN) setaddr--;           
                 
      glColor(0);
      glClear(0);
      
      glRasterPos(4, 4);            
      glDrawText(itoa(str, setaddr),3,GL_LUMINANCE);             
      glRasterPos(4, 12);            
      glDrawText(itoa(str, getaddr),3,GL_LUMINANCE);                   
      glFlush(); 
      
      __bis_SR_register(CPUOFF);         
   }    
}
*/
/*-------------------------------------------------------------------------------------------------------*/
void modem_reset_proc(void)
{
    modem_reset();  
 
    DlgBox("Modem is reset.");     
    MainProc = MenuProc;      
    return;    
}
/*-------------------------------------------------------------------------------------------------------*/
void shutdown_proc(void)
{
    if(DlgBox("Do you want to shutdown?"))
        MainProc = system_shutdown;
    else
        MainProc = MenuProc;
}    
/*-------------------------------------------------------------------------------------------------------*/          
void system_shutdown(void)
{
   DisplayOff();
   sound_pwr_off();       
   modem_setmode(MODEM_OFF);     
   
   MainProc = wait_on;                                    
   
   P1DIR &= ~0xff;        
   P2DIR &= ~0xff;        
   P3DIR &= ~0xff;        
   P4DIR &= ~0xff;        
   P5DIR &= ~0xff;        
   P6DIR &= ~0xff;               

   BCSCTL2 = 0x00; 
   BCSCTL1 |= XT2OFF;  
}
/*-------------------------------------------------------------------------------------------------------*/
int exe_test(int x)
{
	return x+2;
}

void system_init(void)
{
   int i,n,y;
//   char sum;
   char txt[400];
   char status;
//   char* pstr;
	char buf[8] = "Fuck!";
	char exe[4];
		   
   WDTCTL = WDTPW + WDTHOLD; 
   _BIS_SR(GIE);          
                        
   init_buttons();
   time_init();    
   AT45DB041_init();   
/*
	fopen(FILE1, "w");
	fwrite((char*)exe_test,4);		 	    
	fclose();   
*/	
/*
	fopen(FILE1, "r");
	fread(exe,4);		 	    
	fclose();   
*/  
/* 
   while(1)
   {	
	    y = ((int(*)(int))exe)(n);							
		time_wait(1000);		
   }
*/ 

/*
   P6DIR |= BIT3;
   while(1)
   {	
	    P6OUT ^= BIT3;		
		time_wait(9);		
   }
*/
   
   DisplayInit();
   DisplayClear();        
   
   modem_init();
   modem_reset(); 

   while(1)
   {	
	   modem_detect();
	   time_wait(1000);		
   }
   
   serial_init_port1();   
   
   sound_init();        
/*  
   while(1)
   {
      n = gps_read_GPRMC(126, txt);
      if(n)
      {
        sum = 0;
        for(i = 1; i < n-5; i++)
        {
           sum ^= txt[i];
        }        
        
        glRasterPos(0, 0);            
        pstr = glDrawText(txt,20,GL_LUMINANCE);   
        y = 8;
        while(*pstr)
        {
            glRasterPos(3, y);            
            pstr = glDrawText(pstr,20,GL_LUMINANCE);   
            y += 8;
        }
    
        glFlush();                              
      }
   }
*/   
}
/*-------------------------------------------------------------------------------------------------------*/
void wait_on(void)
{
   unsigned int i;

   P2DIR &= ~BUT_ENTER;
   P2IE |= BUT_ENTER;
   P2IES &= ~BUT_ENTER;
    
   while(1)
   {
      i = 0;
      __bis_SR_register(SCG0+SCG1+CPUOFF+0);
      while(P2IN & BUT_ENTER) 
      {
          i++;
          if(i == 0xFFFF) 
          {
              __bic_SR_register(SCG0+SCG1+CPUOFF+0);
              P2IE &= ~BUT_ENTER;
              system_init();
              MainProc = Intro;                            
              return;
          }
      }
   }   
}
/*-------------------------------------------------------------------------------------------------------*/
void HelpProc(void)
{
    const char* text = 
"The MSP430’s orthogonal architecture provides the flexibility \
of 16 fully addressable, single-cycle 16-bit CPU registers and \
the power of a RISC.";

    int y = 0;

    glColor(0);    
        
    while(1)
    {    
        int state = get_butclick();                    
        char* pstr = (char*)text;                  
        
        if(state & BUT_ESCAPE) 
        {    
            MainProc = MenuProc;      
            return;
        }
//        if(state & BUT_UP) pstart += 20;
//        if(state & BUT_DOWN)  pstart -= 20; 
               
        glClear(0);        

        for(y = 0; y < 64; y += 8)
        {
            glRasterPos(0, y);                
            pstr = glDrawText(pstr, 20, GL_LUMINANCE);           
        }
        
        glFlush();    
        __bis_SR_register(CPUOFF);        
    }                             
}
/*-------------------------------------------------------------------------------------------------------*/
void BkgProc(void)
{
    int state;
    
    glClear((unsigned char*)map_bmp_tbl); 
    glFlush();                
     
    while(1)
    {
        __bis_SR_register(CPUOFF);
        state = get_butclick();       
        if(state & BUT_ENTER) 
        {    
            MainProc = MenuProc;      
            return;
        }
    }    
}    
/*-------------------------------------------------------------------------------------------------------*/
void main(void)
{         	
   system_init();
   system_shutdown();   
   
   while(1) MainProc(); 
}
/*-------------------------------------------------------------------------------------------------------*/
