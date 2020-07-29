EESchema Schematic File Version 4
LIBS:home_pwm-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Home PWM\\nLED controller"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L symbol:ATmega8A-16AU U1
U 1 1 5F1F298A
P 3500 4550
F 0 "U1" H 3650 3150 50  0000 L CNN
F 1 "ATmega8A-16AU" H 3650 3050 50  0000 L CNN
F 2 "NevaDA:TQFP-32" H 3500 4550 50  0001 C CIN
F 3 "" H 3500 4550 50  0001 C CNN
	1    3500 4550
	1    0    0    -1  
$EndComp
$Comp
L symbol:NFET_GDS Q1
U 1 1 5F1F3DF3
P 10550 4250
F 0 "Q1" H 10755 4297 50  0000 L CNN
F 1 "IRLR3410" H 10755 4204 50  0000 L CNN
F 2 "NevaDA:D-PAK" H 10750 4175 50  0001 L CIN
F 3 "" H 10550 4250 50  0001 L CNN
	1    10550 4250
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR0101
U 1 1 5F1F4925
P 10650 4450
F 0 "#PWR0101" H 10650 4200 50  0001 C CNN
F 1 "GNDD" H 10654 4294 50  0000 C CNN
F 2 "" H 10650 4450 50  0001 C CNN
F 3 "" H 10650 4450 50  0001 C CNN
	1    10650 4450
	1    0    0    -1  
$EndComp
$Comp
L symbol:NFET_GDS Q2
U 1 1 5F1F4E02
P 10550 5150
F 0 "Q2" H 10755 5197 50  0000 L CNN
F 1 "IRLR3410" H 10755 5104 50  0000 L CNN
F 2 "NevaDA:D-PAK" H 10750 5075 50  0001 L CIN
F 3 "" H 10550 5150 50  0001 L CNN
	1    10550 5150
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR0102
U 1 1 5F1F4E0C
P 10650 5350
F 0 "#PWR0102" H 10650 5100 50  0001 C CNN
F 1 "GNDD" H 10654 5194 50  0000 C CNN
F 2 "" H 10650 5350 50  0001 C CNN
F 3 "" H 10650 5350 50  0001 C CNN
	1    10650 5350
	1    0    0    -1  
$EndComp
$Comp
L symbol:IR25600 U3
U 1 1 5F1F9665
P 9500 4750
F 0 "U3" H 9550 5200 50  0000 L CNN
F 1 "IR25600" H 9550 5100 50  0000 L CNN
F 2 "NevaDA:SOP-8" H 9500 5200 50  0001 C CNN
F 3 "" H 9500 5200 50  0001 C CNN
	1    9500 4750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R11
U 1 1 5F1FABEC
P 10200 5150
F 0 "R11" V 9990 5150 50  0000 C CNN
F 1 "22" V 10083 5150 50  0000 C CNN
F 2 "NevaDA:R_1206" V 10130 5150 50  0001 C CNN
F 3 "~" H 10200 5150 50  0001 C CNN
	1    10200 5150
	0    1    1    0   
$EndComp
Wire Wire Line
	9800 4700 9950 4700
Wire Wire Line
	9950 4700 9950 4250
Wire Wire Line
	9950 4250 10050 4250
Wire Wire Line
	9800 4800 9950 4800
Wire Wire Line
	9950 5150 10050 5150
$Comp
L power:GNDD #PWR0103
U 1 1 5F1FBE7F
P 9500 5100
F 0 "#PWR0103" H 9500 4850 50  0001 C CNN
F 1 "GNDD" H 9504 4944 50  0000 C CNN
F 2 "" H 9500 5100 50  0001 C CNN
F 3 "" H 9500 5100 50  0001 C CNN
	1    9500 5100
	1    0    0    -1  
$EndComp
$Comp
L symbol:IDC-06 J2
U 1 1 5F1FF953
P 5050 7100
F 0 "J2" H 5050 7447 39  0000 C CNN
F 1 "IDC-06" H 5050 7371 39  0000 C CNN
F 2 "NevaDA:IDC_Header_Straight_6pins" H 5050 7100 39  0001 C CNN
F 3 "" H 5050 7100 39  0001 C CNN
	1    5050 7100
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR0104
U 1 1 5F1FFC68
P 5450 7200
F 0 "#PWR0104" H 5450 6950 50  0001 C CNN
F 1 "GNDD" H 5454 7044 50  0000 C CNN
F 2 "" H 5450 7200 50  0001 C CNN
F 3 "" H 5450 7200 50  0001 C CNN
	1    5450 7200
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0105
U 1 1 5F20065B
P 5450 7000
F 0 "#PWR0105" H 5450 6850 50  0001 C CNN
F 1 "+5V" H 5465 7175 50  0000 C CNN
F 2 "" H 5450 7000 50  0001 C CNN
F 3 "" H 5450 7000 50  0001 C CNN
	1    5450 7000
	1    0    0    -1  
$EndComp
Text Label 5450 7100 0    50   ~ 0
MOSI
Text Label 4650 7000 2    50   ~ 0
MISO
Text Label 4650 7100 2    50   ~ 0
SCK
Text Label 4650 7200 2    50   ~ 0
RST
Text Label 4100 3850 0    50   ~ 0
MISO
Text Label 4100 3950 0    50   ~ 0
SCK
Text Label 2900 3750 2    50   ~ 0
RST
Text Label 4100 3750 0    50   ~ 0
MOSI
Text Label 2950 7200 2    50   ~ 0
RST
$Comp
L Device:R R3
U 1 1 5F20160E
P 3100 6900
F 0 "R3" H 3170 6947 50  0000 L CNN
F 1 "10k" H 3170 6854 50  0000 L CNN
F 2 "NevaDA:R_0603" V 3030 6900 50  0001 C CNN
F 3 "~" H 3100 6900 50  0001 C CNN
	1    3100 6900
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0106
U 1 1 5F201831
P 3100 6750
F 0 "#PWR0106" H 3100 6600 50  0001 C CNN
F 1 "+5V" H 3115 6925 50  0000 C CNN
F 2 "" H 3100 6750 50  0001 C CNN
F 3 "" H 3100 6750 50  0001 C CNN
	1    3100 6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 7200 3100 7200
