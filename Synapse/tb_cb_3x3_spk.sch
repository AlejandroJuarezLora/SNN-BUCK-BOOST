v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -220 -30 -220 -0 {lab=n13}
N -220 -30 -150 -30 {lab=n13}
N -310 -70 -150 -70 {lab=n12}
N -310 -70 -310 -40 {lab=n12}
N -400 -110 -400 -100 {lab=n11}
N -400 -110 -150 -110 {lab=n11}
N 400 -110 400 -90 {lab=n21}
N 150 -110 400 -110 {lab=n21}
N 150 -70 310 -70 {lab=n22}
N 310 -70 310 -30 {lab=n22}
N 220 -30 220 10 {lab=n23}
N 150 -30 220 -30 {lab=n23}
C {cb_3x3_spk.sym} 0 -80 0 0 {name=x1}
C {devices/vsource.sym} -400 -70 0 1 {name=V1 value="PULSE(0 1.8 0 5n 5n 500n 1000n 20)"}
C {devices/vsource.sym} -310 -10 0 1 {name=V2 value="PULSE(0 1.8 20u 5n 5n 500n 1000n 20)"}
C {devices/vsource.sym} -220 30 0 1 {name=V3 value="PULSE(0 1.8 40u 5n 5n 500n 1000n 20)"}
C {gnd.sym} -220 60 0 0 {name=l1 lab=GND}
C {gnd.sym} -310 20 0 0 {name=l2 lab=GND}
C {gnd.sym} -400 -40 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} 400 -60 0 0 {name=V4 value="PULSE(0 1.8 60u 5n 5n 500n 1000n 20)"}
C {devices/vsource.sym} 310 0 0 0 {name=V5 value="PULSE(0 1.8 80u 5n 5n 500n 1000n 20)"}
C {devices/vsource.sym} 220 40 0 0 {name=V6 value="PULSE(0 1.8 100u 5n 5n 500n 1000n 20)"}
C {gnd.sym} 0 20 0 0 {name=l4 lab=GND}
C {gnd.sym} 220 70 0 0 {name=l5 lab=GND}
C {gnd.sym} 310 30 0 0 {name=l6 lab=GND}
C {gnd.sym} 400 -30 0 0 {name=l7 lab=GND}
C {vsource.sym} -390 -320 0 1 {name=V7 value=1.8 savecurrent=false}
C {vdd.sym} -390 -350 0 0 {name=l8 lab=VDD}
C {gnd.sym} -390 -290 0 0 {name=l9 lab=GND}
C {vdd.sym} 0 -140 0 0 {name=l10 lab=VDD}
C {sky130_fd_pr/corner.sym} -330 -280 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/code_shown.sym} 470 -580 0 1 {name=NGSPICE
only_toplevel=true
value="

.options set num_threads=8
.options set ng_nomodcheck
.options set skywaterpdk


.subckt rram_v0 TE BE
N1 TE BE rram_v0_model 
.ends rram_v0

.model rram_v0_model rram_v0_va


.control
  pre_osdi /foss/designs/SNN-BUCK-BOOST/Memristor/rram_v0.osdi
  save all
  tran 10n 120u
  write /foss/designs/SNN-BUCK-BOOST/Synapse/tb_cb_3x3_spk.raw

.endc

" }
C {lab_pin.sym} -310 -110 1 0 {name=p1 sig_type=std_logic lab=n11}
C {lab_pin.sym} -260 -70 1 0 {name=p2 sig_type=std_logic lab=n12}
C {lab_pin.sym} -190 -30 1 0 {name=p3 sig_type=std_logic lab=n13}
C {lab_pin.sym} 200 -110 1 0 {name=p4 sig_type=std_logic lab=n21}
C {lab_pin.sym} 200 -70 1 0 {name=p5 sig_type=std_logic lab=n22}
C {lab_pin.sym} 190 -30 1 0 {name=p6 sig_type=std_logic lab=n23}
