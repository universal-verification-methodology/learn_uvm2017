#!/usr/bin/env bash
# Track A demo for module08-uvm-tlm (session frame for slides).
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

echo '# real shell session (Track A — TLM port wiring)'
echo

printf '%s\n' '$ pwd'
pwd
echo

printf '%s\n' '$ ls examples/tlm-sketch/'
ls examples/tlm-sketch/
echo

printf '%s\n' '$ cat examples/tlm-sketch/wiring.txt'
cat examples/tlm-sketch/wiring.txt
echo

echo '# (module examples above are enough for Track A)'
