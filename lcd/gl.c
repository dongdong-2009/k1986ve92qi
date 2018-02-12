#include "string.h"
#include "stdlib.h"
#include "gdef.h"
#include "MT12864.h"
#include "font_bmp.h"

#include "gl_def.h"

static unsigned char framebuffer[1024];
static unsigned char bColor;
static int Xpos = 0;
static int Ypos = 0;

const unsigned char  mask_tbl[8] = {0x01,0x02,0x04,0x08,0x10,0x20,0x40,0x80};    

static void draw_fillrect(int x1, int y1, int x2, int y2);
static void draw_rect(int x1, int y1, int x2, int y2);
static void draw_pointrect(int x1, int y1, int x2, int y2);

static void set_pixel(int x, int y);
static void null_func(int x, int y);
static void move_to(int x, int y);
static void line_to(int x2, int y2);
static void move_to_begin_linestrip(int x, int y);
static void linestrip_to(int x2, int y2);
void (*glVertex)(int x, int y) = null_func;
void (*glRect)(int x1, int y1, int x2, int y2) = draw_rect;

/*--------------------------------------------------------------------------------
  Очищает буфер кадра
  если задан массив пикселами из него иначе пикселами текущего цвета
--------------------------------------------------------------------------------*/
void glClear(unsigned char* pixels)
{
    if(pixels) memcpy(framebuffer,pixels,1024);
    else memset(framebuffer, bColor, 1024);    
    
    Xpos = 0;
    Ypos = 0;    
}
/*--------------------------------------------------------------------------------*/
void glColor(unsigned char color)
{
    bColor = color;
}
/*-----------------------------------------------------------------------------------------------------*/
void glRasterPos(int x, int y)
{
    Xpos = x;
    Ypos = y;    
}
/*-----------------------------------------------------------------------------------------------------
 Копирует блок пикселов шириной width и высотой height из pixels во фреймбуфер
  Формат с альфой
  P A P A P A P A P A
  -------------------
  0 0 0 0 0 0 0 0 0 0 
  1 1 1 1 1 1 1 1 1 1
  2 2 2 2 2 2 2 2 2 2
  . . . . . . . . . .
  7 7 7 7 7 7 7 7 7 7
  -------------------
-----------------------------------------------------------------------------------------------------*/
void glDrawPixels(int width, int height, int format, int type, unsigned char* pixels)
{
    unsigned char scolor, salpha;
    unsigned char smask; 
    unsigned char dmask; 
        
    int i,j;
    
    smask = 0x01;
    dmask = mask_tbl[Ypos & 0x07];                                                                     
        
    switch(format)
    {    
        case GL_LUMINANCE:
        {          
            unsigned char* ps = pixels;
            unsigned char* pd = (Xpos & 0x7F) + ((Ypos&0x38) << 4) + framebuffer;             
        
            for(i = 0; i < height; i++)
            {                                        
                for(j = 0; j < width; j++)
                { 
                    scolor =  ps[j] & smask;
        
                    if(scolor) pd[j] |= dmask;
                    else       pd[j] &= ~dmask;
                }  
                smask = smask << 1;
                if(smask == 0)
                {
                   smask = 0x01;
                   ps += width;
                }
                
                dmask = dmask << 1;
                if(dmask == 0)
                {
                   dmask = 0x01;        
                   pd += 128;           
                } 
            }  
        }  
        break;
        
        case GL_LUMINANCE_INV:        
        {
            unsigned char* ps = pixels;
            unsigned char* pd = (Xpos & 0x7F) + ((Ypos&0x38) << 4) + framebuffer;             
        
            for(i = 0; i < height; i++)
            {                                        
                for(j = 0; j < width; j++)
                { 
                    scolor =  ps[j] & smask;
        
                    if(scolor) pd[j] &= ~dmask;
                    else       pd[j] |= dmask;
                }  
                smask = smask << 1;
                if(smask == 0)
                {
                   smask = 0x01;
                   ps += width;
                }
                
                dmask = dmask << 1;
                if(dmask == 0)
                {
                   dmask = 0x01;        
                   pd += 128;           
                } 
            }  
        }        
        break;
        
        case GL_LUMINANCE_ALPHA:
        {           
              unsigned int* ps = (unsigned int*)pixels;
              unsigned char* pd = (Xpos & 0x7F) + ((Ypos&0x38) << 4) + framebuffer;        
              
              for(i = 0; i < height; i++)
              {                                        
                  for(j = 0; j < width; j++)
                  { 
                      scolor =  ps[j] & smask;
                      salpha =  *((unsigned char*)(ps+j)+1) & smask;            
                      if(salpha) 
                      {
                          if(scolor) pd[j] |= dmask;
                          else       pd[j] &= ~dmask;
                      }                
                  }  
                  smask = smask << 1;
                  if(smask == 0)
                  {
                     smask = 0x01;
                     ps += width;
                  }
                  
                  dmask = dmask << 1;
                  if(dmask == 0)
                  {
                     dmask = 0x01;        
                     pd += 128;           
                  } 
              }      
        }
        break;
          
     }
}
/*-----------------------------------------------------------------------------------------------------*/
void glCopyPixels(int x, int y, int width, int height)
{
}
/*-----------------------------------------------------------------------------------------------------*/
void glBitmap(int width, int height, int xorig, int yorig, int xmove, int ymove, unsigned char* bitmap)
{
        
}
/*-----------------------------------------------------------------------------------------------------
  Копирует буфер кадра в память ЖКИ
-----------------------------------------------------------------------------------------------------*/
void glFlush(void)
{
    DisplayCopy(framebuffer);
}
/*-----------------------------------------------------------------------------------------------------*/
char* glDrawText(char* pstr, int nums, int flag)
{
   unsigned char* pb;
   int x = Xpos; 
   int y = Ypos;
   int i;
     
   for(i = 0; i < nums; i++)
   {                
       if(pstr[i] < 0x20) 
       {
           if(pstr[i] == 0x10) i++;       
           if(pstr[i] == 10) i++;                  
           if(pstr[i] == 13) i++;                  
           break;
       }
              
       pb =  (unsigned char*)font_bmp_tbl + font_offset_tbl[pstr[i]-0x20];    
       glRasterPos(x, y);       
       glDrawPixels(6, 8, flag, GL_BITMAP, pb);  
       x += 6;
   }
   
   return pstr+i;
}   
/*-----------------------------------------------------------------------------------------------------*/
void glBegin(int state)
{
    static void( *func_tbl[4] )(int, int) = {set_pixel, move_to, null_func, move_to_begin_linestrip};
    glVertex = func_tbl[state];         
}
/*-----------------------------------------------------------------------------------------------------*/
void glEnd(void)
{
    glVertex = null_func;
}
/*-----------------------------------------------------------------------------------------------------*/
void draw_pointrect(int x1, int y1, int x2, int y2)
{  
    set_pixel(x2, y1);        
    set_pixel(x2, y2);            
    set_pixel(x1, y2);                
    set_pixel(x1, y1);                       
}
/*-----------------------------------------------------------------------------------------------------*/
void draw_rect(int x1, int y1, int x2, int y2)
{
    Xpos = x1;
    Ypos = y1;
   
    linestrip_to(x2, y1);        
    linestrip_to(x2, y2);            
    linestrip_to(x1, y2);                
    linestrip_to(x1, y1);                       
}
/*-----------------------------------------------------------------------------------------------------*/
void draw_fillrect(int x1, int y1, int x2, int y2)
{
    int j;
    int width = x2 - x1;
    unsigned char* pd = (x1 & 0x7F) + ((y1&0x38) << 4) + framebuffer;                     
    unsigned char dmask = mask_tbl[y1 & 0x07];                                                                           

    for(; y1 <= y2; y1++)
    {                                        
        for(j = 0; j < width; j++) 
        {
            if(bColor) pd[j] |= dmask;
            else pd[j] &= ~dmask;
        }
        
        dmask = dmask << 1;
        if(dmask == 0)
        {
           dmask = 0x01;        
           pd += 128;           
        } 
    }  
}
/*-----------------------------------------------------------------------------------------------------*/
void glPolygonMode(int mode)
{
    static void ( *func_tbl[3] )(int, int, int, int) = {draw_pointrect, draw_rect, draw_fillrect};
    glRect = func_tbl[mode];        
}
/*-----------------------------------------------------------------------------------------------------*/
void glCircle(int x0, int y0, int r)
{
    int x, y, d;
    
    Xpos = x0;
    Ypos = y0;
    
    d = 3-2*r;
    x = 0;
    y = r;    
    
    while(x <= y)
    {   
        int x1, y1, x2, y2;
        
        x1 = x+Xpos;        
        y1 = y+Ypos;
        x2 = -x+Xpos;
        y2 = -y+Ypos;
        
        set_pixel(x1,y1);
        set_pixel(x1,y2);
        set_pixel(x2,y2);
        set_pixel(x2,y1);
        
        x1 = y+Xpos;        
        y1 = x+Ypos;
        x2 = -y+Xpos;
        y2 = -x+Ypos;        

        set_pixel(x1,y1);
        set_pixel(x1,y2);
        set_pixel(x2,y2);
        set_pixel(x2,y1);
    
         if(d < 0) d += 4*x + 6;
         else 
         {
           d += 4*(x-y) + 10;
           y--;
         }      
         x ++;            
    }           
}
/*-----------------------------------------------------------------------------------------------------*/
void null_func(int x, int y)
{
}
/*-----------------------------------------------------------------------------------------------------*/
void set_pixel(int x, int y)
{
  unsigned char* pdata = framebuffer;
  pdata += (x & 0x7F) + ((y & 0x38) << 4);
  if(bColor) *pdata |= mask_tbl[y & 0x07];    
  else      *pdata &= ~mask_tbl[y & 0x07];    
}
/*-----------------------------------------------------------------------------------------------------*/
void move_to(int x, int y)
{
    Xpos = x;
    Ypos = y;
    glVertex = line_to;                    
}
/*-----------------------------------------------------------------------------------------------------*/
void line_to(int x2, int y2)
{
    int xerr = 0, yerr = 0;
    int dx = x2 - Xpos, dy = y2 - Ypos;
    int incX, incY, d, i, x, y;
    
    if(dx > 0)           incX = 1;
    else if(dx == 0)     incX = 0;
         else if(dx < 0) incX = -1; 
         
    if(dy > 0)           incY = 1;
    else if(dy == 0)     incY = 0;
         else if(dy < 0) incY = -1;          
     
    dx =  abs(dx);    
    dy =  abs(dy);        
    
    if(dx > dy) d = dx;
    else d = dy;
    
    x = Xpos;
    y = Ypos;
    
    for(i = 0; i <= d; i++)
    {
        xerr += dx;        
        yerr += dy;
        
        if(xerr > d) 
        {
          xerr -= d;
          x += incX;
        }
        
        if(yerr > d) 
        {
          yerr -= d;
          y += incY;
        }             
        set_pixel(x, y);               
    } 
             
    glVertex = move_to;                        
}
/*-----------------------------------------------------------------------------------------------------*/
void move_to_begin_linestrip(int x, int y)
{
    Xpos = x;
    Ypos = y;
    glVertex = linestrip_to;                    
}
/*-----------------------------------------------------------------------------------------------------*/
void linestrip_to(int x2, int y2)
{
    int xerr = 0, yerr = 0;
    int dx = x2 - Xpos, dy = y2 - Ypos;
    int incX, incY, d, i, x, y;
    
    if(dx > 0)           incX = 1;
    else if(dx == 0)     incX = 0;
         else if(dx < 0) incX = -1; 
         
    if(dy > 0)           incY = 1;
    else if(dy == 0)     incY = 0;
         else if(dy < 0) incY = -1;          
     
    dx =  abs(dx);    
    dy =  abs(dy);        
    
    if(dx > dy) d = dx;
    else d = dy;
    
    x = Xpos;
    y = Ypos;
    
    for(i = 0; i <= d; i++)
    {
        xerr += dx;        
        yerr += dy;
        
        if(xerr > d) 
        {
          xerr -= d;
          x += incX;
        }
        
        if(yerr > d) 
        {
          yerr -= d;
          y += incY;
        }             
        set_pixel(x, y);               
    } 
    
    Xpos = x2;
    Ypos = y2;          
}
/*-----------------------------------------------------------------------------------------------------*/
/*******************************************************************************************************/








