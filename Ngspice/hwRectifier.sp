.title Half Wave Rectifier

.model D1N4007 D (IS=2.52n RS=0.568 N=1.752 CJO=4p)

V1 Vin Gnd SIN(0 230 50 0 0 0)
D1 Vin Vout D1N4007
R1 Vout Gnd 10k

.control
op
tran 10u 100m
gnuplot gp vin vout
.endc

.end
