#include "string.h"
#include "stdlib.h"

/*--------------------------------------------------------------------------------*/
char* itoa(char* str, int num)
{
    div_t res;   
    int i,k,sign;
    char* p = str;
    char buf;
    
    if(num == 0) 
    {
        str[0] = 0x30;
        str[1] = 0;
        return str;
    }
    
        
    if(num > 0) sign = 0;
    else 
    {
      sign = 1;
      str[0] = '-';
      num = -num;
      p++;
    }    
      
    res.quot = num;
  
    while(res.quot)
    {       
        res = div(res.quot, 10);
        *p = res.rem+0x30;
        p++;
    }
    *p = 0;
  
    i = 0;
    k = p - str - 1 - sign;
    p = str + sign;
    while(i < k)
    {
        buf = p[i];
        p[i] = p[k];
        p[k] = buf;
        
        i ++;
        k --;
    }
    return str;      
}

/*--------------------------------------------------------------------------------*/
