EESchema Schematic File Version 2  date Sun 01 Feb 2015 05:14:17 PM MST
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:special
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:custom
LIBS:water_sensor-cache
EELAYER 27 0
EELAYER END
$Descr USLetter 8500 11000 portrait
encoding utf-8
Sheet 1 1
Title "Water Sensor"
Date "2 feb 2015"
Rev "1"
Comp "Hackstyle"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L LED D1
U 1 1 54CE6B92
P 2550 2200
F 0 "D1" H 2550 2300 50  0000 C CNN
F 1 "GRN" H 2550 2100 50  0000 C CNN
F 2 "~" H 2550 2200 60  0000 C CNN
F 3 "~" H 2550 2200 60  0000 C CNN
	1    2550 2200
	0    1    1    0   
$EndComp
$Comp
L NPN Q1
U 1 1 54CE6BA1
P 4450 3100
F 0 "Q1" H 4450 2950 50  0000 R CNN
F 1 "2N3904" H 4450 3250 50  0001 R CNN
F 2 "~" H 4450 3100 60  0000 C CNN
F 3 "~" H 4450 3100 60  0000 C CNN
	1    4450 3100
	1    0    0    -1  
$EndComp
$Comp
L DIODE D3
U 1 1 54CE6BD4
P 5600 2200
F 0 "D3" H 5600 2300 40  0000 C CNN
F 1 "1N4007" H 5600 2100 40  0001 C CNN
F 2 "~" H 5600 2200 60  0000 C CNN
F 3 "~" H 5600 2200 60  0000 C CNN
	1    5600 2200
	0    1    -1   0   
$EndComp
$Comp
L POTENTIOMETER RV1
U 1 1 54CE6D03
P 3850 3450
F 0 "RV1" H 3800 3575 40  0000 R CNN
F 1 "22k" V 3950 3450 40  0000 C CNN
F 2 "~" V 3780 3450 30  0000 C CNN
F 3 "~" H 3850 3450 30  0000 C CNN
	1    3850 3450
	-1   0    0    -1  
$EndComp
$Comp
L CONN_1 P1
U 1 1 54CE6D30
P 2900 3350
F 0 "P1" H 2980 3350 40  0000 L CNN
F 1 "CONN_1" H 2900 3405 30  0001 C CNN
F 2 "" H 2900 3350 60  0000 C CNN
F 3 "" H 2900 3350 60  0000 C CNN
	1    2900 3350
	-1   0    0    -1  
$EndComp
$Comp
L CONN_3 P2
U 1 1 54CE6D44
P 7250 2200
F 0 "P2" V 7200 2200 50  0000 C CNN
F 1 "CONN_3" V 7300 2200 40  0001 C CNN
F 2 "" H 7250 2200 60  0000 C CNN
F 3 "" H 7250 2200 60  0000 C CNN
	1    7250 2200
	1    0    0    -1  
$EndComp
$Comp
L RESISTOR R1
U 1 1 54CE6D6B
P 2550 1650
F 0 "R1" V 2640 1645 40  0000 C CNN
F 1 "480" V 2465 1650 40  0000 C CNN
F 2 "~" V 2480 1650 30  0000 C CNN
F 3 "~" H 2550 1650 30  0000 C CNN
	1    2550 1650
	1    0    0    -1  
$EndComp
$Comp
L NPN Q2
U 1 1 54CE6D96
P 5050 3600
F 0 "Q2" H 5050 3450 50  0000 R CNN
F 1 "2N3904" H 5050 3750 50  0001 R CNN
F 2 "~" H 5050 3600 60  0000 C CNN
F 3 "~" H 5050 3600 60  0000 C CNN
	1    5050 3600
	1    0    0    -1  
$EndComp
$Comp
L CONN_1 P2
U 1 1 54CE6E5A
P 2900 3550
F 0 "P2" H 2980 3550 40  0000 L CNN
F 1 "CONN_1" H 2900 3605 30  0001 C CNN
F 2 "" H 2900 3550 60  0000 C CNN
F 3 "" H 2900 3550 60  0000 C CNN
	1    2900 3550
	-1   0    0    -1  
