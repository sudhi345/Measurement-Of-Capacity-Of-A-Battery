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
Comp "Appiko"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector:Conn_01x02_Male J2
U 1 1 5CF76A7D
P 8450 2450
F 0 "J2" H 8350 2350 50  0000 L CNN
F 1 "DUT" H 8300 2450 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 8450 2450 50  0001 C CNN
F 3 "~" H 8450 2450 50  0001 C CNN
	1    8450 2450
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x02_Male J1
U 1 1 5CF7996A
P 2300 2800
F 0 "J1" H 2272 2680 50  0000 R CNN
F 1 "BATTERY" H 2272 2771 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 2300 2800 50  0001 C CNN
F 3 "~" H 2300 2800 50  0001 C CNN
	1    2300 2800
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 5CF7A0BA
P 1950 2850
F 0 "#PWR0108" H 1950 2600 50  0001 C CNN
F 1 "GND" H 1955 2677 50  0000 C CNN
F 2 "" H 1950 2850 50  0001 C CNN
F 3 "" H 1950 2850 50  0001 C CNN
	1    1950 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 2850 1950 2800
Wire Wire Line
	1950 2800 2100 2800
Wire Wire Line
	2100 2700 1850 2700
Text Label 1850 2700 0    50   ~ 0
Vbat
Text Notes 3500 2000 0    50   ~ 0
Discharge Circuitry: Battery discharges through the resistor(s) selected by the MCU by giving active high signal on CtrlX.
Text Notes 8500 2750 0    50   ~ 0
J2 is used to\nconnect the\nDevice Under Test.
Text Notes 2300 3100 0    50   ~ 0
J1 is used to\nconnect the \nBattery [charged].
$Comp
L dk_Transistors-FETs-MOSFETs-Single:IRLML6401TRPBF Q1
U 1 1 5D0475D2
P 3900 3200
F 0 "Q1" V 4050 3200 60  0000 L CNN
F 1 "IRLML6401TRPBF" V 4150 2850 60  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4100 3400 60  0001 L CNN
F 3 "https://www.infineon.com/dgdl/irlml6401pbf.pdf?fileId=5546d462533600a401535668b96d2634" H 4100 3500 60  0001 L CNN
F 4 "IRLML6401PBFCT-ND" H 4100 3600 60  0001 L CNN "Digi-Key_PN"
F 5 "IRLML6401TRPBF" H 4100 3700 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 4100 3800 60  0001 L CNN "Category"
F 7 "Transistors - FETs, MOSFETs - Single" H 4100 3900 60  0001 L CNN "Family"
F 8 "https://www.infineon.com/dgdl/irlml6401pbf.pdf?fileId=5546d462533600a401535668b96d2634" H 4100 4000 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/infineon-technologies/IRLML6401TRPBF/IRLML6401PBFCT-ND/812509" H 4100 4100 60  0001 L CNN "DK_Detail_Page"
F 10 "MOSFET P-CH 12V 4.3A SOT-23" H 4100 4200 60  0001 L CNN "Description"
F 11 "Infineon Technologies" H 4100 4300 60  0001 L CNN "Manufacturer"
F 12 "Active" H 4100 4400 60  0001 L CNN "Status"
	1    3900 3200
	1    0    0    -1  
$EndComp
$Comp
L dk_Transistors-FETs-MOSFETs-Single:IRLML6401TRPBF Q2
U 1 1 5D0498F3
P 4900 3200
F 0 "Q2" V 5050 3200 60  0000 L CNN
F 1 "IRLML6401TRPBF" V 5150 2900 60  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5100 3400 60  0001 L CNN
F 3 "https://www.infineon.com/dgdl/irlml6401pbf.pdf?fileId=5546d462533600a401535668b96d2634" H 5100 3500 60  0001 L CNN
F 4 "IRLML6401PBFCT-ND" H 5100 3600 60  0001 L CNN "Digi-Key_PN"
F 5 "IRLML6401TRPBF" H 5100 3700 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 5100 3800 60  0001 L CNN "Category"
F 7 "Transistors - FETs, MOSFETs - Single" H 5100 3900 60  0001 L CNN "Family"
F 8 "https://www.infineon.com/dgdl/irlml6401pbf.pdf?fileId=5546d462533600a401535668b96d2634" H 5100 4000 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/infineon-technologies/IRLML6401TRPBF/IRLML6401PBFCT-ND/812509" H 5100 4100 60  0001 L CNN "DK_Detail_Page"
F 10 "MOSFET P-CH 12V 4.3A SOT-23" H 5100 4200 60  0001 L CNN "Description"
F 11 "Infineon Technologies" H 5100 4300 60  0001 L CNN "Manufacturer"
F 12 "Active" H 5100 4400 60  0001 L CNN "Status"
	1    4900 3200
	1    0    0    -1  
