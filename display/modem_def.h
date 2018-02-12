// Версия 3

#ifndef _MODEM_DEF_H_
#define _MODEM_DEF_H_

/*
                    DW  set_off_mode                  ; 0x00
                    DW  set_id_mode                   ; 0x01
                    DW  set_rec_mode                  ; 0x02      
                    DW  set_meter_mode                ; 0x03                      
                    DW  set_tr_mode                   ; 0x04
                    DW  set_pack_size                 ; 0x05
                    DW  get_pack_size                 ; 0x06  
                    DW  set_local_addr                ; 0x07
                    DW  get_local_addr                ; 0x08
                    DW  set_dest_addr                 ; 0x09
                    DW  get_dest_addr                 ; 0x0a
                    DW  set_off_mode                  ; 0x0b
                    DW  set_off_mode                  ; 0x0c
                    DW  set_off_mode                  ; 0x0d
                    DW  set_off_mode                  ; 0x0e
                    DW  set_off_mode                  ; 0x0f
*/

#define MODEM_OFF         0x00
#define MODEM_ID          0x01
#define MODEM_RX          0x02
#define MODEM_RSSIMETER   0x03
#define MODEM_TX          0x04

#define MODEM_SETPACKSIZE 0x05
#define MODEM_GETPACKSIZE 0x06

#define MODEM_SETLOCADDR  0x07
#define MODEM_GETLOCADDR  0x08

#define MODEM_SETDSTADDR  0x09
#define MODEM_GETDSTADDR  0x0a

#endif
