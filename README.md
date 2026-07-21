# learn_uvm2017

[![GitHub](https://img.shields.io/badge/GitHub-learn__uvm2017-181717?logo=github)](https://github.com/universal-verification-methodology/learn_uvm2017)
[![License: CC BY 4.0](https://img.shields.io/badge/License-CC%20BY%204.0-green?logo=creativecommons&logoColor=white)](LICENSE)
[![Role](https://img.shields.io/badge/role-Git%20submodule-orange)](https://github.com/universal-verification-methodology/learning)
[![Parent](https://img.shields.io/badge/parent-learning%20monorepo-0A9EDC)](https://github.com/universal-verification-methodology/learning)
[![Labs](https://img.shields.io/badge/labs-GitHub%20Pages-222?logo=githubpages)](https://universal-verification-methodology.github.io/learning/tools/)
[![Domain](https://img.shields.io/badge/domain-UVM%20%7C%20methodology%20literacy-purple)](https://github.com/universal-verification-methodology/learn_uvm2017)

**learn_uvm2017** is the open learning path for *UVM methodology literacy + offline practice*.

Readers and students usually **open a module README** (or the live tools) or clone this public repo. Authors edit content here (or via the parent monorepo checkout), rebuild slides/audio with **module-slides** in the parent, and push; the parent repo only stores a pinned submodule commit.


## Table of contents

- [Contents](#contents)
- [Browse or clone](#browse-or-clone)
- [Consume from the parent](#consume-from-the-parent)
- [Author: publish or update](#author-publish-or-update)
- [Two learning tracks](#two-learning-tracks)
- [Module landings](#module-landings)
- [Browser labs](#browser-labs)
- [License](#license)

## Contents

```text
learn_uvm2017/
├── README.md
├── LICENSE
├── docs/
│   ├── MODULES.md       # full module index (00–25)
│   └── TWO_TRACKS.md
├── scripts/
│   └── module.sh
├── examples/
│   └── verilator-uvm-hello/   # Track A Accellera UVM + Verilator
├── module00-intro/
├── module01-tb-layers/ … module21-vip-anatomy/   # lab modules + media
├── module22-verilator-uvm-host/
├── module23-verilator-uvm-makefile/
├── module24-offline-uvm-verilator-run/
└── module25-wrap/
```

Each module ships a **module-slides** media bundle (transcript, deck, audio, video, quiz) generated in the parent monorepo. Rebuild with the skill when content changes.

## Browse or clone

- **Browser labs:** [https://universal-verification-methodology.github.io/learning/tools/](https://universal-verification-methodology.github.io/learning/tools/)
- **In-course hello:** [`examples/verilator-uvm-hello/`](examples/verilator-uvm-hello/) (Accellera UVM via `UVM_HOME`)
- **Syllabus (parent):** [`syllabus.md` § learn_uvm2017](https://github.com/universal-verification-methodology/learning/blob/main/syllabus.md#6-learn_uvm2017)
- **Clone this repo alone:**

```bash
git clone https://github.com/universal-verification-methodology/learn_uvm2017.git
cd learn_uvm2017
chmod +x scripts/*.sh
./scripts/module.sh 03 --check
```

Then open [module00-intro/README.md](module00-intro/README.md).

## Consume from the parent

```bash
git clone --recurse-submodules \
  git@github.com:universal-verification-methodology/learning.git
ls courses/learn_uvm2017
```

## Author: publish or update

```bash
cd courses/learn_uvm2017
# … edit module README / CHECKLIST / EXAMPLES / transcript …
cd ../..
python .cursor/skills/module-slides/scripts/transcript_to_outline.py \
  courses/learn_uvm2017/moduleNN-slug
bash .cursor/skills/module-slides/scripts/narrate_clips.sh \
  courses/learn_uvm2017/moduleNN-slug
```

## Two learning tracks

Lab modules document both tracks when a browser id exists. Modules **22–24** are Track A / offline. Details: [docs/TWO_TRACKS.md](docs/TWO_TRACKS.md).

| Track | Practice surface | Start here |
|-------|------------------|------------|
| **A — Real UVM** | UVM + Verilator / commercial · [`examples/verilator-uvm-hello/`](examples/verilator-uvm-hello/) | [docs/TWO_TRACKS.md](docs/TWO_TRACKS.md) |
| **B — Browser lab** | Platform sketches | [tb-anatomy](https://universal-verification-methodology.github.io/learning/tools/tb-anatomy/) · [tools](https://universal-verification-methodology.github.io/learning/tools/) |

Lab status snapshot: **21 shipped** · **0 planned** (see [docs/MODULES.md](docs/MODULES.md)).

## Module landings

Full status table: **[docs/MODULES.md](docs/MODULES.md)**. Clusters: 00 intro · 01–03 TB map · 04–11 UVM core · 12–15 CRV/RAL/SVA lite · 16–21 multi-agent/VIP · 22–24 Verilator host · 25 wrap.

| Module | Landing |
|--------|---------|
| 00 — Welcome to UVM 2017 | [module00-intro](module00-intro/README.md) |
| 01 — TB layers | [module01-tb-layers](module01-tb-layers/README.md) |
| 02 — Basic TB vs UVM map | [module02-tb-vs-uvm-map](module02-tb-vs-uvm-map/README.md) |
| 03 — TB anatomy refresh | [module03-tb-anatomy](module03-tb-anatomy/README.md) |
| 04 — UVM phases | [module04-uvm-phases](module04-uvm-phases/README.md) |
| 05 — Factory | [module05-uvm-factory](module05-uvm-factory/README.md) |
| 06 — ConfigDB | [module06-uvm-configdb](module06-uvm-configdb/README.md) |
| 07 — Agent anatomy | [module07-uvm-agent](module07-uvm-agent/README.md) |
| 08 — TLM ports | [module08-uvm-tlm](module08-uvm-tlm/README.md) |
| 09 — Sequence → driver | [module09-uvm-seq-flow](module09-uvm-seq-flow/README.md) |
| 10 — Objections | [module10-uvm-objections](module10-uvm-objections/README.md) |
| 11 — Plusargs / testname | [module11-uvm-plusargs](module11-uvm-plusargs/README.md) |
| 12 — CRV lite | [module12-crv-lite](module12-crv-lite/README.md) |
| 13 — Scoreboard | [module13-uvm-scoreboard](module13-uvm-scoreboard/README.md) |
| 14 — RAL map | [module14-ral-map](module14-ral-map/README.md) |
| 15 — SVA timeline (lite) | [module15-sva-timeline](module15-sva-timeline/README.md) |
| 16 — Multi-agent env | [module16-uvm-multi-agent](module16-uvm-multi-agent/README.md) |
| 17 — Virtual sequence | [module17-uvm-vseq](module17-uvm-vseq/README.md) |
| 18 — Callbacks | [module18-uvm-callbacks](module18-uvm-callbacks/README.md) |
| 19 — Reporting | [module19-uvm-reporting](module19-uvm-reporting/README.md) |
| 20 — Protocol checker | [module20-protocol-checker](module20-protocol-checker/README.md) |
| 21 — VIP anatomy | [module21-vip-anatomy](module21-vip-anatomy/README.md) |
| 22 — Verilator as a UVM host | [module22-verilator-uvm-host](module22-verilator-uvm-host/README.md) |
| 23 — Verilator + UVM Makefile knobs | [module23-verilator-uvm-makefile](module23-verilator-uvm-makefile/README.md) |
| 24 — Run UVM on Verilator | [module24-offline-uvm-verilator-run](module24-offline-uvm-verilator-run/README.md) |
| 25 — UVM complete → planning or VIP work | [module25-wrap](module25-wrap/README.md) |

## Browser labs

**Shipped:** [tb-anatomy](https://universal-verification-methodology.github.io/learning/tools/tb-anatomy/) · [tb-vs-uvm-map](https://universal-verification-methodology.github.io/learning/tools/tb-vs-uvm-map/) · [sv-class-sketch](https://universal-verification-methodology.github.io/learning/tools/sv-class-sketch/) (SV OOP literacy) · [crv-lite](https://universal-verification-methodology.github.io/learning/tools/crv-lite/) · [sva-timeline](https://universal-verification-methodology.github.io/learning/tools/sva-timeline/) · [vif-wiring](https://universal-verification-methodology.github.io/learning/tools/vif-wiring/) (SV TB literacy) · [tb-layers](https://universal-verification-methodology.github.io/learning/tools/tb-layers/) · [uvm-phases](https://universal-verification-methodology.github.io/learning/tools/uvm-phases/) · [uvm-factory](https://universal-verification-methodology.github.io/learning/tools/uvm-factory/) · [uvm-configdb](https://universal-verification-methodology.github.io/learning/tools/uvm-configdb/) · [uvm-objections](https://universal-verification-methodology.github.io/learning/tools/uvm-objections/) · [uvm-seq-flow](https://universal-verification-methodology.github.io/learning/tools/uvm-seq-flow/) · [uvm-agent](https://universal-verification-methodology.github.io/learning/tools/uvm-agent/) · [uvm-tlm](https://universal-verification-methodology.github.io/learning/tools/uvm-tlm/) · [uvm-scoreboard](https://universal-verification-methodology.github.io/learning/tools/uvm-scoreboard/) · [ral-map](https://universal-verification-methodology.github.io/learning/tools/ral-map/) · [uvm-reporting](https://universal-verification-methodology.github.io/learning/tools/uvm-reporting/) · [uvm-callbacks](https://universal-verification-methodology.github.io/learning/tools/uvm-callbacks/) · [uvm-vseq](https://universal-verification-methodology.github.io/learning/tools/uvm-vseq/) · [uvm-multi-agent](https://universal-verification-methodology.github.io/learning/tools/uvm-multi-agent/) · [protocol-checker](https://universal-verification-methodology.github.io/learning/tools/protocol-checker/) · [vip-anatomy](https://universal-verification-methodology.github.io/learning/tools/vip-anatomy/) · [uvm-plusargs](https://universal-verification-methodology.github.io/learning/tools/uvm-plusargs/). Use Track A + [../examples/verilator-uvm-hello](../examples/verilator-uvm-hello/) for offline fidelity.

## License

[CC BY 4.0](https://creativecommons.org/licenses/by/4.0/) — see [`LICENSE`](LICENSE).

