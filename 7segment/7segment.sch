EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L MCU_Module:Arduino_Nano_v2.x A1
U 1 1 5F5FDB51
P 6050 3000
F 0 "A1" H 6050 1911 50  0000 C CNN
F 1 "Arduino_Nano_v2.x" H 6050 1820 50  0000 C CNN
F 2 "Module:Arduino_Nano" H 6050 3000 50  0001 C CIN
F 3 "https://www.arduino.cc/en/uploads/Main/ArduinoNanoManual23.pdf" H 6050 3000 50  0001 C CNN
	1    6050 3000
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC595 U5
U 1 1 5F5FEAF6
P 2500 2550
F 0 "U5" H 2500 1669 50  0000 C CNN
F 1 "74HC595" H 2500 1760 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 2500 2550 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 2500 2550 50  0001 C CNN
	1    2500 2550
	-1   0    0    1   
$EndComp
$Comp
L 4xxx:4017 U7
U 1 1 5F5FEF40
P 3050 6500
F 0 "U7" H 3050 5419 50  0000 C CNN
F 1 "4017" H 3050 5510 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 3050 6500 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/Intersil/documents/cd40/cd4017bms-22bms.pdf" H 3050 6500 50  0001 C CNN
	1    3050 6500
	-1   0    0    1   
$EndComp
$Comp
L Transistor_Array:ULN2803A U1
U 1 1 5F5FFE84
P 1400 6150
F 0 "U1" H 1400 6625 50  0000 C CNN
F 1 "ULN2803A" H 1400 6716 50  0000 C CNN
F 2 "Package_DIP:DIP-18_W7.62mm" H 1450 5500 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/uln2803a.pdf" H 1500 5950 50  0001 C CNN
	1    1400 6150
	-1   0    0    -1  
$EndComp
$Comp
L New_Library:Max3232Board U9
U 1 1 5F606BD8
P 4850 1450
F 0 "U9" H 4925 1423 50  0000 C CNN
F 1 "Max3232Board" H 4925 1514 50  0000 C CNN
F 2 "7segment:MAX232" H 4850 1450 50  0001 C CNN
F 3 "" H 4850 1450 50  0001 C CNN
	1    4850 1450
	-1   0    0    1   
$EndComp
$Comp
L Connector:DB9_Male J5
U 1 1 5F6077E3
P 6100 1150
F 0 "J5" H 6280 1196 50  0000 L CNN
F 1 "DB9_Male" H 6280 1105 50  0000 L CNN
F 2 "Connector_Dsub:DSUB-9_Male_Vertical_P2.77x2.84mm" H 6100 1150 50  0001 C CNN
F 3 " ~" H 6100 1150 50  0001 C CNN
	1    6100 1150
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW1
U 1 1 5F6095BF
P 8450 1350
F 0 "SW1" H 8450 1635 50  0000 C CNN
F 1 "SW_Push" H 8450 1544 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H7.3mm" H 8450 1550 50  0001 C CNN
F 3 "~" H 8450 1550 50  0001 C CNN
	1    8450 1350
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5F60B2FD
P 5800 750
F 0 "#PWR0101" H 5800 500 50  0001 C CNN
F 1 "GND" V 5805 622 50  0000 R CNN
F 2 "" H 5800 750 50  0001 C CNN
F 3 "" H 5800 750 50  0001 C CNN
	1    5800 750 
	0    1    1    0   
$EndComp
NoConn ~ 5800 850 
NoConn ~ 5800 950 
NoConn ~ 5800 1050
NoConn ~ 5800 1250
NoConn ~ 5800 1450
NoConn ~ 5800 1550
Wire Wire Line
	5300 1150 5550 1150
Wire Wire Line
	5550 1150 5550 1350
Wire Wire Line
	5550 1350 5800 1350
Wire Wire Line
	5300 1250 5650 1250
Wire Wire Line
	5650 1250 5650 1150
Wire Wire Line
	5650 1150 5800 1150
