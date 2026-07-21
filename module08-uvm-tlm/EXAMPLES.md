# Module 08 examples — TLM ports

Track A (real UVM literacy). Browser lab is shipped.

## Prompts

1. Read `examples/tlm-sketch/wiring.txt` and restate port ↔ export in one sentence.
2. Sketch driver↔sequencer (seq_item) and monitor→scoreboard (analysis) on paper.
3. Explain what breaks if you forget `item_done` after `get_next_item`.

## Stretch

Open `uvm-tlm`, disconnect analysis on starter, then grep `seq_item_port.connect` in the module-eight tree.
