---
marp: true
title: Protocol checker
paginate: true
---

# Protocol checker

A scoreboard asks whether the data was correct, expect versus actual

---

## Checker vs scoreboard
- The scoreboard compares transactions, did we get the byte we expected, in the right order?
- The protocol checker enforces bus rules
- A legal beat can still carry wrong data; correct data on an illegal beat is still a bug
- In UVM you often bind SVA or a passive checker component alongside the monitor
- Monitor feeds the scoreboard; checker or assertions guard the wire protocol
- Keep the two roles separate in your head and in your testbench hierarchy

---

## Browser lab
![Protocol checker lab starter](assets/lab-starter.png)

---

## Real UVM literacy
![Real shell — protocol checker sketch](assets/real-shell.png)

---

## Pitfalls to watch
- Do not expect the scoreboard to catch dropped valid
- Do not drive pins from the checker, it should be passive
- Do not disable checking during reset without meaning to, rules apply once reset releases
- Do not conflate one passing rule with all rules passing, check each handshake, hold
- And remember

---

## Your turn
- Complete the checklist for at least one track, preferably both
- In the browser, pass the starter beat, then break one rule and name which checker fired
- On real UVM, sketch three valid-ready rules and one scoreboard comparison
- When you are ready, take the short quiz, then continue to VIP anatomy in the next module

