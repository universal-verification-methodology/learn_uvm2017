---
marp: true
title: Scoreboard
paginate: true
---

# Scoreboard

A scoreboard checks that what you predicted matches what the DUT actually did

---

## Predict, observe, compare
- The predict path builds what should happen
- The observe path is the monitor analysis port, real bus activity becomes actual
- Compare is the heartbeat: pop one from each queue, check equality, repeat
- A pass means the values matched; a fail means expect and actual differed
- Orphans are leftovers, expect with no actual means you predicted something never observed
- Both are usually bugs at end of test

---

## Browser lab
![Scoreboard lab starter](assets/lab-starter.png)

---

## Real UVM literacy
![Real shell — scoreboard sketch](assets/real-shell.png)

---

## Pitfalls to watch
- Do not compare without both queues having data
- Do not ignore leftover queues at test end, orphans mean missing stimulus or missing checks
- Do not assume in-order compare works for every protocol
- And remember

---

## Your turn
- Complete the checklist for at least one track, preferably both
- In the browser, run starter compare pass then demo mismatch and name the verdict
- On real UVM, sketch predict and observe paths into one scoreboard
- When you are ready, take the short quiz, then continue to RAL map in the next module

