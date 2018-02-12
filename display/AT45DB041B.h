#ifndef AT45DB041B_H
#define AT45DB041B_H

#define PAGESIZE 264
#define NUMPAGE  2048

extern void AT45DB041_init(void);
extern void AT45DB041_chip_select(int chip);
extern void AT45DB041_write_buffer(char* pd, int num, unsigned short offset);
extern void AT45DB041_read_buffer(char* pd, int num, unsigned short offset);
extern char AT45DB041_read_status(void);
extern void AT45DB041_flashpage_to_buffer(unsigned short page);
extern void AT45DB041_flashpage_prog_from_buffer(unsigned short page);
extern void AT45DB041_array_read(char* pb, unsigned short num, unsigned short page, unsigned short offset);

#endif
