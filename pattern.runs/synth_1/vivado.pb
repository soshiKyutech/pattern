
>
Refreshing IP repositories
234*coregenZ19-234h px� 
�
 Loaded user IP repository '%s'.
1135*coregen2O
;/home/soshi/workspace/vivado_tutorial/vivado-library-master2default:defaultZ19-1700h px� 
�
"Loaded Vivado IP repository '%s'.
1332*coregen27
#/tools/Xilinx/Vivado/2021.2/data/ip2default:defaultZ19-2313h px� 
�
Command: %s
1870*	planAhead2�
�read_checkpoint -auto_incremental -incremental /home/soshi/workspace/vivado_tutorial/pattern/pattern.srcs/utils_1/imports/synth_1/pattern_hdmi.dcp2default:defaultZ12-2866h px� 
�
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2w
c/home/soshi/workspace/vivado_tutorial/pattern/pattern.srcs/utils_1/imports/synth_1/pattern_hdmi.dcp2default:defaultZ12-5825h px� 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px� 
y
Command: %s
53*	vivadotcl2H
4synth_design -top pattern_hdmi -part xc7z020clg400-12default:defaultZ4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7z0202default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7z0202default:defaultZ17-349h px� 
V
Loading part %s157*device2#
xc7z020clg400-12default:defaultZ21-403h px� 
�
[Reference run did not run incremental synthesis because %s; reverting to default synthesis
2138*designutils2+
the design is too small2default:defaultZ20-4072h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
�
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
42default:defaultZ8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
b
#Helper process launched with PID %s4824*oasys2
30859982default:defaultZ8-7075h px� 
�
%s*synth2�
�Starting RTL Elaboration : Time (s): cpu = 00:00:02 ; elapsed = 00:00:03 . Memory (MB): peak = 2748.621 ; gain = 0.000 ; free physical = 254923 ; free virtual = 285458
2default:defaulth px� 
�
synthesizing module '%s'%s4497*oasys2 
pattern_hdmi2default:default2
 2default:default2m
W/home/soshi/workspace/vivado_tutorial/pattern/pattern.srcs/sources_1/new/pattern_hdmi.v2default:default2
22default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
pattern2default:default2
 2default:default2h
R/home/soshi/workspace/vivado_tutorial/pattern/pattern.srcs/sources_1/new/pattern.v2default:default2
62default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
syncgen2default:default2
 2default:default2h
R/home/soshi/workspace/vivado_tutorial/pattern/pattern.srcs/sources_1/new/syncgen.v2default:default2
12default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
pckgen2default:default2
 2default:default2l
V/home/soshi/workspace/vivado_tutorial/pattern/pattern.gen/sources_1/ip/pckgen/pckgen.v2default:default2
702default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2"
pckgen_clk_wiz2default:default2
 2default:default2t
^/home/soshi/workspace/vivado_tutorial/pattern/pattern.gen/sources_1/ip/pckgen/pckgen_clk_wiz.v2default:default2
682default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
IBUF2default:default2
 2default:default2O
9/tools/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
552042default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
IBUF2default:default2
 2default:default2
12default:default2
12default:default2O
9/tools/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
552042default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2

MMCME2_ADV2default:default2
 2default:default2O
9/tools/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
635102default:default8@Z8-6157h px� 
e
%s
*synth2M
9	Parameter BANDWIDTH bound to: OPTIMIZED - type: string 
2default:defaulth p
x
� 
k
%s
*synth2S
?	Parameter CLKFBOUT_MULT_F bound to: 61.500000 - type: double 
2default:defaulth p
x
� 
i
%s
*synth2Q
=	Parameter CLKFBOUT_PHASE bound to: 0.000000 - type: double 
2default:defaulth p
x
� 
l
%s
*synth2T
@	Parameter CLKFBOUT_USE_FINE_PS bound to: FALSE - type: string 
2default:defaulth p
x
� 
h
%s
*synth2P
<	Parameter CLKIN1_PERIOD bound to: 8.000000 - type: double 
2default:defaulth p
x
� 
l
%s
*synth2T
@	Parameter CLKOUT0_DIVIDE_F bound to: 43.625000 - type: double 
2default:defaulth p
x
� 
m
%s
*synth2U
A	Parameter CLKOUT0_DUTY_CYCLE bound to: 0.500000 - type: double 
2default:defaulth p
x
� 
h
%s
*synth2P
<	Parameter CLKOUT0_PHASE bound to: 0.000000 - type: double 
2default:defaulth p
x
� 
k
%s
*synth2S
?	Parameter CLKOUT0_USE_FINE_PS bound to: FALSE - type: string 
2default:defaulth p
x
� 
g
%s
*synth2O
;	Parameter CLKOUT4_CASCADE bound to: FALSE - type: string 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter COMPENSATION bound to: ZHOLD - type: string 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter DIVCLK_DIVIDE bound to: 7 - type: integer 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter STARTUP_WAIT bound to: FALSE - type: string 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

MMCME2_ADV2default:default2
 2default:default2
22default:default2
12default:default2O
9/tools/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
635102default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
BUFG2default:default2
 2default:default2O
9/tools/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
10832default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
BUFG2default:default2
 2default:default2
32default:default2
12default:default2O
9/tools/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
10832default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
BUFGCE2default:default2
 2default:default2O
9/tools/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
10932default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
BUFGCE2default:default2
 2default:default2
42default:default2
12default:default2O
9/tools/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
10932default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
BUFH2default:default2
 2default:default2O
9/tools/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
13192default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
BUFH2default:default2
 2default:default2
52default:default2
12default:default2O
9/tools/Xilinx/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
13192default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2"
pckgen_clk_wiz2default:default2
 2default:default2
62default:default2
12default:default2t
^/home/soshi/workspace/vivado_tutorial/pattern/pattern.gen/sources_1/ip/pckgen/pckgen_clk_wiz.v2default:default2
682default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
pckgen2default:default2
 2default:default2
72default:default2
12default:default2l
V/home/soshi/workspace/vivado_tutorial/pattern/pattern.gen/sources_1/ip/pckgen/pckgen.v2default:default2
702default:default8@Z8-6155h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
clkfb_in2default:default2
pckgen2default:default2
pckgen2default:default2h
R/home/soshi/workspace/vivado_tutorial/pattern/pattern.srcs/sources_1/new/syncgen.v2default:default2
132default:default8@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
	clkfb_out2default:default2
pckgen2default:default2
pckgen2default:default2h
R/home/soshi/workspace/vivado_tutorial/pattern/pattern.srcs/sources_1/new/syncgen.v2default:default2
132default:default8@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
locked2default:default2
pckgen2default:default2
pckgen2default:default2h
R/home/soshi/workspace/vivado_tutorial/pattern/pattern.srcs/sources_1/new/syncgen.v2default:default2
132default:default8@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
pckgen2default:default2
pckgen2default:default2
52default:default2
22default:default2h
R/home/soshi/workspace/vivado_tutorial/pattern/pattern.srcs/sources_1/new/syncgen.v2default:default2
132default:default8@Z8-7023h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
syncgen2default:default2
 2default:default2
82default:default2
12default:default2h
R/home/soshi/workspace/vivado_tutorial/pattern/pattern.srcs/sources_1/new/syncgen.v2default:default2
12default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
pattern2default:default2
 2default:default2
92default:default2
12default:default2h
R/home/soshi/workspace/vivado_tutorial/pattern/pattern.srcs/sources_1/new/pattern.v2default:default2
62default:default8@Z8-6155h px� 
�
synthesizing module '%s'638*oasys2
	rgb2dvi_02default:default2z
d/home/soshi/workspace/vivado_tutorial/pattern/pattern.gen/sources_1/ip/rgb2dvi_0/synth/rgb2dvi_0.vhd2default:default2
722default:default8@Z8-638h px� 
�
?Generic '%s' not present in instantiated entity will be ignored3418*oasys2!
kClkPrimitive2default:default2m
W/home/soshi/workspace/vivado_tutorial/pattern/pattern.srcs/sources_1/new/pattern_hdmi.v2default:default2
272default:default8@Z8-3819h px� 
�
?Generic '%s' not present in instantiated entity will be ignored3418*oasys2
	kClkRange2default:default2m
W/home/soshi/workspace/vivado_tutorial/pattern/pattern.srcs/sources_1/new/pattern_hdmi.v2default:default2
282default:default8@Z8-3819h px� 
d
%s
*synth2L
8	Parameter kGenerateSerialClk bound to: 0 - type: bool 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter kClkPrimitive bound to: MMCM - type: string 
2default:defaulth p
x
� 
`
%s
*synth2H
4	Parameter kRstActiveHigh bound to: 1 - type: bool 
2default:defaulth p
x
� 
^
%s
*synth2F
2	Parameter kClkRange bound to: 1 - type: integer 
2default:defaulth p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
rgb2dvi2default:default2t
`/home/soshi/workspace/vivado_tutorial/pattern/pattern.gen/sources_1/ip/rgb2dvi_0/src/rgb2dvi.vhd2default:default2
612default:default2
U02default:default2
rgb2dvi2default:default2z
d/home/soshi/workspace/vivado_tutorial/pattern/pattern.gen/sources_1/ip/rgb2dvi_0/synth/rgb2dvi_0.vhd2default:default2
1182default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
rgb2dvi2default:default2v
`/home/soshi/workspace/vivado_tutorial/pattern/pattern.gen/sources_1/ip/rgb2dvi_0/src/rgb2dvi.vhd2default:default2
892default:default8@Z8-638h px� 
�
synthesizing module '%s'638*oasys2
ResetBridge2default:default2�
v/home/soshi/workspace/vivado_tutorial/pattern/pattern.gen/sources_1/ip/rgb2dvi_0/xil_defaultlib/src/SyncAsyncReset.vhd2default:default2
722default:default8@Z8-638h px� 
�
synthesizing module '%s'638*oasys2
	SyncAsync2default:default2�
q/home/soshi/workspace/vivado_tutorial/pattern/pattern.gen/sources_1/ip/rgb2dvi_0/xil_defaultlib/src/SyncAsync.vhd2default:default2
722default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
	SyncAsync2default:default2
102default:default2
12default:default2�
q/home/soshi/workspace/vivado_tutorial/pattern/pattern.gen/sources_1/ip/rgb2dvi_0/xil_defaultlib/src/SyncAsync.vhd2default:default2
722default:default8@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
ResetBridge2default:default2
112default:default2
12default:default2�
v/home/soshi/workspace/vivado_tutorial/pattern/pattern.gen/sources_1/ip/rgb2dvi_0/xil_defaultlib/src/SyncAsyncReset.vhd2default:default2
722default:default8@Z8-256h px� 
�
synthesizing module '%s'638*oasys2 
OutputSERDES2default:default2{
e/home/soshi/workspace/vivado_tutorial/pattern/pattern.gen/sources_1/ip/rgb2dvi_0/src/OutputSERDES.vhd2default:default2
762default:default8@Z8-638h px� 
d
%s
*synth2L
8	Parameter IOSTANDARD bound to: TMDS_33 - type: string 
2default:defaulth p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2 
OutputBuffer2default:default2
OBUFDS2default:default2{
e/home/soshi/workspace/vivado_tutorial/pattern/pattern.gen/sources_1/ip/rgb2dvi_0/src/OutputSERDES.vhd2default:default2
832default:default8@Z8-113h px� 
b
%s
*synth2J
6	Parameter DATA_RATE_OQ bound to: DDR - type: string 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter DATA_RATE_TQ bound to: SDR - type: string 
2default:defaulth p
x
� 
`
%s
*synth2H
4	Parameter DATA_WIDTH bound to: 10 - type: integer 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter SERDES_MODE bound to: MASTER - type: string 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter TBYTE_CTL bound to: FALSE - type: string 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter TBYTE_SRC bound to: FALSE - type: string 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter TRISTATE_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2$
SerializerMaster2default:default2
	OSERDESE22default:default2{
e/home/soshi/workspace/vivado_tutorial/pattern/pattern.gen/sources_1/ip/rgb2dvi_0/src/OutputSERDES.vhd2default:default2
922default:default8@Z8-113h px� 
b
%s
*synth2J
6	Parameter DATA_RATE_OQ bound to: DDR - type: string 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter DATA_RATE_TQ bound to: SDR - type: string 
2default:defaulth p
x
� 
`
%s
*synth2H
4	Parameter DATA_WIDTH bound to: 10 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter SERDES_MODE bound to: SLAVE - type: string 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter TBYTE_CTL bound to: FALSE - type: string 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter TBYTE_SRC bound to: FALSE - type: string 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter TRISTATE_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2#
SerializerSlave2default:default2
	OSERDESE22default:default2{
e/home/soshi/workspace/vivado_tutorial/pattern/pattern.gen/sources_1/ip/rgb2dvi_0/src/OutputSERDES.vhd2default:default2
1352default:default8@Z8-113h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2 
OutputSERDES2default:default2
122default:default2
12default:default2{
e/home/soshi/workspace/vivado_tutorial/pattern/pattern.gen/sources_1/ip/rgb2dvi_0/src/OutputSERDES.vhd2default:default2
762default:default8@Z8-256h px� 
�
synthesizing module '%s'638*oasys2 
TMDS_Encoder2default:default2{
e/home/soshi/workspace/vivado_tutorial/pattern/pattern.gen/sources_1/ip/rgb2dvi_0/src/TMDS_Encoder.vhd2default:default2
802default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2 
TMDS_Encoder2default:default2
132default:default2
12default:default2{
e/home/soshi/workspace/vivado_tutorial/pattern/pattern.gen/sources_1/ip/rgb2dvi_0/src/TMDS_Encoder.vhd2default:default2
802default:default8@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
rgb2dvi2default:default2
142default:default2
12default:default2v
`/home/soshi/workspace/vivado_tutorial/pattern/pattern.gen/sources_1/ip/rgb2dvi_0/src/rgb2dvi.vhd2default:default2
892default:default8@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
	rgb2dvi_02default:default2
152default:default2
12default:default2z
d/home/soshi/workspace/vivado_tutorial/pattern/pattern.gen/sources_1/ip/rgb2dvi_0/synth/rgb2dvi_0.vhd2default:default2
722default:default8@Z8-256h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
	SerialClk2default:default2
	rgb2dvi_02default:default2
reg2dvi2default:default2m
W/home/soshi/workspace/vivado_tutorial/pattern/pattern.srcs/sources_1/new/pattern_hdmi.v2default:default2
302default:default8@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
reg2dvi2default:default2
	rgb2dvi_02default:default2
112default:default2
102default:default2m
W/home/soshi/workspace/vivado_tutorial/pattern/pattern.srcs/sources_1/new/pattern_hdmi.v2default:default2
302default:default8@Z8-7023h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2 
pattern_hdmi2default:default2
 2default:default2
162default:default2
12default:default2m
W/home/soshi/workspace/vivado_tutorial/pattern/pattern.srcs/sources_1/new/pattern_hdmi.v2default:default2
22default:default8@Z8-6155h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	SerialClk2default:default2 
TMDS_Encoder2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
aRst2default:default2 
TMDS_Encoder2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
aRst_n2default:default2
rgb2dvi2default:defaultZ8-7129h px� 
�
%s*synth2�
�Finished RTL Elaboration : Time (s): cpu = 00:00:03 ; elapsed = 00:00:03 . Memory (MB): peak = 2748.621 ; gain = 0.000 ; free physical = 254765 ; free virtual = 285300
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:04 ; elapsed = 00:00:04 . Memory (MB): peak = 2748.621 ; gain = 0.000 ; free physical = 255627 ; free virtual = 286162
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:04 ; elapsed = 00:00:04 . Memory (MB): peak = 2748.621 ; gain = 0.000 ; free physical = 255627 ; free virtual = 286162
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.012default:default2
00:00:002default:default2
2748.6212default:default2
0.0002default:default2
2556312default:default2
2861672default:defaultZ17-722h px� 
�
�The value of SIM_DEVICE on instance '%s' of type '%s' is '%s'; it is being changed to match the current FPGA architecture, '%s'. For functional simulation to match hardware behavior, the value of SIM_DEVICE should be changed in the source netlist. %s369*netlist2;
'pattern/syncgen/pckgen/inst/clkout1_buf2default:default2
BUFGCE2default:default2

ULTRASCALE2default:default2
7SERIES2default:default2

2default:defaultZ29-345h px� 
e
-Analyzing %s Unisim elements for replacement
17*netlist2
62default:defaultZ29-17h px� 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2v
`/home/soshi/workspace/vivado_tutorial/pattern/pattern.gen/sources_1/ip/rgb2dvi_0/src/rgb2dvi.xdc2default:default2 

reg2dvi/U0	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2v
`/home/soshi/workspace/vivado_tutorial/pattern/pattern.gen/sources_1/ip/rgb2dvi_0/src/rgb2dvi.xdc2default:default2 

reg2dvi/U0	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2t
^/home/soshi/workspace/vivado_tutorial/pattern/pattern.gen/sources_1/ip/pckgen/pckgen_board.xdc2default:default21
pattern/syncgen/pckgen/inst	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2t
^/home/soshi/workspace/vivado_tutorial/pattern/pattern.gen/sources_1/ip/pckgen/pckgen_board.xdc2default:default21
pattern/syncgen/pckgen/inst	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2n
X/home/soshi/workspace/vivado_tutorial/pattern/pattern.gen/sources_1/ip/pckgen/pckgen.xdc2default:default21
pattern/syncgen/pckgen/inst	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2n
X/home/soshi/workspace/vivado_tutorial/pattern/pattern.gen/sources_1/ip/pckgen/pckgen.xdc2default:default21
pattern/syncgen/pckgen/inst	2default:default8Z20-847h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2l
X/home/soshi/workspace/vivado_tutorial/pattern/pattern.gen/sources_1/ip/pckgen/pckgen.xdc2default:default22
.Xil/pattern_hdmi_propImpl.xdc2default:defaultZ1-236h px� 
8
Deriving generated clocks
2*timingZ38-2h px� 
�
Parsing XDC File [%s]
179*designutils2j
T/home/soshi/workspace/vivado_tutorial/pattern/pattern.srcs/constrs_1/new/pattern.xdc2default:default8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2j
T/home/soshi/workspace/vivado_tutorial/pattern/pattern.srcs/constrs_1/new/pattern.xdc2default:default8Z20-178h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2h
T/home/soshi/workspace/vivado_tutorial/pattern/pattern.srcs/constrs_1/new/pattern.xdc2default:default22
.Xil/pattern_hdmi_propImpl.xdc2default:defaultZ1-236h px� 
�
Parsing XDC File [%s]
179*designutils2g
Q/home/soshi/workspace/vivado_tutorial/pattern/pattern.runs/synth_1/dont_touch.xdc2default:default8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2g
Q/home/soshi/workspace/vivado_tutorial/pattern/pattern.runs/synth_1/dont_touch.xdc2default:default8Z20-178h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2e
Q/home/soshi/workspace/vivado_tutorial/pattern/pattern.runs/synth_1/dont_touch.xdc2default:default22
.Xil/pattern_hdmi_propImpl.xdc2default:defaultZ1-236h px� 
8
Deriving generated clocks
2*timingZ38-2h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2}
g/home/soshi/workspace/vivado_tutorial/pattern/pattern.gen/sources_1/ip/rgb2dvi_0/src/rgb2dvi_clocks.xdc2default:default2 

reg2dvi/U0	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2}
g/home/soshi/workspace/vivado_tutorial/pattern/pattern.gen/sources_1/ip/rgb2dvi_0/src/rgb2dvi_clocks.xdc2default:default2 

