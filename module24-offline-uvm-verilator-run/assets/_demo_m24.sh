#!/usr/bin/env bash
# Demo for module24 — show in-course hello layout (full make run may be long)
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/../.." && pwd)"
HELLO="$ROOT/examples/verilator-uvm-hello"
cd "$HELLO"
echo "== pwd =="; pwd
ls -la
ls dut tb
echo "== Makefile head =="; head -40 Makefile
if [[ -z "${UVM_HOME:-}" ]]; then
  CAND="$ROOT/../learn_uvm2017_sv_verilator/tools/uvm-2017/1800.2-2017-1.0/src"
  if [[ -f "$CAND/uvm_pkg.sv" ]]; then export UVM_HOME="$CAND"; fi
fi
echo "UVM_HOME=${UVM_HOME:-unset}"
make dry-run || true
echo "(Full make run omitted in demo capture — learners run: make run SIM=verilator)"
