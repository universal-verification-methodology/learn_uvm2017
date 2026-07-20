---
marp: true
title: TB layers
paginate: true
---

# TB layers

Before you memorize UVM macros, you need a map of the testbench stack

---

## Test, env, agent, and the DUT
- At the top sits the test, it builds the environment and kicks off sequences
- The environment holds agents and usually a scoreboard
- Each agent bundles a sequencer, a driver, and a monitor around one protocol
- The driver pushes transactions through a virtual interface into the DUT
- The scoreboard compares predict versus observe
- Two paths matter

---

## Browser lab
![TB layers lab starter](assets/lab-starter.png)

---

## Real UVM literacy
![Real shell — layer hierarchy sketch](assets/real-shell.png)

---

## Pitfalls to watch
- Do not confuse the test with the environment, the test is thin; the env owns structure
- Do not assume every agent is active, a passive agent monitors only and has no driver path
- An env without a scoreboard can still stimulate
- And remember

---

## Your turn
- Complete the checklist for at least one track, preferably both
- In the browser, load the starter and finish a few challenges
- Restate the two paths, stimulus and observe, in your own words and skim one legacy example
- When you are ready

