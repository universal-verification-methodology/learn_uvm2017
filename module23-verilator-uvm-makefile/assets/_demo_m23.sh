#!/usr/bin/env bash
# Demo for module23 — dry-run in-course Verilator+UVM hello
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/../.." && pwd)"
HELLO="$ROOT/examples/verilator-uvm-hello"
cd "$HELLO"
echo "== pwd =="; pwd
echo "== tree =="; ls -la; ls dut tb
if [[ -z "${UVM_HOME:-}" ]]; then
  echo "UVM_HOME unset — set it to Accellera UVM 2017 …/src (see hello README)"
fi
make dry-run || true
