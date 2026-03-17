v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -120 -90 360 -90 {lab=#net1}
N -120 100 360 100 {lab=#net2}
N 10 -90 10 -0 {lab=#net1}
N 110 -140 110 220 {lab=#net3}
N 70 0 110 0 {lab=#net3}
N 70 190 110 190 {lab=#net3}
N 10 100 10 190 {lab=#net2}
N 450 -110 450 250 {lab=#net4}
N 370 100 370 190 {lab=#net2}
N 360 100 370 100 {lab=#net2}
N 360 -90 360 -0 {lab=#net1}
N 420 -0 450 -0 {lab=#net4}
N 430 190 450 190 {lab=#net4}
N -120 -115 -120 -80 {lab=#net1}
N -120 -80 -120 -70 {lab=#net1}
N -120 -80 -120 -70 {lab=#net1}
N -175 -45 -160 -45 {lab=vj1}
N -120 75 -120 115 {lab=#net2}
N -175 145 -160 145 {lab=vj2}
N 110 280 110 320 {lab=GND}
N 450 305 450 325 {lab=GND}
N 450 -205 450 -170 {lab=VDD}
N 60 -170 65 -170 {lab=nvj1}
C {/foss/designs/SNN_IPN/memristor_models/wellposed/rram_v0.sym} 40 0 1 1 {name=R2
model=rram_v0
spiceprefix=X
}
C {/foss/designs/SNN_IPN/memristor_models/wellposed/rram_v0.sym} 390 0 1 1 {name=R1
model=rram_v0
spiceprefix=X
}
C {/foss/designs/SNN_IPN/memristor_models/wellposed/rram_v0.sym} 40 190 1 1 {name=R3
model=rram_v0
spiceprefix=X
}
C {/foss/designs/SNN_IPN/memristor_models/wellposed/rram_v0.sym} 400 190 1 1 {name=R4
model=rram_v0
spiceprefix=X
}
C {devices/lab_pin.sym} -175 -45 0 0 {name=p13 sig_type=std_logic lab=vj1}
C {sky130_fd_pr/nfet_01v8.sym} -140 -45 0 0 {name=M3
L=0.15
W=5
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} -140 -145 0 0 {name=M2
L=0.15
W=10
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} -175 -145 0 0 {name=p2 sig_type=std_logic lab=nvk1}
C {sky130_fd_pr/nfet_01v8.sym} -140 145 0 0 {name=M1
L=0.15
W=5
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} -140 45 0 0 {name=M4
L=0.15
W=10
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} -175 145 0 0 {name=p1 sig_type=std_logic lab=vj2}
C {sky130_fd_pr/pfet_01v8.sym} 90 -170 0 0 {name=M5
L=0.15
W=10
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 430 -140 0 0 {name=M6
L=0.15
W=10
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 90 250 0 0 {name=M7
L=0.15
W=5
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 430 275 0 0 {name=M8
L=0.15
W=5
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 70 250 0 0 {name=p3 sig_type=std_logic lab=vk1}
C {devices/lab_pin.sym} 410 275 0 0 {name=p4 sig_type=std_logic lab=vk2}
C {devices/lab_pin.sym} -175 45 0 0 {name=p5 sig_type=std_logic lab=nvk2}
C {devices/lab_pin.sym} 60 -170 0 0 {name=p6 sig_type=std_logic lab=nvj1}
C {devices/lab_pin.sym} 410 -140 0 0 {name=p7 sig_type=std_logic lab=nvj2}
C {devices/gnd.sym} -400 115 0 0 {name=l5 lab=GND}
C {devices/vdd.sym} 110 -200 0 0 {nname=l4 lab=VDD}
C {devices/vdd.sym} 450 -205 0 0 {nname=l4 lab=VDD}
C {devices/gnd.sym} 110 320 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 450 325 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} -120 175 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} -120 -15 0 0 {name=l4 lab=GND}
C {devices/vdd.sym} -120 -175 0 0 {nname=l4 lab=VDD}
C {devices/vdd.sym} -120 15 0 0 {nname=l4 lab=VDD}
