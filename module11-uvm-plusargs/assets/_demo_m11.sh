#!/usr/bin/env bash
# Track A demo for module11-uvm-plusargs (session frame for slides).
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

echo '# real shell session (Track A — UVM plusargs / testname)'
echo

printf '%s\n' '$ pwd'
pwd
echo

printf '%s\n' '$ ls examples/plusargs-sketch/'
ls examples/plusargs-sketch/
echo

printf '%s\n' '$ cat examples/plusargs-sketch/cmdline.txt'
cat examples/plusargs-sketch/cmdline.txt
echo

echo '# (module examples above are enough for Track A)'