$EndComp
$Comp
L dk_Transistors-FETs-MOSFETs-Single:IRLML6401TRPBF Q3
U 1 1 5D049929
P 5900 3200
F 0 "Q3" V 6050 3200 60  0000 L CNN
F 1 "IRLML6401TRPBF" V 6150 2900 60  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 6100 3400 60  0001 L CNN
F 3 "https://www.infineon.com/dgdl/irlml6401pbf.pdf?fileId=5546d462533600a401535668b96d2634" H 6100 3500 60  0001 L CNN
F 4 "IRLML6401PBFCT-ND" H 6100 3600 60  0001 L CNN "Digi-Key_PN"
F 5 "IRLML6401TRPBF" H 6100 3700 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 6100 3800 60  0001 L CNN "Category"
F 7 "Transistors - FETs, MOSFETs - Single" H 6100 3900 60  0001 L CNN "Family"
F 8 "https://www.infineon.com/dgdl/irlml6401pbf.pdf?fileId=5546d462533600a401535668b96d2634" H 6100 4000 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/infineon-technologies/IRLML6401TRPBF/IRLML6401PBFCT-ND/812509" H 6100 4100 60  0001 L CNN "DK_Detail_Page"
F 10 "MOSFET P-CH 12V 4.3A SOT-23" H 6100 4200 60  0001 L CNN "Description"
F 11 "Infineon Technologies" H 6100 4300 60  0001 L CNN "Manufacturer"
F 12 "Active" H 6100 4400 60  0001 L CNN "Status"
	1    5900 3200
	1    0    0    -1  
$EndComp
$Comp
L dk_Transistors-FETs-MOSFETs-Single:IRLML6401TRPBF Q4
U 1 1 5D049958
P 6900 3200
F 0 "Q4" V 7050 3200 60  0000 L CNN
F 1 "IRLML6401TRPBF" V 7150 2900 60  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 7100 3400 60  0001 L CNN
F 3 "https://www.infineon.com/dgdl/irlml6401pbf.pdf?fileId=5546d462533600a401535668b96d2634" H 7100 3500 60  0001 L CNN
F 4 "IRLML6401PBFCT-ND" H 7100 3600 60  0001 L CNN "Digi-Key_PN"
F 5 "IRLML6401TRPBF" H 7100 3700 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 7100 3800 60  0001 L CNN "Category"
F 7 "Transistors - FETs, MOSFETs - Single" H 7100 3900 60  0001 L CNN "Family"
F 8 "https://www.infineon.com/dgdl/irlml6401pbf.pdf?fileId=5546d462533600a401535668b96d2634" H 7100 4000 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/infineon-technologies/IRLML6401TRPBF/IRLML6401PBFCT-ND/812509" H 7100 4100 60  0001 L CNN "DK_Detail_Page"
F 10 "MOSFET P-CH 12V 4.3A SOT-23" H 7100 4200 60  0001 L CNN "Description"
F 11 "Infineon Technologies" H 7100 4300 60  0001 L CNN "Manufacturer"
F 12 "Active" H 7100 4400 60  0001 L CNN "Status"
	1    6900 3200
	1    0    0    -1  
