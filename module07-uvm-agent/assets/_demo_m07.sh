#!/usr/bin/env bash
# Track A demo for module07-uvm-agent (session frame for slides).
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

echo '# real shell session (Track A — UVM agent anatomy)'
echo

printf '%s\n' '$ pwd'
pwd
echo

printf '%s\n' '$ ls examples/agent-sketch/'
ls examples/agent-sketch/
echo

printf '%s\n' '$ cat examples/agent-sketch/anatomy.txt'
cat examples/agent-sketch/anatomy.txt
echo

LEGACY="../../learn_uvm2017_sv_verilator/module6/examples/architecture/architecture.sv"
if [ -f "$LEGACY" ]; then
  printf '%s\n' '$ grep -n "uvm_agent\|ArchAgent" ../../learn_uvm2017_sv_verilator/module6/examples/architecture/architecture.sv | head -8'
  grep -n "uvm_agent\|ArchAgent" "$LEGACY" | head -8 || true
else
  echo '# legacy learn_uvm2017_sv_verilator not present — anatomy.txt is enough for this module'
fi
