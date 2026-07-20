#!/usr/bin/env bash
# Track A demo for module08-uvm-tlm (session frame for slides).
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

echo '# real shell session (Track A — TLM port wiring)'
echo

printf '%s\n' '$ pwd'
pwd
echo

printf '%s\n' '$ ls examples/tlm-sketch/'
ls examples/tlm-sketch/
echo

printf '%s\n' '$ cat examples/tlm-sketch/wiring.txt'
cat examples/tlm-sketch/wiring.txt
echo

LEGACY="../../learn_uvm2017_sv_verilator/module8/tests/uvm_tests/test_utilities_uvm.sv"
if [ -f "$LEGACY" ]; then
  printf '%s\n' '$ grep -n "seq_item_port\|analysis_port\|\.connect(" ../../learn_uvm2017_sv_verilator/module8/tests/uvm_tests/test_utilities_uvm.sv | head -10'
  grep -n "seq_item_port\|analysis_port\|\.connect(" "$LEGACY" | head -10 || true
else
  echo '# legacy learn_uvm2017_sv_verilator not present — wiring.txt is enough for this module'
fi
