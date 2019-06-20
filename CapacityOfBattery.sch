EESchema Schematic File Version 4
LIBS:CapacityOfBattery-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Measurement of capacity of a battery"
Date "2019-06-04"
Rev "-"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector:Conn_01x02_Male J2
U 1 1 5CF76A7D
P 1700 2200
F 0 "J2" H 1550 2100 50  0000 L CNN
F 1 "DUT" H 1500 2200 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 1700 2200 50  0001 C CNN
F 3 "~" H 1700 2200 50  0001 C CNN
	1    1700 2200
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x02_Male J1
U 1 1 5CF7996A
P 1650 1350
F 0 "J1" H 1600 1250 50  0000 R CNN
F 1 "BATTERY" H 1600 1350 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 1650 1350 50  0001 C CNN
F 3 "~" H 1650 1350 50  0001 C CNN
	1    1650 1350
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 5CF7A0BA
P 1300 1400
F 0 "#PWR0108" H 1300 1150 50  0001 C CNN
F 1 "GND" H 1305 1227 50  0000 C CNN
F 2 "" H 1300 1400 50  0001 C CNN
F 3 "" H 1300 1400 50  0001 C CNN
	1    1300 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 1400 1300 1350
Wire Wire Line
	1300 1350 1450 1350
Wire Wire Line
	1450 1250 1200 1250
Text Label 1200 1250 0    50   ~ 0
Vbat
Text Notes 3100 1200 0    50   ~ 0
Discharge Circuitry: Battery discharges through the resistor(s) selected by the MCU by giving active high signal on CtrlX.
Text Notes 1500 2550 0    50   ~ 0
J2 is used to\nconnect the\nDevice Under Test.
Text Notes 1450 1650 0    50   ~ 0
J1 is used to\nconnect the \nBattery [charged].
$Comp
L dk_Transistors-FETs-MOSFETs-Single:IRLML6401TRPBF Q1
U 1 1 5D0475D2
P 3600 2300
F 0 "Q1" V 3750 2300 60  0000 L CNN
F 1 "IRLML6401TRPBF" V 3850 1950 60  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 3800 2500 60  0001 L CNN
F 3 "https://www.infineon.com/dgdl/irlml6401pbf.pdf?fileId=5546d462533600a401535668b96d2634" H 3800 2600 60  0001 L CNN
F 4 "IRLML6401PBFCT-ND" H 3800 2700 60  0001 L CNN "Digi-Key_PN"
F 5 "IRLML6401TRPBF" H 3800 2800 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 3800 2900 60  0001 L CNN "Category"
F 7 "Transistors - FETs, MOSFETs - Single" H 3800 3000 60  0001 L CNN "Family"
F 8 "https://www.infineon.com/dgdl/irlml6401pbf.pdf?fileId=5546d462533600a401535668b96d2634" H 3800 3100 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/infineon-technologies/IRLML6401TRPBF/IRLML6401PBFCT-ND/812509" H 3800 3200 60  0001 L CNN "DK_Detail_Page"
F 10 "MOSFET P-CH 12V 4.3A SOT-23" H 3800 3300 60  0001 L CNN "Description"
F 11 "Infineon Technologies" H 3800 3400 60  0001 L CNN "Manufacturer"
F 12 "Active" H 3800 3500 60  0001 L CNN "Status"
	1    3600 2300
	1    0    0    1   
$EndComp
$Comp
L dk_Transistors-FETs-MOSFETs-Single:IRLML6401TRPBF Q2
U 1 1 5D0498F3
P 4950 2350
F 0 "Q2" V 5100 2350 60  0000 L CNN
F 1 "IRLML6401TRPBF" V 5200 2050 60  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5150 2550 60  0001 L CNN
F 3 "https://www.infineon.com/dgdl/irlml6401pbf.pdf?fileId=5546d462533600a401535668b96d2634" H 5150 2650 60  0001 L CNN
F 4 "IRLML6401PBFCT-ND" H 5150 2750 60  0001 L CNN "Digi-Key_PN"
F 5 "IRLML6401TRPBF" H 5150 2850 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 5150 2950 60  0001 L CNN "Category"
F 7 "Transistors - FETs, MOSFETs - Single" H 5150 3050 60  0001 L CNN "Family"
F 8 "https://www.infineon.com/dgdl/irlml6401pbf.pdf?fileId=5546d462533600a401535668b96d2634" H 5150 3150 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/infineon-technologies/IRLML6401TRPBF/IRLML6401PBFCT-ND/812509" H 5150 3250 60  0001 L CNN "DK_Detail_Page"
F 10 "MOSFET P-CH 12V 4.3A SOT-23" H 5150 3350 60  0001 L CNN "Description"
F 11 "Infineon Technologies" H 5150 3450 60  0001 L CNN "Manufacturer"
F 12 "Active" H 5150 3550 60  0001 L CNN "Status"
	1    4950 2350
	1    0    0    1   
