***PHYSICAL DESIGN***

<img width="1576" height="877" alt="image" src="https://github.com/user-attachments/assets/d441284f-61d5-488c-86de-c9933a34d3bc" />
<img width="1576" height="877" alt="image" src="https://github.com/user-attachments/assets/3f9b50c5-235c-4d91-83b8-f5faffe2489c" />




***SIMULATION RESULTS***
<img width="1781" height="776" alt="image" src="https://github.com/user-attachments/assets/4c3845ea-317a-496e-abf0-12f786be4224" />


***STEPS TO CONFIGURE***

1. Once done with the design, extract the spice file using the following commands given below, paste them all directly into the MAGIC terminal
#!/bin/bash
extract all 
ext2spice lvs
ext2spice hierarchy on 
ext2spice scale off
ext2spice format ngspice 
ext2spice cthresh infinite
ext2spice rthresh infinite 
ext2spice global off
ext2spice blackbox on 
ext2spice subcircuit top auto 
ext2spice renumber off
ext2spice -d



2. Two more files will be extracted in the folder where the design layout file was created.
3. Copy all these 3 file (.mag) (.spice) (.ext) into a newly created folder for clean usage.
5. Create another file in this new folder with name "tb_<design_name>.sp"


7. Write the testbench code in this tb file.
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
plot v(Y)
meas tran rise_time trig v(y) val=0.18 rise=1 targ v(y) val=1.62 rise=1
print rise_time
meas tran fall_time trig v(y) val=1.62 fall=1 targ v(y) val=0.18 fall=1
print fall_time
display
.endc
.end
 
8. Save the file.
9. Open the terminal from this folder with all 4 files in it.
10. run the command - ngspice <file_name.tb>
