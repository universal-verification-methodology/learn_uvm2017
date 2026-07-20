#!/usr/bin/env bash
# Track A demo for module20-protocol-checker (session frame for slides).
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

echo '# real shell session (Track A — protocol checker)'
echo

printf '%s\n' '$ pwd'
pwd
echo

printf '%s\n' '$ ls examples/checker-sketch/'
ls examples/checker-sketch/
echo

printf '%s\n' '$ cat examples/checker-sketch/checker.txt'
cat examples/checker-sketch/checker.txt
echo

LEGACY="../../learn_uvm2017_sv_verilator/module6/examples/protocol_checkers/protocol_checkers.sv"
if [ -f "$LEGACY" ]; then
  printf '%s\n' '$ grep -n "CheckerComp\|valid\|ready\|uvm_error" ../../learn_uvm2017_sv_verilator/module6/examples/protocol_checkers/protocol_checkers.sv | head -14'
  grep -n "CheckerComp\|valid\|ready\|uvm_error" "$LEGACY" | head -14 || true
else
  echo '# legacy learn_uvm2017_sv_verilator not present — checker.txt is enough for this module'
fi