$Comp
L power:GND #PWR0102
U 1 1 5F62EED5
P 4850 750
F 0 "#PWR0102" H 4850 500 50  0001 C CNN
F 1 "GND" H 4855 577 50  0000 C CNN
F 2 "" H 4850 750 50  0001 C CNN
F 3 "" H 4850 750 50  0001 C CNN
	1    4850 750 
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR0103
U 1 1 5F62F48D
P 4650 750
F 0 "#PWR0103" H 4650 600 50  0001 C CNN
F 1 "+5V" H 4665 923 50  0000 C CNN
F 2 "" H 4650 750 50  0001 C CNN
F 3 "" H 4650 750 50  0001 C CNN
	1    4650 750 
	1    0    0    -1  
$EndComp
$Comp
L Connector:Barrel_Jack J1
U 1 1 5F630DBC
P 800 950
F 0 "J1" H 857 1275 50  0000 C CNN
F 1 "Barrel_Jack" H 857 1184 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 850 910 50  0001 C CNN
F 3 "~" H 850 910 50  0001 C CNN
	1    800  950 
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:L7809 U4
U 1 1 5F631CBE
P 2000 850
F 0 "U4" H 2000 1092 50  0000 C CNN
F 1 "L7809" H 2000 1001 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 2025 700 50  0001 L CIN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/41/4f/b3/b0/12/d4/47/88/CD00000444.pdf/files/CD00000444.pdf/jcr:content/translations/en.CD00000444.pdf" H 2000 800 50  0001 C CNN
	1    2000 850 
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5F632A91
P 1450 1000
F 0 "R1" H 1380 1046 50  0000 R CNN
F 1 "100k" H 1380 955 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 1380 1000 50  0001 C CNN
F 3 "~" H 1450 1000 50  0001 C CNN
	1    1450 1000
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5F63486D
P 1450 1400
F 0 "R2" H 1520 1446 50  0000 L CNN
F 1 "10k" H 1520 1355 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1380 1400 50  0001 C CNN
F 3 "~" H 1450 1400 50  0001 C CNN
	1    1450 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 850  1200 850 
Wire Wire Line
	1450 850  1700 850 
Connection ~ 1450 850 
$Comp
L power:GND #PWR0104
U 1 1 5F640F61
P 1450 1550
F 0 "#PWR0104" H 1450 1300 50  0001 C CNN
F 1 "GND" H 1455 1377 50  0000 C CNN
F 2 "" H 1450 1550 50  0001 C CNN
F 3 "" H 1450 1550 50  0001 C CNN
	1    1450 1550
	1    0    0    -1  
$EndComp
$Comp
L power:+9V #PWR0105
U 1 1 5F643B79
P 2500 850
F 0 "#PWR0105" H 2500 700 50  0001 C CNN
F 1 "+9V" V 2515 978 50  0000 L CNN
F 2 "" H 2500 850 50  0001 C CNN
F 3 "" H 2500 850 50  0001 C CNN
	1    2500 850 
	1    0    0    -1  
$EndComp
$Comp
L power:+9V #PWR0106
U 1 1 5F64A25A
P 5950 2000
F 0 "#PWR0106" H 5950 1850 50  0001 C CNN
F 1 "+9V" H 5965 2173 50  0000 C CNN
F 2 "" H 5950 2000 50  0001 C CNN
F 3 "" H 5950 2000 50  0001 C CNN
	1    5950 2000
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0107
U 1 1 5F64A819
P 6250 2000
F 0 "#PWR0107" H 6250 1850 50  0001 C CNN
F 1 "+5V" H 6265 2173 50  0000 C CNN
F 2 "" H 6250 2000 50  0001 C CNN
F 3 "" H 6250 2000 50  0001 C CNN
	1    6250 2000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 5F64B21E
P 6050 4000
F 0 "#PWR0108" H 6050 3750 50  0001 C CNN
F 1 "GND" H 6055 3827 50  0000 C CNN
F 2 "" H 6050 4000 50  0001 C CNN
F 3 "" H 6050 4000 50  0001 C CNN
	1    6050 4000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 5F64B843
P 6150 4000
F 0 "#PWR0109" H 6150 3750 50  0001 C CNN
F 1 "GND" H 6155 3827 50  0000 C CNN
F 2 "" H 6150 4000 50  0001 C CNN
F 3 "" H 6150 4000 50  0001 C CNN
	1    6150 4000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 5F64D2C3
