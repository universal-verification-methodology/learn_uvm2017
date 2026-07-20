#!/usr/bin/env bash
# Track A demo for module18-uvm-callbacks (session frame for slides).
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

echo '# real shell session (Track A — UVM callbacks)'
echo

printf '%s\n' '$ pwd'
pwd
echo

printf '%s\n' '$ ls examples/callbacks-sketch/'
ls examples/callbacks-sketch/
echo

printf '%s\n' '$ cat examples/callbacks-sketch/callbacks.txt'
cat examples/callbacks-sketch/callbacks.txt
echo

LEGACY="../../learn_uvm2017_sv_verilator/module5/examples/callbacks/callbacks.sv"
if [ -f "$LEGACY" ]; then
  printf '%s\n' '$ grep -n "uvm_register_cb\|uvm_do_callbacks\|pre_drive\|post_drive" ../../learn_uvm2017_sv_verilator/module5/examples/callbacks/callbacks.sv | head -14'
  grep -n "uvm_register_cb\|uvm_do_callbacks\|pre_drive\|post_drive\|DriverCallback" "$LEGACY" | head -14 || true
else
  echo '# legacy learn_uvm2017_sv_verilator not present — callbacks.txt is enough for this module'
fi
