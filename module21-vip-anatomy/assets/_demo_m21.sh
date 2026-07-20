#!/usr/bin/env bash
# Track A demo for module21-vip-anatomy (session frame for slides).
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

echo '# real shell session (Track A — VIP anatomy)'
echo

printf '%s\n' '$ pwd'
pwd
echo

printf '%s\n' '$ ls examples/vip-sketch/'
ls examples/vip-sketch/
echo

printf '%s\n' '$ cat examples/vip-sketch/vip.txt'
cat examples/vip-sketch/vip.txt
echo

LEGACY="../../learn_uvm2017_sv_verilator/module7/examples/vip/vip.sv"
if [ -f "$LEGACY" ]; then
  printf '%s\n' '$ grep -n "VipAgent\|VipDriver\|VipTxn\|VIP" ../../learn_uvm2017_sv_verilator/module7/examples/vip/vip.sv | head -14'
  grep -n "VipAgent\|VipDriver\|VipTxn\|VipSeq\|VIP" "$LEGACY" | head -14 || true
else
  echo '# legacy learn_uvm2017_sv_verilator not present — vip.txt is enough for this module'
fi
