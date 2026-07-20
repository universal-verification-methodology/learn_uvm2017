---
marp: true
title: Plusargs and testname
paginate: true
---

# Plusargs and testname

Simulation command lines carry more than the binary, they pass plusargs that configure the run

---

## UVM testname versus custom knobs
- Plus UVM testname is the standard switch for test selection
- If it is missing, you have no selected test from that plusarg
- Seed and verbosity are common UVM knobs, seed for reproducibility, verbosity for log noise
- Custom plusargs like plus num pkts or plus mode are project-specific
- Unknown testname means the factory cannot find the class

---

## Browser lab
![Plusargs lab starter](assets/lab-starter.png)

---

## Real UVM literacy
![Real shell — plusargs sketch](assets/real-shell.png)

---

## Pitfalls to watch
- Do not confuse plus UVM testname with a random custom string
- Do not forget the plus prefix on the sim command line
- Do not assume seed alone selects a test
- Typos in testname fail at factory time, not as a missing plusarg
- And remember

---

## Your turn
- Complete the checklist for at least one track, preferably both
- In the browser, parse starter then demo no testname and explain the difference
- On real UVM, write one command line with testname, seed, and a custom knob
- When you are ready

