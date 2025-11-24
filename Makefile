# Makefile for MIPS CPU Pipeline Project
# ModelSim Build System

# Project root directory
PROJECT_ROOT := $(shell pwd)

# ModelSim commands
VLOG := vlog
VSIM := vsim

# Testbench configuration
TB_DIR := verif/alu
TB_NAME := alu_tb
TB_LIST := $(TB_DIR)/alu_list.f

# Default target
.PHONY: all
all: compile

# Compile the design
.PHONY: compile
compile:
	@echo "========================================="
	@echo "Compiling design..."
	@echo "========================================="
	$(VLOG) -f $(TB_LIST)
	@echo "========================================="
	@echo "Compilation complete!"
	@echo "========================================="

# Run simulation in command-line mode
.PHONY: run
run: compile
	@echo "========================================="
	@echo "Running simulation (CLI mode)..."
	@echo "========================================="
	$(VSIM) -c $(TB_NAME) -do "run -all; quit -f"
	@echo "========================================="
	@echo "Simulation complete!"
	@echo "========================================="

# Run simulation in GUI mode with waveforms
.PHONY: run-gui
run-gui: compile
	@echo "========================================="
	@echo "Running simulation (GUI mode)..."
	@echo "========================================="
	$(VSIM) $(TB_NAME) -do "add wave *; run -all"

# Clean generated files
.PHONY: clean
clean:
	@echo "Cleaning generated files..."
	rm -rf work/
	rm -f transcript vsim.wlf
	rm -f *.vcd
	rm -rf target/
	@echo "Clean complete!"

# Clean everything including VCD files
.PHONY: clean-all
clean-all: clean
	@echo "Cleaning all simulation artifacts..."
	find . -name "*.vcd" -type f -delete
	find . -name "*.wlf" -type f -delete
	@echo "Clean-all complete!"

# Help target
.PHONY: help
help:
	@echo "MIPS CPU Pipeline - Build System"
	@echo "================================="
	@echo ""
	@echo "Available targets:"
	@echo "  make compile    - Compile the design only"
	@echo "  make run        - Compile and run simulation (CLI mode)"
	@echo "  make run-gui    - Compile and run simulation (GUI mode with waveforms)"
	@echo "  make clean      - Remove work directory and generated files"
	@echo "  make clean-all  - Remove all simulation artifacts including VCD files"
	@echo "  make help       - Show this help message"
	@echo ""
	@echo "Examples:"
	@echo "  make run        # Quick test run"
	@echo "  make run-gui    # View waveforms in ModelSim GUI"

