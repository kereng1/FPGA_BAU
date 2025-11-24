# FPGA_BAU - MIPS CPU Pipeline Project

A pipelined MIPS CPU implementation with modular RTL design and comprehensive testbenches.

## Quick Start

### Build System

The project includes automated build scripts for easy compilation and simulation.

**Using Makefile:**
```bash
make run        # Compile and run simulation (CLI mode)
make run-gui    # Compile and run simulation (GUI mode with waveforms)
make compile    # Compile only
make clean      # Clean generated files
```

**Using build script:**
```bash
./build/run_workflow.sh run        # Compile and run simulation (CLI mode)
./build/run_workflow.sh run-gui    # Compile and run simulation (GUI mode)
./build/run_workflow.sh compile    # Compile only
./build/run_workflow.sh clean      # Clean generated files
```

### Manual Commands

If you prefer manual control:
```bash
# Compile
vlog -f verif/alu/alu_list.f

# Run simulation (CLI)
vsim -c alu_tb -do "run -all; quit -f"

# Run simulation (GUI)
vsim alu_tb -do "add wave *; run -all"
```

## Project Structure

```
FPGA_BAU/
├── source/          # RTL source files
│   ├── alu/         # ALU module
│   └── common/      # Common packages and macros
├── verif/           # Testbenches
│   └── alu/         # ALU testbench
├── target/          # Generated files (VCD, etc.)
├── docs/            # Documentation
├── build/           # Build scripts
│   └── run_workflow.sh  # Main build script
├── Makefile         # Build automation
```

## Documentation

See `docs/components/` for detailed component documentation.
