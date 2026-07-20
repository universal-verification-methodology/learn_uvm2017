# Module 22: Run a course UVM example

**Kind:** `offline` · Activity: course Makefile / Verilator UVM run · **Track A only**

[← VIP anatomy](../module21-vip-anatomy/README.md) · [Course README](../README.md) · [UVM complete →](../module23-wrap/README.md)

## Outcomes

After this module you can **build and run** a course UVM example offline (not in the browser).

## Practice surface (Track A only)

1. Open [EXAMPLES.md](EXAMPLES.md) and read `examples/offline-sketch/offline.txt`.
2. Open the legacy course: [`../learn_uvm2017_sv_verilator/`](../learn_uvm2017_sv_verilator/).
3. Set `UVM_HOME`, then `make run` on a small UVM test (module1 and-gate is a good first target).
4. Capture the command line and pass/fail in your notes; check off [CHECKLIST.md](CHECKLIST.md).

```bash
cd courses/learn_uvm2017_sv_verilator
export UVM_HOME=$PWD/tools/uvm-2017/1800.2-2017-1.0/src
cd module1/tests/uvm_tests
make run SIM=verilator TEST=test_and_gate_uvm
```

## Track B

None — browser sketches are literacy only. Use any shipped UVM tool if you need a concept refresher, then return here for a real compile.

## Media

| Artifact | Path |
|----------|------|
| Transcript | [transcript.md](transcript.md) |
| Outline | [outline.yaml](outline.yaml) |
| Slides | [slides.pptx](slides.pptx) · [slides.pdf](slides.pdf) |
| Audio | [audio/full.mp3](audio/full.mp3) |
| Video | [video.mp4](video.mp4) |
| Quiz | [quiz.json](quiz.json) |
| Track A demo | [assets/_demo_m22.sh](assets/_demo_m22.sh) |
| Shell capture | [assets/real-shell.png](assets/real-shell.png) |

## Files

```
module22-offline-uvm-example/
├── README.md
├── CHECKLIST.md
├── EXAMPLES.md
├── examples/offline-sketch/
└── assets/
```
