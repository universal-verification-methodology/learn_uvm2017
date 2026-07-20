#!/usr/bin/env bash
# Track A demo for module17-uvm-vseq (session frame for slides).
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

echo '# real shell session (Track A — virtual sequence)'
echo

printf '%s\n' '$ pwd'
pwd
echo

printf '%s\n' '$ ls examples/vseq-sketch/'
ls examples/vseq-sketch/
echo

printf '%s\n' '$ cat examples/vseq-sketch/vseq.txt'
cat examples/vseq-sketch/vseq.txt
echo

LEGACY="../../learn_uvm2017_sv_verilator/module5/examples/virtual_sequences/virtual_sequences.sv"
if [ -f "$LEGACY" ]; then
  printf '%s\n' '$ grep -n "VirtualSequencer\|VirtualSequence\|fork\|join" ../../learn_uvm2017_sv_verilator/module5/examples/virtual_sequences/virtual_sequences.sv | head -14'
  grep -n "VirtualSequencer\|VirtualSequence\|VirtualSequencesTest\|fork\|join" "$LEGACY" | head -14 || true
else
  echo '# legacy learn_uvm2017_sv_verilator not present — vseq.txt is enough for this module'
fi
