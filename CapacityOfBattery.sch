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
P 8250 1700
F 0 "J2" H 8150 1600 50  0000 L CNN
F 1 "DUT" H 8100 1700 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 8250 1700 50  0001 C CNN
F 3 "~" H 8250 1700 50  0001 C CNN
	1    8250 1700
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male J1
U 1 1 5CF7996A
P 2250 2250
F 0 "J1" H 2222 2130 50  0000 R CNN
F 1 "BATTERY" H 2222 2221 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 2250 2250 50  0001 C CNN
F 3 "~" H 2250 2250 50  0001 C CNN
	1    2250 2250
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 5CF7A0BA
P 1900 2300
F 0 "#PWR0108" H 1900 2050 50  0001 C CNN
F 1 "GND" H 1905 2127 50  0000 C CNN
F 2 "" H 1900 2300 50  0001 C CNN
F 3 "" H 1900 2300 50  0001 C CNN
	1    1900 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 2300 1900 2250
Wire Wire Line
	1900 2250 2050 2250
Wire Wire Line
	2050 2150 1800 2150
Text Label 1800 2150 0    50   ~ 0
Vbat
Text Notes 3300 1350 0    50   ~ 0
Discharge Circuitry: Battery discharges through the resistor(s) selected by the MCU by giving active high signal on CtrlX.
Text Notes 8350 2100 0    50   ~ 0
J2 is used to\nconnect the\nDevice Under Test.
Text Notes 2250 2550 0    50   ~ 0
J1 is used to\nconnect the \nBattery [charged].
$Comp
L dk_Transistors-FETs-MOSFETs-Single:IRLML6401TRPBF Q1
U 1 1 5D0475D2
P 3700 2550
F 0 "Q1" V 3850 2550 60  0000 L CNN
F 1 "IRLML6401TRPBF" V 3950 2200 60  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 3900 2750 60  0001 L CNN
F 3 "https://www.infineon.com/dgdl/irlml6401pbf.pdf?fileId=5546d462533600a401535668b96d2634" H 3900 2850 60  0001 L CNN
F 4 "IRLML6401PBFCT-ND" H 3900 2950 60  0001 L CNN "Digi-Key_PN"
F 5 "IRLML6401TRPBF" H 3900 3050 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 3900 3150 60  0001 L CNN "Category"
F 7 "Transistors - FETs, MOSFETs - Single" H 3900 3250 60  0001 L CNN "Family"
F 8 "https://www.infineon.com/dgdl/irlml6401pbf.pdf?fileId=5546d462533600a401535668b96d2634" H 3900 3350 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/infineon-technologies/IRLML6401TRPBF/IRLML6401PBFCT-ND/812509" H 3900 3450 60  0001 L CNN "DK_Detail_Page"
F 10 "MOSFET P-CH 12V 4.3A SOT-23" H 3900 3550 60  0001 L CNN "Description"
F 11 "Infineon Technologies" H 3900 3650 60  0001 L CNN "Manufacturer"
F 12 "Active" H 3900 3750 60  0001 L CNN "Status"
	1    3700 2550
	1    0    0    -1  
$EndComp
$Comp
L dk_Transistors-FETs-MOSFETs-Single:IRLML6401TRPBF Q2
U 1 1 5D0498F3
P 4700 2550
F 0 "Q2" V 4850 2550 60  0000 L CNN
F 1 "IRLML6401TRPBF" V 4950 2250 60  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4900 2750 60  0001 L CNN
F 3 "https://www.infineon.com/dgdl/irlml6401pbf.pdf?fileId=5546d462533600a401535668b96d2634" H 4900 2850 60  0001 L CNN
F 4 "IRLML6401PBFCT-ND" H 4900 2950 60  0001 L CNN "Digi-Key_PN"
F 5 "IRLML6401TRPBF" H 4900 3050 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 4900 3150 60  0001 L CNN "Category"
F 7 "Transistors - FETs, MOSFETs - Single" H 4900 3250 60  0001 L CNN "Family"
F 8 "https://www.infineon.com/dgdl/irlml6401pbf.pdf?fileId=5546d462533600a401535668b96d2634" H 4900 3350 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/infineon-technologies/IRLML6401TRPBF/IRLML6401PBFCT-ND/812509" H 4900 3450 60  0001 L CNN "DK_Detail_Page"
F 10 "MOSFET P-CH 12V 4.3A SOT-23" H 4900 3550 60  0001 L CNN "Description"
F 11 "Infineon Technologies" H 4900 3650 60  0001 L CNN "Manufacturer"
F 12 "Active" H 4900 3750 60  0001 L CNN "Status"
	1    4700 2550
	1    0    0    -1  
