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
P 9500 1350
F 0 "J2" H 9350 1250 50  0000 L CNN
F 1 "DUT" H 9300 1350 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 9500 1350 50  0001 C CNN
F 3 "~" H 9500 1350 50  0001 C CNN
	1    9500 1350
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x02_Male J1
U 1 1 5CF7996A
P 8300 1350
F 0 "J1" H 8250 1250 50  0000 R CNN
F 1 "BATTERY" H 8250 1350 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 8300 1350 50  0001 C CNN
F 3 "~" H 8300 1350 50  0001 C CNN
	1    8300 1350
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5CF7A0BA
P 7950 1400
F 0 "#PWR04" H 7950 1150 50  0001 C CNN
F 1 "GND" H 7955 1227 50  0000 C CNN
F 2 "" H 7950 1400 50  0001 C CNN
F 3 "" H 7950 1400 50  0001 C CNN
	1    7950 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7950 1400 7950 1350
Wire Wire Line
	7950 1350 8100 1350
Wire Wire Line
	8100 1250 7850 1250
Text Label 7850 1250 0    50   ~ 0
Vbat
Text Notes 2400 1200 0    50   ~ 0
Discharge Circuitry: Battery discharges through the resistor(s) selected by the MCU by giving active high signal on CtrlX.
Text Notes 9300 1700 0    50   ~ 0
J2 is used to\nconnect the\nDevice Under Test.
Text Notes 8100 1650 0    50   ~ 0
J1 is used to\nconnect the \nBattery [charged].
$Comp
L dk_Transistors-FETs-MOSFETs-Single:IRLML6401TRPBF Q1
U 1 1 5D0475D2
P 2900 2300
F 0 "Q1" V 3050 2300 60  0000 L CNN
F 1 "IRLML6401TRPBF" V 3150 1950 60  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 3100 2500 60  0001 L CNN
F 3 "https://www.infineon.com/dgdl/irlml6401pbf.pdf?fileId=5546d462533600a401535668b96d2634" H 3100 2600 60  0001 L CNN
F 4 "IRLML6401PBFCT-ND" H 3100 2700 60  0001 L CNN "Digi-Key_PN"
F 5 "IRLML6401TRPBF" H 3100 2800 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 3100 2900 60  0001 L CNN "Category"
F 7 "Transistors - FETs, MOSFETs - Single" H 3100 3000 60  0001 L CNN "Family"
F 8 "https://www.infineon.com/dgdl/irlml6401pbf.pdf?fileId=5546d462533600a401535668b96d2634" H 3100 3100 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/infineon-technologies/IRLML6401TRPBF/IRLML6401PBFCT-ND/812509" H 3100 3200 60  0001 L CNN "DK_Detail_Page"
F 10 "MOSFET P-CH 12V 4.3A SOT-23" H 3100 3300 60  0001 L CNN "Description"
F 11 "Infineon Technologies" H 3100 3400 60  0001 L CNN "Manufacturer"
F 12 "Active" H 3100 3500 60  0001 L CNN "Status"
	1    2900 2300
	1    0    0    1   
$EndComp
$Comp
L dk_Transistors-FETs-MOSFETs-Single:IRLML6401TRPBF Q2
U 1 1 5D0498F3
P 4250 2350
F 0 "Q2" V 4400 2350 60  0000 L CNN
F 1 "IRLML6401TRPBF" V 4500 2050 60  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4450 2550 60  0001 L CNN
F 3 "https://www.infineon.com/dgdl/irlml6401pbf.pdf?fileId=5546d462533600a401535668b96d2634" H 4450 2650 60  0001 L CNN
F 4 "IRLML6401PBFCT-ND" H 4450 2750 60  0001 L CNN "Digi-Key_PN"
F 5 "IRLML6401TRPBF" H 4450 2850 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 4450 2950 60  0001 L CNN "Category"
F 7 "Transistors - FETs, MOSFETs - Single" H 4450 3050 60  0001 L CNN "Family"
F 8 "https://www.infineon.com/dgdl/irlml6401pbf.pdf?fileId=5546d462533600a401535668b96d2634" H 4450 3150 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/infineon-technologies/IRLML6401TRPBF/IRLML6401PBFCT-ND/812509" H 4450 3250 60  0001 L CNN "DK_Detail_Page"
F 10 "MOSFET P-CH 12V 4.3A SOT-23" H 4450 3350 60  0001 L CNN "Description"
F 11 "Infineon Technologies" H 4450 3450 60  0001 L CNN "Manufacturer"
F 12 "Active" H 4450 3550 60  0001 L CNN "Status"
	1    4250 2350
	1    0    0    1   
