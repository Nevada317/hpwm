#include "libs.h"

void PWM_Init() {
	// Port A - normal
	// Port B - inverted
	TCCR1A = (1<<COM1A1) | (0<<COM1A0) | (1<<COM1B1) | (0<<COM1B0) | (1<<WGM11) | (0<<WGM10);
	// WGM = 1010, mode 10
	// f/1 (no prescaling) results in 31 kHz generation
	TCCR1B = (1<<WGM13) | (0<<WGM12) | (0<<CS12) | (0<<CS11) | (1<<CS10);

	OCR1A = 0;
	OCR1B = 255;

	ICR1 = 255;
	TCNT1 = 0;
}