$EndComp
$Comp
L dk_Transistors-FETs-MOSFETs-Single:IRLML6401TRPBF Q5
U 1 1 5D049986
P 7900 3200
F 0 "Q5" V 8050 3200 60  0000 L CNN
F 1 "IRLML6401TRPBF" V 8150 2900 60  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 8100 3400 60  0001 L CNN
F 3 "https://www.infineon.com/dgdl/irlml6401pbf.pdf?fileId=5546d462533600a401535668b96d2634" H 8100 3500 60  0001 L CNN
F 4 "IRLML6401PBFCT-ND" H 8100 3600 60  0001 L CNN "Digi-Key_PN"
F 5 "IRLML6401TRPBF" H 8100 3700 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 8100 3800 60  0001 L CNN "Category"
F 7 "Transistors - FETs, MOSFETs - Single" H 8100 3900 60  0001 L CNN "Family"
F 8 "https://www.infineon.com/dgdl/irlml6401pbf.pdf?fileId=5546d462533600a401535668b96d2634" H 8100 4000 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/infineon-technologies/IRLML6401TRPBF/IRLML6401PBFCT-ND/812509" H 8100 4100 60  0001 L CNN "DK_Detail_Page"
F 10 "MOSFET P-CH 12V 4.3A SOT-23" H 8100 4200 60  0001 L CNN "Description"
F 11 "Infineon Technologies" H 8100 4300 60  0001 L CNN "Manufacturer"
F 12 "Active" H 8100 4400 60  0001 L CNN "Status"
	1    7900 3200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5D049AF0
P 3500 2900
F 0 "R1" V 3600 2850 50  0000 L CNN
F 1 "100k" V 3500 2800 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3430 2900 50  0001 C CNN
F 3 "~" H 3500 2900 50  0001 C CNN
	1    3500 2900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5D049D17
P 4500 2900
F 0 "R2" V 4600 2850 50  0000 L CNN
F 1 "100k" V 4500 2800 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4430 2900 50  0001 C CNN
F 3 "~" H 4500 2900 50  0001 C CNN
	1    4500 2900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5D049D3D
P 5500 2900
F 0 "R3" V 5600 2850 50  0000 L CNN
F 1 "100k" V 5500 2800 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5430 2900 50  0001 C CNN
F 3 "~" H 5500 2900 50  0001 C CNN
	1    5500 2900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5D049D66
P 6500 2900
F 0 "R4" V 6600 2850 50  0000 L CNN
F 1 "100k" V 6500 2800 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6430 2900 50  0001 C CNN
F 3 "~" H 6500 2900 50  0001 C CNN
	1    6500 2900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 5D049D82
P 7500 2900
F 0 "R5" V 7600 2850 50  0000 L CNN
F 1 "100k" V 7500 2800 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7430 2900 50  0001 C CNN
F 3 "~" H 7500 2900 50  0001 C CNN
	1    7500 2900
	1    0    0    -1  
$EndComp
$Comp
L Device:R RL1
U 1 1 5D049E89
P 3900 2750
F 0 "RL1" V 4000 2700 50  0000 L CNN
F 1 "560" V 3900 2650 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3830 2750 50  0001 C CNN
F 3 "~" H 3900 2750 50  0001 C CNN
	1    3900 2750
	1    0    0    -1  
$EndComp
$Comp
L Device:R RL2
U 1 1 5D049EE8
P 4900 2750
F 0 "RL2" V 5000 2700 50  0000 L CNN
F 1 "330" V 4900 2650 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4830 2750 50  0001 C CNN
F 3 "~" H 4900 2750 50  0001 C CNN
	1    4900 2750
	1    0    0    -1  
$EndComp
$Comp
L Device:R RL3
U 1 1 5D049F1F
P 5900 2750
F 0 "RL3" V 6000 2700 50  0000 L CNN
F 1 "100" V 5900 2650 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5830 2750 50  0001 C CNN
F 3 "~" H 5900 2750 50  0001 C CNN
	1    5900 2750
	1    0    0    -1  
$EndComp
$Comp
L Device:R RL4
U 1 1 5D049F47
P 6900 2750
F 0 "RL4" V 7000 2700 50  0000 L CNN
F 1 "47" V 6900 2700 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6830 2750 50  0001 C CNN
F 3 "~" H 6900 2750 50  0001 C CNN
	1    6900 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 2900 3900 3000
