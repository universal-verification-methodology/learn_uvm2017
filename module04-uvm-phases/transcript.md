# Module 04 — UVM phases

**Module id:** module04-uvm-phases  
**Lab:** uvm-phases  
**Tracks:** A · B

## Slide 1 — UVM phases

UVM does not run your whole testbench in one initial block. It walks a fixed phase schedule so construction, wiring, stimulus, and checking happen in a predictable order. This module is that timeline: build, connect, run, check, report—and why objections keep run alive. We will use the browser lab for the picture, then anchor the same schedule in notes you can read offline.

## Slide 2 — Build, connect, run, check, report

Build constructs the component tree—test creates env, env creates agents—typically top-down through the factory. Connect wires TLM ports and virtual interfaces, usually bottom-up after everything exists. Run is where time advances: sequences start, drivers wiggle pins, and objections tell UVM the test is not finished yet. When all objections drop, run ends and cleanup phases run. Check is where scoreboards and self-checks decide pass versus fail. Report prints summaries and error counts. Neighbor phases like end of elaboration or extract exist, but those five are the spine every UVM engineer memorizes first.

## Slide 3 — Browser lab

![UVM phases lab starter](assets/lab-starter.png)

In the browser lab track, open the UVM phase timeline lab. You will see a horizontal phase rail, a preset picker, and detail for whichever phase is selected. Load the starter preset—it pauses in run with an objection raised so you see why simulation stays open. Click build and connect to compare top-down versus bottom-up direction. Step to check and report to see post-run cleanup. Work a few challenges, then Check. The lab teaches schedule literacy—not a full simulator run.

## Slide 4 — Real UVM literacy

![Real shell — phase timeline sketch](assets/real-shell.png)

In the real UVM track, open this module’s examples folder and read the phase timeline sketch. For each core phase, say what happens and which direction the tree walk uses. If the in-course hello is checked out next door, skim any example that declares build phase, connect phase, and run phase—you will see the same names in SystemVerilog methods. You are learning the schedule before you debug a stuck run phase in anger.

## Slide 5 — Pitfalls to watch

Do not drive the DUT in build—build is for construction and configuration, not time. Do not forget objections in run—a test that raises none may end before your sequences finish. Do not assume connect and build walk the same direction—connect is bottom-up wiring after the tree exists. And remember: the browser timeline is a sketch; your simulator log will show real phase callbacks when you run offline.

## Slide 6 — Your turn

Complete the checklist for at least one track—preferably both. In the browser, load the starter, walk the core five phases, and finish a few challenges. On real UVM, recite build through report from memory and note where objections belong. When you are ready, take the short quiz, then continue to the factory in the next module.