reg2dvi/U0	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2s
]/home/soshi/workspace/vivado_tutorial/pattern/pattern.gen/sources_1/ip/pckgen/pckgen_late.xdc2default:default21
pattern/syncgen/pckgen/inst	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2s
]/home/soshi/workspace/vivado_tutorial/pattern/pattern.gen/sources_1/ip/pckgen/pckgen_late.xdc2default:default21
pattern/syncgen/pckgen/inst	2default:default8Z20-847h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
2812.5702default:default2
0.0002default:default2
2555992default:default2
2861342default:defaultZ17-722h px� 
�
!Unisim Transformation Summary:
%s111*project2a
M  A total of 1 instances were transformed.
  BUFGCE => BUFGCTRL: 1 instance 
2default:defaultZ1-111h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common24
 Constraint Validation Runtime : 2default:default2
00:00:00.022default:default2
00:00:00.012default:default2
2812.5702default:default2
0.0002default:default2
2555992default:default2
2861342default:defaultZ17-722h px� 
�
[Reference run did not run incremental synthesis because %s; reverting to default synthesis
2138*designutils2+
the design is too small2default:defaultZ20-4072h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Constraint Validation : Time (s): cpu = 00:00:08 ; elapsed = 00:00:08 . Memory (MB): peak = 2812.570 ; gain = 63.949 ; free physical = 255676 ; free virtual = 286211
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
J
%s
*synth22
Loading part: xc7z020clg400-1
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:08 ; elapsed = 00:00:08 . Memory (MB): peak = 2812.570 ; gain = 63.949 ; free physical = 255676 ; free virtual = 286211
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:08 ; elapsed = 00:00:08 . Memory (MB): peak = 2812.570 ; gain = 63.949 ; free physical = 255676 ; free virtual = 286211
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:08 ; elapsed = 00:00:08 . Memory (MB): peak = 2812.570 ; gain = 63.949 ; free physical = 255664 ; free virtual = 286200
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   32 Bit       Adders := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   10 Bit       Adders := 3     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   3 Input    5 Bit       Adders := 9     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   4 Input    5 Bit       Adders := 3     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    5 Bit       Adders := 3     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   8 Input    4 Bit       Adders := 6     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    4 Bit       Adders := 3     
2default:defaulth p
x
� 
8
%s
*synth2 
+---XORs : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit         XORs := 42    
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               10 Bit    Registers := 5     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                9 Bit    Registers := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 7     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                5 Bit    Registers := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                4 Bit    Registers := 9     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                2 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 21    
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
X
%s
*synth2@
,	   4 Input   10 Bit        Muxes := 3     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    9 Bit        Muxes := 3     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    8 Bit        Muxes := 6     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    5 Bit        Muxes := 9     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    3 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    1 Bit        Muxes := 3     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   3 Input    1 Bit        Muxes := 2     
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2k
WPart Resources:
DSPs: 220 (col length:60)
BRAMs: 280 (col length: RAMB18 60 RAMB36 30)
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
aRst_n2default:default2
rgb2dvi2default:defaultZ8-7129h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:10 ; elapsed = 00:00:10 . Memory (MB): peak = 2812.570 ; gain = 63.949 ; free physical = 255650 ; free virtual = 286190
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
7Moving clock source from hierarchical pin '%s' to '%s'
4185*oasys2'
reg2dvi/U0/PixelClk2default:default2<
(patterni_2/pattern/syncgen/HCNT_reg[0]/C2default:defaultZ8-5783h px� 
�
SMoved %s constraints on hierarchical pins to their respective driving/loading pins
4235*oasys2
12default:defaultZ8-5819h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:13 ; elapsed = 00:00:14 . Memory (MB): peak = 2812.570 ; gain = 63.949 ; free physical = 255530 ; free virtual = 286069
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Timing Optimization : Time (s): cpu = 00:00:14 ; elapsed = 00:00:14 . Memory (MB): peak = 2812.570 ; gain = 63.949 ; free physical = 255525 ; free virtual = 286065
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Technology Mapping : Time (s): cpu = 00:00:14 ; elapsed = 00:00:14 . Memory (MB): peak = 2812.570 ; gain = 63.949 ; free physical = 255526 ; free virtual = 286066
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished IO Insertion : Time (s): cpu = 00:00:16 ; elapsed = 00:00:17 . Memory (MB): peak = 2812.570 ; gain = 63.949 ; free physical = 255526 ; free virtual = 286066
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:16 ; elapsed = 00:00:17 . Memory (MB): peak = 2812.570 ; gain = 63.949 ; free physical = 255526 ; free virtual = 286066
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:16 ; elapsed = 00:00:17 . Memory (MB): peak = 2812.570 ; gain = 63.949 ; free physical = 255526 ; free virtual = 286066
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:16 ; elapsed = 00:00:17 . Memory (MB): peak = 2812.570 ; gain = 63.949 ; free physical = 255526 ; free virtual = 286066
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:16 ; elapsed = 00:00:17 . Memory (MB): peak = 2812.570 ; gain = 63.949 ; free physical = 255526 ; free virtual = 286066
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:16 ; elapsed = 00:00:17 . Memory (MB): peak = 2812.570 ; gain = 63.949 ; free physical = 255526 ; free virtual = 286066
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
J
%s
*synth22
| |BlackBox name |Instances |
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px� 
H
%s*synth20
+------+-----------+------+
2default:defaulth px� 
H
%s*synth20
|      |Cell       |Count |
2default:defaulth px� 
H
%s*synth20
+------+-----------+------+
2default:defaulth px� 
H
%s*synth20
|1     |BUFG       |     1|
2default:defaulth px� 
H
%s*synth20
|2     |BUFGCE     |     1|
2default:defaulth px� 
H
%s*synth20
|3     |BUFH       |     1|
2default:defaulth px� 
H
%s*synth20
|4     |CARRY4     |    32|
2default:defaulth px� 
H
%s*synth20
|5     |LUT1       |    35|
2default:defaulth px� 
H
%s*synth20
|6     |LUT2       |    76|
2default:defaulth px� 
H
%s*synth20
|7     |LUT3       |    26|
2default:defaulth px� 
H
%s*synth20
|8     |LUT4       |    40|
2default:defaulth px� 
H
%s*synth20
|9     |LUT5       |    33|
2default:defaulth px� 
H
%s*synth20
|10    |LUT6       |    59|
2default:defaulth px� 
H
%s*synth20
|11    |MMCME2_ADV |     1|
2default:defaulth px� 
H
%s*synth20
|12    |OSERDESE2  |     8|
2default:defaulth px� 
H
%s*synth20
|14    |FDPE       |     2|
2default:defaulth px� 
H
%s*synth20
|15    |FDRE       |    64|
2default:defaulth px� 
H
%s*synth20
|16    |FDSE       |     9|
2default:defaulth px� 
H
%s*synth20
|17    |IBUF       |     2|
2default:defaulth px� 
H
%s*synth20
|18    |OBUFDS     |     4|
2default:defaulth px� 
H
%s*synth20
+------+-----------+------+
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:16 ; elapsed = 00:00:17 . Memory (MB): peak = 2812.570 ; gain = 63.949 ; free physical = 255526 ; free virtual = 286066
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
r
%s
*synth2Z
FSynthesis finished with 0 errors, 0 critical warnings and 2 warnings.
2default:defaulth p
x
� 
�
%s
*synth2�
�Synthesis Optimization Runtime : Time (s): cpu = 00:00:15 ; elapsed = 00:00:15 . Memory (MB): peak = 2812.570 ; gain = 0.000 ; free physical = 255580 ; free virtual = 286120
2default:defaulth p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:17 ; elapsed = 00:00:17 . Memory (MB): peak = 2812.570 ; gain = 63.949 ; free physical = 255581 ; free virtual = 286121
2default:defaulth p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
2812.5702default:default2
0.0002default:default2
2555752default:default2
2861152default:defaultZ17-722h px� 
�
�The value of SIM_DEVICE on instance '%s' of type '%s' is '%s'; it is being changed to match the current FPGA architecture, '%s'. For functional simulation to match hardware behavior, the value of SIM_DEVICE should be changed in the source netlist. %s369*netlist2;
'pattern/syncgen/pckgen/inst/clkout1_buf2default:default2
BUFGCE2default:default2

ULTRASCALE2default:default2
7SERIES2default:default2

2default:defaultZ29-345h px� 
f
-Analyzing %s Unisim elements for replacement
17*netlist2
382default:defaultZ29-17h px� 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
2812.5702default:default2
0.0002default:default2
2556022default:default2
2861422default:defaultZ17-722h px� 
�
!Unisim Transformation Summary:
%s111*project2a
M  A total of 1 instances were transformed.
  BUFGCE => BUFGCTRL: 1 instance 
2default:defaultZ1-111h px� 
g
$Synth Design complete, checksum: %s
562*	vivadotcl2
dff092a42default:defaultZ4-1430h px� 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
662default:default2
172default:default2
02default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2"
synth_design: 2default:default2
00:00:232default:default2
00:00:202default:default2
2812.5702default:default2
64.1722default:default2
2558022default:default2
2863422default:defaultZ17-722h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2g
S/home/soshi/workspace/vivado_tutorial/pattern/pattern.runs/synth_1/pattern_hdmi.dcp2default:defaultZ17-1381h px� 
�
%s4*runtcl2�
nExecuting : report_utilization -file pattern_hdmi_utilization_synth.rpt -pb pattern_hdmi_utilization_synth.pb
2default:defaulth px� 
�
Exiting %s at %s...
206*common2
Vivado2default:default2,
Thu Jan 12 22:01:31 20232default:defaultZ17-206h px� 


End Record