#include "MDR32Fx.h"
#include "xprintf.h"
#include "usb_desc.h"
#include "usb_def.h"

#define SET_LINE_CODING 		0x20
#define GET_LINE_CODING 		0x21
#define SET_CONTROL_LINE_STATE	0x22
#define RST_CLK_PLL_CONTROL_PLL_USB_MUL_OFFS    4

#define dbg_msg xprintf

void null_proc();

void usb_device_update(void);
void setup0_proc(void);
void get_descriptor_proc(void);
void plan_Data_IN_proc(void);

uint8_t setup_data[8];
uint32_t tx_length = 0;
uint8_t  *tx_pbUser = 0;

uint16_t devAddr = 0;
uint16_t devConfig = 0;
uint16_t devControlLineState = 0;

extern int sleep(uint32_t ms);

void (*input0_proc)(void) = &null_proc;
void (*output0_proc)(void) = &null_proc;
/*
typedef struct {
  __IO uint32_t HTXC;
  __IO uint32_t HTXT;
  __IO uint32_t HTXLC;
  __IO uint32_t HTXSE;
  __IO uint32_t HTXA;
  __IO uint32_t HTXE;
  __IO uint32_t HFN_L;
  __IO uint32_t HFN_H;
  __IO uint32_t HIS;
  __IO uint32_t HIM;
  __IO uint32_t HRXS;
  __IO uint32_t HRXP;
  __IO uint32_t HRXA;
  __IO uint32_t HRXE;
  __IO uint32_t HRXCS;
  __IO uint32_t HSTM;
       uint32_t RESERVED0[16];
  __IO uint32_t HRXFD;
       uint32_t RESERVED1;
  __IO uint32_t HRXFDC_L;
  __IO uint32_t HRXFDC_H;
  __IO uint32_t HRXFC;
       uint32_t RESERVED2[11];
  __IO uint32_t HTXFD;
       uint32_t RESERVED3[3];
  __IO uint32_t HTXFDC;
       uint32_t RESERVED4[11];
  __IO uint32_t SEP0_CTRL;
  __IO uint32_t SEP0_STS;
  __IO uint32_t SEP0_TS;
  __IO uint32_t SEP0_NTS;
  __IO uint32_t SEP1_CTRL;
  __IO uint32_t SEP1_STS;
  __IO uint32_t SEP1_TS;
  __IO uint32_t SEP1_NTS;
  __IO uint32_t SEP2_CTRL;
  __IO uint32_t SEP2_STS;
  __IO uint32_t SEP2_TS;
  __IO uint32_t SEP2_NTS;
  __IO uint32_t SEP3_CTRL;
  __IO uint32_t SEP3_STS;
  __IO uint32_t SEP3_TS;
  __IO uint32_t SEP3_NTS;
  __IO uint32_t SC;
  __IO uint32_t SLS;
  __IO uint32_t SIS;
  __IO uint32_t SIM;
  __IO uint32_t SA;
  __IO uint32_t SFN_L;
  __IO uint32_t SFN_H;
       uint32_t RESERVED5[9];
  __IO uint32_t SEP0_RXFD;
       uint32_t RESERVED6;
  __IO uint32_t SEP0_RXFDC_L;
  __IO uint32_t SEP0_RXFDC_H;
  __IO uint32_t SEP0_RXFC;
       uint32_t RESERVED7[11];
  __IO uint32_t SEP0_TXFD;
       uint32_t RESERVED8[3];
  __IO uint32_t SEP0_TXFDC;
       uint32_t RESERVED9[11];
  __IO uint32_t SEP1_RXFD;
       uint32_t RESERVED10;
  __IO uint32_t SEP1_RXFDC_L;
  __IO uint32_t SEP1_RXFDC_H;
  __IO uint32_t SEP1_RXFC;
       uint32_t RESERVED11[11];
  __IO uint32_t SEP1_TXFD;
       uint32_t RESERVED12[3];
  __IO uint32_t SEP1_TXFDC;
       uint32_t RESERVED13[11];
  __IO uint32_t SEP2_RXFD;
       uint32_t RESERVED14;
  __IO uint32_t SEP2_RXFDC_L;
  __IO uint32_t SEP2_RXFDC_H;
  __IO uint32_t SEP2_RXFC;
       uint32_t RESERVED15[11];
  __IO uint32_t SEP2_TXFD;
       uint32_t RESERVED16[3];
  __IO uint32_t SEP2_TXFDC;
       uint32_t RESERVED17[11];
  __IO uint32_t SEP3_RXFD;
       uint32_t RESERVED18;
  __IO uint32_t SEP3_RXFDC_L;
  __IO uint32_t SEP3_RXFDC_H;
  __IO uint32_t SEP3_RXFC;
       uint32_t RESERVED19[11];
  __IO uint32_t SEP3_TXFD;
       uint32_t RESERVED20[3];
  __IO uint32_t SEP3_TXFDC;
       uint32_t RESERVED21[11];
  __IO uint32_t HSCR;
  __IO uint32_t HSVR;
} USB_TypeDef;
#define USB 				  ((USB_TypeDef*)MDR_USB_BASE)
*/

