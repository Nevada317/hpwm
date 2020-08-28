#include "libs.h"

#define Button_Pin PIND
#define Button_Plus 3
#define Button_Minus 4
#define Button_Cooldown 4

static uint8_t* ptrBtnEdit = 0;

void GPIO_Init() {
	PORTB = 0b00111001;
	PORTC = 0b00110000;
	PORTD = 0b11111111;

	DDRB = 0b00000110;
	DDRC = 0b00000111;
	DDRD = 0b00000000;
}

void GPIO_Tick() {
	if (SYSTIMER_TO.TO_ButtonDelay != 0)
		return;
	uint8_t pins;
	pins = (uint8_t)~Button_Pin;
	pins &= ((1<<Button_Plus)|(1<<Button_Minus));
	if (pins == 0)
		return;
	if (pins == ((1<<Button_Plus)|(1<<Button_Minus)))
		return;
	// Here we are if valid button combination pressed
	if (ptrBtnEdit == 0)
		return;

	if (pins == (1<<Button_Plus)) {
		if (*ptrBtnEdit != 255){
			(*ptrBtnEdit)++;
			EEPROM_MarkDirty();
		}
	} else {
		if (*ptrBtnEdit != 0){
			(*ptrBtnEdit)--;
			EEPROM_MarkDirty();
		}
	}
	SYSTIMER_TO.TO_ButtonDelay = Button_Cooldown;
}

void GPIO_SetEditor(uint8_t* ptr) {
	ptrBtnEdit = ptr;
}
