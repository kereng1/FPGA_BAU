## RISC-V-based FPGA system project - a complete hardware-software system with a pipelined RISC-V CPU running on an FPGA board.

## Project Overview

- A 32-bit RISC-V pipelined CPU (RV32I)
- Memory interface and basic I/O (LEDs, switches, buttons)
- UART interface for PC communication
- VGA display engine for video output
- C test programs that run on the CPU

---

## commands to run the project

```bash
# Using Makefile
make run        # Compile and run simulation (CLI mode)
make run-gui    # Compile and run simulation (GUI mode)
make compile    # Compile only
make clean      # Remove generated files

# Or using build script
./build/run_workflow.sh run        # CLI mode
./build/run_workflow.sh run-gui    # GUI mode
./build/run_workflow.sh compile    # Compile only
./build/run_workflow.sh clean      # Clean generated files
```

## Project Components

- **32-bit RISC-V pipelined CPU** (RV32I, 5-stage pipeline)
- **Memory interface** and basic I/O (LEDs, switches, buttons)
- **UART interface** for PC communication
- **VGA display engine** for video output
- **C test programs** that run on the CPU

## Repository Structure

```
FPGA_BAU/
├── source/          # RTL source files
├── verif/           # Testbenches
├── software/        # C test programs
├── build/           # Build scripts
└── target/          # Generated files (logs, waves, etc.)
```

## Project Status

| Component        | Status        |
|-----------------|---------------|
| CPU Design       | 🟡 In progress|
| FPGA Deployment  | ⏳ Pending    |
| UART Interface   | ⏳ Pending    |
| VGA Engine       | ⏳ Pending    |

## Technologies

- **HDL**: SystemVerilog
- **ISA**: RISC-V RV32I
- **Tools**: ModelSim, Make