$EndComp
$Comp
L LED D2
U 1 1 54CE6E82
P 5150 3000
F 0 "D2" H 5150 3100 50  0000 C CNN
F 1 "RED" H 5150 2900 50  0000 C CNN
F 2 "~" H 5150 3000 60  0000 C CNN
F 3 "~" H 5150 3000 60  0000 C CNN
	1    5150 3000
	0    1    1    0   
$EndComp
$Comp
L RESISTOR R3
U 1 1 54CE6E88
P 5150 2250
F 0 "R3" V 5240 2245 40  0000 C CNN
F 1 "480" V 5065 2250 40  0000 C CNN
F 2 "~" V 5080 2250 30  0000 C CNN
F 3 "~" H 5150 2250 30  0000 C CNN
	1    5150 2250
	1    0    0    -1  
$EndComp
$Comp
L RESISTOR R2
U 1 1 54CE6FAF
P 4550 2250
F 0 "R2" V 4640 2245 40  0000 C CNN
F 1 "10k" V 4465 2250 40  0000 C CNN
F 2 "~" V 4480 2250 30  0000 C CNN
F 3 "~" H 4550 2250 30  0000 C CNN
	1    4550 2250
	1    0    0    -1  
$EndComp
Text Notes 1050 1450 0    60   ~ 0
12VDC, 70mA
$Comp
L RELAY_SPDT K1
U 1 1 54CEE512
P 6300 2200
F 0 "K1" H 6290 2410 70  0000 C CNN
F 1 "RELAY_SPDT" H 6330 1970 70  0001 C CNN
F 2 "~" H 5450 2400 60  0000 C CNN
F 3 "~" H 5450 2400 60  0000 C CNN
	1    6300 2200
	1    0    0    -1  
$EndComp
Text Notes 2750 3500 0    60   ~ 0
Note 1
Text Notes 600  9900 0    60   ~ 0
Notes:\n\n1. Two-wire probe. Approximate resistance when\nimmersed in water is 200kohm.
$Comp
L CONN_2 P1
U 1 1 54CEB88C
P 1800 1400
F 0 "P1" V 1750 1400 40  0000 C CNN
F 1 "CONN_2" V 1850 1400 40  0001 C CNN
F 2 "" H 1800 1400 60  0000 C CNN
F 3 "" H 1800 1400 60  0000 C CNN
	1    1800 1400
	-1   0    0    -1  
$EndComp
$Comp
L RESISTOR R7
U 1 1 54CEB99D
P 3850 2750
F 0 "R7" V 3940 2745 40  0000 C CNN
F 1 "200k" V 3765 2750 40  0000 C CNN
F 2 "~" V 3780 2750 30  0000 C CNN
F 3 "~" H 3850 2750 30  0000 C CNN
	1    3850 2750
	1    0    0    -1  
$EndComp
$Comp
L RESISTOR R4
U 1 1 54CEBA31
P 3050 1650
F 0 "R4" V 3140 1645 40  0000 C CNN
F 1 "47" V 2965 1650 40  0000 C CNN
F 2 "~" V 2980 1650 30  0000 C CNN
F 3 "~" H 3050 1650 30  0000 C CNN
	1    3050 1650
	1    0    0    -1  
$EndComp
$Comp
L RESISTOR R5
U 1 1 54CEBA37
P 3850 1650
F 0 "R5" V 3940 1645 40  0000 C CNN
F 1 "47" V 3765 1650 40  0000 C CNN
F 2 "~" V 3780 1650 30  0000 C CNN
F 3 "~" H 3850 1650 30  0000 C CNN
	1    3850 1650
	1    0    0    -1  
$EndComp
$Comp
L PNP Q3
U 1 1 54CEBA48
P 3150 2200
F 0 "Q3" H 3150 2050 60  0000 R CNN
F 1 "2N3906" H 3150 2350 60  0001 R CNN
F 2 "~" H 3150 2200 60  0000 C CNN
F 3 "~" H 3150 2200 60  0000 C CNN
	1    3150 2200
	-1   0    0    1   
