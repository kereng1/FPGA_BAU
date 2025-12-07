
# Build System Overview

This update introduces a streamlined build workflow for the CPU project, including automated compilation, simulation, and logging.

## Key Features

### ✔ Unified Build Script (`build/run_workflow.sh`)

* One command to **compile**, **run**, or **open GUI**.
* Works for all components (alu, pc, rf, d_mem, etc.).
* Automatic log generation with timestamps.
* Works from any directory.

### ✔ Supported Actions

```bash

./build/run_workflow.sh <component> compile # Compile the design only
./build/run_workflow.sh <component_name> run # Compile and run simulation (CLI mode) 
./build/run_workflow.sh <component_name> run-gui # Compile and run simulation (ModelSim GUI mode) 
./build/run_workflow.sh <component_name> gui # Alias for run-gui 
./build/run_workflow.sh <component_name> clean # Remove generated files 
./build/run_workflow.sh help # Show help message
```

**Examples**

```bash
./build/run_workflow.sh alu run # Build and run ALU testbench
./build/run_workflow.sh pc run-gui # View ALU waveforms in GUI
./build/run_workflow.sh rf compile # Compile RF testbench only
```

### Running from Different Directories The build script automatically navigates to the 

project root internally. You can run it from any directory by providing the correct path to the script:
bash

# From project root

./build/run_workflow.sh alu run

# From subdirectories (provide relative or absolute path to script)
../../build/run_workflow.sh alu run
/root/FPGA_BAU/build/run_workflow.sh alu run


### ✔ Logging

* Logs stored under: `target/logs/`
* File format: `<component>_build_YYYYMMDD_HHMMSS.log`
* Contains full compilation + simulation output for debugging.

### ✔ Multi-Component Support

Each component must have:

* `verif/<component>/<component>_list.f`
* `verif/<component>/<component>_tb.sv`
* Testbench module named `<component>_tb`

### Current Components

* alu
* pc
* rf
* d_mem
  (adding new ones uses the same structure)

## Benefits

* Faster workflow (no manual `vlog`/`vsim`)
* Clean, consistent build structure
* Easy debugging with logs
* Extensible as the project grows
