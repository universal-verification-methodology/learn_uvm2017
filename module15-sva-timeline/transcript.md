# Module 15 — SVA timeline (lite)

**Module id:** module15-sva-timeline  
**Lab:** sva-timeline  
**Tracks:** A · B

## Slide 1 — SVA timeline lite

Assertions check protocol rules on the timeline—not just at end of test. SystemVerilog assertions use properties over clock cycles; implication says when antecedent a is true, consequent b must follow. This module is lite literacy—overlap versus next cycle, pass, fail, and vacuous. We will read waves in the browser lab, then anchor the same syntax in offline notes.

## Slide 2 — Overlap, next cycle, and vacuous

Pipe arrow overlap means when a is true, check b in the same cycle. Double pipe arrow non-overlap means when a is true, check b on the next cycle. An attempt starts when the antecedent fires—a high on that clock edge. Pass means the consequent matched; fail means a fired but b did not. Vacuous success means a never went high—no failing attempt, but also nothing was really checked. Real SVA wraps this in a property and assert property on posedge clock.

## Slide 3 — Browser lab

![SVA timeline lab starter](assets/lab-starter.png)

In the browser lab track, open the SVA implication timeline lab. The starter shows a pipe arrow b overlapping pass—at cycle two both a and b are high. Hit Evaluate for pass. Load fail preset to see a high but b low same cycle. Try non-overlap pass and fail presets for next-cycle checking. Load vacuous to see a never high. Step the cursor and watch status change. Work a few challenges, then Check. The lab is not a full assertion engine—it teaches the timeline idea.

## Slide 4 — Real UVM literacy

![Real shell — SVA implication sketch](assets/real-shell.png)

In the real UVM track, open this module’s implication sketch—it shows property and assert property syntax in plain language. Trace one overlap rule on paper: mark cycles where a and b must align. Assertions live in RTL or bind modules—they run in parallel with your UVM test, catching bugs closer to the signal. UVM still needs scoreboards for transaction-level checks; SVA catches cycle-level protocol rules.

## Slide 5 — Pitfalls to watch

Do not confuse overlap and next-cycle operators—they check different cycles. Do not treat vacuous pass as strong coverage—if a never fires, the rule never exercised. Do not write assertions without clocking—posedge clk is the usual sampling event. And remember: the browser wave is eight cycles; real designs need complete properties with disable iff and covers too.

## Slide 6 — Your turn

Complete the checklist for at least one track—preferably both. In the browser, load overlap fail and explain the verdict. On paper, sketch a pipe arrow b pass and a double-pipe b pass on the same wave. When you are ready, take the short quiz, then continue to multi-agent env in the next module.
