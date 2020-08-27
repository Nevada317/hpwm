#include "libs.h"

void SYSTIMER_Init();

// This structure should contain down-counters. All
// those counters are decremented 60 times a second
// by system timer (timer0)
struct SYSTIMER_Timeout {
	uint8_t TO_PowerSwitch;
} SYSTIMER_TO;
