---
marp: true
title: Agent anatomy
paginate: true
---

# Agent anatomy

An agent is the reusable protocol unit in UVM, it groups the pieces that talk to one interface

---

## Sequencer, driver, monitor, active vs passive
- The sequencer is where sequences meet hardware, it hands sequence items to the driver
- The driver is the active path
- The monitor is the observe path
- An active agent builds sequencer plus driver plus monitor, you can stimulate and watch
- A passive agent keeps the monitor only
- ConfigDB often sets is_active and the virtual interface on the agent path

---

## Browser lab
![UVM agent lab starter](assets/lab-starter.png)

---

## Real UVM literacy
![Real shell — agent anatomy sketch](assets/real-shell.png)

---

## Pitfalls to watch
- Do not put two unrelated protocols in one agent, split agents instead
- Do not assume passive means no monitor, it means no driver path
- Do not forget the virtual interface on the agent path before build ends
- And remember

---

## Your turn
- Complete the checklist for at least one track, preferably both
- In the browser, toggle active versus passive and explain what disappears
- On real UVM, sketch one active agent with labeled sequencer, driver, and monitor
- When you are ready, take the short quiz, then continue to TLM ports in the next module

