# Two learning tracks

## Track A — Real UVM

Practice with Accellera UVM + Verilator (or commercial).

- Start from [`../learn_uvm2017_sv_verilator/`](../learn_uvm2017_sv_verilator/) until this course owns its own example trees
- Self-check: `./scripts/module.sh NN --check`
- Module 22 is the dedicated offline run

Use this track for **fidelity**.

## Track B — Browser lab

Concept sketches on the learning platform (no Accellera UVM in-tab).

- Local tools: http://127.0.0.1:8080/tools/
- Live: https://universal-verification-methodology.github.io/learning/tools/
- Shipped today: `tb-anatomy`, `tb-vs-uvm-map`, `sv-class-sketch` (SV OOP literacy), `crv-lite`, `sva-timeline`, `vif-wiring` (and any UVM sketches as they land)
- Most UVM sketch ids remain **Planned** — use Track A until they ship

## Recommended path

1. Intro + shipped `tb-anatomy`
2. Track A notes for planned sketch modules
3. Module 22 offline Makefile run
4. Return to browser sketches as they ship
