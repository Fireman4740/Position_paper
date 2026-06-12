---
name: position-paper-academic-research
description: Use when drafting, expanding, or revising the position paper on LLM hallucination, creativity, truth regimes, and productive divergence. Enforces the paper's macros, citation discipline, anti-hallucination rules, and cljournal LaTeX conventions.
---

# Position Paper Academic Research

Use this skill for substantive academic writing in `main_position.tex`: drafting new sections, expanding arguments, tightening prose, or reorganizing claims.

## Project Context

- Active manuscript: `main_position.tex`.
- Active bibliography: `references.bib`.
- Active template: Computational Linguistics journal template, using `clv2025.cls` and `compling.bst`.
- Core thesis: hallucination is relative to a prompt's truth regime.
- Core distinction: harmful truth-regime violations (`\Hallu`) vs. licensed productive divergence (`\PD`).
- Stable macros: `\CI`, `\TR`, `\TRs`, `\PD`, `\Hallu`, `\Faith`, `\Acc`.

## Non-Negotiable Rules

1. Do not invent results, numbers, tables, figures, datasets, quotes, or bibliographic entries.
2. Cite only BibTeX keys that exist in `references.bib`, unless the user explicitly provides a new entry.
3. If evidence is missing, insert `\citetodo{...}` or `\claimtodo{...}` instead of guessing.
4. Keep empirical claims calibrated; do not strengthen pilot or exploratory evidence.
5. Preserve the active `clv2025`/`compling` LaTeX setup unless explicitly asked to change template.

## Drafting Workflow

Before drafting a full paragraph or section, provide:

- mini-outline,
- key claims and intended evidence,
- required evidence checks,
- likely reviewer criticisms and rebuttal plan.

Then provide a localized LaTeX-ready patch or edit.

After substantive edits, run `make check` and report remaining publication-relevant LaTeX warnings.

## Style

- Scholarly US English.
- One paragraph, one idea.
- Prefer precise verbs and concrete claims.
- Avoid formulaic transitions and citation spam.
