# Changelog — fixes pré-soumission appliqués le 2026-07-05

Exécution du plan `plan_modification_reformulation_2026-07-05.md`, **hors P0.1** (arithmétique Annexe B, écartée sur décision auteur — le TODO l. 848 reste dans le source comme rappel). Fichiers modifiés : `main_position_personal.tex`, `references.bib` (+2 entrées), `CL_submission_metadata.txt`.

## 1. Vérifications de sources (toutes passées, preuves ci-dessous)

| Claim du papier | Source vérifiée | Verdict |
|---|---|---|
| Cas A : XSum `bbcid 28328378`, BERTS2S, « stripped of their environmental permit », extrinsic + factuel à l'unanimité (l. 694) | CSV publiés `google-research-datasets/xsum_hallucination_annotations` : `hallucination_annotations` → extrinsic ×3 annotateurs (span = phrase entière) ; `factuality_annotations` → factual = yes ×3 (wid_0/1/2) | ✅ exact, mot pour mot |
| FactBench « penalizes undecidable units at a fixed weight » (l. 709) | arXiv 2410.22257, §4.6 : H(R) = (\|US\| + α\|UD\|)/√\|V\|, α = 0,5 fixé par analyse manuelle | ✅ exact |
| Yona et al. 2026 « faithful uncertainty », trustworthy vs hallucinated (l. 455) | arXiv 2605.01428 : définit « faithful uncertainty » (aligner incertitude linguistique et intrinsèque), reframe hallucination = « confident error » | ✅ exact — leur « confident error » est même le terme que le papier emploie déjà |
| FaithQA : constraints subject/action/qualifiers/quantity ; échec défini indépendamment de l'exactitude factuelle ; pas d'oracle ; invention flaggée = misinterpretation (l. 671, 172) | arXiv 2506.06539 : catégories location/time/subject/action/qualifiers/quantity ; « factually accurate yet hallucinated » ; Constraint Score sans oracle (fact-check Wikipédia = analyse auxiliaire) ; « intentional invention » comptée hallucinée même explicitée | ✅ exact |
| HIC-Bench : label IH/DH dérivé des scores de l'output, pas du prompt (l. 672, 172) | arXiv 2512.21635 : IH ⇔ Originality ≥ 4 ∧ Value ≥ 4 ∧ Feasibility ≥ 3 (scores de la réponse) ; prompts SCP/RCP = stratégies de génération, pas de contrat scoré | ✅ exact |
| Ligne « SemDis » Table 2 | Bib `organisciak_beyond_2023` = « Beyond semantic distance… » (Thinking Skills and Creativity 2023) — ce n'est pas la plateforme SemDis (Beaty & Johnson 2021) | ⚠️ corrigé (voir §2) |
| Grice 1975 | Cole & Morgan (éds.), *Syntax and Semantics 3: Speech Acts*, Academic Press, 41–58 | ✅ entrée ajoutée |
| Clark 1996 | *Using Language*, Cambridge University Press (common ground, ch. 4) | ✅ entrée ajoutée |

## 2. Édits appliqués à `main_position_personal.tex`

**P0 (hors arithmétique).**
- Table 2 : ligne « SemDis » → « Automated DT scoring » ; oracle « None (embed. dist.) » → « None (auto. scoring) » (l'usage de la même citation à propos du scoring LLM, agenda, était correct et n'a pas bougé).
- Arbre (Fig. 1), test 5 : nœud « Score usefulness: is c novel and appropriate? » → « Score usefulness (graded): how novel and appropriate is c? » ; sorties yes/no → high/low. La figure dit maintenant la même chose que le texte (score gradué, pas un gate).
- « substantial inter-judge agreement » → « a mean inter-judge agreement of Cohen's kappa 0.756 » (Annexe B.3).
- Abstract : « forty representative benchmarks » (+ synchro `CL_submission_metadata.txt`).

**P1 — hit-list vocabulaire (16 swaps, 0 résidu au grep).**
relativizes → changes the verdict, not the truth · orthogonal ×2 → independent of truth / Our point is separate · posit a nonzero structural error floor → point to a structural error floor that better training does not remove · echoing…energizes → as the term is used outside NLP for variation that improves performance · enlarging it stays open → adding components remains possible · read off ×5 → read from / taken directly from / follow from / make from the text alone · Read that way → The point is not that… · pull against each other → conflict · admits two readings ×2 → has two possible explanations · revealingly → supprimé · schematic verdict tests → constructed test cases · not hypothetical to measure → measurable today · admits automated proxies → can be approximated automatically · does its work → σ's practical role · corrupted → distorted · licensed-divergence yield → how much licensed divergence the output contains.

**P1 — phrases longues (13 découpes).**
Thèse l. 193 (50 mots → 3 phrases) ; contribution 1 (49 → 2) ; phrase-règle centrale l. 366 (72 → 4) ; σ-indépendance (54 → 3) ; FaithQA (56 → 3) ; HIC-Bench (53 → 3) ; Jiang (48 → 2) ; agenda-TR (53+49 → 5) ; stance check (60 → 3) ; usefulness (55 → 3) ; limitations 1, 3, 4 ; setup Annexe B (nombres inchangés). Résultat mesuré : phrases ≥ 42 mots 38 → 24 (le reste = énumérations, captions, règle formelle) ; moyenne 24,1 → 22,6 mots.

**P1 — tics rhétoriques.**
Paragraphe « What the columns show » compressé de 8 à 3 phrases (une seule occurrence de « annotations ≠ mesures » au lieu de quatre, scoping « in this sample » conservé) ; 2 renvois « (Section 5) » dupliqués supprimés (définition σ, decision rule).

**P2 — renforts.**
- Nouveau paragraphe pragmatique en §2 (Motivation) : Grice (maxime de qualité) + Clark/Stalnaker (common ground), avec la différenciation « implicit and global » vs « explicit enough to annotate and score, one prompt at a time ». Désamorce l'objection « c'est la maxime de qualité réétiquetée ».
- l. 464 : exemple d'une ligne (writing for children) pour l'affirmation audience/genre.
- Limitation 1 : découpée + phrase nommant scope(κ) comme lieu de concentration du désaccord (renvoi Cas D).

## 3. Bibliographie
`grice_logic_1975` (@incollection) et `clark_using_1996` (@book) ajoutés, détails vérifiés. BibTeX : 0 warning, 90 clés citées, toutes résolues.

## 4. Build
3 passes pdflatex + bibtex sur aux frais : **0 erreur, 0 overfull, 0 référence/citation non résolue, 39 pages**. Seuls warnings restants : substitutions de fontes Palatino (T1/ppl/m/scit), préexistants et sans effet visible — niveau template. `main_position_personal.pdf` (racine) régénéré. Le `build/main_position_personal.aux` corrompu (cause de l'échec fatal du 04/07) a été remplacé par l'aux frais ; le prochain `make check` local repartira proprement (un `make clean` reste recommandé une fois).

## 5. Restant (décisions auteur)
1. **Annexe B, arithmétique** (l. 848–849) : volontairement non traitée (décision du 05/07). Le TODO reste dans le source. Rappel du risque : 1 389 ∤ 27 et 1 389×9 ≠ 12 469 sont vérifiables par un relecteur en 30 secondes.
2. Taille du « shared subset » jugé par les 4 LLM : non ajoutée (donnée absente des notes, ne pas inventer).
3. Test de sortie encadrant (abstract + §1 + §2) avant dépôt.