Wire Wire Line
	3100 7200 3100 7050
Text Label 4100 3650 0    50   ~ 0
PWM1
Text Label 4100 3550 0    50   ~ 0
PWM2
Text Label 8700 4550 2    50   ~ 0
PWM1
Text Label 8700 4950 2    50   ~ 0
PWM2
$Comp
L Device:R R7
U 1 1 5F2027AD
P 8850 4550
F 0 "R7" V 8640 4550 50  0000 C CNN
F 1 "1k" V 8733 4550 50  0000 C CNN
F 2 "NevaDA:R_0603" V 8780 4550 50  0001 C CNN
F 3 "~" H 8850 4550 50  0001 C CNN
	1    8850 4550
	0    1    1    0   
$EndComp
$Comp
L Device:R R8
U 1 1 5F202EF7
P 8850 4950
F 0 "R8" V 8640 4950 50  0000 C CNN
F 1 "1k" V 8733 4950 50  0000 C CNN
F 2 "NevaDA:R_0603" V 8780 4950 50  0001 C CNN
F 3 "~" H 8850 4950 50  0001 C CNN
	1    8850 4950
	0    1    1    0   
$EndComp
Wire Wire Line
	9000 4950 9100 4950
Wire Wire Line
	9100 4950 9100 4800
Wire Wire Line
	9100 4800 9200 4800
Wire Wire Line
	9000 4550 9100 4550
Wire Wire Line
	9100 4550 9100 4700
Wire Wire Line
	9100 4700 9200 4700
$Comp
L Connector:Screw_Terminal_01x06 J1
U 1 1 5F203F4E
P 1800 1300
F 0 "J1" H 1880 1293 50  0000 L CNN
F 1 "X977B06" H 1880 1200 50  0000 L CNN
F 2 "NevaDA:Terminal_X977B06" H 1800 1300 50  0001 C CNN
F 3 "~" H 1800 1300 50  0001 C CNN
	1    1800 1300
	-1   0    0    -1  
$EndComp
Text Label 2000 1500 0    39   ~ 0
OUT1
Text Label 2000 1600 0    39   ~ 0
OUT2
$Comp
L power:GNDD #PWR0107
U 1 1 5F205C19
P 2450 1500
F 0 "#PWR0107" H 2450 1250 50  0001 C CNN
F 1 "GNDD" H 2454 1344 50  0001 C CNN
F 2 "" H 2450 1500 50  0001 C CNN
F 3 "" H 2450 1500 50  0001 C CNN
	1    2450 1500
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2450 1500 2450 1400
$Comp
L power:+12V #PWR0108
U 1 1 5F206A3A
P 3200 1150
F 0 "#PWR0108" H 3200 1000 50  0001 C CNN
F 1 "+12V" H 3215 1325 50  0000 C CNN
F 2 "" H 3200 1150 50  0001 C CNN
F 3 "" H 3200 1150 50  0001 C CNN
	1    3200 1150
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3200 1300 3200 1150
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5F208B01
P 2450 1150
F 0 "#FLG0101" H 2450 1225 50  0001 C CNN
F 1 "PWR_FLAG" H 2450 1325 50  0001 C CNN
F 2 "" H 2450 1150 50  0001 C CNN
F 3 "~" H 2450 1150 50  0001 C CNN
	1    2450 1150
	-1   0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 5F208C38
P 2500 1400
F 0 "#FLG0102" H 2500 1475 50  0001 C CNN
F 1 "PWR_FLAG" H 2500 1575 50  0001 C CNN
F 2 "" H 2500 1400 50  0001 C CNN
F 3 "~" H 2500 1400 50  0001 C CNN
	1    2500 1400
	0    1    -1   0   
$EndComp
Text Label 10650 4050 0    39   ~ 0
OUT1
Text Label 10650 4950 0    39   ~ 0
OUT2
$Comp
L Device:Crystal_GND2 Y1
U 1 1 5F1FF618
P 2550 5200
F 0 "Y1" V 2200 5200 50  0000 C CNN
F 1 "16 MHz" V 2100 5200 50  0000 C CNN
F 2 "NevaDA:Crystal_HC-49SMD" H 2550 5200 50  0001 C CNN
F 3 "~" H 2550 5200 50  0001 C CNN
	1    2550 5200
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C2
U 1 1 5F200E4D
P 2150 4950
F 0 "C2" V 1895 4950 50  0000 C CNN
F 1 "22p" V 1988 4950 50  0000 C CNN
F 2 "NevaDA:C_0603" H 2188 4800 50  0001 C CNN
F 3 "~" H 2150 4950 50  0001 C CNN
	1    2150 4950
	0    1    1    0   
$EndComp
$Comp
L power:GNDD #PWR0109
U 1 1 5F20201C
P 2000 4950
F 0 "#PWR0109" H 2000 4700 50  0001 C CNN
F 1 "GNDD" V 2004 4840 50  0001 R CNN
F 2 "" H 2000 4950 50  0001 C CNN
F 3 "" H 2000 4950 50  0001 C CNN
	1    2000 4950
	0    1    1    0   
$EndComp
Wire Wire Line
	2300 4950 2550 4950
Wire Wire Line
	2550 5050 2550 4950
Connection ~ 2550 4950
Wire Wire Line
	2550 4950 2900 4950
Wire Wire Line
	2550 5350 2550 5450
Wire Wire Line
	2550 5450 2900 5450
