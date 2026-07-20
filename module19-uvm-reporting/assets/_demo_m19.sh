#!/usr/bin/env bash
# Track A demo for module19-uvm-reporting (session frame for slides).
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

echo '# real shell session (Track A — UVM reporting)'
echo

printf '%s\n' '$ pwd'
pwd
echo

printf '%s\n' '$ ls examples/reporting-sketch/'
ls examples/reporting-sketch/
echo

printf '%s\n' '$ cat examples/reporting-sketch/reporting.txt'
cat examples/reporting-sketch/reporting.txt
echo

LEGACY="../../learn_uvm2017_sv_verilator/module3/examples/reporting/reporting.sv"
if [ -f "$LEGACY" ]; then
  printf '%s\n' '$ grep -n "uvm_info\|uvm_error\|UVM_HIGH\|verbosity" ../../learn_uvm2017_sv_verilator/module3/examples/reporting/reporting.sv | head -14'
  grep -n "uvm_info\|uvm_error\|uvm_warning\|UVM_HIGH\|verbosity" "$LEGACY" | head -14 || true
else
  echo '# legacy learn_uvm2017_sv_verilator not present — reporting.txt is enough for this module'
fi
