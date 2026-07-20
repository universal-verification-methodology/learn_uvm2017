# Module 09: Sequence → driver

**Kind:** `lab` · Primary lab: `uvm-seq-flow` · **Shipped**

[← TLM ports](../module08-uvm-tlm/README.md) · [Course README](../README.md) · [Objections →](../module10-uvm-objections/README.md)

## Outcomes

After this module you can explain and practice the ideas taught by **`uvm-seq-flow`**, as a browser sketch and/or offline UVM notes.

## Two tracks (pick one or both)

### Track A — Real UVM (hands-on)

1. Open [EXAMPLES.md](EXAMPLES.md) and read `examples/seq-flow-sketch/flow.txt`.
2. Trace sequence → sequencer → driver → vif → DUT for one transaction.
3. Optional: grep `start_item` / `get_next_item` in the legacy course tree.

### Track B — Browser lab (online)

1. Local: [http://127.0.0.1:8080/tools/uvm-seq-flow/index.html](http://127.0.0.1:8080/tools/uvm-seq-flow/index.html)
2. Live: [https://universal-verification-methodology.github.io/learning/tools/uvm-seq-flow/](https://universal-verification-methodology.github.io/learning/tools/uvm-seq-flow/)
3. Load the **starter example**, then work challenges.
4. Check off the Track B items in [CHECKLIST.md](CHECKLIST.md).

> Browser UVM tools are **concept literacy** — they do not replace Accellera UVM + a real simulator.

## Media

| Artifact | Path |
|----------|------|
| Transcript | [transcript.md](transcript.md) |
| Outline | [outline.yaml](outline.yaml) |
| Slides | [slides.pptx](slides.pptx) · [slides.pdf](slides.pdf) |
| Audio | [audio/full.mp3](audio/full.mp3) |
| Video | [video.mp4](video.mp4) |
| Quiz | [quiz.json](quiz.json) |
| Track A demo | [assets/_demo_m09.sh](assets/_demo_m09.sh) |
| Lab snapshot | [assets/lab-starter.png](assets/lab-starter.png) |
| Shell capture | [assets/real-shell.png](assets/real-shell.png) |

## Files

```
module09-uvm-seq-flow/
├── README.md
├── CHECKLIST.md
├── EXAMPLES.md
├── examples/seq-flow-sketch/
└── assets/
```
