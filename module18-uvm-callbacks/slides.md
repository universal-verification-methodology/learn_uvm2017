---
marp: true
title: Callbacks
paginate: true
---

# Callbacks

You often need to tweak VIP behavior for one test

---

## Register, enable, and hook order
- The callback base class defines virtual pre and post methods
- Your test registers a derived callback on the host with uvm callbacks add
- The host invokes registered callbacks in registration order at each hook point
- Pre hooks can modify the transaction before drive; post hooks observe after the body runs
- Disable a callback and the host skips it even if still registered
- Typical uses

---

## Browser lab
![Callbacks lab starter](assets/lab-starter.png)

---

## Real UVM literacy
![Real shell — callbacks sketch](assets/real-shell.png)

---

## Pitfalls to watch
- Do not subclass a VIP driver for every test tweak, callbacks keep the base driver stable
- Do not forget to register the callback type with the host type or uvm do callbacks will
- Do not assume disabled means unregistered
- Do not put time-consuming work in pre hooks if it stalls the driver, keep hooks focused
- And remember

---

## Your turn
- Complete the checklist for at least one track, preferably both
- In the browser
- On real UVM, sketch one pre hook and one post hook on a driver
- When you are ready, take the short quiz, then continue to reporting in the next module

