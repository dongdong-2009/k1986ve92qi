#include "stdlib.h"
#include "math.h"
#include "time.h"
#include "file_def.h"
#include "AT45DB041B.h"
#include "gdef.h"

typedef struct 
{
	unsigned short page;
	unsigned short offset;	
}FILE_POINTER;

static FILE_POINTER file_pointer = {1,0};
//--------------------------------------------------------------------
int fopen(FILE_NAME file, const char* mode)
{
    AT45DB041_init();   
    AT45DB041_chip_select(file);
    
    switch (mode[0])
    {
    	case 'r':
	    	file_pointer.page = 1;
	    	file_pointer.offset = 0;    	
    	break;
    	
    	case 'w':
	    	file_pointer.page = 1;
	    	file_pointer.offset = 0;
    	break;
    	
    	case 'a':
	    	AT45DB041_flashpage_to_buffer(0);
			AT45DB041_read_buffer((char*)&file_pointer, 4, 0);					    	
    	break;
    }
    	
	return 0;
}
//--------------------------------------------------------------------
void fclose(void)
{
	//int d;
    AT45DB041_write_buffer((char*)&file_pointer, 4, 0);
    AT45DB041_flashpage_prog_from_buffer(0);			
    //d = 0;
}
//--------------------------------------------------------------------
int fread(char* pd, int num)
{
	AT45DB041_array_read(pd, num, file_pointer.page, file_pointer.offset);
	return 0;
}
//--------------------------------------------------------------------
int fwrite(char* pd, int num)
{
	register int i;
	register int numpg;
	register int rembt;	
	div_t size;
			
	if(file_pointer.offset > 0) 
	{
	    register int n;
	    register int page = file_pointer.page;	    
	    register int offset = file_pointer.offset;	    	    
	    
            AT45DB041_flashpage_to_buffer(file_pointer.page);
            if(num + file_pointer.offset < PAGESIZE) 
            {
               n = num;
               offset += num;                		            
            }
            else 
            {
              n = PAGESIZE - file_pointer.offset;
              offset = 0;
              page ++;               		                          
            }
             
              AT45DB041_write_buffer(pd, n, file_pointer.offset);		  			               
              AT45DB041_flashpage_prog_from_buffer(file_pointer.page);								             
              pd += n;
              num -= n;  
              file_pointer.page = page;
              file_pointer.offset = offset;                   				                            
	} 
	
	if(num > 0)
	{	
          size = div(num, PAGESIZE);	
          numpg = size.quot;
          rembt = size.rem;	
          
          for(i = 0; i < numpg; i++)
          {
                  AT45DB041_write_buffer(pd, PAGESIZE, 0);
                  AT45DB041_flashpage_prog_from_buffer(file_pointer.page);								
                  pd += PAGESIZE;
                  file_pointer.page ++;
          }			
          
          if(rembt > 0)
          {
                  AT45DB041_flashpage_to_buffer(file_pointer.page);	
                  AT45DB041_write_buffer(pd, rembt, 0);		
                  AT45DB041_flashpage_prog_from_buffer(file_pointer.page);										
                  pd += rembt;
                  file_pointer.offset = rembt; 
          }
	}
    return 0;
}
//--------------------------------------------------------------------
int fseek(long offset, int origin)
{
	register  int numpg;
	register  int rembt;
	register  int new_page = file_pointer.page;
	register  int new_offset = file_pointer.offset;	
	
	numpg = offset/PAGESIZE ;
	rembt = offset%PAGESIZE;		
	
	switch (origin)
	{
		case SEEK_CUR:
			new_page += numpg;
			new_offset += rembt;
			if(new_offset >= PAGESIZE)
			{
				new_page ++;
				new_offset -= PAGESIZE;
			}
			if(new_offset < 0)
			{
				new_page --;
				new_offset += PAGESIZE;
			}			
		break;
		
		case SEEK_END:
			new_page = NUMPAGE - 1 + numpg;
			new_offset = PAGESIZE - 1 + rembt;
		break;
		
		case SEEK_SET:
			new_page = 1+numpg;
			new_offset = rembt;
		break;			
	}
	
	if((new_page >= NUMPAGE) ||
	    (new_page <= 0) ||
	    (new_offset < 0) ||
	    (new_offset >= PAGESIZE)) return 0;	
	
	file_pointer.page = new_page;
	file_pointer.offset = new_offset;
	return 1;
}
//--------------------------------------------------------------------
