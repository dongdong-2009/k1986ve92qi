#ifndef _MT12864_H_
#define _MT12864_H_

#include "MT12864_def.h"

extern int           LCD_light;

extern void          DisplayInit(void);
extern void          DisplayOn(void);
extern void          DisplayOff(void);
extern void          DisplaySelectChip(int sel);
extern void          DisplaySTARTLine( unsigned char line);
extern void          DisplaySetPage( unsigned char page);
extern void          DisplaySetAddress( unsigned char addr);
extern unsigned char DisplayReadStatus(void);
extern void          DisplayWriteData(unsigned char data);
extern unsigned char DisplayReadData(void);
extern void          DisplayClear(void);
extern void          DisplayCopy(unsigned char* psrc);

#endif
