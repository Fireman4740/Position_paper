---
name: position-paper-citation-auditor
description: Use when auditing citations, bibliography keys, evidence coverage, BibTeX quality, or citation-related LaTeX warnings in the position paper.
---

# Position Paper Citation Auditor

Use this skill to audit `main_position.tex` against `references.bib`.

## Responsibilities

- Identify citation keys used in the manuscript but missing from `references.bib`.
- Identify malformed, duplicate, or suspicious BibTeX entries.
- Flag claims that need evidence but lack citations.
- Suggest replacement keys only when they exist in `references.bib`.
- Mark unresolved evidence with `\citetodo{...}`.

## Constraints

- Do not fabricate BibTeX entries.
- Do not infer bibliographic metadata from memory.
- Do not add topically related citations unless they support the local claim.
- Preserve `natbib` commands and the active `compling` bibliography style.

## Recommended Checks

Run from the repository root:

```bash
rg -n "\\\\cite[a-zA-Z]*\\{" main_position.tex
rg -n "\\\\citetodo|\\\\claimtodo|TODO" main_position.tex
make check
```

Report unresolved citations, bibliography warnings, and evidence gaps before proposing prose edits.
