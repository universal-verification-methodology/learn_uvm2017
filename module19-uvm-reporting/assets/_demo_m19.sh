#!/usr/bin/env bash
# Track A demo for module19-uvm-reporting (session frame for slides).
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

echo '# real shell session (Track A — UVM reporting)'
echo

printf '%s\n' '$ pwd'
pwd
echo

printf '%s\n' '$ ls examples/reporting-sketch/'
ls examples/reporting-sketch/
echo

printf '%s\n' '$ cat examples/reporting-sketch/reporting.txt'
cat examples/reporting-sketch/reporting.txt
echo

echo '# (module examples above are enough for Track A)'
