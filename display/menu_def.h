#ifndef _MENU_DEF_H_
#define _MENU_DEF_H_

typedef struct 
{
    char* text;
    void (*proc)(void);        
} MENU_ITEM;

typedef struct 
{
    char* caption;                  // заголовок
    int imin;                       // минимальный видимый индекс в списке
    int imax;                       // максимальный видимый индекс в списке
    int num_items;                  // количество пунктов в меню
    MENU_ITEM* items;               // список пунктов меню
} MENU_DESCRIPTOR;

#endif