void usb_device_init(void)
{
	
	MDR_RST_CLK->PER_CLOCK |= (1 << 2); 	// clock usb on
	MDR_RST_CLK->USB_CLOCK = (1 << 8) | (1<<2) | 0x02;
	
	MDR_RST_CLK->PLL_CONTROL |= RST_CLK_PLL_CONTROL_PLL_USB_ON | ((6-1)<<RST_CLK_PLL_CONTROL_PLL_USB_MUL_OFFS);
	while(0 == (MDR_RST_CLK->CLOCK_STATUS & RST_CLK_CLOCK_STATUS_PLL_USB_RDY));	// wait for PLL USB ready
	
	MDR_USB->HSCR = (1<<1); //reset usb core
	sleep(1);
	MDR_USB->HSCR = (1<<2) | (1<<3) | (1<<4); // device mode enable rx and tx full speed device
	MDR_USB->SC |= (1<<4) | (1<<5) | 1; // full speed 12 Mbit/s enable endpoints
	
	MDR_USB->USB_SEP[0].CTRL |= 1+2; // EP0 is enabled and ready
	//USB->SEP0_CTRL |= 1+2; // EP0 is enabled and ready
	
}

void null_proc()
{
}

void usb_reset()
{
	MDR_USB->USB_SEP[0].CTRL |= 1+2; // EP0 is enabled and ready
	MDR_USB->USB_SEP[0].CTRL &= ~(1<<2); // DATA0
	
	//USB->SEP0_CTRL &= ~(1<<2); // DATA0
}


void usb_device_update(void)
{
	uint32_t state = MDR_USB->SIS;
	MDR_USB->SIS = 0;
	
	if(state & (1<<2))
	{
		MDR_USB->SIS |= (1<<2); // reset flag
		usb_reset();
		xprintf("RESET\r\n");
	}	
	else if(state & 1)
	{
		MDR_USB->SIS |= 1; // reset flag
		xprintf("SETUP/OUT\r\n");
		//USB->SEP0_CTRL |= 2; // EP0 is ready
		
		uint32_t token_tp = MDR_USB->USB_SEP[0].TS & 0xff; 
		
		if(token_tp == 0){
			// SETUP token
			dbg_msg("ep0:setup:");
			setup0_proc();
		}
		if(token_tp == 1){
			dbg_msg("ep0:in\r\n");
			(*input0_proc)();
		}		
		if(token_tp == 2){
			dbg_msg("ep0:out\r\n");
			(*output0_proc)();
		}				
	}
}

void enable_RX_proc()
{
	//MDR_USB->USB_SEP[0].CTRL ^= 1<<2; // DATA0/DATA1 sequence
	MDR_USB->USB_SEP[0].CTRL |= 2; // EP0 is ready
}

void plan_ZeroLength_OUT_proc()
{
	// plan the status stage - zero length host OUT transaction
	//_SetEPRxStatus(ENDP0, EP_RX_VALID);	
	
	//MDR_USB->USB_SEP[0].CTRL ^= 1<<2; // DATA0/DATA1 sequence
	MDR_USB->USB_SEP[0].CTRL |= 2; // EP0 is ready
	input0_proc = &null_proc; 
	output0_proc = &enable_RX_proc;
}


void plan_ZeroLength_IN_proc()
{
	// plan zero length IN
	MDR_USB->USB_SEP_FIFO[0].TXFDC = 1;  			// reset FIFO index null data 
	MDR_USB->USB_SEP[0].CTRL |= (1<<2); 	// отправляем DATA1 
	//MDR_USB->USB_SEP[0].CTRL ^= 1<<2; // DATA0/DATA1 sequence
	MDR_USB->USB_SEP[0].CTRL |= 2; 		// EP0 is ready		
}