$EndComp
$Comp
L PNP Q4
U 1 1 54CEBA55
P 3750 2200
F 0 "Q4" H 3750 2050 60  0000 R CNN
F 1 "2N3906" H 3750 2350 60  0001 R CNN
F 2 "~" H 3750 2200 60  0000 C CNN
F 3 "~" H 3750 2200 60  0000 C CNN
	1    3750 2200
	1    0    0    1   
$EndComp
$Comp
L RESISTOR R6
U 1 1 54CEBA60
P 3050 2750
F 0 "R6" V 3140 2745 40  0000 C CNN
F 1 "22k" V 2965 2750 40  0000 C CNN
F 2 "~" V 2980 2750 30  0000 C CNN
F 3 "~" H 3050 2750 30  0000 C CNN
	1    3050 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 1300 2550 1300
Wire Wire Line
	2550 1300 3050 1300
Wire Wire Line
	3050 1300 3850 1300
Wire Wire Line
	3850 1300 4550 1300
Wire Wire Line
	4550 1300 5150 1300
Wire Wire Line
	5150 1300 5600 1300
Wire Wire Line
	5600 1300 5950 1300
Wire Wire Line
	2550 1300 2550 1400
Connection ~ 2550 1300
Wire Wire Line
	4550 1300 4550 2000
Wire Wire Line
	5150 1300 5150 2000
Connection ~ 4550 1300
Wire Wire Line
	5600 1300 5600 2000
Connection ~ 5150 1300
Wire Wire Line
	2550 1900 2550 2000
Wire Wire Line
	3850 3000 3850 3100
Wire Wire Line
	3850 3100 3850 3200
Wire Wire Line
	4050 3450 4050 3700
Wire Wire Line
	4050 3700 3850 3700
Wire Wire Line
	4550 2900 4550 2500
Wire Wire Line
	5150 2800 5150 2500
Wire Wire Line
	4550 3300 4550 3600
Wire Wire Line
	4550 3600 4850 3600
Wire Wire Line
	5150 3200 5150 3300
Wire Wire Line
	5150 3300 5150 3400
Wire Wire Line
	5600 2400 5600 3300
Wire Wire Line
	2150 1500 2150 4100
Wire Wire Line
	2150 4100 2550 4100
Wire Wire Line
	2550 4100 3050 4100
Wire Wire Line
	3050 4100 5150 4100
Wire Wire Line
	5150 4100 5150 3800
Wire Wire Line
	3850 3700 3850 4100
Wire Wire Line
	2550 2400 2550 4100
Connection ~ 2550 4100
Wire Wire Line
	5950 1300 5950 2100
Connection ~ 5600 1300
Wire Wire Line
	5950 3300 5950 3300
Wire Wire Line
	5950 3300 5950 2300
Connection ~ 5600 3300
Wire Wire Line
	6900 2100 6650 2100
Wire Wire Line
	6900 2200 6650 2200
Wire Wire Line
	6900 2300 6650 2300
Wire Wire Line
	4250 3100 3850 3100
Connection ~ 3850 3100
Wire Wire Line
	3850 2500 3850 2400
Wire Wire Line
	3050 1400 3050 1300
Connection ~ 3050 1300
Wire Wire Line
	3850 1400 3850 1300
Connection ~ 3850 1300
Wire Wire Line
	3050 1900 3050 2000
Wire Wire Line
	3850 1900 3850 2000
Wire Wire Line
	3350 2200 3400 2200
Wire Wire Line
	3400 2200 3550 2200
Wire Wire Line
	3050 2400 3050 2450
Wire Wire Line
	3050 2450 3050 2500
Wire Wire Line
	3400 2200 3400 2450
Wire Wire Line
	3400 2450 3050 2450
Connection ~ 3050 2450
Connection ~ 3400 2200
Wire Wire Line
	3050 3000 3050 3350
Wire Wire Line
	3050 3550 3050 4100
Connection ~ 3050 4100
Wire Wire Line
	5950 3300 5600 3300
Wire Wire Line
	5600 3300 5150 3300
Connection ~ 5150 3300
$EndSCHEMATC
