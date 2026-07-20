#!/usr/bin/env python3
"""Scaffold courses/learn_uvm2017 from syllabus (lab-driven + dual tracks)."""
from __future__ import annotations

from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]  # courses/learn_uvm2017
COURSES = ROOT.parent
DST = ROOT

LAB_BASE_LOCAL = "http://127.0.0.1:8080/tools"
LAB_BASE_LIVE = "https://universal-verification-methodology.github.io/learning/tools"
LEGACY = "../learn_uvm2017_sv_verilator"

# Status from disk audit (2026-07): only tb-anatomy shipped.
MODULES = [
    (0, "intro", "intro", "Welcome to UVM", None, None),
    (1, "tb-layers", "lab", "TB layers", "tb-layers", "P"),
    (2, "tb-vs-uvm-map", "lab", "Basic TB vs UVM map", "tb-vs-uvm-map", "S"),
    (3, "tb-anatomy", "lab", "TB anatomy refresh", "tb-anatomy", "S"),
    (4, "uvm-phases", "lab", "UVM phases", "uvm-phases", "P"),
    (5, "uvm-factory", "lab", "Factory", "uvm-factory", "P"),
    (6, "uvm-configdb", "lab", "ConfigDB", "uvm-configdb", "P"),
    (7, "uvm-agent", "lab", "Agent anatomy", "uvm-agent", "P"),
    (8, "uvm-tlm", "lab", "TLM ports", "uvm-tlm", "P"),
    (9, "uvm-seq-flow", "lab", "Sequence → driver", "uvm-seq-flow", "P"),
    (10, "uvm-objections", "lab", "Objections", "uvm-objections", "P"),
    (11, "uvm-plusargs", "lab", "Plusargs / testname", "uvm-plusargs", "P"),
    (12, "crv-lite", "lab", "CRV lite", "crv-lite", "S"),
    (13, "uvm-scoreboard", "lab", "Scoreboard", "uvm-scoreboard", "P"),
    (14, "ral-map", "lab", "RAL map", "ral-map", "P"),
    (15, "sva-timeline", "lab", "SVA timeline (lite)", "sva-timeline", "S"),
    (16, "uvm-multi-agent", "lab", "Multi-agent env", "uvm-multi-agent", "P"),
    (17, "uvm-vseq", "lab", "Virtual sequence", "uvm-vseq", "P"),
    (18, "uvm-callbacks", "lab", "Callbacks", "uvm-callbacks", "P"),
    (19, "uvm-reporting", "lab", "Reporting", "uvm-reporting", "P"),
    (20, "protocol-checker", "lab", "Protocol checker", "protocol-checker", "P"),
    (21, "vip-anatomy", "lab", "VIP anatomy", "vip-anatomy", "P"),
    (22, "offline-uvm-example", "offline", "Run a course UVM example", "course-makefile", None),
    (23, "wrap", "wrap", "UVM complete → planning or VIP work", None, None),
]


def mod_dir(num: int, slug: str) -> Path:
    return DST / f"module{num:02d}-{slug}"


def lab_urls(lab_id: str) -> tuple[str, str]:
    return (f"{LAB_BASE_LOCAL}/{lab_id}/index.html", f"{LAB_BASE_LIVE}/{lab_id}/")


