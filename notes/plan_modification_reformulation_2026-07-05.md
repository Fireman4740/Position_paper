# Plan de modification et reformulation — v2 (2026-07-05)

Compagnon de `review_CL_position_2026-07-05_presubmission.md`. Cible : `main_position_personal.tex`. Ce plan **remplace** celui du 2026-07-02, dont l'exécution est constatée à ~85 % ; il ne reprend que le restant et ajoute les items issus de la nouvelle review.

**Principe non négociable (inchangé)** : aucune passe ne modifie un claim, un hedge, un chiffre vérifié ou une citation. La simplification vise la forme, pas la calibration.

---

## 0. État des lieux — ce qui est FAIT depuis le plan du 02/07 (vérifié par grep/build le 05/07)

| Chantier 02/07 | État |
|---|---|
| A — migration terminologique « contrat » (TC, LD, form/content license) | ✅ complète : 0 « regime », 0 « latitude », 0 « conflate », 0 « licence » ; 1 phrase-pont « productive divergence » conservée (l. 349) |
| D — abstract reformulé (phrases courtes, lexique final) | ✅ appliqué (l. 137–150), cohérent avec `CL_submission_metadata.txt` |
| B — hit-list vocabulaire v1 | ✅ appliquée (« hides a paradox », « confuses », « fragility », « adds to the problem », etc.) |
| B — phrases denses | ⚠️ partiel : σ (l. 308–312) cassée ; ~15 phrases ≥ 42 mots restent (voir §2) |
| C2 — disjonction verifier/licence + 5ᵉ caveat | ✅ (l. 580–581, 968) |
| C3 — Cas A ancré sur un item XSum réel | ✅ (l. 694, `bbcid 28328378`) — vérification d'exactitude encore due |
| C1 — arithmétique Annexe B | ❌ **toujours ouvert** (TODO l. 848) → P0.1 |
| E — mécanique (jyear 2026, kappa 0.756, licence→license, scoping « illustrative sample », overfull, bib) | ✅ build vérifié : 0 erreur, 0 overfull, 0 warning bib, 0 entrée inutilisée, 39 p. |

---

## P0 — Bloquants (à faire en premier, dans cet ordre)

**P0.1 — Annexe B : réconcilier l'arithmétique (l. 848–849).**
Depuis les logs d'expérience : (a) cardinalité du facteur sujets Wikipédia et plan exact du croisement (formats × niveaux × longueurs × sujets — 1 389 doit se décomposer exactement) ; (b) compte des générations exclues : 1 389×9 = 12 501 vs 12 469 annoncés (= 32 exclues ? pour quelle raison ?) ; (c) assignation des 5 températures (croisées avec quoi, ou réparties comment). Réécrire le Setup avec ces comptes, en une phrase par fait.
*Repli si les logs ne permettent pas de reconstituer* : remplacer les nombres précis par des ordres de grandeur explicitement approximatifs (« about 1,400 prompts… roughly 12,500 generations ») et le dire (« exact cell counts varied with generation failures »). **Ne pas soumettre l'état intermédiaire.**
Dans la même passe : supprimer le commentaire TODO français (l. 848) ; donner la taille du « shared subset » jugé par les 4 LLM et sourcer ou supprimer « substantial » (l. 968).

**P0.2 — Réparer le build local.**
`build/main_position_personal.aux` est corrompu (queue dupliquée après `\@abspage@last` ; dernier `make` en erreur fatale). Faire `make clean && make pdf`. Vérifié le 05/07 : sur aux frais, le .tex compile en 39 p. sans erreur ni overfull — c'est bien un artefact local, pas un bug du source.

**P0.3 — Vérifier l'ancre du Cas A.**
Confirmer dans les annotations publiées de Maynez et al. (dépôt `xsum_hallucination_annotations`) : item `bbcid 28328378`, système BERTS2S, span « stripped of environmental permit », marqué extrinsèque + factuel à l'unanimité. Corriger la phrase l. 694 si un détail diffère.

**P0.4 — Table 2, ligne « SemDis » (l. 638).**
`organisciak_beyond_2023` = « Beyond semantic distance… » (scoring LLM), pas la plateforme SemDis (Beaty & Johnson 2021). Deux options : (A) renommer la ligne « Automated DT scoring \citep{organisciak_beyond_2023} » — zéro nouvelle entrée bib ; (B) garder « SemDis » et ajouter l'entrée Beaty & Johnson 2021 (règle anti-fabrication : entrée réelle et vérifiée uniquement). Reco : **A** (moins de surface d'erreur). L'usage de `organisciak_beyond_2023` à l. 758 est correct, ne pas y toucher.

---

## P1 — Passe de langue, restant (retour encadrant : phrases courtes, SVO, vocabulaire simple)

