# Position Paper — contexte agent

Chargé automatiquement par Hermes dans ce dossier. Le repo est la **source de vérité**,
pas les notes.

## Le papier

**Titre :** Hallucination Evaluation Should Be Contract-Aware: Reference Evidence,
Permission Scope, and Licensed Divergence

**Thèse :** l'hallucination n'est pas une propriété binaire du texte. Elle est relative
au **truth contract** du prompt.

Le truth contract a trois champs : **reference evidence**, **permission scope**,
**required status marking**.

| État vis-à-vis de l'évidence | Label |
|---|---|
| Entailed | `supported` |
| Contradicted | `hallucination` |
| Unknown, dans le scope **et** marking satisfait | `licensed divergence` |
| Unknown, hors scope **ou** marking non satisfait | `hallucination` + reason code |

Les niveaux de style-marking **requested** et **observed** sont enregistrés
séparément. Le requested n'élargit **jamais** le permission scope.

## Skills Hermes disponibles

| Skill | Quand |
|---|---|
| `position-paper-writing` | Rédiger, étendre, resserrer une section |
| `position-paper-citation-audit` | Auditer citations et BibTeX |
| `position-paper-latex-build` | Compiler, déboguer le build |
| `position-paper-revision-review` | Répondre à un retour reviewer |

Chargement : `hermes --skills position-paper-writing` ou laisse Hermes les charger seul.

## Build

```bash
make check   # compile (vérification)
make pdf     # compile + copie le PDF à la racine
make clean   # purge build/
```

Stack : `latexmk -pdf -outdir=build`, classe `clv2025`, `natbib` +
`\bibliographystyle{compling}`. Dernier build vérifié : **33 pages, 0 erreur**.

## ⚠️ Macros — piège vérifié

**Ces macros n'existent pas dans ce repo. Les écrire casse la compilation :**

```
\TR  \PD  \Hallu  \Faith  \Acc  \CI  \TRs  \citetodo{}  \claimtodo{}
```

Les seules définies (`main_position.tex` l. 26-29) sont `\TC` `\LD` `\Hall` `\SUP`,
et elles ont **0 usage** — le papier écrit la terminologie en toutes lettres.

Pour marquer une preuve manquante :

```latex
% TODO(cite): claim non sourcé — chercher une référence pour X
```

Vérifie toujours : `grep -n 'newcommand' main_position.tex`

## ⚠️ Terminologie migrée

| Ancien (notes périmées) | Actuel |
|---|---|
| truth regime | **truth contract** |
| productive divergence | **licensed divergence** |
| stylistic latitude | **form license** |
| invention license | **content license** |

`notes/active-paper-context.md` décrit l'ancien état (macros disparues, `plainnat`
au lieu de `compling`). Ne t'y fie pas : lis le `.tex`.

## Règles non négociables

1. **N'invente jamais** un résultat, un nombre, une table, une figure, une citation
   ou une entrée BibTeX.
2. **Ne cite que des clés présentes** dans `references.bib` (122 entrées, 92 citations
   utilisées, 0 manquante au dernier audit).
3. Preuve absente → `% TODO(cite):`, jamais une supposition.
4. Garde les claims **calibrés**. Le papier est prudent par construction (« purposive
   mapping », « not a prevalence estimate ») — préserve cette prudence.
5. Ne modifie pas la science pour faire taire un warning LaTeX.

> Une référence fabriquée dans un papier **sur les hallucinations** est un autogoal
> dont on ne se relève pas en rebuttal.

## Protocole avant rédaction — obligatoire

Ne saute jamais directement à la prose :

1. Mini-plan en 4–8 points
2. 2–6 claims que la section défend
3. Preuves requises, et lesquelles existent déjà
4. Critiques de reviewer anticipées + réfutations

Puis attends l'accord humain. Ensuite seulement, le patch LaTeX.

## Review — trois règles dures

1. **Session neuve** (`hermes -z`), jamais en continuation de l'écriture.
2. **Famille de modèle différente** de celle qui a rédigé (`-m attack`).
3. Aucun `% TODO(cite)` rempli de mémoire — `web_search` ou rien.

> Le risque de cette phase n'est pas la capacité, c'est la **complaisance**.
> Un modèle qui t'a regardé écrire le papier sera d'accord avec le papier.

## Style

Anglais académique US. Un paragraphe, une idée. Verbes précis, claims concrets.
Pas de transitions formulaïques ni de citation spam.
