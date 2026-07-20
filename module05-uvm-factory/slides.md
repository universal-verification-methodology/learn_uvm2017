---
marp: true
title: UVM factory
paginate: true
---

# UVM factory

UVM builds most testbench objects through a factory, not with bare new everywhere

---

## Create, type override, instance override
- Registration macros put each class on the factory menu
- Creation asks for a type by name or type handle
- A type override says whenever anyone requests base driver
- An instance override targets one hierarchy path
- If both apply at the same path, instance wins
- Sequences and agents follow the same idea

---

## Browser lab
![UVM factory lab starter](assets/lab-starter.png)

---

## Real UVM literacy
![Real shell — factory override sketch](assets/real-shell.png)

---

## Pitfalls to watch
- Do not bypass the factory with new on UVM components, you lose override hooks
- Do not set overrides after the object is already constructed
- Do not confuse type and instance overrides
- And remember

---

## Your turn
- Complete the checklist for at least one track, preferably both
- In the browser, run create on the starter and explain the constructed type without looking
- On real UVM, sketch one type override and one instance override for a driver swap
- When you are ready, take the short quiz, then continue to ConfigDB in the next module

