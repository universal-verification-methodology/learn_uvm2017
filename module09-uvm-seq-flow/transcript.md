# Module 09 — Sequence → driver

**Module id:** module09-uvm-seq-flow  
**Lab:** uvm-seq-flow  
**Tracks:** A · B

## Slide 1 — Sequence to driver

A sequence describes what to send—it builds sequence items and hands them to a sequencer. The driver pulls those items and turns them into pin activity on the virtual interface. The path is sequence, then sequencer, then driver, then vif, then DUT. This module walks that handoff step by step. We will step through it in the browser lab, then read the same flow in offline notes.

## Slide 2 — Items, start and finish, get and done

The seq item is the transaction object—the currency between sequence and driver. In the sequence body you create an item, call start item, fill or randomize fields, then finish item—that pushes the item toward the sequencer. The driver does not push; it pulls with get next item on its seq item port, drives the protocol on the vif, then calls item done so the sequencer can move on. Sequences never wiggle pins directly—that is the driver’s job. Multiple sequences can share one sequencer; arbitration decides who goes next.

## Slide 3 — Browser lab

![Sequence flow lab starter](assets/lab-starter.png)

In the browser lab track, open the sequence flow lab. The starter places a UART byte item at the sequencer—data ready, waiting for the driver. Click Step to move the item to the driver, then to the vif, then to the DUT. Watch the code panel for start item, get next item, and item done. Try Run to DUT to see the full path in one go. Load the at-sequence preset to see where the item is born. Work a few challenges, then Check.

## Slide 4 — Real UVM literacy

![Real shell — sequence flow sketch](assets/real-shell.png)

In the real UVM track, open this module’s flow sketch—it lists the sequence body and driver task in plain language. Trace one transaction from create through finish item on the sequence side, then get next item through item done on the driver side. If the legacy offline course is checked out, grep for start item or get next item in a module eight example—you will see the same pull model in SystemVerilog. TLM ports from the last module are what make this handoff possible.

## Slide 5 — Pitfalls to watch

Do not drive pins from the sequence—that bypasses the driver and breaks reuse. Do not forget item done after get next item or the sequencer stalls waiting for you. Do not assume finish item means the DUT saw it yet—the driver still has to run. And remember: the browser lab steps through stages for literacy; real UVM runs the driver task in parallel with sequences started from the test.

## Slide 6 — Your turn

Complete the checklist for at least one track—preferably both. In the browser, step from sequencer to DUT and name each stage. On real UVM, sketch the five-stage path with one example transaction. When you are ready, take the short quiz, then continue to objections in the next module.