Wire Wire Line
	4900 2900 4900 3000
Wire Wire Line
	5900 2900 5900 3000
Wire Wire Line
	6900 2900 6900 3000
Wire Wire Line
	3500 3050 3500 3300
Wire Wire Line
	3500 3300 3600 3300
Wire Wire Line
	4600 3300 4500 3300
Wire Wire Line
	4500 3300 4500 3050
Wire Wire Line
	5600 3300 5500 3300
Wire Wire Line
	5500 3300 5500 3050
Wire Wire Line
	6600 3300 6500 3300
Wire Wire Line
	6500 3300 6500 3050
Wire Wire Line
	7600 3300 7500 3300
Wire Wire Line
	7500 3300 7500 3050
Wire Wire Line
	3900 3400 3900 3650
Wire Wire Line
	3900 3650 4900 3650
Wire Wire Line
	7900 3650 7900 3400
Wire Wire Line
	4900 3400 4900 3650
Connection ~ 4900 3650
Wire Wire Line
	4900 3650 5900 3650
Wire Wire Line
	5900 3400 5900 3650
Connection ~ 5900 3650
Wire Wire Line
	5900 3650 6900 3650
Wire Wire Line
	6900 3400 6900 3650
Connection ~ 6900 3650
Wire Wire Line
	6900 3650 7900 3650
$Comp
L power:GND #PWR0101
U 1 1 5D04AEAB
P 4100 2400
F 0 "#PWR0101" H 4100 2150 50  0001 C CNN
F 1 "GND" H 4105 2227 50  0000 C CNN
F 2 "" H 4100 2400 50  0001 C CNN
F 3 "" H 4100 2400 50  0001 C CNN
	1    4100 2400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5D04AEED
P 5100 2400
F 0 "#PWR0102" H 5100 2150 50  0001 C CNN
F 1 "GND" H 5105 2227 50  0000 C CNN
F 2 "" H 5100 2400 50  0001 C CNN
F 3 "" H 5100 2400 50  0001 C CNN
	1    5100 2400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5D04AF34
P 6100 2400
F 0 "#PWR0103" H 6100 2150 50  0001 C CNN
F 1 "GND" H 6105 2227 50  0000 C CNN
F 2 "" H 6100 2400 50  0001 C CNN
F 3 "" H 6100 2400 50  0001 C CNN
	1    6100 2400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 5D04B19D
P 7100 2400
F 0 "#PWR0104" H 7100 2150 50  0001 C CNN
F 1 "GND" H 7105 2227 50  0000 C CNN
F 2 "" H 7100 2400 50  0001 C CNN
F 3 "" H 7100 2400 50  0001 C CNN
	1    7100 2400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 5D04B406
P 7750 2400
F 0 "#PWR0105" H 7750 2150 50  0001 C CNN
F 1 "GND" H 7755 2227 50  0000 C CNN
F 2 "" H 7750 2400 50  0001 C CNN
F 3 "" H 7750 2400 50  0001 C CNN
	1    7750 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 2600 3900 2350
Wire Wire Line
	3900 2350 4100 2350
Wire Wire Line
	4100 2350 4100 2400
Wire Wire Line
	5100 2400 5100 2350
Wire Wire Line
	5100 2350 4900 2350
Wire Wire Line
	4900 2350 4900 2600
Wire Wire Line
	5900 2600 5900 2350
Wire Wire Line
	5900 2350 6100 2350
Wire Wire Line
	6100 2350 6100 2400
Wire Wire Line
	6900 2600 6900 2350
Wire Wire Line
	6900 2350 7100 2350
Wire Wire Line
	7100 2350 7100 2400
Wire Wire Line
	3500 2750 3500 2200
Wire Wire Line
	3500 2200 4500 2200
Wire Wire Line
	7500 2200 7500 2750
Wire Wire Line
	6500 2750 6500 2200