P 1700 3150
F 0 "#PWR0110" H 1700 2900 50  0001 C CNN
F 1 "GND" H 1705 2977 50  0000 C CNN
F 2 "" H 1700 3150 50  0001 C CNN
F 3 "" H 1700 3150 50  0001 C CNN
	1    1700 3150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0111
U 1 1 5F64F322
P 2500 1850
F 0 "#PWR0111" H 2500 1600 50  0001 C CNN
F 1 "GND" H 2505 1677 50  0000 C CNN
F 2 "" H 2500 1850 50  0001 C CNN
F 3 "" H 2500 1850 50  0001 C CNN
	1    2500 1850
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x08_Female J3
U 1 1 5F67050C
P 1100 2650
F 0 "J3" H 992 2025 50  0000 C CNN
F 1 "Conn_Segments" H 992 2116 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x08_P2.54mm_Vertical" H 1100 2650 50  0001 C CNN
F 3 "~" H 1100 2650 50  0001 C CNN
	1    1100 2650
	-1   0    0    1   
$EndComp
NoConn ~ 2100 2050
$Comp
L power:+5V #PWR0113
U 1 1 5F6DC0B8
P 2500 3150
F 0 "#PWR0113" H 2500 3000 50  0001 C CNN
F 1 "+5V" H 2515 3323 50  0000 C CNN
F 2 "" H 2500 3150 50  0001 C CNN
F 3 "" H 2500 3150 50  0001 C CNN
	1    2500 3150
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR0114
U 1 1 5F701997
P 1000 5850
F 0 "#PWR0114" H 1000 5700 50  0001 C CNN
F 1 "+5V" V 1015 5978 50  0000 L CNN
F 2 "" H 1000 5850 50  0001 C CNN
F 3 "" H 1000 5850 50  0001 C CNN
	1    1000 5850
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0115
U 1 1 5F702EC6
P 1400 6850
F 0 "#PWR0115" H 1400 6600 50  0001 C CNN
F 1 "GND" H 1405 6677 50  0000 C CNN
F 2 "" H 1400 6850 50  0001 C CNN
F 3 "" H 1400 6850 50  0001 C CNN
	1    1400 6850
	1    0    0    -1  
$EndComp
NoConn ~ 2550 6200
NoConn ~ 2550 6100
NoConn ~ 2550 5900
$Comp
L power:+5V #PWR0116
U 1 1 5F7052CB
P 3050 7300
F 0 "#PWR0116" H 3050 7150 50  0001 C CNN
F 1 "+5V" H 3065 7473 50  0000 C CNN
F 2 "" H 3050 7300 50  0001 C CNN
F 3 "" H 3050 7300 50  0001 C CNN
	1    3050 7300
	-1   0    0    1   
$EndComp
$Comp
L 74xx:74HC595 U6
U 1 1 5F65ED14
P 2500 4450
F 0 "U6" H 2500 3569 50  0000 C CNN
F 1 "74HC595" H 2500 3660 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 2500 4450 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 2500 4450 50  0001 C CNN
	1    2500 4450
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR0117
U 1 1 5F6604A2
P 2500 5050
F 0 "#PWR0117" H 2500 4900 50  0001 C CNN
F 1 "+5V" H 2515 5223 50  0000 C CNN
F 2 "" H 2500 5050 50  0001 C CNN
F 3 "" H 2500 5050 50  0001 C CNN
	1    2500 5050
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x08_Female J4
U 1 1 5F6618EF
P 1100 4550
F 0 "J4" H 992 3925 50  0000 C CNN
F 1 "Conn_Segments" H 992 4016 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x08_P2.54mm_Vertical" H 1100 4550 50  0001 C CNN
F 3 "~" H 1100 4550 50  0001 C CNN
	1    1100 4550
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0119
U 1 1 5F662FD2
P 1700 5050
F 0 "#PWR0119" H 1700 4800 50  0001 C CNN
F 1 "GND" H 1705 4877 50  0000 C CNN
F 2 "" H 1700 5050 50  0001 C CNN
F 3 "" H 1700 5050 50  0001 C CNN
	1    1700 5050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0120
U 1 1 5F663676
P 2500 3750
F 0 "#PWR0120" H 2500 3500 50  0001 C CNN
F 1 "GND" H 2505 3577 50  0000 C CNN
F 2 "" H 2500 3750 50  0001 C CNN
F 3 "" H 2500 3750 50  0001 C CNN
	1    2500 3750
	-1   0    0    1   
