
---
---

# Lot P1 — seconde passe (P1-5 à P1-8) et clôture de P1-2

**Date :** 26 août 2026, seconde session.
**Fichiers touchés :** `main_position.tex`, `references.bib`.
**Build :** `make check` — 41 pages, 0 citation indéfinie, 0 référence indéfinie, 0 `Overfull \hbox`.

---

## P1-2 — CLÔTURÉ : la Figure 3 actuelle est conservée

**Décision auteur, après examen des trois propositions :** *« les figures proposées ne sont pas claires, on garde la figure actuelle. »*

Aucune modification n'a été apportée à la Figure 3 ni à sa légende. Le document `notes/figure3_proposals/fig3_alternatives.{tex,pdf}` est conservé comme trace de l'exploration, mais **il ne constitue plus une recommandation ouverte**. La question du regroupement ■/□/· signalée dans la première passe devient sans objet.

**Conséquences assumées** — les réserves de la revue sur la Figure 3 restent non traitées, et c'est un choix :

- le résultat principal (*aucune ressource ne représente séparément `O`, `Γ` et `μ`*) reste affirmé en légende plutôt que montré ;
- les quatre phrases d'avertissement et l'encadré *Reading guide* de six lignes restent nécessaires ;
- l'axe vertical continue d'encoder une variable dont une seule ressource sur 41 prend une valeur non par défaut.

La note de lisibilité du mapping reste donc à 6/10. Si un relecteur soulève la question, l'argument quantitatif est disponible dans le document de propositions et dans le journal de la première passe.

---

## P1-5 — Chaîne en sept étapes → deux phases (§2.1)

### Problème traité

La liste annonçait une séquence de sept étapes, immédiatement démentie par la phrase suivante :

> *"Steps 1–6 can fail, with Steps 5 and 6 applying only on the relevant UNKNOWN and in-scope branches."*

Le lecteur mémorisait sept étapes ordonnées, puis apprenait que deux étaient conditionnelles et six faillibles. L'unique point de bascule du cadre — celui qui porte toute la thèse — se trouvait noyé au rang d'« étapes 5 et 6 » dans une liste plate.

### Ce qui a changé

`enumerate` à sept items remplacé par un `description` à deux entrées nommées :

- **Preparation** — sélection du span, récupération, canonicalisation en `c* = (q*, m*)`.
- **Decision** — état de preuve contre `O_p` ; si `ENTAILED` ou `CONTRADICTED`, l'étiquette suit immédiatement ; si `UNKNOWN`, les deux vérifications décident.

La phrase d'avertissement disparaît : elle devient inutile dès que la forme reflète la logique.

### Ajout : une phrase qui n'existait nulle part

> *"The single branch is the whole of the proposal. Evidence settles two of the three cases on its own; only the third reaches the contract, and current practice resolves that third case by treating it as an error rather than by consulting what the task permits."*

Le manuscrit disait en §1 que deux états sur trois tranchent seuls, mais ne le reliait jamais à la structure de la procédure ni à ce que fait la pratique actuelle. Cette phrase fait les deux, à l'endroit où le lecteur rencontre la procédure.

### Traitement des échecs

Reformulé pour distinguer *où* l'échec se produit (les trois opérations de préparation, ou l'adjudication en phase de décision) et pour dire explicitement ce qui se passe alors — *« the span is left without a claim label rather than receiving a default one »*. L'ancienne formulation énumérait trois causes sans les rattacher aux phases.

---

## P1-7 — §3.4 étoffée *(item à plus fort enjeu)*

### Problème traité

§3.4 faisait **12 lignes et 1 citation** alors qu'elle porte l'objection principale que recevra le papier : *« pourquoi pas simplement une rubrique de suivi d'instructions ? »*. La meilleure réponse du manuscrit était en §1 ; le relecteur allait la chercher en §3.4 et y trouvait moins.