def write_module_readme(
    num: int, slug: str, kind: str, title: str, lab_id: str | None, status: str | None
) -> None:
    d = mod_dir(num, slug)
    d.mkdir(parents=True, exist_ok=True)
    nn = f"{num:02d}"
    prev = next((m for m in MODULES if m[0] == num - 1), None)
    nxt = next((m for m in MODULES if m[0] == num + 1), None)

    nav = []
    if prev:
        nav.append(f"[← {prev[3]}](../module{prev[0]:02d}-{prev[1]}/README.md)")
    else:
        nav.append("← Start")
    nav.append("[Course README](../README.md)")
    if nxt:
        nav.append(f"[{nxt[3]} →](../module{nxt[0]:02d}-{nxt[1]}/README.md)")
    else:
        nav.append("End →")
    nav_line = " · ".join(nav)

    if kind == "intro":
        body = f"""# Module {nn}: {title}

**Kind:** `intro` · Dual-track course welcome

{nav_line}

## What this course is

**learn_uvm2017** teaches **UVM methodology literacy** plus offline practice:

| Track | Where you practice | Best for |
|-------|--------------------|----------|
| **A — Real UVM** | Local UVM + Verilator (or commercial) | Muscle memory, Makefile runs you keep |
| **B — Browser lab** | Concept sketches on the learning platform | Layer / phase / factory intuition (many still planned) |

Prereq: **learn_systemverilog** + TB comfort. Legacy offline path: [`{LEGACY}/`]({LEGACY}/).

Browser labs are **sketches** — they do not run Accellera UVM. Full fidelity is Track A / module 22.

## Setup (Track A)

1. Install / obtain a UVM library and a simulator that can run it (Verilator UVM flow or commercial).
2. Open legacy examples under [`{LEGACY}/`]({LEGACY}/) until this course grows its own trees.
3. Confirm `make` (or course scripts) can compile a small TB.

## Setup (Track B)

1. Serve the platform: `python -m http.server 8080 --directory platform` (from monorepo root).
2. Open http://127.0.0.1:8080/tools/index.html — start with shipped [`tb-anatomy`]({LAB_BASE_LOCAL}/tb-anatomy/index.html).
3. Planned UVM sketches show Coming soon; use Track A / README notes until they ship.

## How to move through modules

1. Read the module **README** (outcomes).
2. Prefer Track A when a browser lab is still planned.
3. Check off **CHECKLIST.md**.
4. Optional: skim `outline.yaml` / `transcript.md` for upcoming slides & clips.

## Media (planned)

| Artifact | Path |
|----------|------|
| Outline | [outline.yaml](outline.yaml) |
| Transcript stub | [transcript.md](transcript.md) |
| Slides / video | generate later with **module-slides** |

## Next

→ [Module 01: TB layers](../module01-tb-layers/README.md)
"""
    elif kind == "wrap":
        body = f"""# Module {nn}: {title}

**Kind:** `wrap`

{nav_line}

## You can now

- Explain layered TB roles and how UVM maps onto them
- Navigate phases, factory, ConfigDB, agents, and seq→driver flow (conceptually)
- Point at scoreboard / RAL / multi-agent / VIP ideas even if browser labs are still shipping
- Run at least one offline UVM example (module 22)

## Dual-track recap

If you mainly waited on **browser labs**, prioritize Track A + module 22.  
If you mainly used **offline UVM**, skim `tb-anatomy` and any shipped sketches for visual literacy.

## Next courses

→ **learn_verification_planning_management** · protocol VIP work · **learn_pyuvm**  
Syllabus ladder: [../../syllabus.md](../../syllabus.md#suggested-learning-ladder)

## Checklist

- [ ] I completed Track A and/or Track B for the modules I care about
- [ ] I can sketch agent / env / scoreboard roles without looking them up
- [ ] I know browser UVM tools are literacy sketches, not Accellera UVM
"""
    elif kind == "offline":
        body = f"""# Module {nn}: {title}

**Kind:** `offline` · Activity: course Makefile / Verilator UVM run

{nav_line}

## Outcomes

After this module you can **build and run** a course UVM example offline (not in the browser).

## Practice surface (Track A only)

1. Open the legacy course: [`{LEGACY}/`]({LEGACY}/).
2. Follow that repo’s README / Makefile for a small UVM + Verilator (or commercial) example.
3. Capture the command line you used and the pass/fail result in your notes.

```bash
# Typical shape (exact targets vary by legacy module):
cd courses/learn_uvm2017_sv_verilator
# … see scripts/ and module READMEs …
```

## Track B

None — use shipped `tb-anatomy` or any UVM sketch that has shipped if you need a concept refresher.

## Media (planned)

| Artifact | Path |
|----------|------|
| Outline | [outline.yaml](outline.yaml) |
| Transcript stub | [transcript.md](transcript.md) |
| Slides / video | screen-capture of real toolchain (module-slides) |
"""
    else:
        assert lab_id and status
        local, live = lab_urls(lab_id)
        status_note = (
            "Shipped"
            if status == "S"
            else "Planned (Coming soon on tools index — use Track A until it ships)"
        )
        body = f"""# Module {nn}: {title}

**Kind:** `lab` · Primary lab: `{lab_id}` · **{status_note}**

{nav_line}

## Outcomes

After this module you can explain and practice the ideas taught by **`{lab_id}`**, as a browser sketch and/or offline UVM notes.

## Two tracks (pick one or both)

### Track A — Real UVM (hands-on)

1. Open [EXAMPLES.md](EXAMPLES.md) and work the prompts (often against [`{LEGACY}/`]({LEGACY}/)).
2. Complete [CHECKLIST.md](CHECKLIST.md) with real UVM/Makefile notes when the browser lab is planned.
3. Optional self-check: `./scripts/module.sh {nn} --check` (from course root).

### Track B — Browser lab (online)

1. Local: [{local}]({local})
2. Live: [{live}]({live})
3. Load the **starter example**, then work challenges (or note Coming soon).
4. Check off the Track B items in [CHECKLIST.md](CHECKLIST.md).

> Browser UVM tools are **concept literacy** — they do not replace Accellera UVM + a real simulator.

## Media (planned)

| Artifact | Path |
|----------|------|
| Outline | [outline.yaml](outline.yaml) |
| Transcript stub | [transcript.md](transcript.md) |
| Slides / video | generate later with **module-slides** |

## Files

```
module{nn}-{slug}/
├── README.md
├── CHECKLIST.md
├── EXAMPLES.md
├── outline.yaml
├── transcript.md
└── (optional) examples/
```
"""
    (d / "README.md").write_text(body, encoding="utf-8")