$EndComp
$Comp
L dk_Transistors-FETs-MOSFETs-Single:IRLML6401TRPBF Q3
U 1 1 5D049929
P 6300 2350
F 0 "Q3" V 6450 2350 60  0000 L CNN
F 1 "IRLML6401TRPBF" V 6550 2050 60  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 6500 2550 60  0001 L CNN
F 3 "https://www.infineon.com/dgdl/irlml6401pbf.pdf?fileId=5546d462533600a401535668b96d2634" H 6500 2650 60  0001 L CNN
F 4 "IRLML6401PBFCT-ND" H 6500 2750 60  0001 L CNN "Digi-Key_PN"
F 5 "IRLML6401TRPBF" H 6500 2850 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 6500 2950 60  0001 L CNN "Category"
F 7 "Transistors - FETs, MOSFETs - Single" H 6500 3050 60  0001 L CNN "Family"
F 8 "https://www.infineon.com/dgdl/irlml6401pbf.pdf?fileId=5546d462533600a401535668b96d2634" H 6500 3150 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/infineon-technologies/IRLML6401TRPBF/IRLML6401PBFCT-ND/812509" H 6500 3250 60  0001 L CNN "DK_Detail_Page"
F 10 "MOSFET P-CH 12V 4.3A SOT-23" H 6500 3350 60  0001 L CNN "Description"
F 11 "Infineon Technologies" H 6500 3450 60  0001 L CNN "Manufacturer"
F 12 "Active" H 6500 3550 60  0001 L CNN "Status"
	1    6300 2350
	1    0    0    1   
$EndComp
$Comp
L dk_Transistors-FETs-MOSFETs-Single:IRLML6401TRPBF Q5
U 1 1 5D049986
P 7600 2400
F 0 "Q5" V 7750 2400 60  0000 L CNN
F 1 "IRLML6401TRPBF" V 7850 2100 60  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 7800 2600 60  0001 L CNN
F 3 "https://www.infineon.com/dgdl/irlml6401pbf.pdf?fileId=5546d462533600a401535668b96d2634" H 7800 2700 60  0001 L CNN
F 4 "IRLML6401PBFCT-ND" H 7800 2800 60  0001 L CNN "Digi-Key_PN"
F 5 "IRLML6401TRPBF" H 7800 2900 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 7800 3000 60  0001 L CNN "Category"
F 7 "Transistors - FETs, MOSFETs - Single" H 7800 3100 60  0001 L CNN "Family"
F 8 "https://www.infineon.com/dgdl/irlml6401pbf.pdf?fileId=5546d462533600a401535668b96d2634" H 7800 3200 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/infineon-technologies/IRLML6401TRPBF/IRLML6401PBFCT-ND/812509" H 7800 3300 60  0001 L CNN "DK_Detail_Page"
F 10 "MOSFET P-CH 12V 4.3A SOT-23" H 7800 3400 60  0001 L CNN "Description"
F 11 "Infineon Technologies" H 7800 3500 60  0001 L CNN "Manufacturer"
F 12 "Active" H 7800 3600 60  0001 L CNN "Status"
	1    7600 2400
	1    0    0    1   
$EndComp
$Comp
L Device:R R1
U 1 1 5D049AF0
P 3200 1800
F 0 "R1" V 3300 1750 50  0000 L CNN
F 1 "100k" V 3200 1700 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3130 1800 50  0001 C CNN
F 3 "~" H 3200 1800 50  0001 C CNN
	1    3200 1800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5D049D17
P 4550 1850
F 0 "R2" V 4650 1800 50  0000 L CNN
F 1 "100k" V 4550 1750 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4480 1850 50  0001 C CNN
F 3 "~" H 4550 1850 50  0001 C CNN
	1    4550 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5D049D3D
P 5900 1850
F 0 "R3" V 6000 1800 50  0000 L CNN
F 1 "100k" V 5900 1750 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5830 1850 50  0001 C CNN
F 3 "~" H 5900 1850 50  0001 C CNN
	1    5900 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 5D049D82
P 7200 1900
F 0 "R5" V 7300 1850 50  0000 L CNN
F 1 "100k" V 7200 1800 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7130 1900 50  0001 C CNN
F 3 "~" H 7200 1900 50  0001 C CNN
	1    7200 1900
	1    0    0    -1  
