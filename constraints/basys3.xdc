## 100 MHz clock (W5)
set_property PACKAGE_PIN W5 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]
create_clock -period 10.000 [get_ports clk]

## LED0 (U16)
set_property PACKAGE_PIN U16 [get_ports led0]
set_property IOSTANDARD LVCMOS33 [get_ports led0]

## BTNC (center pushbutton) as reset (U18), active-high
set_property PACKAGE_PIN U18 [get_ports rst]
set_property IOSTANDARD LVCMOS33 [get_ports rst]


----------------------------------------------------------------
#Vivado, connect my CLK  signal to pin W5
#Use 3.3V logic levels (LVCMOS33)
#This clock runs at 100MHz 

#2
#Connect led0 to physical pin U16
#Use 3.3V logic 

#3
#connect RST to physical pin U18 (center button)
#Use 3.3V logic