def write_checklist(num: int, slug: str, kind: str, title: str, lab_id: str | None) -> None:
    d = mod_dir(num, slug)
    nn = f"{num:02d}"
    if kind == "intro":
        text = f"""# Module {nn} checklist — {title}

## Setup

- [ ] Skimmed Track A requirements (UVM + simulator path)
- [ ] Opened this repo at `courses/learn_uvm2017`
- [ ] Opened the [tools index]({LAB_BASE_LOCAL}/index.html) once
- [ ] Opened shipped [`tb-anatomy`]({LAB_BASE_LOCAL}/tb-anatomy/index.html) once

## Mindset

- [ ] I understand browser labs are sketches; fidelity is offline UVM
- [ ] I know pyuvm is a separate course
"""
    elif kind == "wrap":
        text = f"""# Module {nn} checklist — {title}

- [ ] Reviewed outcomes in [README.md](README.md)
- [ ] Ready for planning / VIP / pyuvm paths as needed
"""
    elif kind == "offline":
        text = f"""# Module {nn} checklist — {title}

## Live UVM run

- [ ] Located a runnable example under [`{LEGACY}/`]({LEGACY}/) (or equivalent)
- [ ] Built with Makefile / scripts
- [ ] Observed a clean pass (or documented the failure mode)
- [ ] Noted the simulator / UVM version used

## Done when

- [ ] I can describe clone → make → run without looking it up
"""
    else:
        text = f"""# Module {nn} checklist — {title}

## Track A — Real UVM

- [ ] Worked through at least one prompt in [EXAMPLES.md](EXAMPLES.md)
- [ ] Can explain the outcome in my own words (paper or notes OK while lab is planned)

## Track B — Browser lab (`{lab_id}`)

- [ ] Opened the lab (local or live) **or** noted Coming soon
- [ ] If shipped: loaded starter + completed a few challenges

## Done when

- [ ] I can explain the idea offline **or** I finished the browser challenges (preferably both when shipped)
"""
    (d / "CHECKLIST.md").write_text(text, encoding="utf-8")