$EndComp
Wire Wire Line
	2100 3950 2100 3450
Wire Wire Line
	2100 3450 2900 3450
Wire Wire Line
	2900 3450 2900 2950
Text GLabel 2900 4850 2    50   Input ~ 0
ArduinoD4
$Comp
L power:+5V #PWR0121
U 1 1 5F667AF6
P 2900 4550
F 0 "#PWR0121" H 2900 4400 50  0001 C CNN
F 1 "+5V" H 2915 4723 50  0000 C CNN
F 2 "" H 2900 4550 50  0001 C CNN
F 3 "" H 2900 4550 50  0001 C CNN
	1    2900 4550
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0122
U 1 1 5F668370
P 2900 4250
F 0 "#PWR0122" H 2900 4000 50  0001 C CNN
F 1 "GND" H 2905 4077 50  0000 C CNN
F 2 "" H 2900 4250 50  0001 C CNN
F 3 "" H 2900 4250 50  0001 C CNN
	1    2900 4250
	0    -1   -1   0   
$EndComp
Text GLabel 2900 4650 2    50   Input ~ 0
ArduinoD5
Text GLabel 2900 4350 2    50   Input ~ 0
ArduinoD6
Text GLabel 2900 2450 2    50   Input ~ 0
ArduinoD6
Text GLabel 2900 2750 2    50   Input ~ 0
ArduinoD5
$Comp
L power:+5V #PWR0123
U 1 1 5F66A96B
P 2900 2650
F 0 "#PWR0123" H 2900 2500 50  0001 C CNN
F 1 "+5V" H 2915 2823 50  0000 C CNN
F 2 "" H 2900 2650 50  0001 C CNN
F 3 "" H 2900 2650 50  0001 C CNN
	1    2900 2650
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0124
U 1 1 5F66ADE2
P 2900 2350
F 0 "#PWR0124" H 2900 2100 50  0001 C CNN
F 1 "GND" H 2905 2177 50  0000 C CNN
F 2 "" H 2900 2350 50  0001 C CNN
F 3 "" H 2900 2350 50  0001 C CNN
	1    2900 2350
	0    -1   -1   0   
$EndComp
Text GLabel 1450 1200 2    50   Input ~ 0
VinRef
Wire Wire Line
	1450 1150 1450 1250
Wire Wire Line
	1100 1050 1100 1150
Wire Wire Line
	1100 1550 1450 1550
Connection ~ 1450 1550
Wire Wire Line
	1450 1550 2000 1550
Wire Wire Line
	2000 1550 2000 1150
Text GLabel 6550 3600 2    50   Input ~ 0
VinRef
Text GLabel 4250 1150 0    50   Input ~ 0
Rx
Text GLabel 4250 1250 0    50   Input ~ 0
Tx
Text GLabel 5550 2400 0    50   Input ~ 0
Rx
Text GLabel 5550 2500 0    50   Input ~ 0
Tx
Text GLabel 5550 3600 0    50   Input ~ 0
ArduinoD12
Text GLabel 5550 2700 0    50   Input ~ 0
ArduinoD3
Text GLabel 5550 2800 0    50   Input ~ 0
ArduinoD4
Text GLabel 10300 750  0    50   Input ~ 0
ArduinoD4
$Comp
L Device:R R3
U 1 1 5F6B0D08
P 10450 750
F 0 "R3" V 10243 750 50  0000 C CNN
F 1 "10k" V 10334 750 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 10380 750 50  0001 C CNN
F 3 "~" H 10450 750 50  0001 C CNN
	1    10450 750 
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0125
U 1 1 5F6B1416
P 10600 750
F 0 "#PWR0125" H 10600 500 50  0001 C CNN
F 1 "GND" H 10605 577 50  0000 C CNN
F 2 "" H 10600 750 50  0001 C CNN
F 3 "" H 10600 750 50  0001 C CNN
	1    10600 750 
	1    0    0    -1  
