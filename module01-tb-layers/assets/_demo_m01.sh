#!/usr/bin/env bash
# Track A demo for module01-tb-layers (session frame for slides).
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

echo '# real shell session (Track A — UVM layer literacy)'
echo

printf '%s\n' '$ pwd'
pwd
echo

printf '%s\n' '$ ls examples/layer-sketch/'
ls examples/layer-sketch/
echo

printf '%s\n' '$ cat examples/layer-sketch/hierarchy.txt'
cat examples/layer-sketch/hierarchy.txt
echo

LEGACY="../../learn_uvm2017_sv_verilator/module6/examples/architecture/architecture.sv"
if [ -f "$LEGACY" ]; then
  printf '%s\n' '$ head -32 ../../learn_uvm2017_sv_verilator/module6/examples/architecture/architecture.sv'
  head -32 "$LEGACY"
else
  echo '# legacy learn_uvm2017_sv_verilator not present — hierarchy.txt is enough for this module'
fi
