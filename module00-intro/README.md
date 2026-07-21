# Module 00: Welcome to UVM 2017 methodology

**Kind:** `intro` · Dual-track course welcome

← Start · [Course README](../README.md) · [TB layers →](../module01-tb-layers/README.md)

## What this course is

**learn_uvm2017** teaches **UVM 2017 (IEEE 1800.2) methodology literacy** plus offline practice:

| Track | Where you practice | Best for |
|-------|--------------------|----------|
| **A — Real UVM** | Local UVM + Verilator (or commercial) | Muscle memory, Makefile runs you keep |
| **B — Browser lab** | Concept sketches on the learning platform | Layer / phase / factory intuition |

Prereq: **learn_systemverilog** + TB comfort. Offline path: [`../examples/verilator-uvm-hello/`](../examples/verilator-uvm-hello/).

Browser labs are **sketches** — they do not run Accellera UVM. Full fidelity is Track A / module 22.

## Setup (Track A)

1. Install / obtain a UVM library and a simulator that can run it (Verilator UVM flow or commercial).
2. Open examples under [`../examples/verilator-uvm-hello/`](../examples/verilator-uvm-hello/) for Makefile / Verilator UVM runs (see module 22).
3. Confirm `make` (or course scripts) can compile a small TB.

## Setup (Track B)

1. Serve the platform: `python -m http.server 8080 --directory platform` (from monorepo root).
2. Open http://127.0.0.1:8080/tools/index.html — scroll to **UVM 2017 methodology** or start with [`tb-anatomy`](http://127.0.0.1:8080/tools/tb-anatomy/index.html).
3. Or use the live site: https://universal-verification-methodology.github.io/learning/tools/

## How to move through modules

1. Read the module **README** (outcomes).
2. Pick a track (or both).
3. Check off **CHECKLIST.md**.
4. Optional: skim `outline.yaml` / `transcript.md` for slides & clips.

## Media

| Artifact | Path |
|----------|------|
| Transcript | [transcript.md](transcript.md) |
| Outline | [outline.yaml](outline.yaml) |
| Slides | [slides.pptx](slides.pptx) · [slides.pdf](slides.pdf) |
| Audio | [audio/full.mp3](audio/full.mp3) |
| Video | [video.mp4](video.mp4) |
| Quiz | [quiz.json](quiz.json) |
| Tools snapshot | [assets/lab-tools-index.png](assets/lab-tools-index.png) |

## Next

→ [Module 01: TB layers](../module01-tb-layers/README.md)
