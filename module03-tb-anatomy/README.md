# Module 03: TB anatomy refresh

**Kind:** `lab` · Primary lab: `tb-anatomy` · **Shipped**

[← Basic TB vs UVM map](../module02-tb-vs-uvm-map/README.md) · [Course README](../README.md) · [UVM phases →](../module04-uvm-phases/README.md)

## Outcomes

After this module you can explain and practice the ideas taught by **`tb-anatomy`**, as a browser sketch and/or classic SystemVerilog testbench files.

## Two tracks (pick one or both)

### Track A — Real SystemVerilog TB (hands-on)

1. Open [EXAMPLES.md](EXAMPLES.md) and read `examples/and2-tb/and2_tb.v`.
2. Name each anatomical part: DUT, tb, stimulus reg, observe wire, initial.
3. Optional: `iverilog -t null examples/and2-tb/and2_tb.v`

### Track B — Browser lab (online)

1. Local: [http://127.0.0.1:8080/tools/tb-anatomy/index.html](http://127.0.0.1:8080/tools/tb-anatomy/index.html)
2. Live: [https://universal-verification-methodology.github.io/learning/tools/tb-anatomy/](https://universal-verification-methodology.github.io/learning/tools/tb-anatomy/)
3. Load the **starter example**, then work challenges.
4. Check off the Track B items in [CHECKLIST.md](CHECKLIST.md).

> Browser labs teach literacy — they do not replace running a real simulator when you are ready.

## Media

| Artifact | Path |
|----------|------|
| Transcript | [transcript.md](transcript.md) |
| Outline | [outline.yaml](outline.yaml) |
| Slides | [slides.pptx](slides.pptx) · [slides.pdf](slides.pdf) |
| Audio | [audio/full.mp3](audio/full.mp3) |
| Video | [video.mp4](video.mp4) |
| Quiz | [quiz.json](quiz.json) |
| Track A demo | [assets/_demo_m03.sh](assets/_demo_m03.sh) |
| Lab snapshot | [assets/lab-starter.png](assets/lab-starter.png) |
| Shell capture | [assets/real-shell.png](assets/real-shell.png) |

## Files

```
module03-tb-anatomy/
├── README.md
├── CHECKLIST.md
├── EXAMPLES.md
├── examples/and2-tb/
└── assets/
```