$EndComp
Text GLabel 10300 1200 0    50   Input ~ 0
ArduinoD5
$Comp
L Device:R R4
U 1 1 5F6B268C
P 10450 1200
F 0 "R4" V 10243 1200 50  0000 C CNN
F 1 "10k" V 10334 1200 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 10380 1200 50  0001 C CNN
F 3 "~" H 10450 1200 50  0001 C CNN
	1    10450 1200
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0126
U 1 1 5F6B2692
P 10600 1200
F 0 "#PWR0126" H 10600 950 50  0001 C CNN
F 1 "GND" H 10605 1027 50  0000 C CNN
F 2 "" H 10600 1200 50  0001 C CNN
F 3 "" H 10600 1200 50  0001 C CNN
	1    10600 1200
	1    0    0    -1  
$EndComp
Text GLabel 10300 1650 0    50   Input ~ 0
ArduinoD6
$Comp
L Device:R R5
U 1 1 5F6B2B65
P 10450 1650
F 0 "R5" V 10243 1650 50  0000 C CNN
F 1 "10k" V 10334 1650 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 10380 1650 50  0001 C CNN
F 3 "~" H 10450 1650 50  0001 C CNN
	1    10450 1650
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0127
U 1 1 5F6B2B6B
P 10600 1650
F 0 "#PWR0127" H 10600 1400 50  0001 C CNN
F 1 "GND" H 10605 1477 50  0000 C CNN
F 2 "" H 10600 1650 50  0001 C CNN
F 3 "" H 10600 1650 50  0001 C CNN
	1    10600 1650
	1    0    0    -1  
$EndComp
$Comp
L New_Library:StepUp U8
U 1 1 5F6CB441
P 3100 600
F 0 "U8" H 3100 615 50  0000 C CNN
F 1 "StepUp" H 3100 524 50  0000 C CNN
F 2 "7segment:StepUp" H 3100 600 50  0001 C CNN
F 3 "" H 3100 600 50  0001 C CNN
	1    3100 600 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 850  2350 850 
Connection ~ 2500 850 
Wire Wire Line
	2500 850  2700 850 
$Comp
L power:GND #PWR0128
U 1 1 5F6FAD5B
P 3500 950
F 0 "#PWR0128" H 3500 700 50  0001 C CNN
F 1 "GND" H 3505 777 50  0000 C CNN
F 2 "" H 3500 950 50  0001 C CNN
F 3 "" H 3500 950 50  0001 C CNN
	1    3500 950 
	1    0    0    -1  
$EndComp
$Comp
L power:+24V #PWR0129
U 1 1 5F6FB3F5
P 3500 850
F 0 "#PWR0129" H 3500 700 50  0001 C CNN
F 1 "+24V" H 3515 1023 50  0000 C CNN
F 2 "" H 3500 850 50  0001 C CNN
F 3 "" H 3500 850 50  0001 C CNN
	1    3500 850 
	1    0    0    -1  
$EndComp
$Comp
L New_Library:2981 U2
U 1 1 5F70FFA9
P 1700 2550
F 0 "U2" H 1550 3100 50  0000 C CNN
F 1 "2981" H 1850 3100 50  0000 C CNN
F 2 "Package_DIP:DIP-18_W7.62mm_LongPads" H 1700 2000 50  0001 C CNN
F 3 "https://www.allegromicro.com/~/media/Files/Datasheets/A2981-2-Datasheet.ashx" H 1400 2950 50  0001 C CNN
	1    1700 2550
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x08_Female J2
U 1 1 5F717EBB
P 800 6250
F 0 "J2" H 692 5625 50  0000 C CNN
F 1 "Conn_Segments" H 692 5716 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x08_P2.54mm_Vertical" H 800 6250 50  0001 C CNN
F 3 "~" H 800 6250 50  0001 C CNN
	1    800  6250
	-1   0    0    -1  
$EndComp
$Comp
L Device:D D1
U 1 1 5F6C52DC
P 2000 550
F 0 "D1" H 2000 767 50  0000 C CNN
F 1 "D" H 2000 676 50  0000 C CNN
F 2 "Diode_THT:D_A-405_P5.08mm_Vertical_KathodeUp" H 2000 550 50  0001 C CNN
F 3 "~" H 2000 550 50  0001 C CNN
	1    2000 550 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 550  2350 550 
Wire Wire Line
	2350 550  2350 850 
