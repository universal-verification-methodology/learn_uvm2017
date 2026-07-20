#!/usr/bin/env bash
# Track A demo for module11-uvm-plusargs (session frame for slides).
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

echo '# real shell session (Track A — UVM plusargs / testname)'
echo

printf '%s\n' '$ pwd'
pwd
echo

printf '%s\n' '$ ls examples/plusargs-sketch/'
ls examples/plusargs-sketch/
echo

printf '%s\n' '$ cat examples/plusargs-sketch/cmdline.txt'
cat examples/plusargs-sketch/cmdline.txt
echo

LEGACY="../../learn_uvm2017_sv_verilator/module8/examples/clp/clp.sv"
if [ -f "$LEGACY" ]; then
  printf '%s\n' '$ grep -n "get_arg_value\|UVM_TESTNAME\|plusarg" ../../learn_uvm2017_sv_verilator/module8/examples/clp/clp.sv | head -12'
  grep -n "get_arg_value\|UVM_TESTNAME\|plusarg" "$LEGACY" | head -12 || true
else
  echo '# legacy learn_uvm2017_sv_verilator not present — cmdline.txt is enough for this module'
fi
