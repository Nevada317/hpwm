#include "libs.h"

static uint8_t Fader_Current = 0;
static uint8_t Fader_Target  = 0;

void PWM_SetRaw(uint8_t RawValue);
void PWM_SetWGamma(uint8_t Value);

void PWM_Init() {
	// Port A - normal
	// Port B - inverted
	TCCR1A = (1<<COM1A1) | (0<<COM1A0) | (1<<COM1B1) | (1<<COM1B0) | (1<<WGM11) | (0<<WGM10);
	// WGM = 1010, mode 10
	// f/1 (no prescaling) results in 31 kHz generation
	TCCR1B = (1<<WGM13) | (0<<WGM12) | (0<<CS12) | (0<<CS11) | (1<<CS10);

	OCR1A = 0;
	OCR1B = 0^255;

	ICR1 = 255;
	TCNT1 = 0;
}
void PWM_SetWGamma(uint8_t Value) {
	uint16_t temp;
	temp = Value;
	temp *= (uint16_t)Value;
	PWM_SetRaw(temp>>8);
}

void PWM_SetRaw(uint8_t RawValue) {
	if (OCR1A == RawValue)
		return;
	OCR1A = RawValue;
	OCR1B = RawValue^255;
}

void FaderTick() {
	uint8_t DesiredLevel;
	DesiredLevel = Fader_Target;
	if (!IsOn())
		DesiredLevel = 0;

	if (Fader_Current == DesiredLevel)
		return;

	if (Fader_Current > DesiredLevel)
		Fader_Current--;
	else
		Fader_Current++;
	PWM_SetWGamma(Fader_Current);
}

void PWM_SetTarget(uint8_t Value) {
	Fader_Target = Value;
}

uint8_t PWM_GetFader() {
	return Fader_Current;
}

