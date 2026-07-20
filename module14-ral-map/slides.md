---
marp: true
title: RAL map
paginate: true
---

# RAL map

Register tests often drown in raw hex addresses, RAL gives them names

---

## Block, register, field, and access paths
- Think block contains registers
- Absolute address equals block base plus register offset
- Front-door access goes through the bus
- Back-door peek and poke uses an HDL path, no bus traffic, fast for debug and bring-up
- The mirror holds the model’s predicted value; compare mirror to DUT after reads
- Read-only fields block writes, that is access policy in the map

---

## Browser lab
![RAL map lab starter](assets/lab-starter.png)

---

## Real UVM literacy
![Real shell — RAL map sketch](assets/real-shell.png)

---

## Pitfalls to watch
- Do not hand-compute addresses when the map already defines them, use named registers
- Do not poke backdoor and forget to update the mirror, or predict and DUT drift apart
- Do not write read-only fields and expect success
- Front-door needs a working adapter; back-door needs a valid HDL path
- And remember

---

## Your turn
- Complete the checklist for at least one track, preferably both
- In the browser, front-door write CTRL then explain absolute address
- On real UVM, sketch block, one register, and one field with base plus offset
- When you are ready

