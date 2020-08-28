#include "libs.h"

void EEPROM_Init();
void EEPROM_StoreConfig();
void EEPROM_MarkDirty();

// rConfig - 4-byte array, that contain configs
extern uint8_t rConfig[];
