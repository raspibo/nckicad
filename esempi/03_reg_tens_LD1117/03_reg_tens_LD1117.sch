EESchema Schematic File Version 2
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
EELAYER 25 0
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
L LD1117S33TR U1
U 1 1 55300CD9
P 3250 1550
F 0 "U1" H 3250 1800 40  0000 C CNN
F 1 "LD1117S33TR" H 3250 1750 40  0000 C CNN
F 2 "w_smd_trans:sot223" H 3250 1650 40  0000 C CNN
F 3 "" H 3250 1550 60  0000 C CNN
	1    3250 1550
	1    0    0    -1  
$EndComp
$Comp
L CP C2
U 1 1 55300D12
P 3900 1800
F 0 "C2" H 3925 1900 50  0000 L CNN
F 1 "CP" H 3925 1700 50  0000 L CNN
F 2 "w_capacitors:CP_4x5mm" H 3938 1650 30  0001 C CNN
F 3 "" H 3900 1800 60  0000 C CNN
	1    3900 1800
	1    0    0    -1  
$EndComp
$Comp
L CP C1
U 1 1 55300D45
P 2600 1800
F 0 "C1" H 2625 1900 50  0000 L CNN
F 1 "CP" H 2625 1700 50  0000 L CNN
F 2 "w_capacitors:CP_4x5mm" H 2638 1650 30  0001 C CNN
F 3 "" H 2600 1800 60  0000 C CNN
	1    2600 1800
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P1
U 1 1 55300E01
P 2100 1550
F 0 "P1" H 2100 1700 50  0000 C CNN
F 1 "CONN_01X02" V 2200 1550 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Angled_1x02" H 2100 1550 60  0001 C CNN
F 3 "" H 2100 1550 60  0000 C CNN
	1    2100 1550
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X02 P2
U 1 1 55300E38
P 4400 1550
F 0 "P2" H 4400 1700 50  0000 C CNN
F 1 "CONN_01X02" V 4500 1550 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Angled_1x02" H 4400 1550 60  0001 C CNN
F 3 "" H 4400 1550 60  0000 C CNN
	1    4400 1550
	1    0    0    1   
$EndComp
$Comp
L GND #PWR01
U 1 1 55300E67
P 3250 2150
F 0 "#PWR01" H 3250 1900 50  0001 C CNN
F 1 "GND" H 3250 2000 50  0000 C CNN
F 2 "" H 3250 2150 60  0000 C CNN
F 3 "" H 3250 2150 60  0000 C CNN
	1    3250 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 1500 2850 1500
Wire Wire Line
	3650 1500 4200 1500
Wire Wire Line
	3900 1500 3900 1650
Connection ~ 3900 1500
Wire Wire Line
	4200 2100 4200 1600
Wire Wire Line
	2200 2100 4200 2100
Wire Wire Line
	2600 2100 2600 1950
Wire Wire Line
	2600 1400 2600 1650
Connection ~ 2600 1500
Wire Wire Line
	2300 1600 2300 2100
Connection ~ 2600 2100
Wire Wire Line
	3250 1800 3250 2150
Connection ~ 3250 2100
Wire Wire Line
	3900 1950 3900 2100
Connection ~ 3900 2100
$Comp
L PWR_FLAG #FLG02
U 1 1 55300FB5
P 2200 2100
F 0 "#FLG02" H 2200 2195 50  0001 C CNN
F 1 "PWR_FLAG" H 2200 2280 50  0000 C CNN
F 2 "" H 2200 2100 60  0000 C CNN
F 3 "" H 2200 2100 60  0000 C CNN
	1    2200 2100
	0    -1   -1   0   
$EndComp
Connection ~ 2300 2100
$Comp
L PWR_FLAG #FLG03
U 1 1 55301040
P 2600 1400
F 0 "#FLG03" H 2600 1495 50  0001 C CNN
F 1 "PWR_FLAG" H 2600 1580 50  0000 C CNN
F 2 "" H 2600 1400 60  0000 C CNN
F 3 "" H 2600 1400 60  0000 C CNN
	1    2600 1400
	1    0    0    -1  
$EndComp
$EndSCHEMATC
