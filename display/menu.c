#include "menu_def.h"
#include "gdef.h"
#include "time.h"
#include "gl.h"

/*-------------------------------------------------------------------------------------------------------*/
void DrawMenu(MENU_DESCRIPTOR* des, int sel)
{
    int i, y;
    //static int imin = 0, imax = 4;  
    MENU_ITEM* item = des->items;
    
    glColor(0);
    glPolygonMode(GL_FILL);       
    glRect(1, 1, 63, 62);          

    glColor(1);                     
    glBegin(GL_LINES);     
    glVertex(63,0);
    glVertex(63,63);      
    glVertex(0,10);      
    glVertex(63,10);            
    glEnd();      
    
    glRasterPos(4, 2);
    glDrawText(des->caption,20,GL_LUMINANCE);        
    
    y = 13;   
   
    if(sel > des->imax)
    {
        des->imin = sel - 4;
        des->imax = sel;
    }
    else if(sel < des->imin)
        {
            des->imin = sel;
            des->imax = sel + 4;    
        }    
    
    for(i = des->imin; i <= des->imax; i++)
    {
        char* str = item[i].text;    
        
        glRasterPos(4, y);

        if(sel == i) 
        {
            glRect(2, y-1, 62, y+8);          
            glDrawText(str,20,GL_LUMINANCE_INV);                         
        }
        else  glDrawText(str,20,GL_LUMINANCE);             

        y += 10;       
        if(y >= 63) break;
    }                          
}
/*-------------------------------------------------------------------------------------------------------*/
