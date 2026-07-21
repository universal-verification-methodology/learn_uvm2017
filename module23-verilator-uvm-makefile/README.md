# Module 23: Verilator + UVM Makefile knobs

**Kind:** `offline` · Activity: Makefile literacy · **Track A only**

[← Verilator as a UVM host](../module22-verilator-uvm-host/README.md) · [Course README](../README.md) · [Run UVM on Verilator →](../module24-offline-uvm-verilator-run/README.md)

## Outcomes

After this module you can read and dry-run the **in-course** Verilator + UVM Makefile: `UVM_HOME`, `SIM=verilator`, and `+UVM_TESTNAME`.

## Practice surface (Track A only)

1. Open [EXAMPLES.md](EXAMPLES.md).
2. Open the in-course hello: [`../examples/verilator-uvm-hello/`](../examples/verilator-uvm-hello/).
3. Set `UVM_HOME` to Accellera UVM 2017 `src/` (see that README).
4. Run `make dry-run` and check off [CHECKLIST.md](CHECKLIST.md).

```bash
cd courses/learn_uvm2017/examples/verilator-uvm-hello
export UVM_HOME=/path/to/1800.2-2017-1.0/src # adjust
make dry-run
```

## Track B

None — optional refresher: `uvm-plusargs` / `sim-pipeline` browser labs.

## Media

| Artifact | Path |
|----------|------|
| Transcript | [transcript.md](transcript.md) |
| Outline | [outline.yaml](outline.yaml) |
| Slides | [slides.pptx](slides.pptx) · [slides.pdf](slides.pdf) |
| Audio | [audio/full.mp3](audio/full.mp3) |
| Video | [video.mp4](video.mp4) |
| Quiz | [quiz.json](quiz.json) |