$EndComp
$Comp
L dk_Transistors-FETs-MOSFETs-Single:IRLML6401TRPBF Q3
U 1 1 5D049929
P 5700 2550
F 0 "Q3" V 5850 2550 60  0000 L CNN
F 1 "IRLML6401TRPBF" V 5950 2250 60  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5900 2750 60  0001 L CNN
F 3 "https://www.infineon.com/dgdl/irlml6401pbf.pdf?fileId=5546d462533600a401535668b96d2634" H 5900 2850 60  0001 L CNN
F 4 "IRLML6401PBFCT-ND" H 5900 2950 60  0001 L CNN "Digi-Key_PN"
F 5 "IRLML6401TRPBF" H 5900 3050 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 5900 3150 60  0001 L CNN "Category"
F 7 "Transistors - FETs, MOSFETs - Single" H 5900 3250 60  0001 L CNN "Family"
F 8 "https://www.infineon.com/dgdl/irlml6401pbf.pdf?fileId=5546d462533600a401535668b96d2634" H 5900 3350 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/infineon-technologies/IRLML6401TRPBF/IRLML6401PBFCT-ND/812509" H 5900 3450 60  0001 L CNN "DK_Detail_Page"
F 10 "MOSFET P-CH 12V 4.3A SOT-23" H 5900 3550 60  0001 L CNN "Description"
F 11 "Infineon Technologies" H 5900 3650 60  0001 L CNN "Manufacturer"
F 12 "Active" H 5900 3750 60  0001 L CNN "Status"
	1    5700 2550
	1    0    0    -1  
$EndComp
$Comp
L dk_Transistors-FETs-MOSFETs-Single:IRLML6401TRPBF Q4
U 1 1 5D049958
P 6700 2550
F 0 "Q4" V 6850 2550 60  0000 L CNN
F 1 "IRLML6401TRPBF" V 6950 2250 60  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 6900 2750 60  0001 L CNN
F 3 "https://www.infineon.com/dgdl/irlml6401pbf.pdf?fileId=5546d462533600a401535668b96d2634" H 6900 2850 60  0001 L CNN
F 4 "IRLML6401PBFCT-ND" H 6900 2950 60  0001 L CNN "Digi-Key_PN"
F 5 "IRLML6401TRPBF" H 6900 3050 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 6900 3150 60  0001 L CNN "Category"
F 7 "Transistors - FETs, MOSFETs - Single" H 6900 3250 60  0001 L CNN "Family"
F 8 "https://www.infineon.com/dgdl/irlml6401pbf.pdf?fileId=5546d462533600a401535668b96d2634" H 6900 3350 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/infineon-technologies/IRLML6401TRPBF/IRLML6401PBFCT-ND/812509" H 6900 3450 60  0001 L CNN "DK_Detail_Page"
F 10 "MOSFET P-CH 12V 4.3A SOT-23" H 6900 3550 60  0001 L CNN "Description"
F 11 "Infineon Technologies" H 6900 3650 60  0001 L CNN "Manufacturer"
F 12 "Active" H 6900 3750 60  0001 L CNN "Status"
	1    6700 2550
	1    0    0    -1  
