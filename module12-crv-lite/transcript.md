# Module 12 — CRV lite

**Module id:** module12-crv-lite  
**Lab:** crv-lite  
**Tracks:** A · B

## Slide 1 — CRV lite

Constrained random verification means you declare what can vary, write constraints for what is legal, then call randomize to draw samples. It is how modern UVM tests explore corners without hand-writing every transaction. This module is dice-level literacy—rand fields, a constraint block, and randomize success or fail. We will roll samples in the browser lab, then read the same pattern in offline notes.

## Slide 2 — Rand, constraints, and randomize

Mark fields with rand so the solver may assign them. A constraint block carves the legal region—inside a range, alignment rules, relationships between fields. Randomize returns one if a legal sample was found, zero if constraints conflict or the solver fails. Seed controls reproducibility—same seed, same stream when you replay. Conflict presets show overlapping hard constraints with an empty intersection—that is when randomize fails. Real CRV uses a full solver; this lab uses small discrete legal sets so you can see the idea.

## Slide 3 — Browser lab

![CRV lite lab starter](assets/lab-starter.png)

In the browser lab track, open the constraint random lite lab. The starter loads the range preset with seed forty-two—data inside zero to fifteen. Click randomize and watch the sample and histogram update. Try aligned for addresses divisible by four, pair for data less than length, then conflict to see randomize fail. Roll multiple times with the same seed to see reproducibility. Work a few challenges, then Check. The lab is literacy—not a production constraint solver.

## Slide 4 — Real UVM literacy

![Real shell — CRV sketch](assets/real-shell.png)

In the real UVM track, open this module’s CRV sketch—it shows rand, constraint, and randomize on a sequence item in plain language. Trace how a transaction gets legal field values before the driver sends it. If the in-course hello is checked out, grep for rand and constraint in a random utils example—you will see valid data and valid address blocks in SystemVerilog. Sequence items and testbench classes both use the same randomize pattern.

## Slide 5 — Pitfalls to watch

Do not treat randomize success as coverage done—you still need checks and covergroups. Do not write conflicting hard constraints and expect the solver to pick a side—it fails instead. Do not forget seed when debugging a flaky failure—you need replay. Soft constraints exist in full SV but this lab focuses on hard constraints first. And remember: the browser histogram is discrete; real solvers search huge spaces.

## Slide 6 — Your turn

Complete the checklist for at least one track—preferably both. In the browser, load conflict and explain why randomize returns zero. On real UVM, sketch one rand transaction with two constraints. When you are ready, take the short quiz, then continue to scoreboards in the next module.
