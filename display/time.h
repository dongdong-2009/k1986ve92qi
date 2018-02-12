#ifndef _TIME_H_
#define _TIME_H_

extern unsigned long int system_time;
extern unsigned long int RTC_time_seconds;

extern void time_init();
extern void time_wait(int t);
extern void time_wait_mks(int t);

#endif