$EndComp
$Comp
L dk_Transistors-FETs-MOSFETs-Single:IRLML6401TRPBF Q3
U 1 1 5D049929
P 5600 2350
F 0 "Q3" V 5750 2350 60  0000 L CNN
F 1 "IRLML6401TRPBF" V 5850 2050 60  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5800 2550 60  0001 L CNN
F 3 "https://www.infineon.com/dgdl/irlml6401pbf.pdf?fileId=5546d462533600a401535668b96d2634" H 5800 2650 60  0001 L CNN
F 4 "IRLML6401PBFCT-ND" H 5800 2750 60  0001 L CNN "Digi-Key_PN"
F 5 "IRLML6401TRPBF" H 5800 2850 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 5800 2950 60  0001 L CNN "Category"
F 7 "Transistors - FETs, MOSFETs - Single" H 5800 3050 60  0001 L CNN "Family"
F 8 "https://www.infineon.com/dgdl/irlml6401pbf.pdf?fileId=5546d462533600a401535668b96d2634" H 5800 3150 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/infineon-technologies/IRLML6401TRPBF/IRLML6401PBFCT-ND/812509" H 5800 3250 60  0001 L CNN "DK_Detail_Page"
F 10 "MOSFET P-CH 12V 4.3A SOT-23" H 5800 3350 60  0001 L CNN "Description"
F 11 "Infineon Technologies" H 5800 3450 60  0001 L CNN "Manufacturer"
F 12 "Active" H 5800 3550 60  0001 L CNN "Status"
	1    5600 2350
	1    0    0    1   
$EndComp
$Comp
L dk_Transistors-FETs-MOSFETs-Single:IRLML6401TRPBF Q4
U 1 1 5D049986
P 6900 2400
F 0 "Q4" V 7050 2400 60  0000 L CNN
F 1 "IRLML6401TRPBF" V 7150 2100 60  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 7100 2600 60  0001 L CNN
F 3 "https://www.infineon.com/dgdl/irlml6401pbf.pdf?fileId=5546d462533600a401535668b96d2634" H 7100 2700 60  0001 L CNN
F 4 "IRLML6401PBFCT-ND" H 7100 2800 60  0001 L CNN "Digi-Key_PN"
F 5 "IRLML6401TRPBF" H 7100 2900 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 7100 3000 60  0001 L CNN "Category"
F 7 "Transistors - FETs, MOSFETs - Single" H 7100 3100 60  0001 L CNN "Family"
F 8 "https://www.infineon.com/dgdl/irlml6401pbf.pdf?fileId=5546d462533600a401535668b96d2634" H 7100 3200 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/infineon-technologies/IRLML6401TRPBF/IRLML6401PBFCT-ND/812509" H 7100 3300 60  0001 L CNN "DK_Detail_Page"
F 10 "MOSFET P-CH 12V 4.3A SOT-23" H 7100 3400 60  0001 L CNN "Description"
F 11 "Infineon Technologies" H 7100 3500 60  0001 L CNN "Manufacturer"
F 12 "Active" H 7100 3600 60  0001 L CNN "Status"
	1    6900 2400
	1    0    0    1   
$EndComp
$Comp
L Device:R R1
U 1 1 5D049AF0
P 2500 1800
F 0 "R1" V 2600 1750 50  0000 L CNN
F 1 "100k" V 2500 1700 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2430 1800 50  0001 C CNN
F 3 "~" H 2500 1800 50  0001 C CNN
	1    2500 1800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5D049D17
P 3850 1850
F 0 "R3" V 3950 1800 50  0000 L CNN
F 1 "100k" V 3850 1750 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3780 1850 50  0001 C CNN
F 3 "~" H 3850 1850 50  0001 C CNN
	1    3850 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5D049D3D
P 5200 1850
F 0 "R4" V 5300 1800 50  0000 L CNN
F 1 "100k" V 5200 1750 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5130 1850 50  0001 C CNN
F 3 "~" H 5200 1850 50  0001 C CNN
	1    5200 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 5D049D82
P 6500 1900
F 0 "R5" V 6600 1850 50  0000 L CNN
F 1 "100k" V 6500 1800 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6430 1900 50  0001 C CNN
F 3 "~" H 6500 1900 50  0001 C CNN
	1    6500 1900
	1    0    0    -1  
$EndComp
$Comp
L Device:R RL1
U 1 1 5D049E89
P 2900 2750
F 0 "RL1" V 3000 2700 50  0000 L CNN
F 1 "560" V 2900 2650 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2830 2750 50  0001 C CNN
F 3 "~" H 2900 2750 50  0001 C CNN
	1    2900 2750
	1    0    0    -1  
