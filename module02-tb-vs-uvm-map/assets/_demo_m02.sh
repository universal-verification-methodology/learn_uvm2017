#!/usr/bin/env bash
# Track A demo for module02-tb-vs-uvm-map (session frame for slides).
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

echo '# real shell session (Track A — classic vs UVM map)'
echo

printf '%s\n' '$ pwd'
pwd
echo

printf '%s\n' '$ ls examples/classic-vs-uvm/'
ls examples/classic-vs-uvm/
echo

printf '%s\n' '$ cat examples/classic-vs-uvm/map.txt'
cat examples/classic-vs-uvm/map.txt
echo

LEGACY="../../learn_uvm2017_sv_verilator/docs/MODULE3.md"
if [ -f "$LEGACY" ]; then
  printf '%s\n' '$ head -20 ../../learn_uvm2017_sv_verilator/docs/MODULE3.md'
  head -20 "$LEGACY"
else
  echo '# legacy learn_uvm2017_sv_verilator not present — map.txt is enough for this module'
fi