$Comp
L power:GNDD #PWR0110
U 1 1 5F203E54
P 2750 5200
F 0 "#PWR0110" H 2750 4950 50  0001 C CNN
F 1 "GNDD" V 2754 5090 50  0001 R CNN
F 2 "" H 2750 5200 50  0001 C CNN
F 3 "" H 2750 5200 50  0001 C CNN
	1    2750 5200
	0    -1   -1   0   
$EndComp
$Comp
L power:GNDD #PWR0111
U 1 1 5F20533A
P 3500 6100
F 0 "#PWR0111" H 3500 5850 50  0001 C CNN
F 1 "GNDD" V 3504 5990 50  0001 R CNN
F 2 "" H 3500 6100 50  0001 C CNN
F 3 "" H 3500 6100 50  0001 C CNN
	1    3500 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 5950 3500 6000
Wire Wire Line
	3600 5950 3600 6000
Wire Wire Line
	3600 6000 3500 6000
Connection ~ 3500 6000
Wire Wire Line
	3500 6000 3500 6100
$Comp
L power:+5V #PWR0112
U 1 1 5F20792F
P 3500 2750
F 0 "#PWR0112" H 3500 2600 50  0001 C CNN
F 1 "+5V" H 3515 2925 50  0000 C CNN
F 2 "" H 3500 2750 50  0001 C CNN
F 3 "" H 3500 2750 50  0001 C CNN
	1    3500 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 3150 3500 3000
$Comp
L Device:C C5
U 1 1 5F209397
P 3150 3000
F 0 "C5" V 2895 3000 50  0000 C CNN
F 1 "220n" V 2988 3000 50  0000 C CNN
F 2 "NevaDA:C_0603" H 3188 2850 50  0001 C CNN
F 3 "~" H 3150 3000 50  0001 C CNN
	1    3150 3000
	0    1    1    0   
$EndComp
$Comp
L power:GNDD #PWR0113
U 1 1 5F2093A1
P 3000 3000
F 0 "#PWR0113" H 3000 2750 50  0001 C CNN
F 1 "GNDD" V 3004 2890 50  0001 R CNN
F 2 "" H 3000 3000 50  0001 C CNN
F 3 "" H 3000 3000 50  0001 C CNN
	1    3000 3000
	0    1    1    0   
$EndComp
Wire Wire Line
	3300 3000 3500 3000
Connection ~ 3500 3000
Wire Wire Line
	3500 3000 3500 2750
Wire Wire Line
	3600 3150 3600 3000
Wire Wire Line
	3600 3000 3500 3000
Wire Wire Line
	2450 1400 2500 1400
Connection ~ 2450 1400
Wire Wire Line
	2000 1400 2200 1400
Text Label 2000 1100 0    39   ~ 0
SWITCH
Wire Wire Line
	2000 1200 2200 1200
Wire Wire Line
	2200 1200 2200 1400
Connection ~ 2200 1400
Wire Wire Line
	2200 1400 2450 1400
Connection ~ 2550 5450
Wire Wire Line
	2300 5450 2550 5450
$Comp
L power:GNDD #PWR0114
U 1 1 5F202490
P 2000 5450
F 0 "#PWR0114" H 2000 5200 50  0001 C CNN
F 1 "GNDD" V 2004 5340 50  0001 R CNN
F 2 "" H 2000 5450 50  0001 C CNN
F 3 "" H 2000 5450 50  0001 C CNN
	1    2000 5450
	0    1    1    0   
$EndComp
$Comp
L Device:C C3
U 1 1 5F20161D
P 2150 5450
F 0 "C3" V 1895 5450 50  0000 C CNN
F 1 "22p" V 1988 5450 50  0000 C CNN
F 2 "NevaDA:C_0603" H 2188 5300 50  0001 C CNN
F 3 "~" H 2150 5450 50  0001 C CNN
	1    2150 5450
	0    1    1    0   
$EndComp
$Comp
L Device:C C1
U 1 1 5F21CE7B
P 7400 2100
F 0 "C1" H 7515 2147 50  0000 L CNN
F 1 "220n" H 7515 2054 50  0000 L CNN
F 2 "NevaDA:C_0603" H 7438 1950 50  0001 C CNN
F 3 "~" H 7400 2100 50  0001 C CNN
	1    7400 2100
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR0115
U 1 1 5F21D8A1
P 7400 2250
F 0 "#PWR0115" H 7400 2000 50  0001 C CNN
F 1 "GNDD" V 7404 2140 50  0001 R CNN
F 2 "" H 7400 2250 50  0001 C CNN
F 3 "" H 7400 2250 50  0001 C CNN
	1    7400 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5F21E2B9
P 7100 1800
F 0 "R1" V 6890 1800 50  0000 C CNN
F 1 "1k" V 6983 1800 50  0000 C CNN
F 2 "NevaDA:R_0603" V 7030 1800 50  0001 C CNN
F 3 "~" H 7100 1800 50  0001 C CNN
	1    7100 1800
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 5F21E8F9
P 7400 1500
F 0 "R2" H 7470 1547 50  0000 L CNN
F 1 "10k" H 7470 1454 50  0000 L CNN
F 2 "NevaDA:R_0603" V 7330 1500 50  0001 C CNN
F 3 "~" H 7400 1500 50  0001 C CNN
	1    7400 1500
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0116
U 1 1 5F21ED02
P 7400 1350
F 0 "#PWR0116" H 7400 1200 50  0001 C CNN
F 1 "+5V" H 7415 1525 50  0000 C CNN
F 2 "" H 7400 1350 50  0001 C CNN
F 3 "" H 7400 1350 50  0001 C CNN
	1    7400 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 1800 7400 1800
Wire Wire Line
	7400 1800 7400 1950
Wire Wire Line
	7400 1650 7400 1800
