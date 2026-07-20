#!/usr/bin/env bash
# Track A demo for module14-ral-map (session frame for slides).
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

echo '# real shell session (Track A — UVM RAL map)'
echo

printf '%s\n' '$ pwd'
pwd
echo

printf '%s\n' '$ ls examples/ral-sketch/'
ls examples/ral-sketch/
echo

printf '%s\n' '$ cat examples/ral-sketch/map.txt'
cat examples/ral-sketch/map.txt
echo

LEGACY="../../learn_uvm2017_sv_verilator/tools/uvm-2017/1800.2-2017-1.0/src/reg/uvm_reg_block.svh"
if [ -f "$LEGACY" ]; then
  printf '%s\n' '$ grep -n "class uvm_reg_block\|uvm_reg_map\|frontdoor\|backdoor" ../../learn_uvm2017_sv_verilator/tools/uvm-2017/1800.2-2017-1.0/src/reg/uvm_reg_block.svh | head -10'
  grep -n "class uvm_reg_block\|uvm_reg_map\|frontdoor\|backdoor" "$LEGACY" | head -10 || true
else
  echo '# legacy learn_uvm2017_sv_verilator not present — map.txt is enough for this module'
fi
