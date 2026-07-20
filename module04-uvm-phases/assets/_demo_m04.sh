#!/usr/bin/env bash
# Track A demo for module04-uvm-phases (session frame for slides).
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

echo '# real shell session (Track A — UVM phase literacy)'
echo

printf '%s\n' '$ pwd'
pwd
echo

printf '%s\n' '$ ls examples/phase-timeline/'
ls examples/phase-timeline/
echo

printf '%s\n' '$ cat examples/phase-timeline/phases.txt'
cat examples/phase-timeline/phases.txt
echo

LEGACY="../../learn_uvm2017_sv_verilator/module6/examples/architecture/architecture.sv"
if [ -f "$LEGACY" ]; then
  printf '%s\n' '$ grep -n "phase" ../../learn_uvm2017_sv_verilator/module6/examples/architecture/architecture.sv | head -8'
  grep -n "phase" "$LEGACY" | head -8 || true
else
  echo '# legacy learn_uvm2017_sv_verilator not present — phases.txt is enough for this module'
fi
