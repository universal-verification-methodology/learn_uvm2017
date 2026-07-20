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

LEGACY="../../learn_uvm2017_sv_verilator/module6/examples/multi_agent/multi_agent.sv"
if [ -f "$LEGACY" ]; then
  printf '%s\n' '$ grep -n "MA_Env\|MA_Agent\|uvm_env\|analysis_port" ../../learn_uvm2017_sv_verilator/module6/examples/multi_agent/multi_agent.sv | head -12'
  grep -n "MA_Env\|MA_Agent\|uvm_env\|analysis_port" "$LEGACY" | head -12 || true
else
  echo '# legacy learn_uvm2017_sv_verilator not present — env.txt is enough for this module'
fi
