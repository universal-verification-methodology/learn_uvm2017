# Module 14 examples — RAL map

Track A (real UVM literacy). Browser lab is shipped.

## Prompts

1. Read `examples/ral-sketch/map.txt` and restate front-door vs back-door in one sentence each.
2. Sketch block → register → field with base + offset → absolute address.
3. Explain what the mirror is for and why RO fields block writes.

## Stretch

Open `ral-map`, try CTRL front-door write and DATA backdoor poke, then grep `uvm_reg_block` in the UVM reg headers.
