# Module 22 examples — Run a course UVM example

Track A only (offline toolchain). No browser lab.

## Prompts

1. Read `examples/offline-sketch/offline.txt` and restate the minimal flow: UVM_HOME → `make run`.
2. Open [`../learn_uvm2017_sv_verilator/`](../learn_uvm2017_sv_verilator/) and locate `module1/tests/uvm_tests/`.
3. Build and run `test_and_gate_uvm` (or document why it failed on your machine).

## Commands (typical)

```bash
cd courses/learn_uvm2017_sv_verilator
export UVM_HOME=$PWD/tools/uvm-2017/1800.2-2017-1.0/src
cd module1/tests/uvm_tests
make run SIM=verilator TEST=test_and_gate_uvm
```

Alternate: `./scripts/module1.sh --uvm-tests` from the legacy course root.