void plan_Data_IN_proc()
{
	uint32_t len;	
	uint32_t last;		
	int i;
						
	len = (tx_length > 64) ? 64 : tx_length;
	last = tx_length - len;
						
	if(len > 0)
	{
		// if there is the data for tx
		// plan IN data stage transaction:
		// copy len bytes of config descriptor to usb tx buffer
		//user_to_pma_copy(tx_pbUser, EP0_TX_ADDRESS, len);
			
		// and set tx counter equal len
		//_SetEPTxCount(ENDP0, len);
		// make tx valid for next IN request from host
		//_SetEPTxStatus(ENDP0,EP_TX_VALID);
		
		// copy len bytes of config descriptor to usb tx buffer
		MDR_USB->USB_SEP_FIFO[0].TXFDC = 1;  			// reset FIFO index
		for(i = 0; i < len; i++){
			MDR_USB->USB_SEP_FIFO[0].TXFD = tx_pbUser[i];
		}
		
		dbg_msg("len=%d", len);
		
		MDR_USB->USB_SEP[0].CTRL ^= (1<<2); // 
		MDR_USB->USB_SEP[0].CTRL |= 2; // EP0 is ready				
	}
	
	if(last > 0 )
	{
		// we have one more data
		// save position for next trasfer
		tx_length = last;	
		tx_pbUser = &tx_pbUser[len];
		input0_proc = &plan_Data_IN_proc;		
		
		dbg_msg("last=%d", last);
	}
	else
	{
		// nothig to transfer 
		// It will plan the status stage next
		input0_proc = &plan_ZeroLength_OUT_proc;
	}				
}

void string_descriptor_proc()
{
	uint32_t descr_index = (uint32_t)setup_data[2];
	
	switch(descr_index)
	{				
		case 0x00:
			// Index of string descriptor describing languige id
			// plan data stage transaction:
			tx_length = VIRTUAL_COM_PORT_SIZ_STRING_LANGID;	
			tx_pbUser = (uint8_t*) &Virtual_Com_Port_StringLangID[0];
			plan_Data_IN_proc();
			break;

		case 0x01:
			// Index of string descriptor describing manufacturer
			// plan data stage transaction:
			tx_length = VIRTUAL_COM_PORT_SIZ_STRING_VENDOR;	
			tx_pbUser = (uint8_t*) &Virtual_Com_Port_StringVendor[0];
			plan_Data_IN_proc();				
			break;
		
		case 0x02:
			// Index of string descriptor describing product
			// plan  data stage transaction:
			tx_length = VIRTUAL_COM_PORT_SIZ_STRING_PRODUCT;	
			tx_pbUser = (uint8_t*) &Virtual_Com_Port_StringProduct[0];
			plan_Data_IN_proc();								
			break;
		
		case 0x03:
			// Index of string descriptor describing serial
			// plan data stage transaction:
			tx_length = VIRTUAL_COM_PORT_SIZ_STRING_SERIAL;	
			tx_pbUser = (uint8_t*) &Virtual_Com_Port_StringSerial[0];
			plan_Data_IN_proc();												
			break;
	}					
}

void get_descriptor_proc()
{
	uint32_t descr_type = (uint32_t)setup_data[3];
	uint32_t wLength = (uint32_t)(setup_data[6] | (setup_data[7] << 8));	
	
	// detect the type of the request
	switch(descr_type)
	{
		case DEVICE_DESCRIPTOR:
			// It's USB_DEVICE_DESCRIPTOR_TYPE request
			// plan data stage transaction:
			tx_length = wLength;	
			tx_pbUser = (uint8_t*) &Virtual_Com_Port_DeviceDescriptor[0];
			
			MDR_USB->USB_SEP[0].CTRL &= ~(1<<2); // отправляем DATA0
			//MDR_USB->USB_SEP[0].CTRL |= (1<<2); // отправляем DATA1
			plan_Data_IN_proc();
			dbg_msg("DEVICE\r\n");
			break;
		
		case DEVICE_QUALIFIER:
			// plan zero length IN
			plan_ZeroLength_IN_proc();			
			input0_proc = &plan_ZeroLength_OUT_proc;						
			dbg_msg("QUALIFIER\r\n");	
			break;

		case CONFIG_DESCRIPTOR:
			// It's USB_CONFIGURATION_DESCRIPTOR_TYPE request
			// plan data stage transaction:
			tx_length = wLength;	
			tx_pbUser = (uint8_t*) &Virtual_Com_Port_ConfigDescriptor[0];
			
			MDR_USB->USB_SEP[0].CTRL &= ~(1<<2); // отправляем DATA0
			//MDR_USB->USB_SEP[0].CTRL |= (1<<2); // отправляем DATA1
			plan_Data_IN_proc();	
			dbg_msg("CONFIGURATION\r\n");
			break;
		
		case STRING_DESCRIPTOR:
			// It's USB_STRING_DESCRIPTOR_TYPE request
			string_descriptor_proc();
			dbg_msg("STRING\r\n");
			break;
	}	
}

