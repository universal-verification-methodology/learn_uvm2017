#!/usr/bin/env bash
# Track A demo for module12-crv-lite (session frame for slides).
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

echo '# real shell session (Track A — CRV lite / randomize)'
echo

printf '%s\n' '$ pwd'
pwd
echo

printf '%s\n' '$ ls examples/crv-sketch/'
ls examples/crv-sketch/
echo

printf '%s\n' '$ cat examples/crv-sketch/randomize.txt'
cat examples/crv-sketch/randomize.txt
echo

LEGACY="../../learn_uvm2017_sv_verilator/module8/examples/random_utils/random_utils.sv"
if [ -f "$LEGACY" ]; then
  printf '%s\n' '$ grep -n "rand \|constraint\|randomize" ../../learn_uvm2017_sv_verilator/module8/examples/random_utils/random_utils.sv | head -12'
  grep -n "rand \|constraint\|randomize" "$LEGACY" | head -12 || true
else
  echo '# legacy learn_uvm2017_sv_verilator not present — randomize.txt is enough for this module'
fi
