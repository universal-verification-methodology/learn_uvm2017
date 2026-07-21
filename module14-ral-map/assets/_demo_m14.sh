#!/usr/bin/env bash
# Track A demo for module14-ral-map (session frame for slides).
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

echo '# real shell session (Track A — UVM RAL map)'
echo

printf '%s\n' '$ pwd'
pwd
echo

printf '%s\n' '$ ls examples/ral-sketch/'
ls examples/ral-sketch/
echo

printf '%s\n' '$ cat examples/ral-sketch/map.txt'
cat examples/ral-sketch/map.txt
echo

echo '# (module examples above are enough for Track A)'
