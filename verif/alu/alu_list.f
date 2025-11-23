# This It tells your simulator (ModelSim / VCS...) which files to compile,
# and where to look for include directories.

# where to look for "include" directories
+incdir+source/common
+incdir+source/alu

# Source files - this is the list of files to compile
source/common/pkg.sv
source/alu/alu.sv
verif/alu/tb_alu.sv