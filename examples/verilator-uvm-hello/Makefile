# Minimal Accellera UVM 2017 + Verilator hello (and-gate)
#
# Prerequisites:
#   - Verilator 5.036+ (5.042+ recommended) on PATH
#   - make + C++ toolchain
#   - Accellera UVM 2017-1.0 source tree → set UVM_HOME to its src/ dir
#
# Example (after extracting the Accellera tarball):
#   export UVM_HOME=/path/to/1800.2-2017-1.0/src
#   make run SIM=verilator
#
# Optional monorepo convenience (archive fidelity only — not required):
#   export UVM_HOME=$PWD/../../learn_uvm2017_sv_verilator/tools/uvm-2017/1800.2-2017-1.0/src

SIM ?= verilator
TEST ?= test_and_gate_uvm
TOPLEVEL ?= $(TEST)
# UVM test class registered inside tb/test_and_gate_uvm.sv
UVM_TESTNAME ?= AndGateTest

ifeq ($(UVM_HOME),)
  $(error UVM_HOME is not set. Point it at Accellera UVM 2017 …/src (see README.md))
endif

UVM_SRC_DIR = $(if $(wildcard $(UVM_HOME)/src/uvm_pkg.sv),$(UVM_HOME)/src,$(UVM_HOME))
INCLUDES = -I$(UVM_SRC_DIR) +incdir+$(UVM_SRC_DIR) +define+UVM_NO_DPI

VERILATOR_FLAGS = -sv --timing --trace -Wno-fatal -Wno-TIMESCALEMOD -Wno-WIDTHTRUNC

DUT_SRC = dut/and_gate.v
TEST_SRC = tb/$(TEST).sv

.PHONY: compile run clean dry-run

ifeq ($(SIM),verilator)
compile:
	@echo "Compiling $(TEST) with Verilator + UVM from $(UVM_SRC_DIR)"
	verilator $(VERILATOR_FLAGS) $(INCLUDES) \
		--binary \
		$(UVM_SRC_DIR)/uvm_pkg.sv \
		$(DUT_SRC) $(TEST_SRC) \
		--top-module $(TOPLEVEL)
	@echo "Building obj_dir (first UVM compile can take several minutes)…"
	$(MAKE) -j$(shell nproc 2>/dev/null || echo 8) -C obj_dir -f V$(TOPLEVEL).mk VM_PARALLEL_BUILDS=1

run: compile
	@echo "Running $(TOPLEVEL) +UVM_TESTNAME=$(UVM_TESTNAME)"
	./obj_dir/V$(TOPLEVEL) +UVM_TESTNAME=$(UVM_TESTNAME)

dry-run:
	@echo "Would compile with:"
	@echo "  UVM_HOME=$(UVM_HOME)"
	@echo "  UVM_SRC_DIR=$(UVM_SRC_DIR)"
	@echo "  DUT=$(DUT_SRC) TB=$(TEST_SRC) TOP=$(TOPLEVEL)"
	@echo "  run: ./obj_dir/V$(TOPLEVEL) +UVM_TESTNAME=$(UVM_TESTNAME)"
	@test -f $(UVM_SRC_DIR)/uvm_pkg.sv || (echo "ERROR: missing $(UVM_SRC_DIR)/uvm_pkg.sv" && exit 1)
	@test -f $(DUT_SRC) || (echo "ERROR: missing $(DUT_SRC)" && exit 1)
	@test -f $(TEST_SRC) || (echo "ERROR: missing $(TEST_SRC)" && exit 1)
	@echo "dry-run OK (sources found)"

clean:
	rm -rf obj_dir
	rm -f *.vcd *.log
endif