Connection ~ 6500 2200
Wire Wire Line
	6500 2200 7500 2200
Wire Wire Line
	5500 2750 5500 2200
Connection ~ 5500 2200
Wire Wire Line
	5500 2200 6500 2200
Wire Wire Line
	4500 2750 4500 2200
Connection ~ 4500 2200
Wire Wire Line
	4500 2200 5500 2200
Wire Wire Line
	3350 2200 3500 2200
Connection ~ 3500 2200
Wire Wire Line
	3300 3300 3500 3300
Connection ~ 3500 3300
Connection ~ 4500 3300
Connection ~ 5500 3300
Connection ~ 6500 3300
Connection ~ 7500 3300
Wire Wire Line
	3700 3650 3900 3650
Connection ~ 3900 3650
Wire Wire Line
	8250 2350 7750 2350
Wire Wire Line
	7750 2350 7750 2400
Wire Wire Line
	8250 2450 7900 2450
Wire Wire Line
	7900 2450 7900 3000
Text Label 3700 3650 0    50   ~ 0
Vbat
Text Label 3350 2200 0    50   ~ 0
Vcc
Text Label 3300 3300 0    50   ~ 0
Ctrl1
Text Label 4300 3300 0    50   ~ 0
Ctrl2
Wire Wire Line
	4300 3300 4500 3300
Wire Wire Line
	5300 3300 5500 3300
Wire Wire Line
	6300 3300 6500 3300
Text Label 5300 3300 0    50   ~ 0
Ctrl3
Text Label 6300 3300 0    50   ~ 0
Ctrl4
Wire Wire Line
	7300 3300 7500 3300
Text Label 7300 3300 0    50   ~ 0
Ctrl5
$Comp
L ESP8266:NodeMCU1.0(ESP-12E) U1
U 1 1 5D05B443
P 5600 5050
F 0 "U1" H 5600 6137 60  0000 C CNN
F 1 "NodeMCU1.0(ESP-12E)" H 5600 6031 60  0000 C CNN
F 2 "SUDHEENDRA_HEGDE:NodeMCU-LoLinV3" H 5600 6031 60  0001 C CNN
F 3 "" H 5000 4200 60  0000 C CNN
	1    5600 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 4350 6400 4350
Wire Wire Line
	6650 4450 6400 4450
Wire Wire Line
	6650 4550 6400 4550
Wire Wire Line
	6650 4650 6400 4650
Wire Wire Line
	6650 5350 6400 5350
Wire Wire Line
	4550 5350 4800 5350
Wire Wire Line
	4550 4350 4800 4350
Text Label 4550 4350 0    50   ~ 0
Vbat
Text Label 4550 5350 0    50   ~ 0
Vcc
Text Label 6650 5350 2    50   ~ 0
Ctrl5
Text Label 6650 4650 2    50   ~ 0
Ctrl4
Text Label 6650 4550 2    50   ~ 0
Ctrl3
Text Label 6650 4450 2    50   ~ 0
Ctrl2
Text Label 6650 4350 2    50   ~ 0
Ctrl1
$Comp
L power:GND #PWR0106
U 1 1 5D06316B
P 4400 5750
F 0 "#PWR0106" H 4400 5500 50  0001 C CNN
F 1 "GND" H 4405 5577 50  0000 C CNN
F 2 "" H 4400 5750 50  0001 C CNN
F 3 "" H 4400 5750 50  0001 C CNN
	1    4400 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 5650 4400 5750
Wire Wire Line
	4400 5650 4800 5650
NoConn ~ 6400 5250
NoConn ~ 6400 5150
NoConn ~ 6400 5050
NoConn ~ 4800 5150
NoConn ~ 4800 5050
NoConn ~ 4800 4950
NoConn ~ 4800 4850
NoConn ~ 4800 4550
NoConn ~ 4800 4650
NoConn ~ 4800 4750
NoConn ~ 6400 4750
NoConn ~ 6400 5450
NoConn ~ 6400 5550
NoConn ~ 4800 5750
NoConn ~ 4800 5450
NoConn ~ 4800 5550
$EndSCHEMATC