$EndComp
$Comp
L Device:R RL1
U 1 1 5D049E89
P 3600 2750
F 0 "RL1" V 3700 2700 50  0000 L CNN
F 1 "560" V 3600 2650 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3530 2750 50  0001 C CNN
F 3 "~" H 3600 2750 50  0001 C CNN
	1    3600 2750
	1    0    0    -1  
$EndComp
$Comp
L Device:R RL2
U 1 1 5D049EE8
P 4950 2800
F 0 "RL2" V 5050 2750 50  0000 L CNN
F 1 "232" V 4950 2700 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4880 2800 50  0001 C CNN
F 3 "~" H 4950 2800 50  0001 C CNN
	1    4950 2800
	1    0    0    -1  
$EndComp
$Comp
L Device:R RL3
U 1 1 5D049F1F
P 6300 2800
F 0 "RL3" V 6400 2750 50  0000 L CNN
F 1 "116" V 6300 2700 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6230 2800 50  0001 C CNN
F 3 "~" H 6300 2800 50  0001 C CNN
	1    6300 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 2900 3600 3000
Wire Wire Line
	4950 2950 4950 3050
Wire Wire Line
	6300 2950 6300 3050
Wire Wire Line
	3200 1950 3200 2200
Wire Wire Line
	3200 2200 3300 2200
Wire Wire Line
	4650 2250 4550 2250
Wire Wire Line
	4550 2250 4550 2000
Wire Wire Line
	6000 2250 5900 2250
Wire Wire Line
	5900 2250 5900 2000
Wire Wire Line
	7300 2300 7200 2300
Wire Wire Line
	7200 2300 7200 2050
$Comp
L power:GND #PWR0105
U 1 1 5D04B406
P 1300 2250
F 0 "#PWR0105" H 1300 2000 50  0001 C CNN
F 1 "GND" H 1305 2077 50  0000 C CNN
F 2 "" H 1300 2250 50  0001 C CNN
F 3 "" H 1300 2250 50  0001 C CNN
	1    1300 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 2200 3200 2200
Connection ~ 3200 2200
Connection ~ 4550 2250
Connection ~ 5900 2250
Connection ~ 7200 2300
Wire Wire Line
	1300 2200 1300 2250
Text Label 3000 2200 0    50   ~ 0
Ctrl1
Text Label 4350 2250 0    50   ~ 0
Ctrl2
Wire Wire Line
	4350 2250 4550 2250
Wire Wire Line
	5700 2250 5900 2250
Text Label 5700 2250 0    50   ~ 0
Ctrl3
Wire Wire Line
	7000 2300 7200 2300
Text Label 7000 2300 0    50   ~ 0
Ctrl5
$Comp
L ESP8266:NodeMCU1.0(ESP-12E) U1
U 1 1 5D05B443
P 5700 5100
F 0 "U1" H 5700 6187 60  0000 C CNN
F 1 "NodeMCU1.0(ESP-12E)" H 5700 6081 60  0000 C CNN
F 2 "SUDHEENDRA_HEGDE:NodeMCU-LoLinV3" H 5700 6081 60  0001 C CNN
F 3 "" H 5100 4250 60  0000 C CNN
	1    5700 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 4400 6500 4400
Wire Wire Line
	6750 4500 6500 4500
Wire Wire Line
	6750 4600 6500 4600
Wire Wire Line
	6750 5300 6500 5300
Wire Wire Line
	6750 5400 6500 5400
Wire Wire Line
	4650 5400 4900 5400
Wire Wire Line
	4650 4400 4900 4400
