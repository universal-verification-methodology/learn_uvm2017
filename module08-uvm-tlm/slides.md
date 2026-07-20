---
marp: true
title: TLM ports
paginate: true
---

# TLM ports

UVM components talk through TLM ports and exports, not by reaching into each other’s pins

---

## Port, export, and the three patterns
- Think port connects to export
- Seq item is the classic pull path
- Put and get are push or pull styles between producer and consumer blocks
- Analysis is different, it is a broadcast
- You wire all of this in connect phase, after build has created the port objects

---

## Browser lab
![TLM port wiring lab starter](assets/lab-starter.png)

---

## Real UVM literacy
![Real shell — TLM wiring sketch](assets/real-shell.png)

---

## Pitfalls to watch
- Do not wire ports in build, they may not exist yet; connect phase is the usual place
- Do not confuse port and export direction, initiator connects to target
- Do not forget item done after get next item or the sequencer stalls
- Analysis write is one-to-many, not a paired export like seq item
- And remember

---

## Your turn
- Complete the checklist for at least one track, preferably both
- In the browser, load starter, disconnect analysis, and explain what breaks
- On real UVM, sketch seq item and analysis links for one active agent
- When you are ready, take the short quiz, then continue to sequence flow in the next module

