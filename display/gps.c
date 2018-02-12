#include <string.h>
#include "serial.h"
#include "gdef.h"

extern unsigned long int system_time;

/*--------------------------------------------------------------------------------*/
unsigned int gps_read_GPRMC(unsigned int size_buff, char* p_buff)
{
      unsigned long int timeout;
      int i;
//      char checksum;
      
      // ищем заголовок в течении 3 секунд
      timeout = system_time + 3000;      
      while(1)
      {
          if(system_time >= timeout) return 0;
          
          if(serial_read_port1(1, p_buff))
	  {
	      if(p_buff[0] == '$')
	      {
	          if(serial_read_port1(5, p_buff+1) == 5)
		  {
		      p_buff[6] = 0;
		      if(0 == strcmp(p_buff+1, "GPRMC")) break;
         	  }
              }
          }
      }
      
      // читаем предложение
      for(i = 6; i < size_buff-1; i ++)
      {
          if(serial_read_port1(1, p_buff+i))                                    
          {
              if(p_buff[i] == '\n')
              {
                      p_buff[i+1] = 0;
                      return i+1;
              }
          }
          else
          {
              return 0;
          }
      }
/*
      // считаем контрольную сумму
      checksum = 0;
      for(i = 1; i < n-5; i++)
      {
         checksum ^= p_buff[i];
      }        
*/      

      return i;
}


/*unsigned int gps_read_GPRMC(unsigned int size_buff, char* p_buff)
{
        int num_rep;
	for(num_rep = 0; num_rep < 20; num_rep++)
	{
			
		if(serial_read(GPS_PORT_ID, 1, p_buff))
		{
			if(p_buff[0] == '$')
			{
				if(serial_read(GPS_PORT_ID, 5, p_buff+1) == 5)
				{
					p_buff[6] = 0;
					if(0 == strcmp(p_buff+1, "GPRMC"))
					{
						while(1)
						{
							int i;
							for(i = 6; i < size_buff-1; i ++)
							{
								if(serial_read(GPS_PORT_ID, 1, p_buff+i))                                    
								{
									if(p_buff[i] == '\n')
									{
									        p_buff[i+1] = 0;
										return i+1;
									}
								}
								else
								{
									return 0;
								}
							}

							return i;

						}

					}
				}
				else return 0;
			}
		}
	}
	
	return 0;    
}*/
/*--------------------------------------------------------------------------------*/
/*unsigned int gps_read_coord(char* p_buff)
{
	while(1)
	{
		int num;
			
		if(serial_read(GPS_PORT_ID, 1, p_buff))
		{
			if(p_buff[0] == '$')
			{
				if(serial_read(GPS_PORT_ID, 5, p_buff) == 5)
				{
					p_buff[5] = 0;
					if(0 == strcmp(p_buff, "GPRMC"))
					{
						while(1)
						{
							if(serial_read(GPS_PORT_ID, 1, p_buff))
							{
								if(p_buff[0] == 'V' || p_buff[0] == 'A')
								{
									int i;
									for(i = 1; i < 128; i ++)
									{
										if(serial_read(GPS_PORT_ID, 1, p_buff+i))                                    
										{
											if(p_buff[i] == 'E' || p_buff[i] == 'W')
											{
   												int deb = 0;
												p_buff[i+1] = 0;
												return i;
											}
										}
										else
										{
											return 0;
										}
									}
								}
							}
							else
								return 0;
						}

					}
				}
			}
		}
	}
}*/
/*--------------------------------------------------------------------------------*/
