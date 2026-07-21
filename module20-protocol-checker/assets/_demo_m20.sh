#!/usr/bin/env bash
# Track A demo for module20-protocol-checker (session frame for slides).
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

echo '# real shell session (Track A — protocol checker)'
echo

printf '%s\n' '$ pwd'
pwd
echo

printf '%s\n' '$ ls examples/checker-sketch/'
ls examples/checker-sketch/
echo

printf '%s\n' '$ cat examples/checker-sketch/checker.txt'
cat examples/checker-sketch/checker.txt
echo

echo '# (module examples above are enough for Track A)'