$EndComp
$Comp
L dk_Transistors-FETs-MOSFETs-Single:IRLML6401TRPBF Q5
U 1 1 5D049986
P 7700 2550
F 0 "Q5" V 7850 2550 60  0000 L CNN
F 1 "IRLML6401TRPBF" V 7950 2250 60  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 7900 2750 60  0001 L CNN
F 3 "https://www.infineon.com/dgdl/irlml6401pbf.pdf?fileId=5546d462533600a401535668b96d2634" H 7900 2850 60  0001 L CNN
F 4 "IRLML6401PBFCT-ND" H 7900 2950 60  0001 L CNN "Digi-Key_PN"
F 5 "IRLML6401TRPBF" H 7900 3050 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 7900 3150 60  0001 L CNN "Category"
F 7 "Transistors - FETs, MOSFETs - Single" H 7900 3250 60  0001 L CNN "Family"
F 8 "https://www.infineon.com/dgdl/irlml6401pbf.pdf?fileId=5546d462533600a401535668b96d2634" H 7900 3350 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/infineon-technologies/IRLML6401TRPBF/IRLML6401PBFCT-ND/812509" H 7900 3450 60  0001 L CNN "DK_Detail_Page"
F 10 "MOSFET P-CH 12V 4.3A SOT-23" H 7900 3550 60  0001 L CNN "Description"
F 11 "Infineon Technologies" H 7900 3650 60  0001 L CNN "Manufacturer"
F 12 "Active" H 7900 3750 60  0001 L CNN "Status"
	1    7700 2550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5D049AF0
P 3300 2250
F 0 "R1" V 3400 2200 50  0000 L CNN
F 1 "100k" V 3300 2150 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3230 2250 50  0001 C CNN
F 3 "~" H 3300 2250 50  0001 C CNN
	1    3300 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5D049D17
P 4300 2250
F 0 "R2" V 4400 2200 50  0000 L CNN
F 1 "100k" V 4300 2150 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4230 2250 50  0001 C CNN
F 3 "~" H 4300 2250 50  0001 C CNN
	1    4300 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5D049D3D
P 5300 2250
F 0 "R3" V 5400 2200 50  0000 L CNN
F 1 "100k" V 5300 2150 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5230 2250 50  0001 C CNN
F 3 "~" H 5300 2250 50  0001 C CNN
	1    5300 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5D049D66
P 6300 2250
F 0 "R4" V 6400 2200 50  0000 L CNN
F 1 "100k" V 6300 2150 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6230 2250 50  0001 C CNN
F 3 "~" H 6300 2250 50  0001 C CNN
	1    6300 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 5D049D82
P 7300 2250
F 0 "R5" V 7400 2200 50  0000 L CNN
F 1 "100k" V 7300 2150 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7230 2250 50  0001 C CNN
F 3 "~" H 7300 2250 50  0001 C CNN
	1    7300 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:R RL1
U 1 1 5D049E89
P 3700 2100
F 0 "RL1" V 3800 2050 50  0000 L CNN
F 1 "560" V 3700 2000 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3630 2100 50  0001 C CNN
F 3 "~" H 3700 2100 50  0001 C CNN
	1    3700 2100
	1    0    0    -1  
$EndComp
$Comp
L Device:R RL2
U 1 1 5D049EE8
P 4700 2100
F 0 "RL2" V 4800 2050 50  0000 L CNN
F 1 "232" V 4700 2000 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4630 2100 50  0001 C CNN
F 3 "~" H 4700 2100 50  0001 C CNN
	1    4700 2100
	1    0    0    -1  
$EndComp
$Comp
L Device:R RL3
U 1 1 5D049F1F
P 5700 2100
F 0 "RL3" V 5800 2050 50  0000 L CNN
F 1 "116" V 5700 2000 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5630 2100 50  0001 C CNN
F 3 "~" H 5700 2100 50  0001 C CNN
	1    5700 2100
	1    0    0    -1  
$EndComp
$Comp
L Device:R RL4
U 1 1 5D049F47
P 6700 2100
F 0 "RL4" V 6800 2050 50  0000 L CNN
F 1 "47" V 6700 2050 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6630 2100 50  0001 C CNN
F 3 "~" H 6700 2100 50  0001 C CNN
	1    6700 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 2250 3700 2350