def write_examples_md(num: int, slug: str, kind: str, title: str) -> None:
    d = mod_dir(num, slug)
    nn = f"{num:02d}"
    if kind == "lab":
        text = f"""# Module {nn} examples — {title}

Track A (real UVM literacy). Browser lab may still be planned.

## Prompts

1. Restate the core idea of **{title}** in one sentence.
2. Sketch the block / timeline / override on paper (agent, phase, factory, …).
3. Point to where this appears in [`{LEGACY}/`]({LEGACY}/) if you can find it.

## Stretch (optional)

When the browser lab ships, redo the same idea with the starter challenges.
"""
    elif kind == "offline":
        text = f"""# Module {nn} examples — {title}

Use [`{LEGACY}/`]({LEGACY}/) Makefiles / module READMEs. See [README.md](README.md).
"""
    else:
        text = f"""# Module {nn} — no example trees

This is an `{kind}` module. See [README.md](README.md).
"""
    (d / "EXAMPLES.md").write_text(text, encoding="utf-8")


def write_outline_transcript(num: int, slug: str, kind: str, title: str, lab_id: str | None) -> None:
    d = mod_dir(num, slug)
    nn = f"{num:02d}"
    (d / "outline.yaml").write_text(
        f"""# Module {nn} outline
title: "{title}"
kind: {kind}
lab: {lab_id or "null"}
slides:
  - Course context / why layered TB + UVM matter
  - Core idea (1 concept)
  - Track B: show lab starter if shipped (else diagram)
  - Track A: offline / legacy demo cue
  - Common pitfalls
  - Your turn + quiz prompt
duration_minutes: 8
""",
        encoding="utf-8",
    )
    if kind == "offline":
        show_b = "No browser lab — this clip is a screen capture of a real UVM Makefile run."
        show_a = "Demo make / Verilator (or commercial) on a course example."
    elif lab_id:
        show_b = f"Open the browser lab, `{lab_id}` (or note Coming soon and show a diagram)."
        show_a = "Point at a legacy UVM example or paper sketch from EXAMPLES.md."
    else:
        show_b = "Point at the course map / tools index."
        show_a = "Show how Track A (offline UVM) and Track B (sketches) fit together."
    (d / "transcript.md").write_text(
        f"""# Module {nn} transcript — {title}

> Stub for voiceover / clip. Expand when recording (module-slides).

## Hook

Verification needs structure. This module: **{title}**.

## Teach

(3–5 sentences on the concept.)

## Show Track B

{show_b}

## Show Track A

{show_a}

## Your turn

Complete the checklist for at least one track. Then take the short quiz.
""",
        encoding="utf-8",
    )


def write_docs_index() -> None:
    docs = DST / "docs"
    docs.mkdir(exist_ok=True)
    rows = []
    for num, slug, kind, title, lab_id, status in MODULES:
        lab = f"`{lab_id}`" if lab_id else "—"
        st = status or "—"
        rows.append(
            f"| {num:02d} | `{kind}` | [{title}](../module{num:02d}-{slug}/README.md) | {lab} | {st} |"
        )
    (docs / "MODULES.md").write_text(
        f"""# learn_uvm2017 — module index

Lab-driven syllabus (pass 3). Full product syllabus: [../../syllabus.md](../../syllabus.md#6-learn_uvm2017).

| # | Kind | Module | Lab | Status |
|---|------|--------|-----|--------|
{chr(10).join(rows)}

## Dual tracks

See [TWO_TRACKS.md](TWO_TRACKS.md). Offline legacy: [`{LEGACY}/`]({LEGACY}/).
""",
        encoding="utf-8",
    )
    (docs / "TWO_TRACKS.md").write_text(
        f"""# Two learning tracks

## Track A — Real UVM

Practice with Accellera UVM + Verilator (or commercial).

- Start from [`{LEGACY}/`]({LEGACY}/) until this course owns its own example trees
- Self-check: `./scripts/module.sh NN --check`
- Module 22 is the dedicated offline run

Use this track for **fidelity**.

## Track B — Browser lab

Concept sketches on the learning platform (no Accellera UVM in-tab).

- Local tools: {LAB_BASE_LOCAL}/
- Live: {LAB_BASE_LIVE}/
- Shipped today: `tb-anatomy`, `tb-vs-uvm-map`, `sv-class-sketch` (SV OOP literacy), `crv-lite`, `sva-timeline`, `vif-wiring` (and any UVM sketches as they land)
- Most UVM sketch ids remain **Planned** — use Track A until they ship

## Recommended path

1. Intro + shipped `tb-anatomy`
2. Track A notes for planned sketch modules
3. Module 22 offline Makefile run
4. Return to browser sketches as they ship
""",
        encoding="utf-8",
    )


