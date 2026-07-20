---
marp: true
title: ConfigDB
paginate: true
---

# ConfigDB

After the factory builds your tree

---

## Set, get, and path specificity
- Set stores a typed value under a context path plus field name
- Get asks from a component path for a field
- If several sets match, the longest, most specific, path wins
- A set on env dot agent beats a generic set on env for the same field when the getter sits
- Wrong field name means miss even if another field was set nearby
- Sibling agents do not see each other’s sets

---

## Browser lab
![ConfigDB lab starter](assets/lab-starter.png)

---

## Real UVM literacy
![Real shell — ConfigDB sketch](assets/real-shell.png)

---

## Pitfalls to watch
- Do not set after the getter already ran in build
- Do not typo the field string, vif and VIF are different keys
- Do not expect sideways visibility
- And remember

---

## Your turn
- Complete the checklist for at least one track, preferably both
- In the browser, run get on the starter and explain the winning path without looking
- On real UVM, sketch one set and one get for passing a virtual interface to a driver
- When you are ready, take the short quiz, then continue to agent anatomy in the next module