Connection ~ 7400 1800
Text Label 6950 1800 2    39   ~ 0
SWITCH
Text Label 7550 1800 0    39   ~ 0
SWITCH_CMOS
Wire Wire Line
	7550 1800 7400 1800
Text Label 4100 5050 0    39   ~ 0
SWITCH_CMOS
NoConn ~ 2900 4250
NoConn ~ 2900 4450
$Comp
L Device:C C4
U 1 1 5F22C94D
P 2400 4050
F 0 "C4" V 2145 4050 50  0000 C CNN
F 1 "220n" V 2238 4050 50  0000 C CNN
F 2 "NevaDA:C_0603" H 2438 3900 50  0001 C CNN
F 3 "~" H 2400 4050 50  0001 C CNN
	1    2400 4050
	0    1    1    0   
$EndComp
$Comp
L power:GNDD #PWR0117
U 1 1 5F22C957
P 2000 4050
F 0 "#PWR0117" H 2000 3800 50  0001 C CNN
F 1 "GNDD" V 2004 3940 50  0001 R CNN
F 2 "" H 2000 4050 50  0001 C CNN
F 3 "" H 2000 4050 50  0001 C CNN
	1    2000 4050
	0    1    1    0   
$EndComp
Wire Wire Line
	2550 4050 2900 4050
Wire Wire Line
	2000 4050 2250 4050
Wire Wire Line
	2450 1150 2450 1300
$Comp
L Device:D D1
U 1 1 5F237F2B
P 2850 1300
F 0 "D1" H 2850 1080 50  0000 C CNN
F 1 "S3M" H 2850 1173 50  0000 C CNN
F 2 "NevaDA:DO-214AB_SMC" H 2850 1300 50  0001 C CNN
F 3 "~" H 2850 1300 50  0001 C CNN
	1    2850 1300
	-1   0    0    1   
$EndComp
$Comp
L Device:C C11
U 1 1 5F2386A5
P 9200 4000
F 0 "C11" V 9150 3750 50  0000 R CNN
F 1 "220n" V 9250 3750 50  0000 R CNN
F 2 "NevaDA:C_0603" H 9238 3850 50  0001 C CNN
F 3 "~" H 9200 4000 50  0001 C CNN
	1    9200 4000
	0    1    1    0   
$EndComp
Wire Wire Line
	9350 4000 9500 4000
Wire Wire Line
	9500 4000 9500 4400
$Comp
L power:GNDD #PWR0118
U 1 1 5F240704
P 9050 4000
F 0 "#PWR0118" H 9050 3750 50  0001 C CNN
F 1 "GNDD" H 9054 3844 50  0001 C CNN
F 2 "" H 9050 4000 50  0001 C CNN
F 3 "" H 9050 4000 50  0001 C CNN
	1    9050 4000
	0    1    1    0   
$EndComp
Wire Wire Line
	2000 1300 2450 1300
Connection ~ 2450 1300
Wire Wire Line
	2450 1300 2700 1300
Wire Wire Line
	3000 1300 3200 1300
$Comp
L Device:C C6
U 1 1 5F25283E
P 4350 1550
F 0 "C6" H 4465 1597 50  0000 L CNN
F 1 "10u" H 4465 1504 50  0000 L CNN
F 2 "NevaDA:C_1206" H 4388 1400 50  0001 C CNN
F 3 "~" H 4350 1550 50  0001 C CNN
	1    4350 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 1400 4350 1300
$Comp
L power:GNDD #PWR0123
U 1 1 5F25546E
P 4350 1700
F 0 "#PWR0123" H 4350 1450 50  0001 C CNN
F 1 "GNDD" H 4354 1544 50  0001 C CNN
F 2 "" H 4350 1700 50  0001 C CNN
F 3 "" H 4350 1700 50  0001 C CNN
	1    4350 1700
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5F258BFC
P 3500 1300
F 0 "R4" V 3290 1300 50  0000 C CNN
F 1 "22" V 3383 1300 50  0000 C CNN
F 2 "NevaDA:R_1206" V 3430 1300 50  0001 C CNN
F 3 "~" H 3500 1300 50  0001 C CNN
	1    3500 1300
	0    1    1    0   
$EndComp
Wire Wire Line
	3350 1300 3200 1300
Connection ~ 3200 1300
$Comp
L Device:R R5
U 1 1 5F25DE82
P 3800 1300
F 0 "R5" V 3590 1300 50  0000 C CNN
F 1 "22" V 3683 1300 50  0000 C CNN
F 2 "NevaDA:R_1206" V 3730 1300 50  0001 C CNN
F 3 "~" H 3800 1300 50  0001 C CNN
	1    3800 1300
	0    1    1    0   
$EndComp
$Comp
L Device:R R6
U 1 1 5F25E1DC
P 4100 1300
F 0 "R6" V 3890 1300 50  0000 C CNN
F 1 "22" V 3983 1300 50  0000 C CNN
F 2 "NevaDA:R_1206" V 4030 1300 50  0001 C CNN
F 3 "~" H 4100 1300 50  0001 C CNN
	1    4100 1300
	0    1    1    0   
$EndComp
Wire Wire Line
	4250 1300 4350 1300
$Comp
L symbol:LM7805_DPAK U2
U 1 1 5F26346A
P 4900 1300
F 0 "U2" H 4900 1545 50  0000 C CNN
F 1 "L7805CDT" H 4900 1452 50  0000 C CNN
F 2 "NevaDA:D-PAK" H 4900 1550 50  0001 C CIN
F 3 "" H 4900 1300 50  0001 C CNN
	1    4900 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 1300 4600 1300
Connection ~ 4350 1300
$Comp
L Device:C C7
U 1 1 5F265003
P 5400 1550
F 0 "C7" H 5515 1597 50  0000 L CNN
F 1 "10u" H 5515 1504 50  0000 L CNN
F 2 "NevaDA:C_1206" H 5438 1400 50  0001 C CNN
F 3 "~" H 5400 1550 50  0001 C CNN
	1    5400 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 1400 5400 1300