def write_course_readme() -> None:
    landing = [
        f"| {num:02d} — {title} | [module{num:02d}-{slug}](module{num:02d}-{slug}/README.md) |"
        for num, slug, _k, title, *_ in MODULES
    ]
    shipped = sum(1 for m in MODULES if m[5] == "S")
    planned = sum(1 for m in MODULES if m[5] == "P")
    (DST / "README.md").write_text(
        "\n".join(
            [
                "# learn_uvm2017",
                "",
                "[![GitHub](https://img.shields.io/badge/GitHub-learn__uvm2017-181717?logo=github)](https://github.com/universal-verification-methodology/learn_uvm2017)",
                "[![License: CC BY 4.0](https://img.shields.io/badge/License-CC%20BY%204.0-green?logo=creativecommons&logoColor=white)](LICENSE)",
                "[![Role](https://img.shields.io/badge/role-Git%20submodule-orange)](https://github.com/universal-verification-methodology/learning)",
                "[![Parent](https://img.shields.io/badge/parent-learning%20monorepo-0A9EDC)](https://github.com/universal-verification-methodology/learning)",
                "[![Labs](https://img.shields.io/badge/labs-GitHub%20Pages-222?logo=githubpages)](https://universal-verification-methodology.github.io/learning/tools/)",
                "[![Domain](https://img.shields.io/badge/domain-UVM%20%7C%20methodology%20literacy-purple)](https://github.com/universal-verification-methodology/learn_uvm2017)",
                "",
                "**learn_uvm2017** is the open learning path for *UVM methodology literacy + offline practice*.",
                "",
                "Readers and students usually **open a module README** (or the live tools) or clone this public repo. Authors edit content here (or via the parent monorepo checkout), rebuild slides/audio with **module-slides** in the parent, and push; the parent repo only stores a pinned submodule commit.",
                "",
                "",
                "## Table of contents",
                "",
                "- [Contents](#contents)",
                "- [Browse or clone](#browse-or-clone)",
                "- [Consume from the parent](#consume-from-the-parent)",
                "- [Author: publish or update](#author-publish-or-update)",
                "- [Two learning tracks](#two-learning-tracks)",
                "- [Module landings](#module-landings)",
                "- [Browser labs](#browser-labs)",
                "- [License](#license)",
                "",
                "## Contents",
                "",
                "```text",
                "learn_uvm2017/",
                "├── README.md",
                "├── LICENSE",
                "├── docs/",
                "│   ├── MODULES.md       # full module index (00–23)",
                "│   └── TWO_TRACKS.md",
                "├── scripts/",
                "│   └── module.sh",
                "├── module00-intro/",
                "├── module03-tb-anatomy/   # shipped browser lab today",
                "├── …",
                "├── module22-offline-uvm-example/",
                "└── module23-wrap/",
                "```",
                "",
                "Videos and decks are optional per module. Generate with the **module-slides** skill in the parent monorepo when ready.",
                "",
                "## Browse or clone",
                "",
                "- **Browser labs:** [https://universal-verification-methodology.github.io/learning/tools/](https://universal-verification-methodology.github.io/learning/tools/)",
                "- **Offline legacy:** [`learn_uvm2017_sv_verilator`](https://github.com/universal-verification-methodology/learn_uvm2017_sv_verilator)",
                "- **Syllabus (parent):** [`syllabus.md` § learn_uvm2017](https://github.com/universal-verification-methodology/learning/blob/main/syllabus.md#6-learn_uvm2017)",
                "- **Clone this repo alone:**",
                "",
                "```bash",
                "git clone https://github.com/universal-verification-methodology/learn_uvm2017.git",
                "cd learn_uvm2017",
                "chmod +x scripts/*.sh",
                "./scripts/module.sh 03 --check",
                "```",
                "",
                "Then open [module00-intro/README.md](module00-intro/README.md).",
                "",
                "## Consume from the parent",
                "",
                "```bash",
                "git clone --recurse-submodules \\",
                "  git@github.com:universal-verification-methodology/learning.git",
                "ls courses/learn_uvm2017",
                "```",
                "",
                "## Author: publish or update",
                "",
                "```bash",
                "cd courses/learn_uvm2017",
                "# … edit module README / CHECKLIST / EXAMPLES / transcript …",
                "cd ../..",
                "python .cursor/skills/module-slides/scripts/transcript_to_outline.py \\",
                "  courses/learn_uvm2017/moduleNN-slug",
                "bash .cursor/skills/module-slides/scripts/narrate_clips.sh \\",
                "  courses/learn_uvm2017/moduleNN-slug",
                "```",
                "",
                "## Two learning tracks",
                "",
                "Lab modules document both tracks when a browser id exists. Module 22 is **offline** only. Details: [docs/TWO_TRACKS.md](docs/TWO_TRACKS.md).",
                "",
                "| Track | Practice surface | Start here |",
                "|-------|------------------|------------|",
                f"| **A — Real UVM** | UVM + Verilator / commercial · [`{LEGACY}`]({LEGACY}/) | [docs/TWO_TRACKS.md](docs/TWO_TRACKS.md) |",
                f"| **B — Browser lab** | Platform sketches | [tb-anatomy]({LAB_BASE_LIVE}/tb-anatomy/) · [tools]({LAB_BASE_LIVE}/) |",
                "",
                f"Lab status snapshot: **{shipped} shipped** · **{planned} planned** (see [docs/MODULES.md](docs/MODULES.md)).",
                "",
                "## Module landings",
                "",
                "Full status table: **[docs/MODULES.md](docs/MODULES.md)**. Clusters: 00 intro · 01–03 TB map · 04–11 UVM core · 12–15 CRV/RAL/SVA lite · 16–21 multi-agent/VIP · 22 offline · 23 wrap.",
                "",
                "| Module | Landing |",
                "|--------|---------|",
                *landing,
                "",
                "## Browser labs",
                "",
                f"**Shipped:** [tb-anatomy](https://universal-verification-methodology.github.io/learning/tools/tb-anatomy/) · [tb-vs-uvm-map](https://universal-verification-methodology.github.io/learning/tools/tb-vs-uvm-map/) · [sv-class-sketch](https://universal-verification-methodology.github.io/learning/tools/sv-class-sketch/) (SV OOP literacy) · [crv-lite](https://universal-verification-methodology.github.io/learning/tools/crv-lite/) · [sva-timeline](https://universal-verification-methodology.github.io/learning/tools/sva-timeline/) · [vif-wiring](https://universal-verification-methodology.github.io/learning/tools/vif-wiring/) (SV TB literacy). **Planned** (Coming soon): `tb-layers`, `uvm-phases`, `uvm-factory`, `uvm-configdb`, `uvm-agent`, `uvm-tlm`, `uvm-seq-flow`, `uvm-objections`, `uvm-plusargs`, `uvm-scoreboard`, `ral-map`, `uvm-multi-agent`, `uvm-vseq`, `uvm-callbacks`, `uvm-reporting`, `protocol-checker`, `vip-anatomy`. Use Track A + [{LEGACY}]({LEGACY}/) until sketches ship.",
                "",
                "## License",
                "",
                "[CC BY 4.0](https://creativecommons.org/licenses/by/4.0/) — see [`LICENSE`](LICENSE).",
                "",
                "Path split from [`learn_uvm2017_sv_verilator`](https://github.com/universal-verification-methodology/learn_uvm2017_sv_verilator). Platform tools and the parent monorepo may carry additional notices.",
                "",
            ]
        ),
        encoding="utf-8",
    )


