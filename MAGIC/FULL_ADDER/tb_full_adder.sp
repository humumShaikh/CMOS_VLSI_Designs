* tb_magic_inv.sp
.lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.include full_adder.spice
Xinv Vss Vdd C B A SUM CARRY full_adder 
Vdd Vdd Vss 1.8
Vgnd Vss 0 0
Vin1 A Vss DC 0 pulse(0 1.8 10n 100p 100p 10n 20n)
Vin2 B Vss DC 0 pulse(0 1.8 20n 100p 100p 20n 40n)
Vin3 C Vss DC 0 pulse(0 1.8 30n 100p 100p 30n 60n)
* V1 V2 TD TR TF PW PER
.tran 10p 60n
.control
run
plot v(A) 
plot v(B) 
plot v(C)
plot v(SUM)
plot v(CARRY)
.endc
.end
