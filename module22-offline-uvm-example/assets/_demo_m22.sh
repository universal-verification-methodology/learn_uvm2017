#!/usr/bin/env bash
# Track A demo for module22-offline-uvm-example (session frame for slides).
# Prefers a short run of an already-built binary; full cold compile can take many minutes.
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

echo '# real shell session (Track A — offline UVM Makefile run)'
echo

printf '%s\n' '$ pwd'
pwd
echo

printf '%s\n' '$ ls examples/offline-sketch/'
ls examples/offline-sketch/
echo

printf '%s\n' '$ cat examples/offline-sketch/offline.txt'
cat examples/offline-sketch/offline.txt
echo

LEGACY="$(cd "$ROOT/../../learn_uvm2017_sv_verilator" && pwd)"
UVM_SRC="$LEGACY/tools/uvm-2017/1800.2-2017-1.0/src"
TEST_DIR="$LEGACY/module1/tests/uvm_tests"

if [ ! -d "$LEGACY" ]; then
  echo '# legacy learn_uvm2017_sv_verilator not present — offline.txt is enough for this module'
  exit 0
fi

printf '%s\n' '$ cd ../../learn_uvm2017_sv_verilator && pwd'
cd "$LEGACY"
pwd
echo

printf '%s\n' '$ export UVM_HOME=…/tools/uvm-2017/1800.2-2017-1.0/src'
export UVM_HOME="$UVM_SRC"
echo "UVM_HOME=$UVM_HOME"
echo

printf '%s\n' '$ ls module1/tests/uvm_tests/'
ls module1/tests/uvm_tests/
echo

printf '%s\n' '$ head -20 module1/tests/uvm_tests/Makefile'
head -20 module1/tests/uvm_tests/Makefile
echo

cd "$TEST_DIR"
BIN="./obj_dir/Vtest_and_gate_uvm"
if [ -x "$BIN" ] && "$BIN" +UVM_TESTNAME=test_and_gate_uvm >/tmp/m22_uvm_run.out 2>&1; then
  printf '%s\n' '$ ./obj_dir/Vtest_and_gate_uvm +UVM_TESTNAME=test_and_gate_uvm'
  # Re-run for visible capture (already succeeded once above)
  "$BIN" +UVM_TESTNAME=test_and_gate_uvm 2>&1 | tail -35 || true
  echo
  echo '# tip: cold build is: make run SIM=verilator TEST=test_and_gate_uvm'
else
  printf '%s\n' '$ make -n run SIM=verilator TEST=test_and_gate_uvm'
  make -n run SIM=verilator TEST=test_and_gate_uvm 2>&1 | head -20 || true
  echo
  echo '# Note: first Verilator+UVM compile can take several minutes.'
  echo '# When ready:  make run SIM=verilator TEST=test_and_gate_uvm'
  if [ -f /tmp/m22_uvm_run.out ]; then
    echo '# last binary attempt:'
    head -5 /tmp/m22_uvm_run.out || true
  fi
fi
