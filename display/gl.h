#ifndef _GL_H_
#define _GL_H_

#include "gl_def.h"

extern void  glClear(unsigned char* pixels);
extern void  glColor(unsigned char color);
extern void  glRasterPos(int x, int y);
extern void  glDrawPixels(int width, int height, int format, int type, unsigned char* pixels);
extern void  glFlush(void);
extern char* glDrawText(char* pstr, int nums, int flag);
extern void  (*glVertex)(int x, int y);
extern void  glBegin(int state);
extern void  glEnd(void);
extern void  (*glRect)(int x1, int y1, int x2, int y2);
extern void  glCircle(int x0, int y0, int r);
extern void  glPolygonMode(int mode);

#endif
