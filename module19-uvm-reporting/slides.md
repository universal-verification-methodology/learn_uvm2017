---
marp: true
title: UVM reporting
paginate: true
---

# UVM reporting

Simulation logs get noisy fast, UVM reporting gives you two independent knobs

---

## Severity, verbosity, and ID filter
- Use uvm info with an ID string, message text
- Uvm warning, uvm error, and uvm fatal set severity
- High verbosity info is filtered out at medium
- Set report id action and plusargs like UVM verbosity let you tune per run
- ID filters drop or demote matching IDs before print

---

## Browser lab
![UVM reporting lab starter](assets/lab-starter.png)

---

## Real UVM literacy
![Real shell — reporting sketch](assets/real-shell.png)

---

## Pitfalls to watch
- Do not confuse severity with verbosity, severity is how serious
- Do not expect uvm error to respect a low verbosity threshold, it should still print
- Do not flood sim with uvm debug on every cycle, raise threshold for regression runs
- Do not reuse one ID for unrelated messages, you lose filter precision
- And remember

---

## Your turn
- Complete the checklist for at least one track, preferably both
- In the browser
- On real UVM, sketch one uvm info line with ID and verbosity plus one uvm error
- When you are ready, take the short quiz, then continue to the protocol checker module next

