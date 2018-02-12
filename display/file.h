#ifndef FILE_H
#define FILE_H

#include "file_def.h"

extern int  fopen(FILE_NAME file, const char* mode);
extern void fclose(void);
extern int  fread(char* pd, int num);
extern int  fwrite(char* pd, int num);
extern int  fseek(long offset, int origin);

#endif