$EndComp
$Comp
L Device:R RL2
U 1 1 5D049EE8
P 4250 2800
F 0 "RL2" V 4350 2750 50  0000 L CNN
F 1 "232" V 4250 2700 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4180 2800 50  0001 C CNN
F 3 "~" H 4250 2800 50  0001 C CNN
	1    4250 2800
	1    0    0    -1  
$EndComp
$Comp
L Device:R RL3
U 1 1 5D049F1F
P 5600 2800
F 0 "RL3" V 5700 2750 50  0000 L CNN
F 1 "116" V 5600 2700 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5530 2800 50  0001 C CNN
F 3 "~" H 5600 2800 50  0001 C CNN
	1    5600 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 2900 2900 3000
Wire Wire Line
	4250 2950 4250 3050
Wire Wire Line
	5600 2950 5600 3050
Wire Wire Line
	2500 1950 2500 2200
Wire Wire Line
	2500 2200 2600 2200
Wire Wire Line
	3950 2250 3850 2250
Wire Wire Line
	3850 2250 3850 2000
Wire Wire Line
	5300 2250 5200 2250
Wire Wire Line
	5200 2250 5200 2000
Wire Wire Line
	6600 2300 6500 2300
Wire Wire Line
	6500 2300 6500 2050
$Comp
L power:GND #PWR05
U 1 1 5D04B406
P 9100 1400
F 0 "#PWR05" H 9100 1150 50  0001 C CNN
F 1 "GND" H 9105 1227 50  0000 C CNN
F 2 "" H 9100 1400 50  0001 C CNN
F 3 "" H 9100 1400 50  0001 C CNN
	1    9100 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 2200 2500 2200
Connection ~ 2500 2200
Connection ~ 3850 2250
Connection ~ 5200 2250
Connection ~ 6500 2300
Wire Wire Line
	9100 1350 9100 1400
Text Label 2300 2200 0    50   ~ 0
Ctrl1
Text Label 3650 2250 0    50   ~ 0
Ctrl2
Wire Wire Line
	3650 2250 3850 2250
Wire Wire Line
	5000 2250 5200 2250
Text Label 5000 2250 0    50   ~ 0
Ctrl3
Wire Wire Line
	6300 2300 6500 2300
Text Label 6300 2300 0    50   ~ 0
Ctrl4
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
	6750 5600 6500 5600
Wire Wire Line
	6750 5500 6500 5500
Wire Wire Line
	6750 5400 6500 5400
Wire Wire Line
	6750 5300 6500 5300
Wire Wire Line
	4650 5400 4900 5400
Wire Wire Line
	4650 4400 4900 4400
Text Label 4650 4400 0    50   ~ 0
Vin
Text Label 4650 5400 0    50   ~ 0
Vcc
Text Label 6750 5300 2    50   ~ 0
Ctrl4
Text Label 6750 5400 2    50   ~ 0
Ctrl3
Text Label 6750 5500 2    50   ~ 0
Ctrl2
Text Label 6750 5600 2    50   ~ 0
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
L Device:R R2
U 1 1 5D0A7E09
P 3600 4000
F 0 "R2" V 3700 3950 50  0000 L CNN
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
L Transistor_FET_SI2302:SI2302 Q5
U 1 1 5D0CB6CC
P 8750 5250
F 0 "Q5" H 8849 5296 50  0000 L CNN
F 1 "SI2302" H 8849 5205 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 8550 5550 50  0001 C CNN
F 3 "" H 8550 5550 50  0001 C CNN
	1    8750 5250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 5D0CB735
P 8750 5550
F 0 "#PWR06" H 8750 5300 50  0001 C CNN
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
L Device:R R6
U 1 1 5D0F6D0C
P 8300 5500
F 0 "R6" V 8400 5500 50  0000 C CNN
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
	2900 2500 2900 2600
Wire Wire Line
	4250 2550 4250 2650
Wire Wire Line
	5600 2550 5600 2650
Wire Wire Line
	2500 1450 2500 1650
Text Label 2500 1450 3    50   ~ 0
Vcc
$Comp
L power:GND #PWR03
U 1 1 5D0F8C5F
P 5600 3050
F 0 "#PWR03" H 5600 2800 50  0001 C CNN
F 1 "GND" H 5605 2877 50  0000 C CNN
F 2 "" H 5600 3050 50  0001 C CNN
F 3 "" H 5600 3050 50  0001 C CNN
	1    5600 3050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5D0FA0DF
