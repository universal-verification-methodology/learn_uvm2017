#!/usr/bin/env bash
# Track A demo for module10-uvm-objections (session frame for slides).
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

echo '# real shell session (Track A — UVM objections)'
echo

printf '%s\n' '$ pwd'
pwd
echo

printf '%s\n' '$ ls examples/objections-sketch/'
ls examples/objections-sketch/
echo

printf '%s\n' '$ cat examples/objections-sketch/holds.txt'
cat examples/objections-sketch/holds.txt
echo

LEGACY="../../learn_uvm2017_sv_verilator/module8/tests/uvm_tests/test_utilities_uvm.sv"
if [ -f "$LEGACY" ]; then
  printf '%s\n' '$ grep -n "raise_objection\|drop_objection" ../../learn_uvm2017_sv_verilator/module8/tests/uvm_tests/test_utilities_uvm.sv'
  grep -n "raise_objection\|drop_objection" "$LEGACY"
else
  echo '# legacy learn_uvm2017_sv_verilator not present — holds.txt is enough for this module'
fi
