# Module 00: Welcome to UVM

**Kind:** `intro` · Dual-track course welcome

← Start · [Course README](../README.md) · [TB layers →](../module01-tb-layers/README.md)

## What this course is

**learn_uvm2017** teaches **UVM methodology literacy** plus offline practice:

| Track | Where you practice | Best for |
|-------|--------------------|----------|
| **A — Real UVM** | Local UVM + Verilator (or commercial) | Muscle memory, Makefile runs you keep |
| **B — Browser lab** | Concept sketches on the learning platform | Layer / phase / factory intuition (many still planned) |

Prereq: **learn_systemverilog** + TB comfort. Legacy offline path: [`../learn_uvm2017_sv_verilator/`](../learn_uvm2017_sv_verilator/).

Browser labs are **sketches** — they do not run Accellera UVM. Full fidelity is Track A / module 22.

## Setup (Track A)

1. Install / obtain a UVM library and a simulator that can run it (Verilator UVM flow or commercial).
2. Open legacy examples under [`../learn_uvm2017_sv_verilator/`](../learn_uvm2017_sv_verilator/) until this course grows its own trees.
3. Confirm `make` (or course scripts) can compile a small TB.

## Setup (Track B)

1. Serve the platform: `python -m http.server 8080 --directory platform` (from monorepo root).
2. Open http://127.0.0.1:8080/tools/index.html — start with shipped [`tb-anatomy`](http://127.0.0.1:8080/tools/tb-anatomy/index.html).
3. Planned UVM sketches show Coming soon; use Track A / README notes until they ship.

## How to move through modules

1. Read the module **README** (outcomes).
2. Prefer Track A when a browser lab is still planned.
3. Check off **CHECKLIST.md**.
4. Optional: skim `outline.yaml` / `transcript.md` for upcoming slides & clips.

## Media (planned)

| Artifact | Path |
|----------|------|
| Outline | [outline.yaml](outline.yaml) |
| Transcript stub | [transcript.md](transcript.md) |
| Slides / video | generate later with **module-slides** |

## Next

→ [Module 01: TB layers](../module01-tb-layers/README.md)
