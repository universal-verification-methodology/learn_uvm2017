#!/usr/bin/env bash
# Track A demo for module01-tb-layers (session frame for slides).
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

echo '# real shell session (Track A — UVM layer literacy)'
echo

printf '%s\n' '$ pwd'
pwd
echo

printf '%s\n' '$ ls examples/layer-sketch/'
ls examples/layer-sketch/
echo

printf '%s\n' '$ cat examples/layer-sketch/hierarchy.txt'
cat examples/layer-sketch/hierarchy.txt
echo

echo '# (module examples above are enough for Track A)'
