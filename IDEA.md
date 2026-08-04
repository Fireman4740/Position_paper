# Position Paper LaTeX Stack

This repository contains the active LaTeX stack for the position paper:

**Hallucination Evaluation Should Be Contract-Aware: Reference Evidence, Permission Scope, and Licensed Divergence**

## Active Files

- `main_position.tex`: active manuscript.
- `references.bib`: active bibliography.
- `clv2025.cls` and `compling.bst`: local runtime files copied from the active journal template.
- `conference-template/cljournal/`: active Computational Linguistics journal template reference.
- `figures/`: candidate/project figures.
- `notes/`: writing context, inventories, claim/citation tracking.
- `sources/`: placeholder for local papers and source PDFs. This folder is intentionally ignored by Git except for its README.

## Build

Use TeX Live/MacTeX with `latexmk`:

```bash
make check
make pdf
```

`make check` compiles into `build/`. `make pdf` also copies the resulting PDF to `main_position.pdf`, which is treated as a generated local artifact and is not versioned.

## Writing Rules

- Do not invent citations, results, numbers, tables, figures, or datasets.
- Cite only keys present in `references.bib`.
- Use `\citetodo{...}` when evidence is missing.
- Keep the core macros stable: `\TC`, `\Hall`, `\LD`, and `\SUP`; do not introduce a separate style-variation claim label, because claim-preserving style variation is a relation.
- Keep style separate from `\TC(p)=(O_p,\Gamma_p,\mu_p)`: use “requested/observed style-marking level,” “prompt--response style-marking alignment,” “claim recovery,” “claim-preserving style variation,” and “purposive mapping” consistently.
- Keep the journal template isolated in `conference-template/`; edit `main_position.tex` for the paper content.
- The active manuscript now uses the `clv2025` class from `conference-template/cljournal/`.