Wire Wire Line
	4700 2250 4700 2350
Wire Wire Line
	5700 2250 5700 2350
Wire Wire Line
	6700 2250 6700 2350
Wire Wire Line
	3300 2400 3300 2650
Wire Wire Line
	3300 2650 3400 2650
Wire Wire Line
	4400 2650 4300 2650
Wire Wire Line
	4300 2650 4300 2400
Wire Wire Line
	5400 2650 5300 2650
Wire Wire Line
	5300 2650 5300 2400
Wire Wire Line
	6400 2650 6300 2650
Wire Wire Line
	6300 2650 6300 2400
Wire Wire Line
	7400 2650 7300 2650
Wire Wire Line
	7300 2650 7300 2400
Wire Wire Line
	3700 2750 3700 3000
Wire Wire Line
	3700 3000 4700 3000
Wire Wire Line
	7700 3000 7700 2750
Wire Wire Line
	4700 2750 4700 3000
Connection ~ 4700 3000
Wire Wire Line
	4700 3000 5700 3000
Wire Wire Line
	5700 2750 5700 3000
Connection ~ 5700 3000
Wire Wire Line
	5700 3000 6700 3000
Wire Wire Line
	6700 2750 6700 3000
Connection ~ 6700 3000
Wire Wire Line
	6700 3000 7700 3000
$Comp
L power:GND #PWR0101
U 1 1 5D04AEAB
P 3900 1750
F 0 "#PWR0101" H 3900 1500 50  0001 C CNN
F 1 "GND" H 3905 1577 50  0000 C CNN
F 2 "" H 3900 1750 50  0001 C CNN
F 3 "" H 3900 1750 50  0001 C CNN
	1    3900 1750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5D04AEED
P 4900 1750
F 0 "#PWR0102" H 4900 1500 50  0001 C CNN
F 1 "GND" H 4905 1577 50  0000 C CNN
F 2 "" H 4900 1750 50  0001 C CNN
F 3 "" H 4900 1750 50  0001 C CNN
	1    4900 1750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5D04AF34
P 5900 1750
F 0 "#PWR0103" H 5900 1500 50  0001 C CNN
F 1 "GND" H 5905 1577 50  0000 C CNN
F 2 "" H 5900 1750 50  0001 C CNN
F 3 "" H 5900 1750 50  0001 C CNN
	1    5900 1750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 5D04B19D
P 6900 1750
F 0 "#PWR0104" H 6900 1500 50  0001 C CNN
F 1 "GND" H 6905 1577 50  0000 C CNN
F 2 "" H 6900 1750 50  0001 C CNN
F 3 "" H 6900 1750 50  0001 C CNN
	1    6900 1750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 5D04B406
P 7550 1750
F 0 "#PWR0105" H 7550 1500 50  0001 C CNN
F 1 "GND" H 7555 1577 50  0000 C CNN
F 2 "" H 7550 1750 50  0001 C CNN
F 3 "" H 7550 1750 50  0001 C CNN
	1    7550 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 1950 3700 1700
Wire Wire Line
	3700 1700 3900 1700
Wire Wire Line
	3900 1700 3900 1750
Wire Wire Line
	4900 1750 4900 1700
Wire Wire Line
	4900 1700 4700 1700
Wire Wire Line
	4700 1700 4700 1950
Wire Wire Line
	5700 1950 5700 1700
Wire Wire Line
	5700 1700 5900 1700
Wire Wire Line
	5900 1700 5900 1750
Wire Wire Line
	6700 1950 6700 1700
Wire Wire Line
	6700 1700 6900 1700
Wire Wire Line
	6900 1700 6900 1750
Wire Wire Line
	3300 2100 3300 1550
Wire Wire Line
	3300 1550 4300 1550
Wire Wire Line
	7300 1550 7300 2100
Wire Wire Line
	6300 2100 6300 1550
Connection ~ 6300 1550
Wire Wire Line
	6300 1550 7300 1550
