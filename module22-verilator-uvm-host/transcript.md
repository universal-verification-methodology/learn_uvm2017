# Module 22 — Verilator as a UVM host

**Module id:** module22-verilator-uvm-host
**Lab:** none (bridge)
**Tracks:** A focus · optional browser literacy

## Slide 1 — Verilator as a UVM host

Browser sketches taught UVM methodology—phases, factory, agents, sequences. This short bridge asks a different question: can Accellera UVM twenty seventeen actually run when Verilator is the simulator host? Yes, with the right Makefile glue and realistic expectations. Verilator compiles SystemVerilog to fast C++ and steps the design on a cycle-oriented schedule—not the same mental model as a classic event-driven commercial simulator. You are not repeating a full Verilator tool course here; you are learning what UVM on Verilator means before modules twenty-three and twenty-four hand you Makefile knobs and a real run.

## Slide 2 — Host model: compile-to-C++ vs event-driven

Classic SystemVerilog simulators are event-driven: delays, regions, and scheduling semantics you learned in testbench courses. Verilator is a compile-to-C++ flow: RTL and supported testbench code become a model, the host calls eval each time step, and time advances in the way the generated loop defines. UVM still runs as SystemVerilog when the build includes uvm_pkg and your test—but the **host** underneath is Verilator’s C++ executable, not a proprietary event kernel. That is why lint, compile time, and supported language subsets matter more than in a “throw any TB at the sim” flow. Tool depth for Verilator alone lives in learn Verilator; this module only orients UVM on that host.

## Slide 3 — Practical limits — what to expect

Expect longer first compiles when uvm_pkg joins the Verilator build. Expect to respect Verilator’s supported SystemVerilog subset—exotic TB constructs that compile elsewhere may fail here. Expect cycle-oriented stepping: your UVM phases and objections still apply, but debugging feels closer to a software build plus binary run than to an interactive wave GUI session—though you can still trace when the flow enables it. Expect Makefile and UVM home discipline: unset paths fail before meaningful compile output. Do **not** expect this bridge to replace a site’s full UVM sign-off flow—it is literacy for a small, repeatable Verilator plus UVM example in modules twenty-three and twenty-four.

## Slide 4 — Related literacy (optional)

No browser lab is required for this bridge. If sim-pipeline or iverilog-versus-Verilator sketches are still fuzzy, open them once as toolchain literacy: compile, elaborate, and run stages, and when teams pick Icarus versus Verilator for which job. Those tools do not compile Accellera UVM—they sharpen the host mental model. Then return here and continue to module twenty-three for UVM home, include paths, and the make run line with SIM equals Verilator.

## Slide 5 — Pitfalls to watch

Do not treat Verilator as “just a faster VCS”—the host model differs. Do not skip learn Verilator if your job is daily lint, C++ testbenches, and traces without UVM—that course is tool-first; this one is methodology on Verilator. Do not assume every UVM example from a commercial flow ports unchanged—read compile errors as language-support or Makefile issues, not as “UVM is broken.” Do not jump straight to module twenty-four without module twenty-three’s Makefile map—you will waste time guessing UVM home and test name knobs.

## Slide 6 — Your turn

Complete the bridge checklist: read the host sketch in EXAMPLES, restate compile-to-C++ versus event-driven in your own words, and name one practical limit you will watch for. Optional: skim sim-pipeline or iverilog-versus-Verilator for stage vocabulary. When you are ready, take the short quiz, then continue to module twenty-three for Makefile and UVM home knobs, and module twenty-four for the actual Verilator UVM run.
