# Verilator + UVM 2017 hello (and-gate)

Minimal **in-course** Track A example for `learn_uvm2017` modules **23–24**.
Does **not** require editing the ignored legacy tree `learn_uvm2017_sv_verilator` (see [`../../LEGACY.md`](../../LEGACY.md)).

## Layout

```text
verilator-uvm-hello/
├── README.md
├── Makefile
├── dut/and_gate.v
└── tb/test_and_gate_uvm.sv
```

## Prerequisites

| Need | Notes |
|------|--------|
| Verilator | **5.036+** (5.042+ recommended) with UVM 2017 support |
| `make` + C++ compiler | Used by Verilator `--binary` |
| Accellera UVM 2017-1.0 | Extract tarball; set `UVM_HOME` to the **`src`** directory containing `uvm_pkg.sv` |

UVM is **not** vendored in this course (large Accellera tree). Download from Accellera, or for local monorepo convenience only:

```bash
# optional — Accellera tree under the ignored legacy course (if present)
export UVM_HOME="$PWD/../../learn_uvm2017_sv_verilator/tools/uvm-2017/1800.2-2017-1.0/src"
```

## Run

From this directory:

```bash
export UVM_HOME=/path/to/1800.2-2017-1.0/src   # adjust
make dry-run          # check paths without compiling
make run SIM=verilator
```

Expect a long first compile (UVM templates). Success prints UVM report lines for the directed and-gate vectors.

Clean:

```bash
make clean
```

## What this proves

You can host **Accellera UVM 2017** on **Verilator**: `uvm_pkg` + DUT + UVM TB → C++ binary → `+UVM_TESTNAME=AndGateTest`.

For Verilator **without** UVM (lint, C++ TB, traces), use [`../../learn_verilator/`](../../learn_verilator/).

## Course modules

- Module 22 — Verilator as a UVM host (limits)
- Module 23 — Makefile knobs (`UVM_HOME`, `SIM`, test name)
- Module 24 — Run this example end-to-end
