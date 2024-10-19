# DLX BASIC VERSION
In this repo you can find a Documented design of a simple microprocessor architecture that implements some MIPS instructions. 
The repo is structured this way: 
- `src/`: Contains the source code for the microprocessor.
    - `test/`: Custom assembly files and test cases. 
     - `TESTBENCHES/`: VHDL testbenches. 
- `sim/`: Includes simulation scripts.  
- `syn/`: Holds synthesis scripts and related files.
- `doc/`: Documentation and design specifications.

# SIMULATION
There is a script to compile the whole project, just open QuestaSim on the folder Sim and type "make" in the terminal.
There is a custom assembly file in the outer part of src folder.
To simulate the Whole circuit use DLX_TB_v2.vhd or DLX_TB_v2_g.vhd since they are the same but using two different test.asm.mem
The testbenches are not compiled by the script.


# SYNTHESIS

In this part there is written a script called DLX_t.scr in the folder /syn/sim but unfortunately it is not able to analyze the files in 000-globals folder.
If this happens, analyze them manually.

# PHYSICAL DESIGN

To generate the initial files to  part there is a script called DLX_innovus_t.scr in the folder /syn/sim
Also in this folder there is the results of the place and route done by us.
The finished design is saved as DLX_finished.dat
To make sure to not lose anything, we used the bash command "script" to record what was done in the terminal and it is saved in session.log