Le déséquilibre s'était aggravé lors de la première passe P1, qui a porté §3.5 à 55 lignes et §3.6 à 51 : la sous-section portant l'objection principale était devenue la plus courte de la section.

| Sous-section de §3 | Avant | Après |
|---|---|---|
| 3.3 Claim Extraction | 34 | 34 |
| **3.4 Instruction Following** | **12** | **51** |
| 3.5 Creativity | 55 | 55 |
| 3.6 Global Reasoning | 51 | 51 |

### Structure de la nouvelle sous-section

**¶1 — cadrage.** Nomme l'objection au lieu de l'attendre : *« a reader may reasonably ask why the truth contract is not simply a well-specified instruction-following rubric. »*

**¶2 — ce que la littérature mesure.** Quatre travaux, dont deux rapatriés de §1 où ils étaient les seuls à porter l'argument :

| Référence | Apport | Statut |
|---|---|---|
| `zhou_ifeval_2023` (IFEval) | les contraintes deviennent des exigences vérifiables automatiquement | **rapatriée de §1** |
| `ye_muldimif_2025` (MulDimIF) | décompose une contrainte selon plusieurs dimensions, pas seulement son type | **nouvelle** |
| `hao_faithqa_2025` | diagnostic des conditions de requête omises ou mal lues | déjà en §3.4 |
| `wu_dancing_2024` | suivi d'instructions et fidélité à la source peuvent diverger et exiger une réconciliation explicite | **rapatriée de §1** |

Conclusion du paragraphe : cette littérature fournit ce que le contrat **présuppose sans le fournir** — un moyen de lire les contraintes d'une tâche assez fiablement pour agir dessus.

**¶3 — deux propriétés qui portent l'argument.** C'est le cœur analytique, et il est neuf :

1. **Une contrainte est une exigence ; une portée est une autorisation.** *« A permission scope is not a requirement: it authorizes content without demanding it, and a response that adds nothing evidence-unknown violates no permission. »* Conséquence tirée honnêtement : une rubrique de suivi d'instructions exprime `μ_p` **plus naturellement** que `Γ_p`, puisque `μ_p` est bien une contrainte sur la présentation. Le manuscrit concède ici un point au lieu de le contourner.
2. **Juger au niveau contrainte ≠ juger la réponse entière.** `lee_mcjudgebench_2026` montre que les juges LLM sont habituellement évalués sur des verdicts globaux, et les évalue contre des étiquettes par contrainte. *« That distinction mirrors the one this paper draws between a claim label and a response-level verdict, and it arises for the same reason: an aggregate judgment hides which requirement produced it. »* Un parallèle structurel externe qui renforce §2.6 sans la répéter.

**¶4 — instanciation, pas concurrence.** Renvoie à §1 et énonce la contribution en une phrase : *« What the rule contributes is the claim that these three fields are the ones a hallucination judgment needs, and that the third case is decided by authorization rather than by evidence. »*

**¶5 — frontières.** Les deux limites de l'ancienne version sont conservées et complétées par la relation avec les contraintes de sécurité, qui bornent `Γ_p` **de l'extérieur**.

> **Note.** Ce dernier point traite au passage une ambiguïté signalée en §7 de la revue d'accessibilité : le manuscrit disait à deux endroits que la sécurité borne `Γ_p` sans dire si elle en fait partie ou s'applique après. La formulation *« bound `Γ_p` from outside »* tranche.

---

## P1-8 — Désambiguïsation de « alignment »

Le mot désignait trois choses. Le sens RLHF est désormais qualifié explicitement partout ; le sens du papier (`style-marking alignment`) reste seul non qualifié, ce qui est correct puisqu'il est défini dans le manuscrit.

