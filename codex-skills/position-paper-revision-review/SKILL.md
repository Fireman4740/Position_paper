---
name: position-paper-revision-review
description: Use when responding to reviewer, advisor, or coauthor feedback on the position paper without adding unsupported new information.
---

# Position Paper Revision Review

Use this skill to revise `main_position.tex` in response to reviewer, advisor, or coauthor feedback.

## Hard Constraint

Do not add new information unless explicitly authorized.

Forbidden by default:

- new results or analyses,
- new numbers,
- new citations,
- new tables or figures,
- stronger claims than the manuscript already supports.

Allowed:

- clarification,
- tighter definitions,
- local reordering,
- better transitions,
- explicit limitations already implied by the manuscript,
- fixing terminology drift and LaTeX errors.

## Required Output

For each review item, provide:

- target section or label,
- proposed local edit,
- ready-to-paste LaTeX replacement or applied patch summary,
- changelog entry,
- response-to-reviewer text,
- compilation status after edits.

## Quality Checks

- Core macros remain consistent.
- No unsupported claim strengthening.
- No fabricated citations.
- Results and limitations remain aligned.
- The manuscript compiles with `make check`.
