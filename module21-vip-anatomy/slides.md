---
marp: true
title: VIP anatomy
paginate: true
---

# VIP anatomy

An agent drives and observes one interface, but a reusable verification IP is more than an agent

---

## Four deliverables
- The agent is the protocol unit, sequencer, driver, monitor, and interface around one bus
- The checker is passive protocol rules
- Coverage is covergroups and bins that measure which scenarios the VIP exercised
- Docs are the handoff, API notes, README, examples, and a self-test consumers can run
- Scoreboards often live in the env; VIPs commonly ship checker plus coverage with the agent
- A package is complete only when all four deliverables are present and consumers can

---

## Browser lab
![VIP anatomy lab starter](assets/lab-starter.png)

---

## Real UVM literacy
![Real shell — VIP anatomy sketch](assets/real-shell.png)

---

## Pitfalls to watch
- Do not call an agent-only tree a VIP, consumers need checker, coverage, and docs too
- VIP ships protocol legality and coverage
- Do not skip the self-test in docs, integration without a smoke run fails at the consumer
- Do not forget that incomplete packages still compile
- And remember

---

## Your turn
- Complete the checklist for at least one track, preferably both
- In the browser
- On real UVM, sketch a UART VIP tree with all four deliverables labeled
- When you are ready

