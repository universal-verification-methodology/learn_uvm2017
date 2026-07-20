---
marp: true
title: Multi-agent env
paginate: true
---

# Multi-agent env

Real designs rarely have one bus, your testbench env often owns several agents, one per interface or protocol role

---

## Env, N agents, and shared checkers
- The environment is the parent that builds agents and shared components like scoreboard or
- Each agent still follows the one-protocol rule
- Active versus passive is still per agent via is active in ConfigDB
- In connect phase
- Stimulus may run in parallel on each agent

---

## Browser lab
![Multi-agent env lab starter](assets/lab-starter.png)

---

## Real UVM literacy
![Real shell — multi-agent sketch](assets/real-shell.png)

---

## Pitfalls to watch
- Do not put two unrelated protocols in one agent, add a second agent instead
- Do not forget to connect every monitor you care about
- Do not assume one agent’s ConfigDB settings apply to another
- And remember

---

## Your turn
- Complete the checklist for at least one track, preferably both
- In the browser, disconnect one analysis link and explain what breaks
- On real UVM, sketch env with two agents and one shared scoreboard
- When you are ready