$Comp
L power:GNDD #PWR0124
U 1 1 5F26500E
P 5400 1700
F 0 "#PWR0124" H 5400 1450 50  0001 C CNN
F 1 "GNDD" H 5404 1544 50  0001 C CNN
F 2 "" H 5400 1700 50  0001 C CNN
F 3 "" H 5400 1700 50  0001 C CNN
	1    5400 1700
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5200 1300 5400 1300
$Comp
L power:GNDD #PWR0125
U 1 1 5F26813D
P 4900 1700
F 0 "#PWR0125" H 4900 1450 50  0001 C CNN
F 1 "GNDD" H 4904 1544 50  0001 C CNN
F 2 "" H 4900 1700 50  0001 C CNN
F 3 "" H 4900 1700 50  0001 C CNN
	1    4900 1700
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4900 1700 4900 1600
$Comp
L power:+5V #PWR0126
U 1 1 5F26A052
P 5600 1300
F 0 "#PWR0126" H 5600 1150 50  0001 C CNN
F 1 "+5V" V 5615 1429 50  0000 L CNN
F 2 "" H 5600 1300 50  0001 C CNN
F 3 "" H 5600 1300 50  0001 C CNN
	1    5600 1300
	0    1    1    0   
$EndComp
Wire Wire Line
	5400 1300 5600 1300
Connection ~ 5400 1300
$Comp
L Device:R R10
U 1 1 5F1FA62F
P 10200 4250
F 0 "R10" V 9990 4250 50  0000 C CNN
F 1 "22" V 10083 4250 50  0000 C CNN
F 2 "NevaDA:R_1206" V 10130 4250 50  0001 C CNN
F 3 "~" H 10200 4250 50  0001 C CNN
	1    10200 4250
	0    1    1    0   
$EndComp
Connection ~ 9500 4000
Connection ~ 9500 3100
Wire Wire Line
	9500 3000 9500 3100
$Comp
L Device:R R9
U 1 1 5F250DC3
P 9500 2850
F 0 "R9" H 9570 2897 50  0000 L CNN
F 1 "22" H 9570 2804 50  0000 L CNN
F 2 "NevaDA:R_1206" V 9430 2850 50  0001 C CNN
F 3 "~" H 9500 2850 50  0001 C CNN
	1    9500 2850
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0122
U 1 1 5F24FED6
P 9500 2700
F 0 "#PWR0122" H 9500 2550 50  0001 C CNN
F 1 "+12V" H 9515 2875 50  0000 C CNN
F 2 "" H 9500 2700 50  0001 C CNN
F 3 "" H 9500 2700 50  0001 C CNN
	1    9500 2700
	-1   0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR0121
U 1 1 5F24534E
P 9050 3100
F 0 "#PWR0121" H 9050 2850 50  0001 C CNN
F 1 "GNDD" H 9054 2944 50  0001 C CNN
F 2 "" H 9050 3100 50  0001 C CNN
F 3 "" H 9050 3100 50  0001 C CNN
	1    9050 3100
	0    1    1    0   
$EndComp
$Comp
L power:GNDD #PWR0120
U 1 1 5F245343
P 9050 3400
F 0 "#PWR0120" H 9050 3150 50  0001 C CNN
F 1 "GNDD" H 9054 3244 50  0001 C CNN
F 2 "" H 9050 3400 50  0001 C CNN
F 3 "" H 9050 3400 50  0001 C CNN
	1    9050 3400
	0    1    1    0   
$EndComp
$Comp
L power:GNDD #PWR0119
U 1 1 5F2431C8
P 9050 3700
F 0 "#PWR0119" H 9050 3450 50  0001 C CNN
F 1 "GNDD" H 9054 3544 50  0001 C CNN
F 2 "" H 9050 3700 50  0001 C CNN
F 3 "" H 9050 3700 50  0001 C CNN
	1    9050 3700
	0    1    1    0   
$EndComp
Wire Wire Line
	9500 3400 9500 3700
Connection ~ 9500 3400
Connection ~ 9500 3700
Wire Wire Line
	9500 3100 9500 3400
Wire Wire Line
	9350 3100 9500 3100
$Comp
L Device:C C8
U 1 1 5F23D021
P 9200 3100
F 0 "C8" V 9150 2850 50  0000 R CNN
F 1 "10u" V 9250 2850 50  0000 R CNN
F 2 "NevaDA:C_1206" H 9238 2950 50  0001 C CNN
F 3 "~" H 9200 3100 50  0001 C CNN
	1    9200 3100
	0    1    1    0   
$EndComp
Wire Wire Line
	9350 3400 9500 3400
$Comp
L Device:C C9
U 1 1 5F23BF8E
P 9200 3400
F 0 "C9" V 9150 3150 50  0000 R CNN
F 1 "10u" V 9250 3150 50  0000 R CNN
F 2 "NevaDA:C_1206" H 9238 3250 50  0001 C CNN
F 3 "~" H 9200 3400 50  0001 C CNN
	1    9200 3400
	0    1    1    0   
$EndComp
Wire Wire Line
	9500 3700 9500 4000
Wire Wire Line
	9350 3700 9500 3700
$Comp
L Device:C C10
U 1 1 5F23A8A9
P 9200 3700
F 0 "C10" V 9150 3450 50  0000 R CNN
F 1 "10u" V 9250 3450 50  0000 R CNN
F 2 "NevaDA:C_1206" H 9238 3550 50  0001 C CNN
F 3 "~" H 9200 3700 50  0001 C CNN
	1    9200 3700
	0    1    1    0   