void input0_for_setaddr_proc()
{	
	// set early saving address
	MDR_USB->SA = devAddr;
	//USBDeviceState = ADDRESSED;
	
    // set address in every used endpoint 
	//_SetEPAddress(ENDP1, ENDP1);
	//_SetEPAddress(ENDP2, ENDP2);
	//_SetEPAddress(ENDP3, ENDP3);	
		
	// enable getting the next request from host
	//_SetEPRxStatus(ENDP0, EP_RX_VALID);
	MDR_USB->USB_SEP[0].CTRL |= 2; 		// EP0 is ready		
	
	input0_proc = &null_proc;
}

void input0_for_setconfig_proc()
{
	// here we're setting new configuration
	// using early saving devConfig
	//USBDeviceState = CONFIGURED;
	//led_on();
	
	// enable getting the next request from the host
	//_SetEPRxStatus(ENDP0, EP_RX_VALID);
	MDR_USB->USB_SEP[0].CTRL |= 2; 		// EP0 is ready				
	input0_proc = &null_proc;	
}

void setup0_proc()
{
	int bc;	
	uint32_t req_type;
	int i;

	//int nrxb = MDR_USB->USB_SEP[0].RXFDC_H; 	// read num bytes in FIFO
	//bc = _GetEPRxCount(ENDP0); // num rx bytes
	bc = MDR_USB->USB_SEP_FIFO[0].RXFDC_H; 	// read num bytes in FIFO

	// read 8 control bytes from usb rx buffer to user rx bufer
	//pma_to_user_copy(setup_data, EP0_RX_ADDRESS, 8);
	for(i = 0; i < 8; i++){
		setup_data[i] = MDR_USB->USB_SEP_FIFO[0].RXFD;
	}
	MDR_USB->USB_SEP_FIFO[0].RXFC = 1;  			// reset FIFO index

	req_type = setup_data[1];
	switch(req_type)
	{
		case SET_CONTROL_LINE_STATE:
			// set control line request
			// plan status stage IN transaction
			//plan_ZeroLength_IN_proc();
			// set procedure for some deffered actions
			//input0_proc = &input0_for_setcontrolline_proc;		
			// save line state code
			//devControlLineState = setup_data[2];	
			dbg_msg("SET_CONTROL_LINE_STATE\r\n");	
			break;

		case SET_LINE_CODING:
			// set line coding request
			// plan data stage OUT transaction:
			//output0_proc = &output0_for_setlinecoding_proc;	
			//_SetEPRxStatus(ENDP0, EP_RX_VALID);
			dbg_msg("SET_LINE_CODING\r\n");	
			break;

		case GET_LINE_CODING:
			// It's GET_LINE_CODING request
			// plan data stage transaction:
			//tx_length = 7;	
			//tx_pbUser = (uint8_t*) &uart_linecoding_data[0];
			//plan_Data_IN_proc();	
			dbg_msg("GET_LINE_CODING\r\n");	
			break;

		case SET_CONFIGURATION:
			// set config request
			devConfig = setup_data[2]; // save config code from host request
			// plan status stage transaction for set address control trasfer -
			// send zero length data packet to host
			plan_ZeroLength_IN_proc();
			// set procedure for some deffered actions
			input0_proc = &input0_for_setconfig_proc;	
			dbg_msg("SET_CONFIGURATION\r\n");		
			break;

		case SET_ADDRESS:
			// set address request		
			devAddr = setup_data[2]; // save address from host request
			// plan status stage transaction for set address control trasfer -
			// send zero length data packet to host
			plan_ZeroLength_IN_proc();
			// set procedure for some deffered actions
			input0_proc = &input0_for_setaddr_proc;	
			dbg_msg("SET_ADDRESS %d\r\n", devAddr);
			break;

		case GET_DESCRIPTOR:
			dbg_msg("GET_DESCRIPTOR:");
			get_descriptor_proc();
			break;
	}
}

