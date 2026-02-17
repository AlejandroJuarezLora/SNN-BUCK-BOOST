v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {Abraham, si ves esto, podrias Cambiar el modelo SPICE por el por transistor ALD1106
} -190 -210 0 0 0.4 0.4 {}
N 120 -60 120 -20 {lab=vd}
N 120 -60 170 -60 {lab=vd}
N 230 -60 440 -60 {lab=vc}
N 400 -60 400 -20 {lab=vc}
N 280 -60 280 -20 {lab=vc}
N 400 40 400 80 {lab=vss}
N 400 80 440 80 {lab=vss}
N -110 80 400 80 {lab=vss}
N 120 40 120 80 {lab=vss}
N 280 40 280 80 {lab=vss}
N 30 -60 120 -60 {lab=vd}
N -110 -60 -30 -60 {lab=vin}
N -110 -60 -110 -20 {lab=vin}
N 210 80 210 120 {lab=vss}
N 120 -120 120 -60 {lab=vd}
N 280 -120 280 -60 {lab=vc}
N -0 -20 0 -0 {lab=vg}
C {nmos.sym} 0 -40 3 0 {name=M1 model=M2N7002 device=2N7002 footprint=SOT23 m=1}
C {diode.sym} 120 10 2 0 {name=D1 model=D1N914 area=1}
C {ind.sym} 200 -60 3 0 {name=L1
m=1
value=50u
footprint=1206
device=inductor}
C {capa.sym} 280 10 0 0 {name=C1
m=1
value=220u
footprint=1206
device="ceramic capacitor"}
C {res.sym} 400 10 0 0 {name=R1
value=10
footprint=1206
device=resistor
m=1}
C {iopin.sym} 210 120 0 0 {name=p1 lab=vss}
C {iopin.sym} 120 -120 0 0 {name=p2 lab=vd}
C {iopin.sym} 280 -120 0 0 {name=p3 lab=vc}
C {iopin.sym} -110 -20 0 0 {name=p5 lab=vin}
C {iopin.sym} 0 0 0 0 {name=p4 lab=vg}