$EndComp
$Comp
L Device:R R12
U 1 1 5F29D20C
P 7400 3900
F 0 "R12" H 7470 3947 50  0000 L CNN
F 1 "10k" H 7470 3854 50  0000 L CNN
F 2 "NevaDA:R_0603" V 7330 3900 50  0001 C CNN
F 3 "~" H 7400 3900 50  0001 C CNN
	1    7400 3900
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR0127
U 1 1 5F2A184B
P 7400 4100
F 0 "#PWR0127" H 7400 3850 50  0001 C CNN
F 1 "GNDD" V 7404 3990 50  0001 R CNN
F 2 "" H 7400 4100 50  0001 C CNN
F 3 "" H 7400 4100 50  0001 C CNN
	1    7400 4100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R13
U 1 1 5F2A1F49
P 7700 3600
F 0 "R13" V 7490 3600 50  0000 C CNN
F 1 "10k" V 7583 3600 50  0000 C CNN
F 2 "NevaDA:R_0603" V 7630 3600 50  0001 C CNN
F 3 "~" H 7700 3600 50  0001 C CNN
	1    7700 3600
	0    1    1    0   
$EndComp
Wire Wire Line
	7550 3600 7400 3600
Connection ~ 7400 3600
Wire Wire Line
	7400 3600 7400 3500
$Comp
L Device:C C12
U 1 1 5F2A7ED3
P 7950 3900
F 0 "C12" H 8065 3947 50  0000 L CNN
F 1 "220n" H 8065 3854 50  0000 L CNN
F 2 "NevaDA:C_0603" H 7988 3750 50  0001 C CNN
F 3 "~" H 7950 3900 50  0001 C CNN
	1    7950 3900
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR0128
U 1 1 5F2A8697
P 7950 4100
F 0 "#PWR0128" H 7950 3850 50  0001 C CNN
F 1 "GNDD" V 7954 3990 50  0001 R CNN
F 2 "" H 7950 4100 50  0001 C CNN
F 3 "" H 7950 4100 50  0001 C CNN
	1    7950 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7950 3750 7950 3600
Wire Wire Line
	7950 3600 7850 3600
Wire Wire Line
	7950 4100 7950 4050
Wire Wire Line
	7400 4100 7400 4050
Wire Wire Line
	7400 3600 7400 3750
$Comp
L Device:Q_Photo_NPN Q3
U 1 1 5F2A0D8A
P 7300 3300
F 0 "Q3" H 7121 3347 50  0000 R CNN
F 1 "L-7113P3C" H 7121 3254 50  0000 R CNN
F 2 "NevaDA:LED_3.0mm_pin1-anode" H 7500 3400 50  0001 C CNN
F 3 "~" H 7300 3300 50  0001 C CNN
	1    7300 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7950 3600 8050 3600
Connection ~ 7950 3600
Text Label 8050 3600 0    50   ~ 0
OPTIC
Text Label 4100 4450 0    50   ~ 0
OPTIC
$Comp
L Connector:TestPoint TP1
U 1 1 5F2CEC37
P 1650 7150
F 0 "TP1" H 1709 7222 50  0001 L CNN
F 1 "TestPoint" H 1709 7176 50  0001 L CNN
F 2 "NevaDA:Screw_M3_6mm" H 1850 7150 50  0001 C CNN
F 3 "~" H 1850 7150 50  0001 C CNN
	1    1650 7150
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR0129
U 1 1 5F2CEE34
P 1650 7150
F 0 "#PWR0129" H 1650 6900 50  0001 C CNN
F 1 "GNDD" V 1654 7040 50  0001 R CNN
F 2 "" H 1650 7150 50  0001 C CNN
F 3 "" H 1650 7150 50  0001 C CNN
	1    1650 7150
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP2
U 1 1 5F2CF399
P 2150 7150
F 0 "TP2" H 2209 7222 50  0001 L CNN
F 1 "TestPoint" H 2209 7176 50  0001 L CNN
F 2 "NevaDA:Screw_M3_9mm" H 2350 7150 50  0001 C CNN
F 3 "~" H 2350 7150 50  0001 C CNN
	1    2150 7150
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR0130
U 1 1 5F2CF3A3
P 2150 7150
F 0 "#PWR0130" H 2150 6900 50  0001 C CNN
F 1 "GNDD" V 2154 7040 50  0001 R CNN
F 2 "" H 2150 7150 50  0001 C CNN
F 3 "" H 2150 7150 50  0001 C CNN
	1    2150 7150
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP3
U 1 1 5F2D0DCD
P 1900 7150
F 0 "TP3" H 1959 7222 50  0001 L CNN
F 1 "TestPoint" H 1959 7176 50  0001 L CNN
F 2 "NevaDA:Screw_M3_6mm" H 2100 7150 50  0001 C CNN
F 3 "~" H 2100 7150 50  0001 C CNN
	1    1900 7150
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR0131
U 1 1 5F2D0DD7
P 1900 7150
F 0 "#PWR0131" H 1900 6900 50  0001 C CNN
F 1 "GNDD" V 1904 7040 50  0001 R CNN
F 2 "" H 1900 7150 50  0001 C CNN
F 3 "" H 1900 7150 50  0001 C CNN
	1    1900 7150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0133
U 1 1 5F2ED4EC
P 7400 3100
F 0 "#PWR0133" H 7400 2950 50  0001 C CNN
F 1 "+5V" H 7415 3275 50  0000 C CNN
F 2 "" H 7400 3100 50  0001 C CNN
F 3 "" H 7400 3100 50  0001 C CNN
	1    7400 3100
	1    0    0    -1  
