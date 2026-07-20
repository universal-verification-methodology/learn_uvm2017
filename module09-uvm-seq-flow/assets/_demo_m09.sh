#!/usr/bin/env bash
# Track A demo for module09-uvm-seq-flow (session frame for slides).
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

echo '# real shell session (Track A — sequence → driver flow)'
echo

printf '%s\n' '$ pwd'
pwd
echo

printf '%s\n' '$ ls examples/seq-flow-sketch/'
ls examples/seq-flow-sketch/
echo

printf '%s\n' '$ cat examples/seq-flow-sketch/flow.txt'
cat examples/seq-flow-sketch/flow.txt
echo

LEGACY="../../learn_uvm2017_sv_verilator/module8/tests/uvm_tests/test_utilities_uvm.sv"
if [ -f "$LEGACY" ]; then
  printf '%s\n' '$ grep -n "start_item\|finish_item\|get_next_item\|item_done" ../../learn_uvm2017_sv_verilator/module8/tests/uvm_tests/test_utilities_uvm.sv | head -10'
  grep -n "start_item\|finish_item\|get_next_item\|item_done" "$LEGACY" | head -10 || true
else
  echo '# legacy learn_uvm2017_sv_verilator not present — flow.txt is enough for this module'
fi
