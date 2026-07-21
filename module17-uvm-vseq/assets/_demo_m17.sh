#!/usr/bin/env bash
# Track A demo for module17-uvm-vseq (session frame for slides).
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

echo '# real shell session (Track A — virtual sequence)'
echo

printf '%s\n' '$ pwd'
pwd
echo

printf '%s\n' '$ ls examples/vseq-sketch/'
ls examples/vseq-sketch/
echo

printf '%s\n' '$ cat examples/vseq-sketch/vseq.txt'
cat examples/vseq-sketch/vseq.txt
echo

echo '# (module examples above are enough for Track A)'
