#!/usr/bin/env bash
# Track A demo for module18-uvm-callbacks (session frame for slides).
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

echo '# real shell session (Track A — UVM callbacks)'
echo

printf '%s\n' '$ pwd'
pwd
echo

printf '%s\n' '$ ls examples/callbacks-sketch/'
ls examples/callbacks-sketch/
echo

printf '%s\n' '$ cat examples/callbacks-sketch/callbacks.txt'
cat examples/callbacks-sketch/callbacks.txt
echo

echo '# (module examples above are enough for Track A)'