Connection ~ 2350 850 
Wire Wire Line
	2350 850  2500 850 
Wire Wire Line
	1850 550  1700 550 
Wire Wire Line
	1700 550  1700 850 
Connection ~ 1700 850 
$Comp
L Device:CP C1
U 1 1 5F6C7C16
P 1200 1000
F 0 "C1" H 1318 1046 50  0000 L CNN
F 1 "CP" H 1318 955 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 1238 850 50  0001 C CNN
F 3 "~" H 1200 1000 50  0001 C CNN
	1    1200 1000
	1    0    0    -1  
$EndComp
Connection ~ 1200 850 
Wire Wire Line
	1200 850  1450 850 
Wire Wire Line
	1200 1150 1100 1150
Connection ~ 1100 1150
Wire Wire Line
	1100 1150 1100 1550
$Comp
L Device:CP C2
U 1 1 5F6C8B58
P 2350 1000
F 0 "C2" H 2468 1046 50  0000 L CNN
F 1 "CP" H 2468 955 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 2388 850 50  0001 C CNN
F 3 "~" H 2350 1000 50  0001 C CNN
	1    2350 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 1150 2700 1150
Wire Wire Line
	2700 1150 2700 950 
Wire Wire Line
	2350 1150 2000 1150
Connection ~ 2350 1150
Connection ~ 2000 1150
$Comp
L Device:CP C3
U 1 1 5F6D2B75
P 8000 1350
F 0 "C3" H 7750 1350 50  0000 L CNN
F 1 "100nF" H 7650 1250 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 8038 1200 50  0001 C CNN
F 3 "~" H 8000 1350 50  0001 C CNN
	1    8000 1350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0130
U 1 1 5F6D3D0C
P 8450 1550
F 0 "#PWR0130" H 8450 1300 50  0001 C CNN
F 1 "GND" H 8455 1377 50  0000 C CNN
F 2 "" H 8450 1550 50  0001 C CNN
F 3 "" H 8450 1550 50  0001 C CNN
	1    8450 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R8
U 1 1 5F6D4EC4
P 8450 1000
F 0 "R8" V 8243 1000 50  0000 C CNN
F 1 "10k" V 8334 1000 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 8380 1000 50  0001 C CNN
F 3 "~" H 8450 1000 50  0001 C CNN
	1    8450 1000
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR0131
U 1 1 5F6D591B
P 8450 850
F 0 "#PWR0131" H 8450 700 50  0001 C CNN
F 1 "+5V" H 8465 1023 50  0000 C CNN
F 2 "" H 8450 850 50  0001 C CNN
F 3 "" H 8450 850 50  0001 C CNN
	1    8450 850 
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 5F6D6605
P 8300 1150
F 0 "R6" V 8093 1150 50  0000 C CNN
F 1 "10k" V 8184 1150 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8230 1150 50  0001 C CNN
F 3 "~" H 8300 1150 50  0001 C CNN
	1    8300 1150
	0    -1   -1   0   
$EndComp
Connection ~ 8450 1150
$Comp
L power:GND #PWR0132
U 1 1 5F6D881B
P 8000 1550
F 0 "#PWR0132" H 8000 1300 50  0001 C CNN
F 1 "GND" H 8005 1377 50  0000 C CNN
F 2 "" H 8000 1550 50  0001 C CNN
F 3 "" H 8000 1550 50  0001 C CNN
	1    8000 1550
	1    0    0    -1  
$EndComp
Text GLabel 5550 2900 0    50   Input ~ 0
ArduinoD5
Text GLabel 5550 3000 0    50   Input ~ 0
ArduinoD6
Text GLabel 7900 1150 0    50   Input ~ 0
ArduinoD11
Wire Wire Line
	8000 1500 8000 1550
Wire Wire Line
	8150 1150 8000 1150
Wire Wire Line
	8000 1200 8000 1150
Connection ~ 8000 1150
Wire Wire Line
	8000 1150 7900 1150
$Comp
L Switch:SW_Push SW2
U 1 1 5F6F296E
P 8450 2600
F 0 "SW2" H 8450 2885 50  0000 C CNN
F 1 "SW_Push" H 8450 2794 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H7.3mm" H 8450 2800 50  0001 C CNN
F 3 "~" H 8450 2800 50  0001 C CNN
	1    8450 2600
	0    1    1    0   
