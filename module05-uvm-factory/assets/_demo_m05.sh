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

echo '# (module examples above are enough for Track A)'
