#!/usr/bin/env bash
# Demo for module23 — dry-run in-course Verilator+UVM hello
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/../.." && pwd)"
HELLO="$ROOT/examples/verilator-uvm-hello"
cd "$HELLO"
echo "== pwd =="; pwd
echo "== tree =="; ls -la; ls dut tb
if [[ -z "${UVM_HOME:-}" ]]; then
  # optional monorepo convenience (ignored legacy archive)
  CAND="$ROOT/../learn_uvm2017_sv_verilator/tools/uvm-2017/1800.2-2017-1.0/src"
  if [[ -f "$CAND/uvm_pkg.sv" ]]; then
    export UVM_HOME="$CAND"
    echo "Using optional archive UVM_HOME=$UVM_HOME"
  else
    echo "UVM_HOME unset and archive UVM not found — dry-run will error (expected if Accellera not installed)"
  fi
fi
make dry-run || true
