// Версия 3
#ifndef SOUND_H
#define SOUND_H

extern void sound_init(void);
extern void sound_play(char* pbuf, unsigned short ns, int loop);
extern void sound_pause(void);
extern void sound_resume(void);
extern void sound_stop(void);
extern void sound_set_volume(int volume);
extern void sound_set_dma_proc(void  (*proc)(void));
extern void sound_pwr_on(void);
extern void sound_pwr_off(void);

#define VOLUME TBCCR2

#endif
