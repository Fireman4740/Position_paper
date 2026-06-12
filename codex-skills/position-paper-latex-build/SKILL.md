---
name: position-paper-latex-build
description: Use when compiling, debugging, or maintaining the LaTeX build for the position paper, especially with the cljournal/clv2025 template.
---

# Position Paper LaTeX Build

Use this skill for LaTeX build, template, and diagnostics work in this repository.

## Active Build

- Root file: `main_position.tex`.
- Bibliography: `references.bib`.
- Class file: `clv2025.cls`.
- Bibliography style: `compling.bst`.
- Template reference: `conference-template/cljournal/`.
- Build command: `make check`.
- Release command: `make pdf`.

## Responsibilities

- Compile the manuscript after substantive edits.
- Fix LaTeX errors introduced by edits.
- Report unresolved references, missing citations, and severe layout warnings.
- Keep generated files in `build/` or ignored by Git.
- Keep `conference-template/cljournal/` as the reference template unless intentionally updating the template.

## Rules

- Do not edit scientific content merely to silence build warnings unless the user approves.
- Prefer minimal LaTeX fixes.
- Do not switch bibliography systems without explicit instruction.
- Do not use the example template bibliography for the active manuscript.
