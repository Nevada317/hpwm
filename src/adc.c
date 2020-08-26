#include "libs.h"

void ADC_Init() {
	ADMUX = (1<<REFS1) | (1<<REFS0) | (1<<ADLAR) | (0<<MUX3) | (0<<MUX2) | (1<<MUX1) | (1<<MUX0);
	ADCSRA = (1<<ADEN) | (1<<ADSC) | (1<<ADFR) | (1<<ADIF) | (1<<ADIE) | (1<<ADPS2) | (1<<ADPS1) | (1<<ADPS0);
}

ISR(ADC_vect) {
	PWM_SetWGamma(ADCH);
}