$EndComp
Text Label 2300 4950 0    39   ~ 0
XTAL1
Text Label 2300 5450 0    39   ~ 0
XTAL2
Text Label 2600 4050 0    39   ~ 0
AREF
$Comp
L Connector:TestPoint TP4
U 1 1 5F31B628
P 2400 7150
F 0 "TP4" H 2459 7222 50  0001 L CNN
F 1 "TestPoint" H 2459 7176 50  0001 L CNN
F 2 "NevaDA:Screw_M3_9mm" H 2600 7150 50  0001 C CNN
F 3 "~" H 2600 7150 50  0001 C CNN
	1    2400 7150
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR0132
U 1 1 5F31B632
P 2400 7150
F 0 "#PWR0132" H 2400 6900 50  0001 C CNN
F 1 "GNDD" V 2404 7040 50  0001 R CNN
F 2 "" H 2400 7150 50  0001 C CNN
F 3 "" H 2400 7150 50  0001 C CNN
	1    2400 7150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R14
U 1 1 5F21852E
P 10200 4700
F 0 "R14" V 9990 4700 50  0000 C CNN
F 1 "22" V 10083 4700 50  0000 C CNN
F 2 "NevaDA:R_1206" V 10130 4700 50  0001 C CNN
F 3 "~" H 10200 4700 50  0001 C CNN
	1    10200 4700
	0    1    1    0   
$EndComp
Wire Wire Line
	9950 4800 9950 5150
Wire Wire Line
	9950 4700 10050 4700
Connection ~ 9950 4700
Wire Wire Line
	10350 4700 10350 4250
Connection ~ 10350 4250
$Comp
L Device:R R15
U 1 1 5F21E5EC
P 10200 5500
F 0 "R15" V 9990 5500 50  0000 C CNN
F 1 "22" V 10083 5500 50  0000 C CNN
F 2 "NevaDA:R_1206" V 10130 5500 50  0001 C CNN
F 3 "~" H 10200 5500 50  0001 C CNN
	1    10200 5500
	0    1    1    0   
$EndComp
Wire Wire Line
	10350 5500 10350 5150
Connection ~ 10350 5150
Wire Wire Line
	10050 5500 9950 5500
Wire Wire Line
	9950 5500 9950 5150
Connection ~ 9950 5150
Text Label 4100 4150 0    50   ~ 0
LED_1
Text Label 4100 4250 0    50   ~ 0
LED_2
Text Label 4100 4350 0    50   ~ 0
LED_3
Text Label 5400 4400 2    50   ~ 0
LED_1
Text Label 5400 4600 2    50   ~ 0
LED_2
Text Label 5400 4800 2    50   ~ 0
LED_3
$Comp
L symbol:LED_RGB_5050BRG D2
U 1 1 5F23769A
P 6100 4600
F 0 "D2" H 6100 5100 50  0000 C CNN
F 1 "TO-5050BC" H 6100 5007 50  0000 C CNN
F 2 "NevaDA:LED_RGB_5050-6" H 6100 4550 50  0001 C CNN
F 3 "~" H 6100 4550 50  0001 C CNN
	1    6100 4600
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R16
U 1 1 5F2398AC
P 5550 4400
F 0 "R16" V 5340 4400 50  0000 C CNN
F 1 "1k" V 5433 4400 50  0000 C CNN
F 2 "NevaDA:R_0603" V 5480 4400 50  0001 C CNN
F 3 "~" H 5550 4400 50  0001 C CNN
	1    5550 4400
	0    1    1    0   
$EndComp
$Comp
L Device:R R17
U 1 1 5F239BCA
P 5550 4600
F 0 "R17" V 5434 4600 50  0000 C CNN
F 1 "1k" V 5433 4600 50  0001 C CNN
F 2 "NevaDA:R_0603" V 5480 4600 50  0001 C CNN
F 3 "~" H 5550 4600 50  0001 C CNN
	1    5550 4600
	0    1    1    0   
$EndComp
$Comp
L Device:R R18
U 1 1 5F239FFF
P 5550 4800
F 0 "R18" V 5434 4800 50  0000 C CNN
F 1 "1k" V 5433 4800 50  0001 C CNN
F 2 "NevaDA:R_0603" V 5480 4800 50  0001 C CNN
F 3 "~" H 5550 4800 50  0001 C CNN
	1    5550 4800
	0    1    1    0   
$EndComp
Wire Wire Line
	5700 4400 5900 4400
Wire Wire Line
	5700 4600 5900 4600
Wire Wire Line
	5700 4800 5900 4800
$Comp
L power:GNDD #PWR0134
U 1 1 5F2405E4
P 6350 4900
F 0 "#PWR0134" H 6350 4650 50  0001 C CNN
F 1 "GNDD" V 6354 4790 50  0001 R CNN
F 2 "" H 6350 4900 50  0001 C CNN
F 3 "" H 6350 4900 50  0001 C CNN
	1    6350 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 4900 6350 4800
Wire Wire Line
	6350 4400 6300 4400
Wire Wire Line
	6300 4600 6350 4600
Connection ~ 6350 4600
Wire Wire Line
	6350 4600 6350 4400
Wire Wire Line
	6300 4800 6350 4800
Connection ~ 6350 4800
Wire Wire Line
	6350 4800 6350 4600
$Comp
L Switch:SW_Push SW1
U 1 1 5F24E265
P 5800 5450
F 0 "SW1" H 5800 5645 50  0000 C CNN
F 1 "SW" H 5800 5646 50  0001 C CNN
F 2 "NevaDA:SW_PUSH_6mm" H 5800 5650 50  0001 C CNN
F 3 "~" H 5800 5650 50  0001 C CNN
	1    5800 5450
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR0135
U 1 1 5F24E840
P 6000 5450
F 0 "#PWR0135" H 6000 5200 50  0001 C CNN
F 1 "GNDD" V 6004 5340 50  0001 R CNN
F 2 "" H 6000 5450 50  0001 C CNN
F 3 "" H 6000 5450 50  0001 C CNN
	1    6000 5450
	0    -1   -1   0   