$EndComp
$Comp
L Device:CP C4
U 1 1 5F6F2974
P 8000 2600
F 0 "C4" H 7750 2600 50  0000 L CNN
F 1 "100nF" H 7650 2500 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 8038 2450 50  0001 C CNN
F 3 "~" H 8000 2600 50  0001 C CNN
	1    8000 2600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0133
U 1 1 5F6F297A
P 8450 2800
F 0 "#PWR0133" H 8450 2550 50  0001 C CNN
F 1 "GND" H 8455 2627 50  0000 C CNN
F 2 "" H 8450 2800 50  0001 C CNN
F 3 "" H 8450 2800 50  0001 C CNN
	1    8450 2800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R9
U 1 1 5F6F2980
P 8450 2250
F 0 "R9" V 8243 2250 50  0000 C CNN
F 1 "10k" V 8334 2250 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 8380 2250 50  0001 C CNN
F 3 "~" H 8450 2250 50  0001 C CNN
	1    8450 2250
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR0134
U 1 1 5F6F2986
P 8450 2100
F 0 "#PWR0134" H 8450 1950 50  0001 C CNN
F 1 "+5V" H 8465 2273 50  0000 C CNN
F 2 "" H 8450 2100 50  0001 C CNN
F 3 "" H 8450 2100 50  0001 C CNN
	1    8450 2100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 5F6F298C
P 8300 2400
F 0 "R7" V 8093 2400 50  0000 C CNN
F 1 "10k" V 8184 2400 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 8230 2400 50  0001 C CNN
F 3 "~" H 8300 2400 50  0001 C CNN
	1    8300 2400
	0    -1   -1   0   
$EndComp
Connection ~ 8450 2400
$Comp
L power:GND #PWR0135
U 1 1 5F6F2993
P 8000 2800
F 0 "#PWR0135" H 8000 2550 50  0001 C CNN
F 1 "GND" H 8005 2627 50  0000 C CNN
F 2 "" H 8000 2800 50  0001 C CNN
F 3 "" H 8000 2800 50  0001 C CNN
	1    8000 2800
	1    0    0    -1  
$EndComp
Text GLabel 7900 2400 0    50   Input ~ 0
ArduinoD12
Wire Wire Line
	8000 2750 8000 2800
Wire Wire Line
	8150 2400 8000 2400
Wire Wire Line
	8000 2450 8000 2400
Connection ~ 8000 2400
Wire Wire Line
	8000 2400 7900 2400
$Comp
L power:GND #PWR01
U 1 1 5F823336
P 3050 5600
F 0 "#PWR01" H 3050 5350 50  0001 C CNN
F 1 "GND" H 3055 5427 50  0000 C CNN
F 2 "" H 3050 5600 50  0001 C CNN
F 3 "" H 3050 5600 50  0001 C CNN
	1    3050 5600
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5F8237E4
P 3550 6900
F 0 "#PWR02" H 3550 6650 50  0001 C CNN
F 1 "GND" H 3555 6727 50  0000 C CNN
F 2 "" H 3550 6900 50  0001 C CNN
F 3 "" H 3550 6900 50  0001 C CNN
	1    3550 6900
	0    -1   -1   0   
$EndComp
Text GLabel 5550 2600 0    50   Input ~ 0
ArduinoD2
Text GLabel 5550 3500 0    50   Input ~ 0
ArduinoD11
Text GLabel 3550 6700 2    50   Input ~ 0
ArduinoD2
Text GLabel 3550 7000 2    50   Input ~ 0
ArduinoD3
Text GLabel 10300 2100 0    50   Input ~ 0
ArduinoD2
$Comp
L Device:R R10
U 1 1 5F82F29C
P 10450 2100
F 0 "R10" V 10243 2100 50  0000 C CNN
F 1 "10k" V 10334 2100 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 10380 2100 50  0001 C CNN
F 3 "~" H 10450 2100 50  0001 C CNN
	1    10450 2100
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5F82F2A2
P 10600 2100
F 0 "#PWR03" H 10600 1850 50  0001 C CNN
F 1 "GND" H 10605 1927 50  0000 C CNN
F 2 "" H 10600 2100 50  0001 C CNN
F 3 "" H 10600 2100 50  0001 C CNN
	1    10600 2100
	1    0    0    -1  