Règles inchangées (R1–R5 du plan 02/07) : ≤ ~25 mots en moyenne, une idée par phrase, ne pas toucher aux termes de l'art (faithfulness, entailment, hedge, foregrounding, pretended assertion…), ne jamais déplacer un hedge.

### 1.1 Hit-list vocabulaire v2

| l. | Actuel | Proposé |
|----|--------|---------|
| 184 | « posit a nonzero structural error floor » | « point to an error floor that better training does not remove » (garder « structural floor » à l. 681, il est défini par ce passage) |
| 195 | « The contract relativizes the evaluative verdict » | « The contract changes the verdict, not the truth » (la suite de la phrase peut alors se raccourcir) |
| 317 | « σ is orthogonal to truth » | « σ is independent of truth » |
| 349 | « echoing non-LLM uses of the term as variation that energizes performance » | « as the term is used outside NLP for variation that improves performance » |
| 466 | « and enlarging it stays open » | « adding components remains possible » |
| 590, 756, 791, 799 (+ caption 433) | « read off » ×5 | varier : « taken directly from » (756), « follow from » (791), « read from » (433, 590), « read in the text » → « a measurement we can make from the text alone » (799) |
| 559 | « Read that way, the finding is not that… » | « The point is not that the column entries repeat but that each one is inferred from the task, never scored. » |
| 567 | « pull against each other » | « conflict » |
| 580, 852 | « admits two readings » | « has two possible explanations » (les deux occurrences ; garder le parallélisme) |
| 669 | « Our claim is orthogonal » | « Our point is separate » |
| 687 | « revealingly » | supprimer (la phrase tient sans) |
| 689 | « schematic verdict tests rather than verbatim dataset items » | « constructed test cases, not items quoted from a dataset » |
| 750 | « The graded components are not hypothetical to measure » | « The graded components are measurable today » |
| 758 | « novelty admits automated proxies » | « novelty can be approximated automatically » |
| 773 | « This is where σ does its work in the framework » / « corrupted » | « This is σ's practical role » / « distorted » |
| 792 | « the output's licensed-divergence yield » | « how much licensed divergence the output contains » |

À laisser tels quels (précis, définis ou glosés) : « idealization » (l. 299), « foregrounding » (glosé l. 311), « pretended assertions » (Searle), « tractable » (l. 745, 757), « constraint-like » (l. 346, 359 — c'est le concept).

### 1.2 Phrases à casser (≥ 42 mots en prose ; 3 réécritures fournies, même méthode pour le reste)

Liste : l. 193, 282, 317, 366 (**prioritaire : 72 mots, phrase-règle centrale**), 451–454, 671, 673, 750–751, 757, 758–760, 802, 803, 849. (Les énumérations de l'Annexe A et les captions peuvent rester.)

**l. 366 — actuel (72 mots)** : « A truth-conditional claim not entailed by O (whether unsupported or merely unverifiable) is not yet a verdict: it is H when the departure is unlicensed (κ=0 or outside the licensed scope) or is asserted as verified fact where the license required a hedge, and PD when the contract licenses it and it is presented as the contract requires, its usefulness then scored separately; a supported claim, or purely stylistic variation, is neither. »
**Proposé (4 phrases)** : « A truth-conditional claim not entailed by O (unsupported or merely unverifiable) is not yet a verdict. It is \Hallu\ in two cases: the departure is unlicensed (κ=0 or outside the licensed scope), or the claim is asserted as verified fact where the license required a hedge. It is \PD\ when the contract licenses it and it is presented as the contract requires; usefulness is then scored separately. A supported claim, or purely stylistic variation, is neither. »

**l. 193 — actuel (50 mots)** : « Under a permissive TR (for example, “write fiction”), that same divergence may instead constitute licensed divergence (PD): a departure from established facts that the contract permits and that is presented as the contract requires, so it fulfills rather than violates what the prompt requested; its usefulness is scored separately. »
**Proposé (3 phrases)** : « Under a permissive \TR\ (for example, “write fiction”), the same divergence can be \emph{licensed divergence} (\PD). \PD\ is a departure from established facts that the contract permits, presented as the contract requires. It fulfills what the prompt requested rather than violating it; its usefulness is scored separately (Section~\ref{sec:framework}). »

**l. 671 — actuel (56 mots)** : « Intent-hallucination evaluation decomposes a query into intent constraints (subject, action, qualifiers, quantity, and the like) and conditions the verdict on whether the response covers them, but it defines failure independently of factual accuracy, supplies no oracle, and treats even flagged invention as a misinterpretation rather than a licensed move: it encodes neither O nor κ. »
**Proposé (3 phrases)** : « Intent-hallucination evaluation decomposes a query into intent constraints (subject, action, qualifiers, quantity, and the like) and conditions the verdict on whether the response covers them \citep{hao_faithqa_2025}. But it defines failure independently of factual accuracy and supplies no oracle. It also treats flagged invention as a misinterpretation rather than a licensed move: it encodes neither O nor κ. »

### 1.3 Tics rhétoriques (nouveau)

- **Disclaimer « illustratif / non validé » ≥ 6×** (l. 277–278, 556–559, 574–575, 582, 761, 802–803). En garder un fort par section : intro (l. 277–278), audit (l. 574), agenda (l. 761), limitations (l. 802–803). Compresser l. 554–562 (« What the columns show ») à deux phrases : les annotations sont les nôtres, inférées du design ; l'objet empirique est l'absence de variable scorée. Supprimer les redites internes.
- **Renvois « (Section~\ref{sec:agenda}) » ~12×** : un par sous-section maximum ; supprimer les doublons dans un même paragraphe (ex. l. 300/319 ×2, l. 751/760/761).

---

## P2 — Renforts argumentatifs ciblés (issus de la review, non bloquants mais rentables)

**P2.1 — Paragraphe pragmatique (Grice/Clark), §2 Motivation.** 4–5 lignes : le contrat de vérité a une ascendance gricéenne (maxime de qualité, principe de coopération) et s'appuie sur le common ground ; TC(p) s'en distingue en isolant le sous-ensemble pertinent pour la vérité et en le rendant **annotable et scorable** par composantes (O, σ, κ). Nécessite 2 entrées bib réelles (Grice 1975 ; Clark 1996) — à ajouter vérifiées, règle anti-fabrication. Désamorce l'objection « c'est la maxime de qualité réétiquetée » avant qu'un relecteur ne la formule.

**P2.2 — l. 464 (audience/genre).** Ajouter un exemple d'une ligne (« a children's-encyclopedia prompt selects a simpler oracle and a narrower σ, but the verdict logic is unchanged ») ou requalifier en conjecture explicite.

**P2.3 — scope(κ) dans les limitations.** Une phrase dans la limitation 1 (l. 799–800) : le désaccord d'annotation se concentrera sur les frontières de scope(κ) (Cas D en est l'illustration) ; c'est un objet d'étude de l'agenda, pas un présupposé résolu.

