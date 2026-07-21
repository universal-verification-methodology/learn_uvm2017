#!/usr/bin/env bash
# Track A demo for module07-uvm-agent (session frame for slides).
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

echo '# real shell session (Track A — UVM agent anatomy)'
echo

printf '%s\n' '$ pwd'
pwd
echo

printf '%s\n' '$ ls examples/agent-sketch/'
ls examples/agent-sketch/
echo

printf '%s\n' '$ cat examples/agent-sketch/anatomy.txt'
cat examples/agent-sketch/anatomy.txt
echo

echo '# (module examples above are enough for Track A)'