$EndComp
Text GLabel 10300 2550 0    50   Input ~ 0
ArduinoD3
$Comp
L Device:R R11
U 1 1 5F82FE16
P 10450 2550
F 0 "R11" V 10243 2550 50  0000 C CNN
F 1 "10k" V 10334 2550 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 10380 2550 50  0001 C CNN
F 3 "~" H 10450 2550 50  0001 C CNN
	1    10450 2550
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5F82FE1C
P 10600 2550
F 0 "#PWR04" H 10600 2300 50  0001 C CNN
F 1 "GND" H 10605 2377 50  0000 C CNN
F 2 "" H 10600 2550 50  0001 C CNN
F 3 "" H 10600 2550 50  0001 C CNN
	1    10600 2550
	1    0    0    -1  
$EndComp
NoConn ~ 5550 3400
NoConn ~ 5550 3700
NoConn ~ 6550 3700
NoConn ~ 6550 3000
NoConn ~ 6550 3500
NoConn ~ 6550 3400
NoConn ~ 6550 3300
NoConn ~ 6550 3200
NoConn ~ 6550 3100
NoConn ~ 6550 2800
NoConn ~ 6550 2500
NoConn ~ 6550 2400
NoConn ~ 6150 2000
$Comp
L New_Library:2981 U3
U 1 1 5F70EE7F
P 1700 4450
F 0 "U3" H 1500 5000 50  0000 C CNN
F 1 "2981" H 1900 5000 50  0000 C CNN
F 2 "Package_DIP:DIP-18_W7.62mm_LongPads" H 1700 3900 50  0001 C CNN
F 3 "https://www.allegromicro.com/~/media/Files/Datasheets/A2981-2-Datasheet.ashx" H 1400 4850 50  0001 C CNN
	1    1700 4450
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2550 6500 2200 6500
Wire Wire Line
	2200 6500 2200 6650
Wire Wire Line
	2550 6900 2150 6900
Wire Wire Line
	2150 6900 2150 6550
Wire Wire Line
	2150 6550 1800 6550
Wire Wire Line
	1800 6450 1850 6450
Wire Wire Line
	1850 6450 1850 7000
Wire Wire Line
	1850 7000 2550 7000
Wire Wire Line
	2550 6800 1900 6800
Wire Wire Line
	1900 6800 1900 6350
Wire Wire Line
	1900 6350 1800 6350
Wire Wire Line
	2550 6400 1950 6400
Wire Wire Line
	1950 6400 1950 6250
Wire Wire Line
	1950 6250 1800 6250
Wire Wire Line
	2550 6300 2000 6300
Wire Wire Line
	2000 6300 2000 6150
Wire Wire Line
	2000 6150 1800 6150
Wire Wire Line
	2200 6650 1800 6650
Wire Wire Line
	2550 6700 2050 6700
Wire Wire Line
	2050 6700 2050 6050
Wire Wire Line
	2050 6050 1800 6050
Wire Wire Line
	2550 6600 2250 6600
Wire Wire Line
	2250 6600 2250 5950
Wire Wire Line
	2250 5950 1800 5950
NoConn ~ 5550 3300
NoConn ~ 5550 3200
NoConn ~ 5550 3100
$Comp
L power:+24V #PWR0112
U 1 1 5F97EBAF
P 1700 2050
F 0 "#PWR0112" H 1700 1900 50  0001 C CNN
F 1 "+24V" H 1715 2223 50  0000 C CNN
F 2 "" H 1700 2050 50  0001 C CNN
F 3 "" H 1700 2050 50  0001 C CNN
	1    1700 2050
	1    0    0    -1  
$EndComp
$Comp
L power:+24V #PWR0118
U 1 1 5F982984
P 1700 3950
F 0 "#PWR0118" H 1700 3800 50  0001 C CNN
F 1 "+24V" H 1715 4123 50  0000 C CNN
F 2 "" H 1700 3950 50  0001 C CNN
F 3 "" H 1700 3950 50  0001 C CNN
	1    1700 3950
	1    0    0    -1  
$EndComp
$EndSCHEMATC