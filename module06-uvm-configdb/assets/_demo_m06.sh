#!/usr/bin/env bash
# Track A demo for module06-uvm-configdb (session frame for slides).
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

echo '# real shell session (Track A — ConfigDB literacy)'
echo

printf '%s\n' '$ pwd'
pwd
echo

printf '%s\n' '$ ls examples/configdb-sketch/'
ls examples/configdb-sketch/
echo

printf '%s\n' '$ cat examples/configdb-sketch/set-get.txt'
cat examples/configdb-sketch/set-get.txt
echo

LEGACY="../../learn_uvm2017_sv_verilator/tools/uvm-2017/1800.2-2017-1.0/src/base/uvm_config_db.svh"
if [ -f "$LEGACY" ]; then
  printf '%s\n' '$ head -28 ../../learn_uvm2017_sv_verilator/tools/uvm-2017/1800.2-2017-1.0/src/base/uvm_config_db.svh'
  head -28 "$LEGACY"
else
  echo '# legacy learn_uvm2017_sv_verilator not present — set-get.txt is enough for this module'
fi
