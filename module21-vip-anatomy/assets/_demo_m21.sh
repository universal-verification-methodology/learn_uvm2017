#!/usr/bin/env bash
# Track A demo for module21-vip-anatomy (session frame for slides).
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

echo '# real shell session (Track A — VIP anatomy)'
echo

printf '%s\n' '$ pwd'
pwd
echo

printf '%s\n' '$ ls examples/vip-sketch/'
ls examples/vip-sketch/
echo

printf '%s\n' '$ cat examples/vip-sketch/vip.txt'
cat examples/vip-sketch/vip.txt
echo

echo '# (module examples above are enough for Track A)'
