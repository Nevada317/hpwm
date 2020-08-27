#include "libs.h"

void SYSTIMER_Init() {
	TCCR0 = 0b101; // f/1024
	TIMSK |= (1<<TOIE0);
}

ISR(TIMER0_OVF_vect) {
	uint8_t* ptr=(uint8_t*)&SYSTIMER_TO;
	for (uint8_t i=0; i<sizeof(SYSTIMER_TO); i++) {
		if (*ptr>0)
			(*ptr)--;
		ptr++;
	}
	updateMode();
}
