# Module 03 — TB anatomy refresh

**Module id:** module03-tb-anatomy  
**Lab:** tb-anatomy  
**Tracks:** A · B

## Slide 1 — TB anatomy refresh

Before UVM classes and phases, every verification engineer meets the same classic picture: a testbench module wraps a DUT, drives inputs, watches outputs, and ends the run. This module refreshes that anatomy—what is design under test versus testbench, which signals are reg versus wire, and where display and finish live. We will use the browser lab for the interactive diagram, then read the same structure in a real dot-v file.

## Slide 2 — DUT, tb, reg, wire, initial

The DUT is synthesizable RTL—the block you are verifying. The testbench module is simulation-only: it instantiates the DUT, holds stimulus variables, and runs checks. Stimulus inputs are typically reg because the testbench assigns them in an initial or always block. Outputs you observe are wire or logic nets driven by the DUT—do not drive those from the testbench. An initial block advances time with delays, prints with display, and stops with finish. That five-part split—tb shell, stimulus, observe net, DUT instance, procedural block—is the foundation UVM later replaces with agents and interfaces, but the jobs stay the same.

## Slide 3 — Browser lab

![TB anatomy lab starter](assets/lab-starter.png)

In the browser lab track, open the testbench anatomy lab. You will see clickable regions for the testbench module, stimulus registers, the observe wire, the DUT instance, and the procedural initial block. Load the classic AND-two starter and step through the timeline—watch how register a and b change while wire y follows the DUT output. Click each part to read its role; use the signal list to see reg versus wire. Work a few challenges, then Check. This lab refreshes classic SystemVerilog testbench shape before UVM classes enter the picture.

## Slide 4 — Real testbench file

![Real shell — and2 testbench](assets/real-shell.png)

In the real track, open this module’s examples folder and read the tiny AND-two testbench. Find the DUT module, the testbench module, reg a and b, wire y, the instance connection, and the initial block with display and finish. If Icarus is on your path, run a syntax-only compile to confirm the file parses; if not, tracing the regions by eye is still valid practice. This is the same anatomy the browser lab labels—now in code you can keep.

## Slide 5 — Pitfalls to watch

Do not drive a wire the DUT also drives—that creates a contention error. Do not put synthesizable checks only in the testbench and forget what the RTL actually does. Do not skip finish in long runs unless you know the simulator will stop another way—the lab’s no-finish preset shows why. And remember: mastering classic tb anatomy makes UVM’s driver, monitor, and virtual interface mapping much easier—you are not learning two unrelated worlds.

## Slide 6 — Your turn

Complete the checklist for at least one track—preferably both. In the browser, step the timeline and finish a few challenges. On real SystemVerilog, read or edit the AND-two example and name each anatomical part aloud. When you are ready, take the short quiz, then continue to UVM phases in the next module.
