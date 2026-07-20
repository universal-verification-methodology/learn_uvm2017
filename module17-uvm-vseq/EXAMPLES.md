# Module 17 examples — Virtual sequence

Track A (real UVM literacy). Browser lab is shipped.

## Prompts

1. Read `examples/vseq-sketch/vseq.txt` and restate **virtual sequencer vs virtual sequence** in one sentence each.
2. Sketch UART + SPI sequencer refs and contrast sequential vs parallel start.
3. Explain what breaks if `spi_sqr` is null when the vseq tries to start SPI.

## Stretch

Open `uvm-vseq`, run sequential UART→SPI on the starter, then Demo parallel / missing-ref fail.
