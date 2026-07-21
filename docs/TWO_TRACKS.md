# Two learning tracks

## Track A — Real UVM (often on Verilator)

Practice with Accellera UVM 2017 + a real simulator.

- **Methodology** (modules 00–21): browser sketches + paper notes
- **Verilator host path** (modules 22–24): limits → Makefile knobs → run a small UVM test with `SIM=verilator`
- Fidelity examples live under [`../examples/verilator-uvm-hello/`](../examples/verilator-uvm-hello/); Accellera UVM via `UVM_HOME`

Use this track for **fidelity**.

## Track B — Browser lab

Concept sketches on the learning platform (no Accellera UVM in-tab).

- Local tools: http://127.0.0.1:8080/tools/
- Live: https://universal-verification-methodology.github.io/learning/tools/
- Shipped: full UVM 2017 sketch shelf (`tb-layers` through `vip-anatomy`) plus TB literacy tools

Modules **22–24** are Track A / offline — use Track B only as a concept refresher (e.g. `sim-pipeline`, `uvm-plusargs`).

## Recommended path

1. Intro through VIP anatomy (00–21) with Track B labs
2. Module 22 — Verilator as UVM host (what works / what does not)
3. Module 23 — Makefile / `UVM_HOME` / `SIM=verilator` knobs
4. Module 24 — run one small UVM test on Verilator
5. Wrap → planning / VIP / pyuvm
