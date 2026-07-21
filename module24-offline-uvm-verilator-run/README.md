# Module 24: Run UVM on Verilator

**Kind:** `offline` · Activity: Verilator + Accellera UVM 2017 run · **Track A only**

[← Verilator + UVM Makefile knobs](../module23-verilator-uvm-makefile/README.md) · [Course README](../README.md) · [UVM complete →](../module25-wrap/README.md)

## Outcomes

After this module you can **build and run** a small Accellera UVM test with **Verilator** using the **in-course** hello example.

## Practice surface (Track A only)

1. Complete module 23 first (`make dry-run`).
2. Open [EXAMPLES.md](EXAMPLES.md).
3. From [`../examples/verilator-uvm-hello/`](../examples/verilator-uvm-hello/):

```bash
cd courses/learn_uvm2017/examples/verilator-uvm-hello
export UVM_HOME=/path/to/1800.2-2017-1.0/src # adjust
make run SIM=verilator
```

4. Capture command line and UVM pass/fail; check off [CHECKLIST.md](CHECKLIST.md).

First cold compile can take several minutes (UVM templates). That is normal.

## Track B

None — browser sketches are literacy only.

## Media

| Artifact | Path |
|----------|------|
| Transcript | [transcript.md](transcript.md) |
| Outline | [outline.yaml](outline.yaml) |
| Slides | [slides.pptx](slides.pptx) · [slides.pdf](slides.pdf) |
| Audio | [audio/full.mp3](audio/full.mp3) |
| Video | [video.mp4](video.mp4) |
| Quiz | [quiz.json](quiz.json) |
| Demo script | [assets/_demo_m24.sh](assets/_demo_m24.sh) |
