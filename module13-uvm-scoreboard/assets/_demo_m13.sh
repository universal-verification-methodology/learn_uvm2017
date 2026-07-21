#!/usr/bin/env bash
# Track A demo for module13-uvm-scoreboard (session frame for slides).
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

echo '# real shell session (Track A — UVM scoreboard expect/actual)'
echo

printf '%s\n' '$ pwd'
pwd
echo

printf '%s\n' '$ ls examples/scoreboard-sketch/'
ls examples/scoreboard-sketch/
echo

printf '%s\n' '$ cat examples/scoreboard-sketch/compare.txt'
cat examples/scoreboard-sketch/compare.txt
echo

echo '# (module examples above are enough for Track A)'
