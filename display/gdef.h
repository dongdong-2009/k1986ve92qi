#ifndef _GDEF_H_
#define _GDEF_H_

//#include <msp430x14x.h>
#include  "msp430x16x.h"

#define INIT_MSP  WDTCTL = WDTPW + WDTHOLD; _BIS_SR(GIE);                                     
    

#define LOWBYTE(x) (unsigned char)x 
#define HIGHBYTE(x) (unsigned char)x >> 8

#define PORT0_TIMEOUT  1000
#define PORT1_TIMEOUT  1000
#define PORT0          0
#define PORT1          1

#endif