Wire Wire Line
	5300 2100 5300 1550
Connection ~ 5300 1550
Wire Wire Line
	5300 1550 6300 1550
Wire Wire Line
	4300 2100 4300 1550
Connection ~ 4300 1550
Wire Wire Line
	4300 1550 5300 1550
Wire Wire Line
	3150 1550 3300 1550
Connection ~ 3300 1550
Wire Wire Line
	3100 2650 3300 2650
Connection ~ 3300 2650
Connection ~ 4300 2650
Connection ~ 5300 2650
Connection ~ 6300 2650
Connection ~ 7300 2650
Wire Wire Line
	3500 3000 3700 3000
Connection ~ 3700 3000
Wire Wire Line
	8050 1700 7550 1700
Wire Wire Line
	7550 1700 7550 1750
Wire Wire Line
	8050 1800 7700 1800
Wire Wire Line
	7700 1800 7700 2350
Text Label 3500 3000 0    50   ~ 0
Vbat
Text Label 3150 1550 0    50   ~ 0
Vcc
Text Label 3100 2650 0    50   ~ 0
Ctrl1
Text Label 4100 2650 0    50   ~ 0
Ctrl2
Wire Wire Line
	4100 2650 4300 2650
Wire Wire Line
	5100 2650 5300 2650
Wire Wire Line
	6100 2650 6300 2650
Text Label 5100 2650 0    50   ~ 0
Ctrl3
Text Label 6100 2650 0    50   ~ 0
Ctrl4
Wire Wire Line
	7100 2650 7300 2650
Text Label 7100 2650 0    50   ~ 0
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
$Comp
L power:GND #PWR0106
U 1 1 5D06316B
P 4500 5800
F 0 "#PWR0106" H 4500 5550 50  0001 C CNN
F 1 "GND" H 4505 5627 50  0000 C CNN
F 2 "" H 4500 5800 50  0001 C CNN
F 3 "" H 4500 5800 50  0001 C CNN
	1    4500 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 5700 4500 5800
Wire Wire Line
	4500 5700 4900 5700
NoConn ~ 6500 5100
NoConn ~ 4900 5200
NoConn ~ 4900 5100
NoConn ~ 4900 5000
NoConn ~ 4900 4900
NoConn ~ 4900 4600
NoConn ~ 4900 4700
NoConn ~ 4900 4800
NoConn ~ 6500 4800
NoConn ~ 6500 5500
NoConn ~ 6500 5600
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
$Comp
L Device:LED D5
U 1 1 5D09F8E6
P 3250 6600
F 0 "D5" H 3241 6816 50  0000 C CNN
F 1 "LED" H 3241 6725 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3250 6600 50  0001 C CNN
F 3 "~" H 3250 6600 50  0001 C CNN
	1    3250 6600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 6600 3400 6600
Wire Wire Line
	3400 5950 3600 5950
Wire Wire Line
	3600 4300 3600 4800
Connection ~ 3600 5950
Wire Wire Line
	3600 5950 3600 6600
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
Wire Wire Line
	2800 6600 3100 6600
Text Label 3350 3750 0    50   ~ 0
Vcc
Text Label 2800 4300 0    50   ~ 0
Ctrl1
Text Label 2800 4800 0    50   ~ 0
Ctrl2
Text Label 2800 5350 0    50   ~ 0
Ctrl3
Text Label 2800 5950 0    50   ~ 0
Ctrl4
Text Notes 2550 3950 0    50   ~ 0
LEDs are used \nto indicate the \nselected load.
Text Label 7200 5200 2    50   ~ 0
En_VoltageDivider
Wire Wire Line
	6500 5200 7200 5200
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
Text Label 7700 5250 0    50   ~ 0
En_VoltageDivider
Wire Wire Line
	7700 5250 8150 5250
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
Connection ~ 8150 5250
Wire Wire Line
	8150 5250 8450 5250
Text Label 2800 6600 0    50   ~ 0
Ctrl5
$EndSCHEMATC