Text Label 4650 4400 0    50   ~ 0
Vin
Text Label 4650 5400 0    50   ~ 0
Vcc
Text Label 6750 5400 2    50   ~ 0
Ctrl5
Text Label 6750 5300 2    50   ~ 0
Ctrl4
Text Label 6750 4600 2    50   ~ 0
Ctrl3
Text Label 6750 4500 2    50   ~ 0
Ctrl2
Text Label 6750 4400 2    50   ~ 0
Ctrl1
NoConn ~ 4900 5200
NoConn ~ 4900 5100
NoConn ~ 4900 5000
NoConn ~ 4900 4900
NoConn ~ 4900 4600
NoConn ~ 6500 4800
NoConn ~ 4900 5800
NoConn ~ 4900 5500
NoConn ~ 4900 5600
$Comp
L Device:LED D1
U 1 1 5D09C200
P 3250 4300
F 0 "D1" H 3241 4516 50  0000 C CNN
F 1 "LED" H 3241 4425 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3250 4300 50  0001 C CNN
F 3 "~" H 3250 4300 50  0001 C CNN
	1    3250 4300
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D2
U 1 1 5D09C297
P 3250 4800
F 0 "D2" H 3241 5016 50  0000 C CNN
F 1 "LED" H 3241 4925 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3250 4800 50  0001 C CNN
F 3 "~" H 3250 4800 50  0001 C CNN
	1    3250 4800
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D3
U 1 1 5D09D4AF
P 3250 5350
F 0 "D3" H 3241 5566 50  0000 C CNN
F 1 "LED" H 3241 5475 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3250 5350 50  0001 C CNN
F 3 "~" H 3250 5350 50  0001 C CNN
	1    3250 5350
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D4
U 1 1 5D09E6D2
P 3250 5950
F 0 "D4" H 3241 6166 50  0000 C CNN
F 1 "LED" H 3241 6075 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3250 5950 50  0001 C CNN
F 3 "~" H 3250 5950 50  0001 C CNN
	1    3250 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 5950 3600 5950
Wire Wire Line
	3600 4300 3600 4800
Wire Wire Line
	3400 5350 3600 5350
Connection ~ 3600 5350
Wire Wire Line
	3600 5350 3600 5950
Wire Wire Line
	3400 4800 3600 4800
Connection ~ 3600 4800
Wire Wire Line
	3600 4800 3600 5350
Wire Wire Line
	3400 4300 3600 4300
$Comp
L Device:R R6
U 1 1 5D0A7E09
P 3600 4000
F 0 "R6" V 3700 3950 50  0000 L CNN
F 1 "560" V 3600 3900 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3530 4000 50  0001 C CNN
F 3 "~" H 3600 4000 50  0001 C CNN
	1    3600 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 4150 3600 4300
Connection ~ 3600 4300
Wire Wire Line
	3600 3850 3600 3750
Wire Wire Line
	3600 3750 3350 3750
Wire Wire Line
	2800 4300 3100 4300
Wire Wire Line
	2800 4800 3100 4800
Wire Wire Line
	2800 5350 3100 5350
Wire Wire Line
	2800 5950 3100 5950
Text Label 3350 3750 0    50   ~ 0
Vcc
Text Notes 2550 3950 0    50   ~ 0
LEDs are used \nto indicate the \nselected load.
Text Label 6750 5200 2    50   ~ 0
En_VD
$Comp
L Device:R R7
U 1 1 5D0CB5DD
P 8750 4300
F 0 "R7" H 8820 4346 50  0000 L CNN
F 1 "60k" H 8820 4255 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8680 4300 50  0001 C CNN
F 3 "~" H 8750 4300 50  0001 C CNN
	1    8750 4300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R8
U 1 1 5D0CB64B
P 8750 4750
F 0 "R8" H 8820 4796 50  0000 L CNN
F 1 "30k" H 8820 4705 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8680 4750 50  0001 C CNN
F 3 "~" H 8750 4750 50  0001 C CNN
	1    8750 4750
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET_SI2302:SI2302 Q6
U 1 1 5D0CB6CC
P 8750 5250
F 0 "Q6" H 8849 5296 50  0000 L CNN
F 1 "SI2302" H 8849 5205 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 8550 5550 50  0001 C CNN
F 3 "" H 8550 5550 50  0001 C CNN
	1    8750 5250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 5D0CB735
P 8750 5550
F 0 "#PWR0107" H 8750 5300 50  0001 C CNN
F 1 "GND" H 8755 5377 50  0000 C CNN
F 2 "" H 8750 5550 50  0001 C CNN
F 3 "" H 8750 5550 50  0001 C CNN
	1    8750 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 4450 8750 4550
Wire Wire Line
	8750 4900 8750 5050
Wire Wire Line
	8750 5450 8750 5500
Wire Wire Line
	8500 4050 8750 4050
Wire Wire Line
	8750 4050 8750 4150
Text Label 8500 4050 0    50   ~ 0
Vbat
Text Label 7900 5250 0    50   ~ 0
En_VD
Wire Wire Line
	8750 4550 8500 4550
Connection ~ 8750 4550
Wire Wire Line
	8750 4550 8750 4600
Text Label 8500 4550 0    50   ~ 0
Vin
Text Notes 4900 3950 0    50   ~ 0
The resistors forming the voltage divider \nare removed and external voltage divider \nis used with a low side N-MOS switch
Text Notes 8100 3900 0    50   ~ 0
External voltage divider \nwith precision resistors (0.1%)
$Comp
L Device:R R9
U 1 1 5D0F6D0C
P 8300 5500
F 0 "R9" V 8400 5500 50  0000 C CNN
F 1 "10k" V 8300 5500 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8230 5500 50  0001 C CNN
F 3 "~" H 8300 5500 50  0001 C CNN
	1    8300 5500
	0    1    1    0   