def write_scripts() -> None:
    scripts = DST / "scripts"
    scripts.mkdir(exist_ok=True)
    (scripts / "module.sh").write_text(
        r"""#!/usr/bin/env bash
# Generic module helper: ./scripts/module.sh NN [--check|--demo|--help]
set -euo pipefail
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"
NN="${1:-}"
shift || true
if [[ -z "$NN" || "$NN" == "--help" ]]; then
  echo "Usage: $0 NN [--check|--demo|--help]"
  exit 0
fi
NN="$(printf '%02d' "$((10#$NN))")"
MOD_DIR="$(find "$ROOT" -maxdepth 1 -type d -name "module${NN}-*" | head -1)"
if [[ -z "$MOD_DIR" ]]; then
  echo "No module directory for $NN"
  exit 1
fi
ACTION="${1:---check}"
case "$ACTION" in
  --check)
    echo "Module $NN self-check (Track A environment)"
    echo "Module dir: $MOD_DIR"
    command -v bash >/dev/null && echo "[OK] bash"
    command -v make >/dev/null && echo "[OK] make" || echo "[INFO] make missing"
    if command -v verilator >/dev/null 2>&1; then
      echo "[OK] verilator: $(verilator --version 2>&1 | head -1)"
    else
      echo "[INFO] verilator not on PATH (optional / commercial OK)"
    fi
    LEGACY="$(cd "$ROOT/.." && pwd)/learn_uvm2017_sv_verilator"
    if [[ -d "$LEGACY" ]]; then
      echo "[OK] legacy course present: $LEGACY"
    else
      echo "[INFO] legacy learn_uvm2017_sv_verilator not checked out"
    fi
    [[ -f "$MOD_DIR/EXAMPLES.md" ]] && echo "[OK] EXAMPLES.md"
    [[ -f "$MOD_DIR/CHECKLIST.md" ]] && echo "[OK] CHECKLIST.md"
    echo "[INFO] Track B lab link is in README.md (many still planned)"
    ;;
  --demo)
    echo "Demo: open $MOD_DIR/EXAMPLES.md and README.md"
    ;;
  *)
    echo "Unknown option: $ACTION"
    exit 1
    ;;
esac
""",
        encoding="utf-8",
    )
    (scripts / "README.md").write_text(
        """# Scripts

| Script | Purpose |
|--------|---------|
| `module.sh NN` | `--check` / `--demo` for module number `NN` |
| `_scaffold_course.py` | Regenerate course stubs from syllabus (authors) |

```bash
chmod +x scripts/*.sh
./scripts/module.sh 03 --check
```
""",
        encoding="utf-8",
    )


def write_license() -> None:
    src = COURSES / "learn_unix" / "LICENSE"
    dst = DST / "LICENSE"
    if src.exists():
        dst.write_text(
            src.read_text(encoding="utf-8").replace("learn_unix", "learn_uvm2017"),
            encoding="utf-8",
        )
    else:
        dst.write_text(
            "Creative Commons Attribution 4.0 International (CC BY 4.0)\n\n"
            "Copyright (c) The learn_uvm2017 contributors.\n\n"
            "https://creativecommons.org/licenses/by/4.0/\n",
            encoding="utf-8",
        )


def main() -> None:
    DST.mkdir(parents=True, exist_ok=True)
    write_license()
    write_course_readme()
    write_docs_index()
    write_scripts()
    for num, slug, kind, title, lab_id, status in MODULES:
        print(f"module{num:02d}-{slug} …")
        write_module_readme(num, slug, kind, title, lab_id, status)
        write_checklist(num, slug, kind, title, lab_id)
        write_examples_md(num, slug, kind, title)
        write_outline_transcript(num, slug, kind, title, lab_id)
    print("Done:", DST)


if __name__ == "__main__":
    main()
