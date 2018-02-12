// Версия 3

#ifndef _MODEM_H_
#define _MODEM_H_

extern void modem_init(void);
extern void modem_reset(void);
extern int  modem_detect(void);
extern char modem_setmode(char mode);
extern int modem_trdata(char* data);
extern void modem_setaddress(char addr);

#endif
