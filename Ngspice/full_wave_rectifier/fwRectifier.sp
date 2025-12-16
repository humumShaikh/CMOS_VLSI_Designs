.title Full Wave Rectifier

.model D1N4007 D(IS=2.52n RS=0.568 N=1.752 CJO=4p)

V1 Vin Gnd SIN(0 230 50 0 0 0)

D1 Vb Vin D1N4007
D2 Vin Va D1N4007
D3 Gnd Va D1N4007
D4 Vb Gnd D1N4007
Rl Va Vb 10k
*Cl Va Vb 480u

.control 
op
tran 10u 100m
echo "Hello World"
gnuplot gp vin va-vb
shell clear
.endc
.end
