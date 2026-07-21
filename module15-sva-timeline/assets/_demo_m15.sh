#!/usr/bin/env bash
# Track A demo for module15-sva-timeline (session frame for slides).
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

echo '# real shell session (Track A — SVA implication timeline)'
echo

printf '%s\n' '$ pwd'
pwd
echo

printf '%s\n' '$ ls examples/sva-sketch/'
ls examples/sva-sketch/
echo

printf '%s\n' '$ cat examples/sva-sketch/implication.txt'
cat examples/sva-sketch/implication.txt
echo

echo '# SVA examples often live in RTL/bind — no dedicated reference lab file in this course tree'
echo '# use implication.txt + sva-timeline browser lab for literacy'
