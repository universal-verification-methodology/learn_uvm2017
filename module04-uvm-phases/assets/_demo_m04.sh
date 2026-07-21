#!/usr/bin/env bash
# Track A demo for module04-uvm-phases (session frame for slides).
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

echo '# real shell session (Track A — UVM phase literacy)'
echo

printf '%s\n' '$ pwd'
pwd
echo

printf '%s\n' '$ ls examples/phase-timeline/'
ls examples/phase-timeline/
echo

printf '%s\n' '$ cat examples/phase-timeline/phases.txt'
cat examples/phase-timeline/phases.txt
echo

echo '# (module examples above are enough for Track A)'
