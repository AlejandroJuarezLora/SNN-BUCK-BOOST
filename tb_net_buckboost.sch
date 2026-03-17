v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 1520 -90 1520 -60 {
lab=VDD}
N 1520 0 1520 20 {
lab=GND}
N 1825 -420 1885 -420 {
lab=#net1}
N 1875 -340 1875 -300 {
lab=GND}
N 1150 -370 1270 -370 {lab=u}
N 1220 -330 1270 -330 {lab=vref}
N 1195 -330 1195 -300 {lab=vref}
N 1205 -330 1220 -330 {lab=vref}
N 1195 -240 1195 -220 {lab=GND}
N 1570 -330 1660 -330 {lab=#net2}
N 1570 -370 1650 -370 {lab=#net3}
N 1195 -330 1205 -330 {lab=vref}
C {devices/vsource.sym} 1520 -30 0 0 {name=Vdd value=1.8}
C {devices/gnd.sym} 1520 20 0 0 {name=l5 lab=GND}
C {devices/vdd.sym} 1520 -90 0 0 {nname=l4 lab=VDD}
C {devices/code_shown.sym} 1292.5 147.5 0 0 {name=MODELS2
only_toplevel=true
format="tcleval( @value )"
value="
*MADE BY JORGE ALEJANDRO JUAREZ LORA IPN

.subckt rram_v0 TE BE
*N1 TE BE rram_v0_model gap_initial=unif(0.9,0.79)
N1 TE BE rram_v0_model gap_initial=0.9
.ends rram_v0

.model rram_v0_model rram_v0_va


.control

pre_osdi /foss/designs/SNN-BUCK-BOOST/memristor_models/wellposed/rram_v0.osdi
.endc

"
spice_ignore=false}
C {OPAMP/opamp_sky130.sym} 1815 -360 2 1 {name=x3}
C {devices/lab_pin.sym} 1225 -370 3 1 {name=p10 sig_type=std_logic lab=u}
C {devices/vdd.sym} 1805 -310 2 0 {name=l19 lab=VDD}
C {devices/isource.sym} 1785 -450 2 1 {name=I0 value=100u}
C {devices/gnd.sym} 1875 -340 2 0 {name=l13 lab=GND}
C {devices/code.sym} 1422.5 612.5 0 0 {name=MODELS1
only_toplevel=true
format="tcleval( @value )"
value="

.param mc_mm_switch=0
.param mc_pr_switch=0
.include /foss/pdks/sky130A/libs.tech/ngspice/corners/tt.spice
.include /foss/pdks/sky130A/libs.tech/ngspice/r+c/res_typical__cap_typical.spice
.include /foss/pdks/sky130A/libs.tech/ngspice/r+c/res_typical__cap_typical__lin.spice
*.include /foss/pdks/sky130A/libs.tech/ngspice/corners/tt/specialized_cells.spice

"
spice_ignore=false}
C {devices/code.sym} 1560 610 0 0 {name=STIMULI3 
only_toplevel=true
place=end
value="

.options method gear
.options KLU
.options noinit
.options set num_threads=8
.options set ng_nomodcheck
.options set skywaterpdk
.options set wr_vecnames
.options set wr_singlescale
.options numdgt = 2
.save in Vr1 I(Vread) hx x
+N1 N2 N3 N4 M1 M2 M3 M4
+J1 J2 J3 J4 J5 J6 J7 J8 

.tran 50n 10m
*.control
*	run
*	write /home/alex/Desktop/EDA/SNN_IPN/sim_results/data.raw
*.endc
"
spice_ignore = false}
C {/foss/designs/SNN-BUCK-BOOST/DC_DC/buck.sym} 1420 -350 0 0 {name=x11}
C {devices/vsource.sym} 1195 -270 0 0 {name=Vdd1 value=12}
C {devices/gnd.sym} 1195 -220 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 1420 -290 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} 1195 -330 2 1 {name=p1 sig_type=std_logic lab=vref}