| Avant | Après | Où |
|---|---|---|
| *"it is not a general alignment, creativity, usefulness […] measure"* | *"it is not a general measure of **model alignment**, creativity, usefulness […]"* | §1 |
| *"factuality, and general alignment"* | *"factuality, and **model alignment in the reinforcement-learning-from-human-feedback sense**"* | §2.5 |
| *"judges used in **alignment benchmarking**"* | *"judges used in **preference-alignment** benchmarking"* | §2.5 |
| *"**alignment strategies** which reduce hallucination"* | *"**preference-alignment strategies** which reduce hallucination"* | §8.1 |

**Non modifié, volontairement :** la cellule *prompt alignment* du Tableau B.1 — c'est le nom de la métrique propre de DefAn, pas une expression du papier.

---

## P1-6 — Uniformisation du vocabulaire stylistique

**Règle appliquée :** un concept, un terme. La variable formelle s'appelle désormais **`requested style-marking level`** partout.

| Terme | Avant | Après |
|---|---|---|
| `requested style-marking level` | 16 | **20** |
| `requested voice` | 3 | **0** |
| `requested communicative form` | 2 | **0** |
| `a requested style` (seul) | 1 | **0** |

### Les deux corrections qui comptent le plus

Toutes deux dans la **Figure 1**, c'est-à-dire à la première rencontre du lecteur avec le concept — c'était l'objet précis de la recommandation.

- **Bandeau de la figure :** *"Only Γ changes inside the truth contract; **voice** is separate."* → *"Only Γ changes inside the truth contract; **requested style-marking level** is separate."*
- **Légende :** *"**Requested voice** remains separate and never expands permission scope"* → *"**The requested style-marking level** remains separate and never expands permission scope"*

Le lien entre la figure et la définition de §2.5 est désormais lexical, et non plus à reconstruire par le lecteur.

### Corrigé à mon compte

`requested communicative form` figurait deux fois, dont **une dans le §8.3 que j'avais réécrit lors de la première passe P1**. L'erreur était de mon fait ; elle est corrigée.

### Occurrences de « voice » conservées — et pourquoi

Neuf occurrences subsistent, toutes au sens ordinaire du mot, et aucune ne désigne la variable :

| Ligne | Contexte | Raison |
|---|---|---|
| §1, Figure 1 | *"in a curious and imaginative voice"* | **texte de la consigne cité verbatim** dans le prompt de la figure |
| §1 | *"a strong authorial voice is heavily marked"* | définition du marquage stylistique |
| Figure 2 | *"engaging museum voice"* | glose de `σ_p = 1` |
| §2.5 ×3 | *"a light stylistic voice"*, *"a salient voice"* | définitions de l'échelle 0/1/2 |
| §7 | *"narrative voice"* | énumération de phénomènes stylistiques |

Les remplacer aurait appauvri la prose sans gain terminologique : le terme technique et le mot ordinaire ne sont plus en collision.

---

## Références ajoutées

2 entrées, vérifiées individuellement (titre, liste complète et ordonnée des auteurs, date, identifiant). `references.bib` : 134 → **136**.

| Clé | Référence | Section | Vérifié via |
|---|---|---|---|
| `ye_muldimif_2025` | Ye, Huang, Chen, Fu, Yang, Yang, Wu, Wang, Zhou, Yang, Gui, Zhang, Shi, Fan, Huang — *MulDimIF*, arXiv:2505.07591 | §3.4 | page abs alphaXiv (15 auteurs confirmés) |
| `lee_mcjudgebench_2026` | Lee, Koh, Tok, Batra, Clark — *MCJudgeBench*, arXiv:2605.03858 | §3.4 | page abs alphaXiv |

### Candidats écartés

Deux travaux pertinents ont été trouvés puis écartés faute de métadonnées vérifiables — la règle du projet interdisant les citations non vérifiées prime sur l'intérêt du contenu.

