#!/usr/bin/env bash
# Track A demo for module03-tb-anatomy (session frame for slides).
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

echo '# real shell session (Track A — classic TB anatomy)'
echo

printf '%s\n' '$ pwd'
pwd
echo

printf '%s\n' '$ ls examples/and2-tb/'
ls examples/and2-tb/
echo

printf '%s\n' '$ cat examples/and2-tb/and2_tb.v'
cat examples/and2-tb/and2_tb.v
echo

if command -v iverilog >/dev/null 2>&1; then
  printf '%s\n' '$ iverilog -t null examples/and2-tb/and2_tb.v'
  iverilog -t null examples/and2-tb/and2_tb.v
  echo '# syntax check passed'
else
  echo '# iverilog not on PATH — reading the file is enough for this module'
fi
