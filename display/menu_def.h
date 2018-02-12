#ifndef _MENU_DEF_H_
#define _MENU_DEF_H_

typedef struct 
{
    char* text;
    void (*proc)(void);        
} MENU_ITEM;

typedef struct 
{
    char* caption;                  // ���������
    int imin;                       // ����������� ������� ������ � ������
    int imax;                       // ������������ ������� ������ � ������
    int num_items;                  // ���������� ������� � ����
    MENU_ITEM* items;               // ������ ������� ����
} MENU_DESCRIPTOR;

#endif
