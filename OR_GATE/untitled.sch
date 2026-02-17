v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 0 120 0 150 {lab=#net1}
N 0 120 170 120 {lab=#net1}
N 170 120 170 150 {lab=#net1}
N 40 100 40 120 {lab=#net1}
N 40 -20 40 40 {lab=#net2}
N 40 -110 40 -80 {lab=#net3}
N -0 210 -0 250 {lab=#net4}
N -0 250 170 250 {lab=#net4}
N 170 210 170 250 {lab=#net4}
N 100 180 130 180 {lab=#net5}
N -80 180 -40 180 {lab=#net6}
N -0 180 70 180 {lab=#net4}
N 70 180 70 250 {lab=#net4}
N 170 180 240 180 {lab=#net4}
N 240 180 240 250 {lab=#net4}
N 170 250 240 250 {lab=#net4}
N 90 250 90 290 {lab=#net4}
N 330 40 330 130 {lab=#net7}
N 270 160 290 160 {lab=#net1}
N 270 10 270 160 {lab=#net1}
N 270 10 290 10 {lab=#net1}
N 170 120 270 120 {lab=#net1}
N 330 190 330 250 {lab=#net4}
N 240 250 330 250 {lab=#net4}
N 330 160 400 160 {lab=#net4}
N 400 160 400 250 {lab=#net4}
N 330 250 400 250 {lab=#net4}
N 330 -110 330 -20 {lab=#net3}
N 40 -110 330 -110 {lab=#net3}
N 170 -140 170 -110 {lab=#net3}
N 330 10 400 10 {lab=#net3}
N 400 -110 400 10 {lab=#net3}
N 330 -110 400 -110 {lab=#net3}
N 40 -50 110 -50 {lab=#net3}
N 110 -110 110 -50 {lab=#net3}
N 40 70 110 70 {lab=#net3}
N 110 -50 110 70 {lab=#net3}
N 330 90 430 90 {lab=#net7}
C {sky130_fd_pr/pfet_01v8.sym} 20 -50 0 0 {name=M1
W=1
L=0.15
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 20 70 0 0 {name=M2
W=1
L=0.15
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} -20 180 0 0 {name=M3
W=1
L=0.15
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 150 180 0 0 {name=M4
W=1
L=0.15
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 310 10 0 0 {name=M5
W=1
L=0.15
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 310 160 0 0 {name=M6
W=1
L=0.15
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
