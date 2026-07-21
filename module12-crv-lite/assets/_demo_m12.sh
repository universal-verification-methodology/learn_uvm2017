#!/usr/bin/env bash
# Track A demo for module12-crv-lite (session frame for slides).
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

echo '# real shell session (Track A — CRV lite / randomize)'
echo

printf '%s\n' '$ pwd'
pwd
echo

printf '%s\n' '$ ls examples/crv-sketch/'
ls examples/crv-sketch/
echo

printf '%s\n' '$ cat examples/crv-sketch/randomize.txt'
cat examples/crv-sketch/randomize.txt
echo

echo '# (module examples above are enough for Track A)'
