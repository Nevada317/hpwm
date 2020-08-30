#include "libs.h"

static struct Avg {
	uint16_t Sum;
	uint8_t Count;
	uint16_t Valid;
} Averaging;

#define Tolerance 32

void ADC_Init() {
	ADMUX = (1<<REFS1) | (1<<REFS0) | (0<<ADLAR) | (0<<MUX3) | (0<<MUX2) | (1<<MUX1) | (1<<MUX0);
	ADCSRA = (1<<ADEN) | (1<<ADSC) | (1<<ADFR) | (1<<ADIF) | (1<<ADIE) | (1<<ADPS2) | (1<<ADPS1) | (1<<ADPS0);
}

ISR(ADC_vect) {
	if (CurrentMode != devMode_AUTO)
		return;

	uint16_t meas;
	meas = ADCL;
	meas = (meas & 0xFF) | (ADCH << 8);
	Averaging.Sum += meas;
	Averaging.Count++;

	if (Averaging.Count == 16) {
		Averaging.Count = 0;
		Averaging.Sum = 0;
	}

	if (Averaging.Count == 8) {
		Averaging.Valid = Averaging.Sum;

		uint16_t target = (*(rConfig+3) << 5) + (1 << 4);
		uint16_t diff;
		if (target >= Averaging.Valid)
			diff = target - Averaging.Valid;
		else
			diff = Averaging.Valid - target;

		uint8_t CurrentFader = PWM_GetFader();
		if (diff > Tolerance) {
			if ((target >= Averaging.Valid) && (CurrentFader < 255))
				CurrentFader++;
			if ((target < Averaging.Valid) && (CurrentFader > 0))
				CurrentFader--;
		}
		// If we have correct value already, we store current fader
		// value as fader target
		PWM_SetTarget(CurrentFader);
	}
// 	PWM_SetWGamma(255-ADCH);
}
