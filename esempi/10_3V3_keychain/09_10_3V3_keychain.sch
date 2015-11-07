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
LIBS:raspibo_logo
LIBS:conn_micro_usb
LIBS:09_10_3V3_keychain-cache
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
L GND #PWR02
U 1 1 55970A08
P 3650 3150
F 0 "#PWR02" H 3650 2900 50  0001 C CNN
F 1 "GND" H 3650 3000 50  0000 C CNN
F 2 "" H 3650 3150 60  0000 C CNN
F 3 "" H 3650 3150 60  0000 C CNN
	1    3650 3150
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR03
U 1 1 55970A4D
P 3650 2450
F 0 "#PWR03" H 3650 2300 50  0001 C CNN
F 1 "VCC" H 3650 2600 50  0000 C CNN
F 2 "" H 3650 2450 60  0000 C CNN
F 3 "" H 3650 2450 60  0000 C CNN
	1    3650 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 2950 5950 2950
Wire Wire Line
	3650 3150 3650 2950
Connection ~ 3650 2950
Wire Wire Line
	3650 2550 3650 2450
Connection ~ 3650 2550
Wire Wire Line
	3400 2550 4400 2550
NoConn ~ 3400 2650
NoConn ~ 3400 2750
NoConn ~ 3400 2850
NoConn ~ 3000 3150
$Comp
L CONN_01X01 P8
U 1 1 55985BF2
P 7850 3950
F 0 "P8" H 7850 4050 50  0000 C CNN
F 1 "CONN_01X01" V 7950 3950 50  0000 C CNN
F 2 "raspibo_logo:contorno" H 7850 3950 60  0001 C CNN
F 3 "" H 7850 3950 60  0000 C CNN
	1    7850 3950
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 P9
U 1 1 55985C92
P 7850 4450
F 0 "P9" H 7850 4550 50  0000 C CNN
F 1 "CONN_01X01" V 7950 4450 50  0000 C CNN
F 2 "raspibo_logo:raspibo_logo" H 7850 4450 60  0001 C CNN
F 3 "" H 7850 4450 60  0000 C CNN
	1    7850 4450
	1    0    0    -1  
$EndComp
$Comp
L USB_OTG P1
U 1 1 5598562A
P 3100 2750
F 0 "P1" H 3425 2625 50  0000 C CNN
F 1 "USB_OTG" H 3100 2950 50  0000 C CNN
F 2 "w_conn_pc:conn_usb_B_micro_smd" V 3050 2650 60  0001 C CNN
F 3 "" V 3050 2650 60  0000 C CNN
	1    3100 2750
	0    -1   1    0   
$EndComp
NoConn ~ 7650 3950
NoConn ~ 7650 4450
$Comp
L LD1117S33TR U?
U 1 1 5626793F
P 4800 2600
F 0 "U?" H 4800 2850 40  0000 C CNN
F 1 "LD1117S33TR" H 4800 2800 40  0000 C CNN
F 2 "SOT-223" H 4800 2700 40  0000 C CNN
F 3 "" H 4800 2600 60  0000 C CNN
	1    4800 2600
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 P?
U 1 1 56267CDB
P 6150 2550
F 0 "P?" H 6150 2650 50  0000 C CNN
F 1 "CONN_01X01" V 6250 2550 50  0000 C CNN
F 2 "" H 6150 2550 60  0000 C CNN
F 3 "" H 6150 2550 60  0000 C CNN
	1    6150 2550
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 P?
U 1 1 56267D41
P 6150 2950
F 0 "P?" H 6150 3050 50  0000 C CNN
F 1 "CONN_01X01" V 6250 2950 50  0000 C CNN
F 2 "" H 6150 2950 60  0000 C CNN
F 3 "" H 6150 2950 60  0000 C CNN
	1    6150 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 2550 5950 2550
Wire Wire Line
	4800 2850 4800 2950
Connection ~ 4800 2950
$EndSCHEMATC