$EndComp
Wire Wire Line
	8450 5500 8750 5500
Connection ~ 8750 5500
Wire Wire Line
	8750 5500 8750 5550
Wire Wire Line
	8150 5500 8150 5250
Wire Wire Line
	8150 5250 8450 5250
Wire Wire Line
	3600 2500 3600 2600
Wire Wire Line
	4950 2550 4950 2650
Wire Wire Line
	6300 2550 6300 2650
Wire Wire Line
	3200 1450 3200 1650
Text Label 3200 1450 3    50   ~ 0
Vcc
$Comp
L power:GND #PWR?
U 1 1 5D0F8C5F
P 6300 3050
F 0 "#PWR?" H 6300 2800 50  0001 C CNN
F 1 "GND" H 6305 2877 50  0000 C CNN
F 2 "" H 6300 3050 50  0001 C CNN
F 3 "" H 6300 3050 50  0001 C CNN
	1    6300 3050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D0FA0DF
P 4950 3050
F 0 "#PWR?" H 4950 2800 50  0001 C CNN
F 1 "GND" H 4955 2877 50  0000 C CNN
F 2 "" H 4950 3050 50  0001 C CNN
F 3 "" H 4950 3050 50  0001 C CNN
	1    4950 3050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D0FB55F
P 3600 3000
F 0 "#PWR?" H 3600 2750 50  0001 C CNN
F 1 "GND" H 3605 2827 50  0000 C CNN
F 2 "" H 3600 3000 50  0001 C CNN
F 3 "" H 3600 3000 50  0001 C CNN
	1    3600 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 1500 4550 1700
Wire Wire Line
	5900 1450 5900 1700
Text Label 4550 1500 3    50   ~ 0
Vcc
Text Label 5900 1450 3    50   ~ 0
Vcc
Wire Wire Line
	7200 1450 7200 1750
Text Label 7200 1450 3    50   ~ 0
Vcc
Wire Wire Line
	3600 1850 3600 2100
Wire Wire Line
	4950 1900 4950 2150
Wire Wire Line
	6300 1850 6300 2150
Wire Wire Line
	7600 1850 7600 2200
Text Label 3600 1850 3    50   ~ 0
Vbat
Text Label 4950 1900 3    50   ~ 0
Vbat
Text Label 6300 1850 3    50   ~ 0
Vbat
Text Label 7600 1850 3    50   ~ 0
Vbat
Wire Wire Line
	1300 2200 1500 2200
Wire Wire Line
	1500 2100 1300 2100
Wire Wire Line
	7600 2600 7600 2900
Text Label 7600 2900 1    50   ~ 0
dut
Text Label 1300 2100 0    50   ~ 0
dut
Wire Wire Line
	4650 4500 4900 4500
Text Label 4650 4500 0    50   ~ 0
GND
NoConn ~ 6500 4700
Wire Wire Line
	6500 4900 6750 4900
Text Label 6750 4900 2    50   ~ 0
Vcc
Wire Wire Line
	6500 5000 6750 5000
Text Label 6750 5000 2    50   ~ 0
GND
Wire Wire Line
	6500 5800 6750 5800
Text Label 6750 5800 2    50   ~ 0
Vcc
Wire Wire Line
	6500 5700 6750 5700
Text Label 6750 5700 2    50   ~ 0
GND
Wire Wire Line
	6750 5100 6500 5100
Wire Wire Line
	6750 5500 6500 5500
Wire Wire Line
	6750 5600 6500 5600
Wire Wire Line
	4650 4700 4900 4700
Wire Wire Line
	4650 4800 4900 4800
Wire Wire Line
	4650 5700 4900 5700
Wire Wire Line
	4650 5300 4900 5300
Text Label 4650 5300 0    50   ~ 0
GND
Text Label 4650 5700 0    50   ~ 0
GND
Text Label 6750 5600 2    50   ~ 0
LED1
Text Label 6750 5500 2    50   ~ 0
LED2
Text Label 4650 4800 0    50   ~ 0
LED3
Text Label 4650 4700 0    50   ~ 0
LED4
Text Label 6750 5100 2    50   ~ 0
SW
Wire Wire Line
	6500 5200 6750 5200
Connection ~ 8150 5250
Wire Wire Line
	7900 5250 8150 5250
$EndSCHEMATC
