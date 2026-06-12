# Position Paper LaTeX Stack

This repository contains the active LaTeX stack for the position paper:

**Hallucination Is Relative: Evaluating LLM Divergence Under Truth-Regime Contracts**

## Active Files

- `main_position.tex`: active manuscript.
- `references.bib`: active bibliography.
- `uai2026.cls`: class file used by the active manuscript.
- `conference-template/uai2026/`: untouched conference template reference.
- `figures/`: candidate/project figures.
- `notes/`: writing context, inventories, claim/citation tracking.
- `sources/`: local papers and source PDFs. This folder is intentionally ignored by Git except for its README.

## Build

Use TeX Live/MacTeX with `latexmk`:

```bash
make check
make pdf
```

`make check` compiles into `build/`. `make pdf` also copies the resulting PDF to `main_position.pdf`.

## Writing Rules

- Do not invent citations, results, numbers, tables, figures, or datasets.
- Cite only keys present in `references.bib`.
- Use `\citetodo{...}` when evidence is missing.
- Keep the core macros stable: `\CI`, `\TR`, `\PD`, `\Hallu`, `\Faith`, `\Acc`.
- Keep the conference template isolated in `conference-template/uai2026/`; edit `main_position.tex` for the paper.
