#!/usr/bin/env bash
# Track A demo for module13-uvm-scoreboard (session frame for slides).
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

echo '# real shell session (Track A — UVM scoreboard expect/actual)'
echo

printf '%s\n' '$ pwd'
pwd
echo

printf '%s\n' '$ ls examples/scoreboard-sketch/'
ls examples/scoreboard-sketch/
echo

printf '%s\n' '$ cat examples/scoreboard-sketch/compare.txt'
cat examples/scoreboard-sketch/compare.txt
echo

LEGACY="../../learn_uvm2017_sv_verilator/module8/tests/uvm_tests/test_utilities_uvm.sv"
if [ -f "$LEGACY" ]; then
  printf '%s\n' '$ grep -n "Scoreboard\|write_expected\|write_actual\|expected_queue\|actual_queue" ../../learn_uvm2017_sv_verilator/module8/tests/uvm_tests/test_utilities_uvm.sv | head -12'
  grep -n "Scoreboard\|write_expected\|write_actual\|expected_queue\|actual_queue" "$LEGACY" | head -12 || true
else
  echo '# legacy learn_uvm2017_sv_verilator not present — compare.txt is enough for this module'
fi
