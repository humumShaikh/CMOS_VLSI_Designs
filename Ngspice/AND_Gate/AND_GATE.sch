v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -130 -240 -130 -210 {lab=VDD}
N -130 -150 -130 -120 {lab=GND}
N 180 -180 180 -140 {lab=VDD}
N 180 -180 400 -180 {lab=VDD}
N 400 -180 400 -140 {lab=VDD}
N 180 -80 180 -40 {lab=#net1}
N 180 -40 400 -40 {lab=#net1}
N 400 -80 400 -40 {lab=#net1}
N 100 -110 140 -110 {lab=A}
N 320 -110 360 -110 {lab=B}
N 180 -40 180 0 {lab=#net1}
N 180 60 180 100 {lab=#net2}
N 180 160 180 200 {lab=GND}
N 180 200 400 200 {lab=GND}
N 100 30 140 30 {lab=A}
N 100 130 140 130 {lab=B}
N 280 -220 280 -180 {lab=VDD}
N 280 200 280 230 {lab=GND}
N 560 -80 560 -40 {lab=Y}
N 520 -110 520 -10 {lab=#net1}
N 400 -40 520 -40 {lab=#net1}
N 560 -180 560 -140 {lab=VDD}
N 400 -180 560 -180 {lab=VDD}
N 560 20 560 200 {lab=GND}
N 400 200 560 200 {lab=GND}
N 560 -60 700 -60 {lab=Y}
N -420 0 -420 30 {lab=A}
N -420 90 -420 120 {lab=GND}
N -200 0 -200 30 {lab=B}
N -200 90 -200 120 {lab=GND}
C {vsource.sym} -130 -180 0 0 {name=V1 value=1.8 savecurrent=false}
C {vdd.sym} -130 -240 0 0 {name=l1 lab=VDD}
C {gnd.sym} -130 -120 0 0 {name=l2 lab=GND}
C {sky130_fd_pr/pfet3_01v8.sym} 160 -110 0 0 {name=M1
W=1
L=0.15
body=VDD
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
C {sky130_fd_pr/pfet3_01v8.sym} 380 -110 0 0 {name=M2
W=1
L=0.15
body=VDD
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
C {sky130_fd_pr/nfet3_01v8.sym} 160 30 0 0 {name=M3
W=1
L=0.15
body=GND
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
C {sky130_fd_pr/nfet3_01v8.sym} 160 130 0 0 {name=M4
W=1
L=0.15
body=GND
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
C {vdd.sym} 280 -220 0 0 {name=l3 lab=VDD}
C {gnd.sym} 280 230 0 0 {name=l4 lab=GND}
C {sky130_fd_pr/pfet3_01v8.sym} 540 -110 0 0 {name=M5
W=1
L=0.15
body=VDD
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
C {sky130_fd_pr/nfet3_01v8.sym} 540 -10 0 0 {name=M6
W=1
L=0.15
body=GND
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
C {vsource.sym} -420 60 0 0 {name=V2 value="pulse(0 1.8 20n 1p 1p 20n 40n)" savecurrent=false}
C {gnd.sym} -420 120 0 0 {name=l6 lab=GND}
C {vsource.sym} -200 60 0 0 {name=V3 value="pulse(0 1.8 10n 1p 1p 10n 20n)" savecurrent=false}
C {gnd.sym} -200 120 0 0 {name=l8 lab=GND}
C {opin.sym} -420 0 3 0 {name=p1 lab=A}
C {opin.sym} -200 0 3 0 {name=p2 lab=B}
C {ipin.sym} 100 -110 0 0 {name=p3 lab=A}
C {ipin.sym} 100 30 0 0 {name=p4 lab=A}
C {ipin.sym} 100 130 0 0 {name=p5 lab=B}
C {ipin.sym} 320 -110 0 0 {name=p6 lab=B}
C {opin.sym} 700 -60 0 0 {name=p7 lab=Y}
C {code.sym} 840 -200 0 0 {
name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false
      }
C {simulator_commands_shown.sym} 990 -180 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.tran 1n 100n
.control
run
display

plot Y 
plot A
plot B
.endc
"}
