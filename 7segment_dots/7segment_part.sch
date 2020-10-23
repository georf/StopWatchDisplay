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
L Device:LED Dh1
U 1 1 5F92152B
P 3900 3350
F 0 "Dh1" H 3893 3475 50  0000 C CNN
F 1 "LED" H 3893 3476 50  0001 C CNN
F 2 "LED_THT:LED_D5.0mm_Clear" H 3900 3350 50  0001 C CNN
F 3 "~" H 3900 3350 50  0001 C CNN
	1    3900 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:LED Dh2
U 1 1 5F921531
P 4200 3350
F 0 "Dh2" H 4193 3475 50  0000 C CNN
F 1 "LED" H 4193 3476 50  0001 C CNN
F 2 "LED_THT:LED_D5.0mm_Clear" H 4200 3350 50  0001 C CNN
F 3 "~" H 4200 3350 50  0001 C CNN
	1    4200 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:LED Dh3
U 1 1 5F921537
P 4500 3350
F 0 "Dh3" H 4493 3475 50  0000 C CNN
F 1 "LED" H 4493 3476 50  0001 C CNN
F 2 "LED_THT:LED_D5.0mm_Clear" H 4500 3350 50  0001 C CNN
F 3 "~" H 4500 3350 50  0001 C CNN
	1    4500 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:LED Dh4
U 1 1 5F92153D
P 4800 3350
F 0 "Dh4" H 4793 3475 50  0000 C CNN
F 1 "LED" H 4793 3476 50  0001 C CNN
F 2 "LED_THT:LED_D5.0mm_Clear" H 4800 3350 50  0001 C CNN
F 3 "~" H 4800 3350 50  0001 C CNN
	1    4800 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:R Rh1
U 1 1 5F92155B
P 5100 3350
F 0 "Rh1" V 5307 3350 50  0000 C CNN
F 1 "R" V 5216 3350 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" V 5030 3350 50  0001 C CNN
F 3 "~" H 5100 3350 50  0001 C CNN
	1    5100 3350
	0    -1   -1   0   
$EndComp
Text Notes 3500 3150 0    50   ~ 0
Segment H1
Wire Notes Line
	3450 3050 5350 3050
Wire Notes Line
	5350 3050 5350 3900
$Comp
L Connector:Conn_01x08_Female J1
U 1 1 5F9216EF
P 2950 2750
F 0 "J1" V 3115 2680 50  0000 C CNN
F 1 "Segments" V 3024 2680 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 2950 2750 50  0001 C CNN
F 3 "~" H 2950 2750 50  0001 C CNN
	1    2950 2750
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Conn_01x08_Female J2
U 1 1 5F9216F5
P 2950 4150
F 0 "J2" H 3023 4080 50  0000 C CNN
F 1 "Segments" V 3114 4080 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 2950 4150 50  0001 C CNN
F 3 "~" H 2950 4150 50  0001 C CNN
	1    2950 4150
	0    -1   1    0   
$EndComp
$Comp
L Connector:Conn_01x08_Female J3
U 1 1 5F92172C
P 6350 2450
F 0 "J3" V 6515 2380 50  0000 C CNN
F 1 "Numbers" V 6424 2380 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 6350 2450 50  0001 C CNN
F 3 "~" H 6350 2450 50  0001 C CNN
	1    6350 2450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3350 2950 3350 3350
Wire Wire Line
	3250 3950 3250 2950
Wire Wire Line
	3150 2950 3150 3950
Wire Wire Line
	3050 3950 3050 2950
Wire Wire Line
	2950 2950 2950 3950
Wire Wire Line
	2850 3950 2850 2950
Wire Wire Line
	2750 2950 2750 3950
Wire Wire Line
	2650 3950 2650 2950
Wire Wire Line
	3750 3350 3350 3350
Connection ~ 3350 3350
$Comp
L Connector:Conn_01x08_Female J4
U 1 1 5F921726
P 6350 4400
F 0 "J4" H 6423 4330 50  0000 C CNN
F 1 "Numbers" V 6514 4330 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 6350 4400 50  0001 C CNN
F 3 "~" H 6350 4400 50  0001 C CNN
	1    6350 4400
	0    -1   1    0   
$EndComp
$Comp
L Jumper:SolderJumper_2_Open JP2
U 1 1 5FB2AA2C
P 5850 3350
F 0 "JP2" H 5850 3463 50  0000 C CNN
F 1 "SolderJumper_2_Open" H 5850 3464 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_Pad1.0x1.5mm" H 5850 3350 50  0001 C CNN
F 3 "~" H 5850 3350 50  0001 C CNN
	1    5850 3350
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open JP1
U 1 1 5FB301E8
P 5850 3050
F 0 "JP1" H 5850 3163 50  0000 C CNN
F 1 "SolderJumper_2_Open" H 5850 3164 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_Pad1.0x1.5mm" H 5850 3050 50  0001 C CNN
F 3 "~" H 5850 3050 50  0001 C CNN
	1    5850 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 3350 5400 3350
Connection ~ 5400 3350
Wire Wire Line
	5700 3050 5400 3050
Wire Wire Line
	5400 3050 5400 3350
Wire Wire Line
	5250 3350 5400 3350
Wire Wire Line
	6550 4200 6550 2650
Wire Wire Line
	6650 2650 6650 4200
Wire Wire Line
	6750 4200 6750 2650
Wire Notes Line
	3450 3900 3450 3050
Wire Notes Line
	5350 3900 3450 3900
Wire Wire Line
	3350 3350 3350 3950
Wire Wire Line
	6050 2650 6050 3050
Wire Wire Line
	6350 2650 6350 4200
Wire Wire Line
	6250 2650 6250 4200
Wire Wire Line
	6150 2650 6150 3350
Wire Wire Line
	6450 2650 6450 4200
Wire Wire Line
	6000 3050 6050 3050
Connection ~ 6050 3050
Wire Wire Line
	6050 3050 6050 4200
Wire Wire Line
	6000 3350 6150 3350
Connection ~ 6150 3350
Wire Wire Line
	6150 3350 6150 4200
$EndSCHEMATC
