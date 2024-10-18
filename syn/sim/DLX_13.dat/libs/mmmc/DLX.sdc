###################################################################

# Created by write_sdc on Tue Oct 15 22:50:40 2024

###################################################################
set sdc_version 2.1

set_units -time ns -resistance MOhm -capacitance fF -voltage V -current mA
create_clock [get_ports Clk]  -period 0.4  -waveform {0 0.2}
set_max_delay 0.4  -from [list [get_ports Clk] [get_ports Rst] [get_ports {DRAM_LMD[31]}]        \
[get_ports {DRAM_LMD[30]}] [get_ports {DRAM_LMD[29]}] [get_ports               \
{DRAM_LMD[28]}] [get_ports {DRAM_LMD[27]}] [get_ports {DRAM_LMD[26]}]          \
[get_ports {DRAM_LMD[25]}] [get_ports {DRAM_LMD[24]}] [get_ports               \
{DRAM_LMD[23]}] [get_ports {DRAM_LMD[22]}] [get_ports {DRAM_LMD[21]}]          \
[get_ports {DRAM_LMD[20]}] [get_ports {DRAM_LMD[19]}] [get_ports               \
{DRAM_LMD[18]}] [get_ports {DRAM_LMD[17]}] [get_ports {DRAM_LMD[16]}]          \
[get_ports {DRAM_LMD[15]}] [get_ports {DRAM_LMD[14]}] [get_ports               \
{DRAM_LMD[13]}] [get_ports {DRAM_LMD[12]}] [get_ports {DRAM_LMD[11]}]          \
[get_ports {DRAM_LMD[10]}] [get_ports {DRAM_LMD[9]}] [get_ports {DRAM_LMD[8]}] \
[get_ports {DRAM_LMD[7]}] [get_ports {DRAM_LMD[6]}] [get_ports {DRAM_LMD[5]}]  \
[get_ports {DRAM_LMD[4]}] [get_ports {DRAM_LMD[3]}] [get_ports {DRAM_LMD[2]}]  \
[get_ports {DRAM_LMD[1]}] [get_ports {DRAM_LMD[0]}] [get_ports {IRAM_IR[31]}]  \
[get_ports {IRAM_IR[30]}] [get_ports {IRAM_IR[29]}] [get_ports {IRAM_IR[28]}]  \
[get_ports {IRAM_IR[27]}] [get_ports {IRAM_IR[26]}] [get_ports {IRAM_IR[25]}]  \
[get_ports {IRAM_IR[24]}] [get_ports {IRAM_IR[23]}] [get_ports {IRAM_IR[22]}]  \
[get_ports {IRAM_IR[21]}] [get_ports {IRAM_IR[20]}] [get_ports {IRAM_IR[19]}]  \
[get_ports {IRAM_IR[18]}] [get_ports {IRAM_IR[17]}] [get_ports {IRAM_IR[16]}]  \
[get_ports {IRAM_IR[15]}] [get_ports {IRAM_IR[14]}] [get_ports {IRAM_IR[13]}]  \
[get_ports {IRAM_IR[12]}] [get_ports {IRAM_IR[11]}] [get_ports {IRAM_IR[10]}]  \
[get_ports {IRAM_IR[9]}] [get_ports {IRAM_IR[8]}] [get_ports {IRAM_IR[7]}]     \
[get_ports {IRAM_IR[6]}] [get_ports {IRAM_IR[5]}] [get_ports {IRAM_IR[4]}]     \
[get_ports {IRAM_IR[3]}] [get_ports {IRAM_IR[2]}] [get_ports {IRAM_IR[1]}]     \
[get_ports {IRAM_IR[0]}]]  -to [list [get_ports {DRAM_address[31]}] [get_ports {DRAM_address[30]}]       \
[get_ports {DRAM_address[29]}] [get_ports {DRAM_address[28]}] [get_ports       \
{DRAM_address[27]}] [get_ports {DRAM_address[26]}] [get_ports                  \
{DRAM_address[25]}] [get_ports {DRAM_address[24]}] [get_ports                  \
{DRAM_address[23]}] [get_ports {DRAM_address[22]}] [get_ports                  \
{DRAM_address[21]}] [get_ports {DRAM_address[20]}] [get_ports                  \
{DRAM_address[19]}] [get_ports {DRAM_address[18]}] [get_ports                  \
{DRAM_address[17]}] [get_ports {DRAM_address[16]}] [get_ports                  \
{DRAM_address[15]}] [get_ports {DRAM_address[14]}] [get_ports                  \
{DRAM_address[13]}] [get_ports {DRAM_address[12]}] [get_ports                  \
{DRAM_address[11]}] [get_ports {DRAM_address[10]}] [get_ports                  \
{DRAM_address[9]}] [get_ports {DRAM_address[8]}] [get_ports {DRAM_address[7]}] \
[get_ports {DRAM_address[6]}] [get_ports {DRAM_address[5]}] [get_ports         \
{DRAM_address[4]}] [get_ports {DRAM_address[3]}] [get_ports {DRAM_address[2]}] \
[get_ports {DRAM_address[1]}] [get_ports {DRAM_address[0]}] [get_ports         \
{DRAM_data_in[31]}] [get_ports {DRAM_data_in[30]}] [get_ports                  \
{DRAM_data_in[29]}] [get_ports {DRAM_data_in[28]}] [get_ports                  \
{DRAM_data_in[27]}] [get_ports {DRAM_data_in[26]}] [get_ports                  \
{DRAM_data_in[25]}] [get_ports {DRAM_data_in[24]}] [get_ports                  \
{DRAM_data_in[23]}] [get_ports {DRAM_data_in[22]}] [get_ports                  \
{DRAM_data_in[21]}] [get_ports {DRAM_data_in[20]}] [get_ports                  \
{DRAM_data_in[19]}] [get_ports {DRAM_data_in[18]}] [get_ports                  \
{DRAM_data_in[17]}] [get_ports {DRAM_data_in[16]}] [get_ports                  \
{DRAM_data_in[15]}] [get_ports {DRAM_data_in[14]}] [get_ports                  \
{DRAM_data_in[13]}] [get_ports {DRAM_data_in[12]}] [get_ports                  \
{DRAM_data_in[11]}] [get_ports {DRAM_data_in[10]}] [get_ports                  \
{DRAM_data_in[9]}] [get_ports {DRAM_data_in[8]}] [get_ports {DRAM_data_in[7]}] \
[get_ports {DRAM_data_in[6]}] [get_ports {DRAM_data_in[5]}] [get_ports         \
{DRAM_data_in[4]}] [get_ports {DRAM_data_in[3]}] [get_ports {DRAM_data_in[2]}] \
[get_ports {DRAM_data_in[1]}] [get_ports {DRAM_data_in[0]}] [get_ports         \
{IRAM_PC[31]}] [get_ports {IRAM_PC[30]}] [get_ports {IRAM_PC[29]}] [get_ports  \
{IRAM_PC[28]}] [get_ports {IRAM_PC[27]}] [get_ports {IRAM_PC[26]}] [get_ports  \
{IRAM_PC[25]}] [get_ports {IRAM_PC[24]}] [get_ports {IRAM_PC[23]}] [get_ports  \
{IRAM_PC[22]}] [get_ports {IRAM_PC[21]}] [get_ports {IRAM_PC[20]}] [get_ports  \
{IRAM_PC[19]}] [get_ports {IRAM_PC[18]}] [get_ports {IRAM_PC[17]}] [get_ports  \
{IRAM_PC[16]}] [get_ports {IRAM_PC[15]}] [get_ports {IRAM_PC[14]}] [get_ports  \
{IRAM_PC[13]}] [get_ports {IRAM_PC[12]}] [get_ports {IRAM_PC[11]}] [get_ports  \
{IRAM_PC[10]}] [get_ports {IRAM_PC[9]}] [get_ports {IRAM_PC[8]}] [get_ports    \
{IRAM_PC[7]}] [get_ports {IRAM_PC[6]}] [get_ports {IRAM_PC[5]}] [get_ports     \
{IRAM_PC[4]}] [get_ports {IRAM_PC[3]}] [get_ports {IRAM_PC[2]}] [get_ports     \
{IRAM_PC[1]}] [get_ports {IRAM_PC[0]}]]