P 4250 3050
F 0 "#PWR02" H 4250 2800 50  0001 C CNN
F 1 "GND" H 4255 2877 50  0000 C CNN
F 2 "" H 4250 3050 50  0001 C CNN
F 3 "" H 4250 3050 50  0001 C CNN
	1    4250 3050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5D0FB55F
P 2900 3000
F 0 "#PWR01" H 2900 2750 50  0001 C CNN
F 1 "GND" H 2905 2827 50  0000 C CNN
F 2 "" H 2900 3000 50  0001 C CNN
F 3 "" H 2900 3000 50  0001 C CNN
	1    2900 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 1500 3850 1700
Wire Wire Line
	5200 1450 5200 1700
Text Label 3850 1500 3    50   ~ 0
Vcc
Text Label 5200 1450 3    50   ~ 0
Vcc
Wire Wire Line
	6500 1450 6500 1750
Text Label 6500 1450 3    50   ~ 0
Vcc
Wire Wire Line
	2900 1850 2900 2100
Wire Wire Line
	4250 1900 4250 2150
Wire Wire Line
	5600 1850 5600 2150
Wire Wire Line
	6900 1850 6900 2200
Text Label 2900 1850 3    50   ~ 0
Vbat
Text Label 4250 1900 3    50   ~ 0
Vbat
Text Label 5600 1850 3    50   ~ 0
Vbat
Text Label 6900 1850 3    50   ~ 0
Vbat
Wire Wire Line
	9100 1350 9300 1350
Wire Wire Line
	9300 1250 9100 1250
Wire Wire Line
	6900 2600 6900 2900
Text Label 6900 2900 1    50   ~ 0
dut
Text Label 9100 1250 0    50   ~ 0
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
	4650 4700 4900 4700
Wire Wire Line
	6750 4500 6500 4500
Wire Wire Line
	6750 4400 6500 4400
Wire Wire Line
	6750 5100 6500 5100
Wire Wire Line
	6750 4600 6500 4600
Wire Wire Line
	4650 5700 4900 5700
Wire Wire Line
	4650 5300 4900 5300
Text Label 4650 5300 0    50   ~ 0
GND
Text Label 4650 5700 0    50   ~ 0
GND
Text Label 6750 4400 2    50   ~ 0
LED1
Text Label 6750 4500 2    50   ~ 0
LED2
Text Label 6750 4600 2    50   ~ 0
LED3
Text Label 6750 5100 2    50   ~ 0
LED4
Text Label 4650 4700 0    50   ~ 0
SW
Wire Wire Line
	6500 5200 6750 5200
Connection ~ 8150 5250
Wire Wire Line
	7900 5250 8150 5250
Text Label 2800 4300 0    50   ~ 0
LED1
Text Label 2800 4800 0    50   ~ 0
LED2
Text Label 2800 5350 0    50   ~ 0
LED3
Text Label 2800 5950 0    50   ~ 0
LED4
NoConn ~ 4900 4800
$Comp
L Switch:SW_Push SW1
U 1 1 5D1A9804
P 8800 2450
F 0 "SW1" V 8754 2598 50  0000 L CNN
F 1 "SW_Push" V 8845 2598 50  0000 L CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 8800 2650 50  0001 C CNN
F 3 "" H 8800 2650 50  0001 C CNN
	1    8800 2450
	0    1    1    0   
$EndComp
$Comp
L Device:R R9
U 1 1 5D1A9944
P 8800 2950
F 0 "R9" H 8870 2996 50  0000 L CNN
F 1 "1k" H 8870 2905 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8730 2950 50  0001 C CNN
F 3 "~" H 8800 2950 50  0001 C CNN
	1    8800 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8800 2000 8800 2250
Wire Wire Line
	8800 2650 8800 2700
$Comp
L power:GND #PWR0101
U 1 1 5D1B375E
P 8800 3200
F 0 "#PWR0101" H 8800 2950 50  0001 C CNN
F 1 "GND" H 8805 3027 50  0000 C CNN
F 2 "" H 8800 3200 50  0001 C CNN
F 3 "" H 8800 3200 50  0001 C CNN
	1    8800 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	8800 3100 8800 3200
Wire Wire Line
	8450 2700 8800 2700
Connection ~ 8800 2700
Wire Wire Line
	8800 2700 8800 2800
Text Label 8800 2000 3    50   ~ 0
Vcc
Text Label 8450 2700 0    50   ~ 0
SW
Text Notes 9050 2850 0    50   ~ 0
A switch is used \nto select the load\n(Active HIGH)
$EndSCHEMATC
