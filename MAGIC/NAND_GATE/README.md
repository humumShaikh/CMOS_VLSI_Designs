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
 
