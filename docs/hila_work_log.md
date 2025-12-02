### 23.11.2025
- Continued implementation of data memory (d_mem)
- Created issue 
- להוסיף איך מריצים מודול
vlog +incdir+source/common source/d_mem/d_mem_Word_Aligned_Block_RAM2.sv verif/d_mem_tb.sv
- vsim work.mem_tb

### 25.11.25
- Usking Keren questions about .f file and build directory
- Understanding the work on d_mem: I need to build 2 modules wrap_mem and d_mem

### 01/12/25
- Create wrap_mem
- Try running:
vlog source/d_mem/d_mem.sv
vlog source/d_mem/wrap_mem.sv
vlog verif/d_mem/mem_tb.sv
vlog verif/d_mem/d_mem_tb.sv
vsim work.mem_tb -c -do "run -all; quit" >target/logs/sim_run.log

vlog source/common/dff_macros.svh
vlog source/d_mem/d_mem.sv
vlog verif/d_mem/d_mem_tb.sv
vsim work.d_mem_tb -c -do "run -all; quit" >target/logs/sim_run1.log

vlog source/common/dff_macros.svh
vlog source/d_mem/d_mem.sv
vlog source/d_mem/wrap_mem.sv
vlog verif/d_mem/wrap_mem_tb.sv
vsim work.wrap_mem_tb -c -do "run -all; quit" >target/logs/sim_run3.log

