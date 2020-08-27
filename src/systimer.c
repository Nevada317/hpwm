#include "libs.h"

void SYSTIMER_Init() {
	TCCR0 = 0b100; // f/256
	TIMSK |= (1<<TOIE0);
}

ISR(TIMER0_OVF_vect) {
	uint8_t* ptr=(uint8_t*)&SYSTIMER_TO;
	for (uint16_t i=0; i<sizeof(SYSTIMER_TO); i++) {
		if (*ptr>0)
			(*ptr)--;
		ptr++;
	}
	updateMode();
	FaderTick();
}

