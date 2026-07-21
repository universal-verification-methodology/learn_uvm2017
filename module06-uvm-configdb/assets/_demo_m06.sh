#!/usr/bin/env bash
# Track A demo for module06-uvm-configdb (session frame for slides).
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

echo '# real shell session (Track A — ConfigDB literacy)'
echo

printf '%s\n' '$ pwd'
pwd
echo

printf '%s\n' '$ ls examples/configdb-sketch/'
ls examples/configdb-sketch/
echo

printf '%s\n' '$ cat examples/configdb-sketch/set-get.txt'
cat examples/configdb-sketch/set-get.txt
echo

echo '# (module examples above are enough for Track A)'