$EndComp
$Comp
L Switch:SW_Push SW2
U 1 1 5F24ECE0
P 5800 5850
F 0 "SW2" H 5800 6045 50  0000 C CNN
F 1 "SW" H 5800 6046 50  0001 C CNN
F 2 "NevaDA:SW_PUSH_6mm" H 5800 6050 50  0001 C CNN
F 3 "~" H 5800 6050 50  0001 C CNN
	1    5800 5850
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR0136
U 1 1 5F24ECEA
P 6000 5850
F 0 "#PWR0136" H 6000 5600 50  0001 C CNN
F 1 "GNDD" V 6004 5740 50  0001 R CNN
F 2 "" H 6000 5850 50  0001 C CNN
F 3 "" H 6000 5850 50  0001 C CNN
	1    6000 5850
	0    -1   -1   0   
$EndComp
Text Label 5600 5450 2    50   ~ 0
BTN1
Text Label 5600 5850 2    50   ~ 0
BTN2
Text Label 4100 5150 0    50   ~ 0
BTN1
Text Label 4100 5250 0    50   ~ 0
BTN2
$Comp
L Connector:TestPoint TP5
U 1 1 5F26DCB0
P 5400 1150
F 0 "TP5" H 5459 1269 50  0001 L CNN
F 1 "TestPoint" H 5459 1176 50  0001 L CNN
F 2 "NevaDA:1Pin" H 5600 1150 50  0001 C CNN
F 3 "~" H 5600 1150 50  0001 C CNN
F 4 "+5V" H 5459 1222 50  0000 L CNN "Role"
	1    5400 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 1150 5400 1300
$Comp
L Device:C C13
U 1 1 5F27B30B
P 3100 7450
F 0 "C13" H 3215 7497 50  0000 L CNN
F 1 "220n" H 3215 7404 50  0000 L CNN
F 2 "NevaDA:C_0603" H 3138 7300 50  0001 C CNN
F 3 "~" H 3100 7450 50  0001 C CNN
	1    3100 7450
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR0137
U 1 1 5F27B315
P 3100 7600
F 0 "#PWR0137" H 3100 7350 50  0001 C CNN
F 1 "GNDD" V 3104 7490 50  0001 R CNN
F 2 "" H 3100 7600 50  0001 C CNN
F 3 "" H 3100 7600 50  0001 C CNN
	1    3100 7600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 7300 3100 7200
Connection ~ 3100 7200
$Comp
L Device:C C14
U 1 1 5F282AD0
P 3600 7450
F 0 "C14" H 3715 7497 50  0000 L CNN
F 1 "220n" H 3715 7404 50  0000 L CNN
F 2 "NevaDA:C_0603" H 3638 7300 50  0001 C CNN
F 3 "~" H 3600 7450 50  0001 C CNN
	1    3600 7450
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR0138
U 1 1 5F282ADA
P 3600 7600
F 0 "#PWR0138" H 3600 7350 50  0001 C CNN
F 1 "GNDD" V 3604 7490 50  0001 R CNN
F 2 "" H 3600 7600 50  0001 C CNN
F 3 "" H 3600 7600 50  0001 C CNN
	1    3600 7600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C15
U 1 1 5F285A4F
P 4100 7450
F 0 "C15" H 4215 7497 50  0000 L CNN
F 1 "220n" H 4215 7404 50  0000 L CNN
F 2 "NevaDA:C_0603" H 4138 7300 50  0001 C CNN
F 3 "~" H 4100 7450 50  0001 C CNN
	1    4100 7450
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR0139
U 1 1 5F285A59
P 4100 7600
F 0 "#PWR0139" H 4100 7350 50  0001 C CNN
F 1 "GNDD" V 4104 7490 50  0001 R CNN
F 2 "" H 4100 7600 50  0001 C CNN
F 3 "" H 4100 7600 50  0001 C CNN
	1    4100 7600
	1    0    0    -1  
$EndComp
Text Label 4000 7200 2    50   ~ 0
BTN2
Text Label 3500 7200 2    50   ~ 0
BTN1
$Comp
L Device:R R19
U 1 1 5F2998DB
P 3600 6900
F 0 "R19" H 3670 6947 50  0000 L CNN
F 1 "10k" H 3670 6854 50  0000 L CNN
F 2 "NevaDA:R_0603" V 3530 6900 50  0001 C CNN
F 3 "~" H 3600 6900 50  0001 C CNN
	1    3600 6900
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0140
U 1 1 5F2998E5
P 3600 6750
F 0 "#PWR0140" H 3600 6600 50  0001 C CNN
F 1 "+5V" H 3615 6925 50  0000 C CNN
F 2 "" H 3600 6750 50  0001 C CNN
F 3 "" H 3600 6750 50  0001 C CNN
	1    3600 6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 7200 3600 7050
$Comp
L Device:R R20
U 1 1 5F29BD7D
P 4100 6900
F 0 "R20" H 4170 6947 50  0000 L CNN
F 1 "10k" H 4170 6854 50  0000 L CNN
F 2 "NevaDA:R_0603" V 4030 6900 50  0001 C CNN
F 3 "~" H 4100 6900 50  0001 C CNN
	1    4100 6900
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0141
U 1 1 5F29BD87
P 4100 6750
F 0 "#PWR0141" H 4100 6600 50  0001 C CNN
F 1 "+5V" H 4115 6925 50  0000 C CNN
F 2 "" H 4100 6750 50  0001 C CNN
F 3 "" H 4100 6750 50  0001 C CNN
	1    4100 6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 7200 4100 7050
Wire Wire Line
	3600 7300 3600 7200
Wire Wire Line
	3600 7200 3500 7200
Connection ~ 3600 7200
Wire Wire Line
	4100 7300 4100 7200
Wire Wire Line
	4100 7200 4000 7200
Connection ~ 4100 7200
$EndSCHEMATC
