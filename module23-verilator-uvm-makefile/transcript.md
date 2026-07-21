# Module 23 — Verilator + UVM Makefile knobs

**Module id:** module23-verilator-uvm-makefile
**Lab:** none (offline · Makefile literacy)
**Tracks:** A only

## Slide 1 — Makefile knobs for Verilator UVM

Module twenty-two named Verilator as a plausible UVM host. Module twenty-three maps the Makefile knobs on the **in-course** hello example: UVM home, include paths, simulator selection, and test name. You are not required to finish a full compile here—export UVM home, dry-run make, and confirm sources resolve before module twenty-four runs for real.

## Slide 2 — UVM_HOME and include paths

Accellera UVM lives outside your DUT tree. Point UVM home at the library **src** directory that contains `uvm_pkg.sv`. This course does not vendor the full Accellera tree—install the 2017-1.0 tarball yourself, or for local monorepo convenience only, point at an existing extract. If UVM home is unset or wrong, make fails early with missing uvm_pkg—not mysterious Verilator messages.

## Slide 3 — SIM, TEST, and UVM test name

The simulator knob selects the Verilator recipe. TEST names the SystemVerilog top file. At run time the binary needs plus UVM test name matching the registered test class—here AndGateTest. Read the in-course Makefile; the trio—simulator, build top, runtime test name—repeats on every project.

## Slide 4 — Read the Makefile flow

![Real shell — Makefile dry-run](assets/real-shell.png)

In the real UVM track, enter the in-course hello, export UVM home, list dut and tb, preview the Makefile, then dry-run so paths are checked without a long compile.

```bash
# cd in-course Verilator + UVM hello
cd courses/learn_uvm2017/examples/verilator-uvm-hello

# export UVM_HOME — Accellera UVM 2017 src (uvm_pkg.sv lives here)
export UVM_HOME=/path/to/1800.2-2017-1.0/src

# ls — confirm Makefile, dut/and_gate.v, tb/test_and_gate_uvm.sv
ls
ls dut tb

# make dry-run — verify UVM_HOME and sources without compiling
make dry-run
```

## Slide 5 — Common fail modes

Wrong or missing UVM home is the fastest failure. Running make from the wrong directory misses the Makefile. Missing Verilator on PATH fails at compile. Mismatch between top module and plus UVM test name yields no tests executed. First cold compiles take minutes—that is normal. Browser sketch success never substitutes for reading these Makefile errors offline.

## Slide 6 — Your turn

Complete the checklist: set UVM home, dry-run the in-course hello, and name one failure mode you now recognize. When you are ready, take the short quiz, then continue to module twenty-four for a full make run.
