---
marp: true
title: Run a course UVM example
paginate: true
---

# Run a course UVM example

Browser sketches taught the ideas, factory, ConfigDB, agents, sequences

---

## Why leave the browser
- Sketches are concept literacy
- Offline runs force you through UVM home, include paths, plusargs like UVM test name
- The monorepo links the legacy SystemVerilog UVM Verilator tree for that practice surface
- One clean pass on a small test is enough for this module

---

## Offline workflow
- Here is the rhythm
- Open the legacy course next to this curriculum
- Point UVM home at the Accellera library under tools, or your system install
- Change into a small UVM test directory, module one and-gate is a good first target
- Run make with Verilator as the simulator and the test name set
- Watch compile finish, then the binary start with plus UVM test name

---

## Real UVM toolchain
![Real shell — offline UVM Makefile run](assets/real-shell.png)

---

## Real UVM toolchain — try these

```
# cd learn_uvm2017_sv_verilator — enter the legacy offline course
cd courses/learn_uvm2017_sv_verilator

# export UVM_HOME — Accellera UVM 2017 src under tools/
export UVM_HOME=$PWD/tools/uvm-2017/1800.2-2017-1.0/src

# ls module1/tests/uvm_tests — find Makefile and test_and_gate_uvm.sv
ls module1/tests/uvm_tests

# make run — compile with Verilator and execute the UVM test
cd module1/tests/uvm_tests
make run SIM=verilator TEST=test_and_gate_uvm

```

---

## Pitfalls to watch
- Do not forget UVM home, Make will error before Verilator starts
- Do not run make from the wrong directory, use the test folder that owns the Makefile
- Do not confuse browser sketch pass with simulator pass, offline needs a real binary
- Expect the first UVM Verilator compile to take several minutes
- And remember

---

## Your turn
- Complete the offline checklist
- Prefer module one and-gate unless your site policy points elsewhere
- When you are ready

