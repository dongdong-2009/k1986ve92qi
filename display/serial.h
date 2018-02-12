// Версия 3.1
#ifndef _SERIAL_H_
#define _SERIAL_H_

extern void serial_init_port0(void);
extern void serial_init_port1(void);

extern int  serial_write(unsigned int, unsigned int, char*);

extern int  serial_read(unsigned int, unsigned int, char*);
extern int  serial_read_port1(unsigned int num_byte, char* p_buff);

extern void serial_break(unsigned int port_id);
extern void serial_flush(void);
//extern void serial_set_readtimeout(unsigned int t);
extern unsigned int serial_read_timeout;

#endif
