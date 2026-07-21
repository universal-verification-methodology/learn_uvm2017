# Module 00 — Welcome to UVM 2017 methodology

**Module id:** module00-intro  
**Lab:** none (intro)  
**Tracks:** A · B (course setup)

## Slide 1 — Welcome to UVM 2017 methodology

Verification at block and chip level needs structure—not only a DUT and a few directed tests. This short clip welcomes you to learn UVM twenty seventeen—the Accellera library for the IEEE UVM standard from twenty seventeen—and shows how the course is meant to be used.

## Slide 2 — Why layered testbenches matter

As designs grow, you need reusable agents, predictable phase order, and a scoreboard that scales. A flat procedural testbench can work for a tiny block, but it breaks when teams, protocols, and random stimulus pile on. UVM gives you a shared vocabulary for environments, sequences, configuration, and checking—so you can read someone else's bench without guessing their ad-hoc conventions.

## Slide 3 — Two tracks, one idea

Every lab module offers two ways to practice. The real UVM track uses your own simulator with the Accellera library—Verilator UVM flow or a commercial tool—so compile flags, plusargs, and Makefile runs feel like work you will keep. The browser lab track uses interactive sketches on the learning platform, so you can build phase, factory, and agent intuition without installing UVM. You may do either track, or both. The usual rhythm is browser first for the idea, then offline runs for fidelity.

## Slide 4 — Set up the real UVM track

Obtain a UVM library and a simulator that can run it. Open the in-course hello linked from this repo—it holds Makefile examples and SystemVerilog UVM tests. Confirm you can compile and run a small testbench once. Module twenty-two in this course is the dedicated offline run; you do not need a perfect farm on day one, only a path that works on your machine.

## Slide 5 — Set up the browser lab track

![UVM 2017 tools on the platform](assets/lab-tools-index.png)

From the monorepo, serve the platform folder with a simple local web server, then open the tools index in your browser. Scroll to the UVM twenty seventeen methodology section when you are curious—you will meet testbench anatomy and the layer diagram in the first lab modules. If you prefer, use the published tools site instead. Either way, open the testbench anatomy sketch once so you know the layout.

## Slide 6 — How to move through modules

For each module, read the README for the outcome, pick a track—or both—then work the checklist. Python pyuvm is a separate course; this path stays with SystemVerilog UVM twenty seventeen. When you finish this intro checklist, continue to the first lab module: testbench layers.
