v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -160 -380 -160 -300 {lab=out_put}
N -360 -340 -220 -340 {lab=in_put}
N -220 -410 -220 -340 {lab=in_put}
N -220 -410 -200 -410 {lab=in_put}
N -220 -340 -220 -270 {lab=in_put}
N -220 -270 -200 -270 {lab=in_put}
N -360 -280 -360 -200 {lab=GND}
N -160 -240 -160 -200 {lab=GND}
N 60 -520 60 -340 {lab=#net1}
N -160 -520 60 -520 {lab=#net1}
N -160 -520 -160 -440 {lab=#net1}
N 60 -280 60 -200 {lab=GND}
N -160 -340 -80 -340 {lab=out_put}
N -400 -340 -360 -340 {lab=in_put}
C {sky130_fd_pr/nfet3_01v8.sym} -180 -270 0 0 {name=M1
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
C {sky130_fd_pr/pfet3_01v8.sym} -180 -410 0 0 {name=M2
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
C {vsource.sym} -360 -310 0 0 {name=V1 value="pulse(0 1.8 0n 1n 1n 10n 20n)" savecurrent=false}
C {gnd.sym} -360 -200 0 0 {name=l1 lab=GND}
C {gnd.sym} -160 -200 0 0 {name=l2 lab=GND}
C {vsource.sym} 60 -310 0 0 {name=V2 value=1.8 savecurrent=false}
C {gnd.sym} 60 -200 0 0 {name=l3 lab=GND}
C {code.sym} 180 -490 0 0 {
name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false
      }
C {simulator_commands_shown.sym} 330 -460 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.control
tran 1n 100n
gnuplot gp out_put in_put
.endc
"}
C {opin.sym} -80 -340 0 0 {name=p1 lab=out_put}
C {ipin.sym} -400 -340 0 0 {name=p2 lab=in_put}
