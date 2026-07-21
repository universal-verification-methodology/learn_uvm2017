#!/usr/bin/env bash
# Track A demo for module10-uvm-objections (session frame for slides).
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

echo '# real shell session (Track A — UVM objections)'
echo

printf '%s\n' '$ pwd'
pwd
echo

printf '%s\n' '$ ls examples/objections-sketch/'
ls examples/objections-sketch/
echo

printf '%s\n' '$ cat examples/objections-sketch/holds.txt'
cat examples/objections-sketch/holds.txt
echo

echo '# (module examples above are enough for Track A)'
