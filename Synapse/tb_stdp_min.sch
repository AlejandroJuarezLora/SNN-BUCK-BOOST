v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 650 -180 1450 220 {flags=graph
y1=-53000000
y2=1.7e+08
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=2.0637503e-05
x2=4.6851903e-05
divx=5
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0
color=4
node="\\"Memristance [Ohms]; xstdp1.be xstdp1.te - i(v.xstdp1.vmr) / \\""
linewidth_mult=4}
B 2 640 720 1440 1120 {flags=graph
y1=-1.2
y2=1.2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=2.0637503e-05
x2=4.6851903e-05
divx=5
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0
color=4
node="\\"Voltage Diff in memristor [V]; xstdp1.be xstdp1.te -\\""
linewidth_mult=4}
B 2 1460 -180 2260 220 {flags=graph
y1=1.1363338
y2=3.3275548
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=2.0637503e-05
x2=4.6851903e-05
divx=5
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0
linewidth_mult=4
color=6
node=n.xstdp1.xr2.n1#ngap}
B 2 1460 300 2260 700 {flags=graph
y1=-6.4e-06
y2=5.7e-06
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=2.0637503e-05
x2=4.6851903e-05
divx=5
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0
linewidth_mult=4
color=6
node=i(v.xstdp1.vmr)}
B 2 660 -600 1460 -200 {flags=graph
y1=-1.3e-06
y2=1.2e-05
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=2.0637503e-05
x2=4.6851903e-05
divx=5
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0
linewidth_mult=4
color="8 6"
node="i(v_iext)
i(v_isyn)"}
B 2 650 230 1450 630 {flags=graph
y1=0
y2=1.8
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=2.0637503e-05
x2=4.6851903e-05
divx=5
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0
color="4 7"
node="V1
V2"
linewidth_mult=4}
B 5 147.5 17.5 152.5 22.5 {name=vdd dir=inout}
B 5 -2.5 57.5 2.5 62.5 {name=vout_pre dir=inout}
B 5 297.5 67.5 302.5 72.5 {name=vout_post dir=inout}
B 5 297.5 97.5 302.5 102.5 {name=I_post dir=inout}
N -110 60 -110 100 {lab=V1}
N -110 60 0 60 {lab=V1}
N -110 160 -110 200 {lab=GND}
N -110 200 150 200 {lab=GND}
N 410 70 410 110 {lab=V2}
N 300 70 410 70 {lab=V2}
N 300 100 330 100 {lab=#net1}
N 330 100 330 120 {lab=#net1}
N 330 180 330 200 {lab=GND}
N 150 200 330 200 {lab=GND}
N 410 170 410 200 {lab=GND}
N 330 200 410 200 {lab=GND}
N 150 200 150 220 {lab=GND}
N 150 -10 150 20 {lab=VDD}
C {ammeter.sym} 330 150 0 0 {name=V_iext savecurrent=true spice_ignore=0}
C {gnd.sym} 150 220 0 0 {name=l1 lab=GND}
C {vdd.sym} 150 -10 0 0 {name=l2 lab=VDD}
C {vsource.sym} -100 -50 0 1 {name=V3 value=1.8 savecurrent=false}
C {vdd.sym} -100 -80 0 0 {name=l3 lab=VDD}
C {gnd.sym} -100 -20 0 0 {name=l4 lab=GND}
C {stdp_min.sym} 150 60 0 0 {name=xstdp1}
C {devices/vsource.sym} 410 140 0 0 {name=V1 value="PULSE(0 1.8 0 5n 5n 500n 1000n 50)"}
C {devices/vsource.sym} -110 130 0 0 {name=V2 value="PULSE(0 1.8 50u 5n 5n 500n 1000n 50)"}
C {devices/code_shown.sym} 270 230 0 1 {name=NGSPICE
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
  tran 50n 100u
  write tb_stdp_min.raw

.endc

" }
C {sky130_fd_pr/corner.sym} 420 260 0 0 {name=CORNER only_toplevel=true corner=tt}
C {ammeter.sym} 150 170 0 0 {name=V_Isyn savecurrent=true spice_ignore=0}
C {lab_pin.sym} -110 60 0 0 {name=p1 sig_type=std_logic lab=V1}
C {lab_pin.sym} 410 70 0 1 {name=p2 sig_type=std_logic lab=V2}
C {launcher.sym} 430 -80 0 0 {name=h5
descr="load waves"
tclcommand="xschem raw_read $netlist_dir/tb_stdp_min.raw tran"
}
