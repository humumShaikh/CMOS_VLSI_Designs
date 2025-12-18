v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 250 -220 250 -200 {lab=VDD}
N 250 -140 250 -120 {lab=GND}
N 80 -240 80 -150 {lab=Vout}
N 40 -270 40 -120 {lab=Vin}
N 80 -340 80 -300 {lab=VDD}
N 80 -90 80 -50 {lab=GND}
N -120 -220 -120 -200 {lab=Vin}
N -120 -140 -120 -120 {lab=GND}
N 10 -200 40 -200 {lab=Vin}
N 80 -200 110 -200 {lab=Vout}
C {vsource.sym} 250 -170 0 0 {name=V1 value=1.8 savecurrent=false}
C {gnd.sym} 250 -120 0 0 {name=l1 lab=GND}
C {vdd.sym} 250 -220 0 0 {name=l2 lab=VDD}
C {sky130_fd_pr/nfet3_01v8.sym} 60 -120 0 0 {name=M1
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
C {sky130_fd_pr/pfet3_01v8.sym} 60 -270 0 0 {name=M2
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
C {gnd.sym} 80 -50 0 0 {name=l3 lab=GND}
C {vdd.sym} 80 -340 0 0 {name=l4 lab=VDD}
C {vsource.sym} -120 -170 0 0 {name=V2 value=0 savecurrent=false}
C {gnd.sym} -120 -120 0 0 {name=l5 lab=GND}
C {opin.sym} -120 -220 3 0 {name=p1 lab=Vin}
C {ipin.sym} 10 -200 0 0 {name=p2 lab=Vin}
C {opin.sym} 110 -200 0 0 {name=p3 lab=Vout}
C {code.sym} 340 -370 0 0 {
name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false
      }
C {simulator_commands_shown.sym} 490 -360 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.control
dc V2 0 1.8 0.1
display
print al
plot Vout Vin
.endc
"}