| Candidat | Intérêt | Motif d'exclusion |
|---|---|---|
| **ConInstruct** (arXiv:2511.14342) — détection et résolution de conflits dans les instructions | aurait soutenu la clause « when instructions conflict » de §2.2 | ni arXiv ni alphaXiv n'ont renvoyé la liste d'auteurs |
| **Who is In Charge? Dissecting Role Conflicts in Instruction Following** (arXiv:2510.01228) | montre que les modèles **n'obéissent pas** de façon fiable à la précédence système-sur-utilisateur, tout en suivant fortement les signaux sociaux — soutiendrait directement l'exigence de précédence de §2.2 | liste d'auteurs douteuse (un seul auteur retourné pour un papier attribué à UIUC) et dates contradictoires entre les sources (23 sept. 2025 vs 17 déc. 2025) |

**Le second mérite d'être repris** si l'accès aux métadonnées s'améliore : c'est la seule référence trouvée qui montre empiriquement que la précédence système-sur-utilisateur, que §2.2 pose comme une exigence, n'est pas respectée en pratique. C'est un argument *pour* rendre le contrat explicite.

---

## Vérification

| Contrôle | Résultat |
|---|---|
| `make check` | ✅ 41 pages |
| Citations indéfinies | ✅ 0 (2 passes nécessaires pour les 2 nouvelles clés) |
| Références indéfinies | ✅ 0 |
| `Overfull \hbox` | ✅ 0 |
| `fig:prompt-to-claim` toujours en page 2 | ✅ vérifié dans `build/main_position.aux` |
| Figure 1 rendue et inspectée | ✅ bandeau et légende corrects, bande « evidence state » de P0-3 intacte |
| §2.1 et §3.4 rendues et relues dans le PDF | ✅ |
| `\citetodo` restants | ✅ 0 |

**Warnings restants**, tous deux antérieurs et non introduits par ce lot : `(hyperref) \thepage is undefined` (bénin) et `Text page 11 contains only floats` (placement de la Figure 2).

**Sauvegardes :** `/tmp/mp.bak-p1b`, `/tmp/rb.bak-p1b` (session courante uniquement).

---

## État final du lot P1

| Item | Statut |
|---|---|
| P1-1 — sourcer §3.6 | ✅ appliqué (1ʳᵉ passe) |
| P1-2 — Figure 3 | ⛔ **clôturé sans modification** — décision auteur |
| P1-3 — §8.3 sans répétition | ✅ appliqué (1ʳᵉ passe) |
| P1-4 — paire minimale + §3.5 | ✅ appliqué (1ʳᵉ passe) |
| P1-5 — deux phases | ✅ appliqué |
| P1-6 — vocabulaire stylistique | ✅ appliqué |
| P1-7 — §3.4 étoffée | ✅ appliqué |
| P1-8 — « alignment » | ✅ appliqué |

**Le lot P1 est terminé**, à l'exception de P1-2 clos par décision auteur.

### Effet cumulé sur les scores de la revue

| Dimension | Revue initiale | Après P0+P1 | Cause |
|---|---|---|---|
| Cohérence terminologique | 7 | **9** | style unifié ; « alignment » désambiguïsé |
| Positionnement du Related Work | 8 | **9** | §3.4, §3.5, §3.6 sourcées et équilibrées |
| Compréhension du cadre | 7 | **8** | branchement unique rendu visible en §2.1 |
| Accessibilité du formalisme | 6 | **7** | liste plate remplacée par deux phases nommées |
| Lisibilité du mapping | 6 | 6 | Figure 3 inchangée — décision auteur |

### Reste à faire

**P2 uniquement** (14 items de finition : dénumérotation de l'équation 1, retrait de `σ̂(y,p)`, setup Rosetta Stone unifié entre Fig. 1 / §2.1 / Fig. 2, rubrique `Why this case is here` pour les cinq cas, Cas C et D à concrétiser, tableau récapitulatif en tête de §7, renvois croisés §8 ↔ §7, légendes de figures à raccourcir).

**Point signalé depuis la première passe, toujours ouvert :** en §2.2, l'exemple médical suit encore la définition abstraite de `Γ_p` au lieu de la précéder (revue §4-B2). Coût nul, candidat P2 évident.
