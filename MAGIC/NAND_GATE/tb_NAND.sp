* tb_magic_inv.sp
.lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.include NAND.spice
Xinv Vdd Vss A B Y NAND 
Vdd Vdd Vss 1.8
Vgnd Vss 0 0
Vin1 A Vss DC 0 pulse(0 1.8 5n 100p 100p 10n 20n)
Vin2 B Vss DC 0 pulse(0 1.8 5n 100p 100p 20n 40n)
* V1 V2 TD TR TF PW PER
.tran 10p 40n
.control
run
plot v(A) 
plot v(B) 
plot v(Y)+2
.endc
.end
