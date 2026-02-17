v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
N 830 -290 830 -280 {
lab=vm}
N 650 -290 650 -280 {
lab=vm}
N 380 -290 380 -270 {
lab=vm}
N 740 -250 790 -250 {
lab=#net1}
N 830 -190 830 -160 {
lab=#net1}
N 740 -190 830 -190 {
lab=#net1}
N 740 -250 740 -190 {
lab=#net1}
N 750 -130 790 -130 {
lab=vout}
N 650 -180 650 -130 {
lab=vout}
N 380 -210 380 -180 {
lab=vout}
N 380 -180 380 -130 {
lab=vout}
N 830 -100 830 -70 {
lab=vss}
N 330 -240 340 -240 {
lab=vout}
N 830 -130 850 -130 {
lab=vss}
N 900 -130 900 -70 {
lab=vss}
N 260 -290 380 -290 {
lab=vm}
N 260 -290 260 -220 {
lab=vm}
N 260 -160 260 -90 {
lab=vss}
N 330 -180 380 -180 {
lab=vout}
N 850 -70 850 -50 {
lab=vss}
N 750 -170 900 -170 {
lab=vout}
N 750 -170 750 -130 {
lab=vout}
N 510 -180 650 -180 {
lab=vout}
N 650 -290 830 -290 {
lab=vm}
N 330 -240 330 -180 {
lab=vout}
N 830 -220 830 -190 {
lab=#net1}
N 690 -250 740 -250 {
lab=#net1}
N 830 -70 850 -70 {
lab=vss}
N 510 -290 650 -290 {
lab=vm}
N 650 -130 750 -130 {
lab=vout}
N 650 -220 650 -180 {
lab=vout}
N 380 -240 450 -240 {
lab=vdd}
N 580 -250 650 -250 {
lab=vdd}
N 450 -250 450 -240 {
lab=vdd}
N 830 -250 890 -250 {
lab=vdd}
N 850 -50 850 -30 {
lab=vss}
N 850 -70 860 -70 {
lab=vss}
N 860 -70 870 -70 {
lab=vss}
N 240 -290 260 -290 {
lab=vm}
N 120 -390 130 -390 {lab=#net2}
N 320 -100 320 -70 {lab=Vleak}
N 320 -100 340 -100 {lab=Vleak}
N 380 -70 380 -30 {lab=vss}
N 380 -100 380 -70 {lab=vss}
N 120 -200 140 -200 {lab=#net2}
N 140 -390 140 -200 {lab=#net2}
N 50 -200 60 -200 {lab=Iext}
N 50 -390 50 -200 {lab=Iext}
N 90 -250 90 -200 {lab=vss}
N 90 -160 90 -130 {lab=vout_n}
N 90 -390 90 -340 {lab=vdd}
N 0 -290 50 -290 {lab=Iext}
N 140 -290 180 -290 {lab=#net2}
N 50 -390 60 -390 {lab=Iext}
N 130 -390 140 -390 {lab=#net2}
N 90 -460 90 -430 {lab=#net3}
N 940 -130 980 -130 {lab=vout}
N 940 -240 940 -130 {lab=vout}
N 940 -240 980 -240 {lab=vout}
N 1020 -300 1020 -270 {lab=vdd}
N 900 -170 940 -170 {lab=vout}
N 1020 -210 1020 -160 {lab=vout_n}
N 1020 -100 1020 -70 {lab=vss}
N 870 -70 1020 -70 {lab=vss}
N 1020 -190 1150 -190 {lab=vout_n}
N 1150 -190 1160 -190 {lab=vout_n}
N 1020 -130 1080 -130 {lab=vss}
N 1080 -130 1080 -70 {lab=vss}
N 1020 -70 1080 -70 {lab=vss}
N 1020 -240 1100 -240 {lab=vdd}
N 1100 -285 1100 -240 {lab=vdd}
N 1020 -285 1100 -285 {lab=vdd}
N 450 -250 580 -250 {lab=vdd}
N 380 -290 510 -290 {lab=vm}
N 380 -180 510 -180 {lab=vout}
N 850 -130 900 -130 {lab=vss}
C {sky130_fd_pr/pfet_01v8.sym} 360 -240 0 0 {name=M1
L=10
W=1
nf=1
mult=1
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 670 -250 0 1 {name=M2
L=0.15
W=1.5
nf=1
mult=1
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 810 -250 0 0 {name=M3
L=0.15
W=15
nf=1
mult=1
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 810 -130 0 0 {name=M4
L=5
W=1
nf=1 
mult=1
model=nfet_01v8
spiceprefix=X
}
C {devices/capa.sym} 260 -190 0 0 {name=C1
m=1
value=@CM
footprint=1206
device="ceramic capacitor"}
C {devices/iopin.sym} 0 -290 0 1 {name=p5 lab=Iext}
C {devices/iopin.sym} 730 -130 1 0 {name=p6 lab=vout}
C {devices/iopin.sym} 850 -30 0 0 {name=p2 lab=vss}
C {devices/iopin.sym} 320 -70 1 0 {name=p7 lab=Vleak }
C {devices/iopin.sym} 1020 -300 0 0 {name=p8 lab=vdd}
C {devices/lab_pin.sym} 490 -250 3 0 {name=p11 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 890 -250 3 0 {name=p12 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 260 -90 3 0 {name=p10 sig_type=std_logic lab=vss}
C {sky130_fd_pr/pfet_01v8.sym} 90 -410 3 1 {name=M9
L=0.15
W=4
nf=1
mult=1
model=pfet_01v8
spiceprefix=X
spice_ignore=false}
C {devices/code_shown.sym} 480 -560 0 0 {name=s1 only_toplevel=false value="
.save i(vext) v(vout)
"}
C {devices/lab_pin.sym} 90 -340 3 0 {name=p1 sig_type=std_logic lab=vdd}
C {sky130_fd_pr/nfet_01v8.sym} 360 -100 0 0 {name=M11
L=0.15
W=@W_LEAK
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
C {devices/lab_pin.sym} 380 -30 3 0 {name=p4 sig_type=std_logic lab=vss}
C {sky130_fd_pr/nfet_01v8.sym} 90 -180 1 1 {name=M10
L=0.15
W=2
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
C {devices/lab_pin.sym} 90 -250 1 0 {name=p3 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 90 -132.5 0 0 {name=p13 sig_type=std_logic lab=vout_n}
C {devices/lab_pin.sym} 90 -452.5 0 0 {name=p15 sig_type=std_logic lab=vout}
C {devices/lab_pin.sym} 322.5 -290 1 0 {name=p16 sig_type=std_logic lab=vm}
C {vsource.sym} 210 -290 3 0 {name=vext value=0}
C {sky130_fd_pr/nfet_01v8.sym} 1000 -130 0 0 {name=M5
L=5
W=1
nf=1 
mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 1000 -240 0 0 {name=M6
L=0.15
W=2
nf=1
mult=1
model=pfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 1160 -190 0 1 {name=p9 sig_type=std_logic lab=vout_n}
