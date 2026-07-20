---
marp: true
title: Basic TB vs UVM map
paginate: true
---

# Basic TB vs UVM map

You already know how a small block testbench wiggles pins, prints values, and checks results in one module

---

## Six pairs to memorize
- Think in six mappings
- Pin wiggle in an initial block becomes a driver behind a virtual interface
- Hard-coded vectors and nested tasks become sequences feeding a sequencer
- A display peek in the same initial becomes a monitor on an analysis path
- Inline expect becomes a scoreboard comparing predict versus actual on transactions
- One flat testbench module becomes test, environment, and agents around the DUT

---

## Browser lab
![TB vs UVM map lab starter](assets/lab-starter.png)

---

## Real UVM literacy
![Real shell — classic vs UVM map](assets/real-shell.png)

---

## Pitfalls to watch
- Do not treat UVM as magic that replaces thinking, you still need stimulus, observation
- Do not map only the driver and skip the monitor
- Do not assume every project needs every UVM feature
- And remember

---

## Your turn
- Complete the checklist for at least one track, preferably both
- In the browser
- On real UVM, restate the six mappings without looking at the cheat sheet
- When you are ready