**P2.4 — Arbre, test 5 (l. 394, 406, 411).** Renommer le nœud « Score usefulness (graded) » ; sorties « high »/« low » au lieu de yes/no ; caption déjà correcte (l. 431–433), ne pas y toucher.

**P2.5 — Limitation 5 (dialogue, l. 804).** Une citation d'ancrage sur le grounding dialogique multi-tour (entrée réelle à trouver — candidate à chercher via literature-search ; sinon laisser tel quel, acceptable).

---

## P3 — Vérifications d'attribution (auteur ; 30 min chacune)

1. `yona_metacognition_2026` (l. 455) : vérifier que « faithful uncertainty » est bien porté par cette entrée (le terme vient de Yona et al. 2024) ; sinon corriger l'attribution ou la citation.
2. `bayat_factbench_2024` (l. 709) : vérifier le détail « penalizes undecidable units at a fixed weight ».
3. Décision D1 : ajouter « forty » dans l'abstract (« an illustrative audit of forty representative benchmarks ») — cohérent avec l. 550/565 ; si oui, répercuter dans `CL_submission_metadata.txt`.

---

## P4 — Clôture (après P0–P3)

1. `make clean && make pdf` ; vérifier : 0 erreur, 0 overfull, citations résolues, ~39 p.
2. **Test de sortie encadrant** : relecture abstract + §1 + définitions §2 — chaque terme doit passer à première lecture. C'est le critère d'arrêt de P1.
3. Synchroniser `CL_submission_metadata.txt` (abstract si D1), `README.md`, `notes/active-paper-context.md`.
4. Soumission : catégorie Position Paper, single-blind (auteurs sur la première page ✅), fichier métadonnées séparé ✅, contributors = 5 auteurs.

---

## Séquence et effort

| Phase | Contenu | Effort |
|-------|---------|--------|
| P0 | Annexe B + build + Cas A + SemDis | 0,5–1 j (dépend des logs) |
| P1 | Hit-list v2 + ~13 phrases + tics rhétoriques | 1 j |
| P2 | Grice/Clark + 4 micro-renforts | 0,5 j |
| P3 | Vérifs d'attribution + D1 | 0,25 j |
| P4 | Build final + test encadrant + synchro + soumission | 0,25 j |
| **Total** | | **~2,5–3 j** |

Ordre strict : P0 → P1 → P2 → P3 → P4. P1 avant P2 pour que les nouveaux paragraphes (P2.1) soient écrits directement dans le style cible. Si le temps manque : P0 + P1 + P4 forment le chemin minimal soumissible ; P2/P3 réduisent le risque relecteur mais ne conditionnent pas la soumission (sauf P0.4/SemDis, déjà dans P0).
