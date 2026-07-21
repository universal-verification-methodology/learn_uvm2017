#!/usr/bin/env bash
# Track A demo for module09-uvm-seq-flow (session frame for slides).
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

echo '# real shell session (Track A — sequence → driver flow)'
echo

printf '%s\n' '$ pwd'
pwd
echo

printf '%s\n' '$ ls examples/seq-flow-sketch/'
ls examples/seq-flow-sketch/
echo

printf '%s\n' '$ cat examples/seq-flow-sketch/flow.txt'
cat examples/seq-flow-sketch/flow.txt
echo

echo '# (module examples above are enough for Track A)'
