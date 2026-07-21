#!/usr/bin/env bash
# Track A demo for module16-uvm-multi-agent (session frame for slides).
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

echo '# real shell session (Track A — multi-agent env)'
echo

printf '%s\n' '$ pwd'
pwd
echo

printf '%s\n' '$ ls examples/multi-agent-sketch/'
ls examples/multi-agent-sketch/
echo

printf '%s\n' '$ cat examples/multi-agent-sketch/env.txt'
cat examples/multi-agent-sketch/env.txt
echo

echo '# (module examples above are enough for Track A)'
