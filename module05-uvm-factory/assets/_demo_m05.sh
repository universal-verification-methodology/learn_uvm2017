#!/usr/bin/env bash
# Track A demo for module05-uvm-factory (session frame for slides).
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

echo '# real shell session (Track A — UVM factory literacy)'
echo

printf '%s\n' '$ pwd'
pwd
echo

printf '%s\n' '$ ls examples/factory-sketch/'
ls examples/factory-sketch/
echo

printf '%s\n' '$ cat examples/factory-sketch/overrides.txt'
cat examples/factory-sketch/overrides.txt
echo

LEGACY="../../learn_uvm2017_sv_verilator/tools/uvm-2017/1800.2-2017-1.0/src/base/uvm_factory.svh"
if [ -f "$LEGACY" ]; then
  printf '%s\n' '$ head -24 ../../learn_uvm2017_sv_verilator/tools/uvm-2017/1800.2-2017-1.0/src/base/uvm_factory.svh'
  head -24 "$LEGACY"
else
  echo '# legacy learn_uvm2017_sv_verilator not present — overrides.txt is enough for this module'
fi
