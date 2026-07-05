# Review complète pré-soumission — `main_position_personal.tex` (2026-07-05)

Cible : catégorie **Position Papers** de *Computational Linguistics* (« rigorous reasoning + persuasive evidence », pas d'expériences requises). État audité : version du 2026-07-04 (973 lignes, 39 p. PDF), **post**-migration terminologique « contrat » et post-plan 2026-07-02. Vérifications mécaniques faites pendant la review : compilation propre (0 erreur, 0 overfull, 0 référence/citation non résolue, 0 warning BibTeX), 88 clés citées toutes présentes dans `references.bib`, 0 entrée inutilisée, 0 `\citetodo`, lexique résiduel nul (0 « regime », 0 « latitude », 0 « conflate », 0 « licence »).

---

## Overall verdict

Le papier est proche d'un état soumissible, et c'est la meilleure version à ce jour : la thèse est énoncée tôt et de façon testable, le cadre (O, σ, κ) est cohérent de bout en bout (règle, arbre, annexe A et cas travaillés racontent la même histoire), les rivaux les plus proches (FaithQA, HIC-Bench, Jiang et al.) sont traités comme des rivaux et non comme des notes de bas de page, et les surclaims de la version précédente ont été correctement dégonflés. Un obstacle bloquant demeure, et il est mécanique, pas conceptuel : **l'Annexe B publie des nombres qui ne se réconcilient pas entre eux** (1 389 prompts pour un croisement 3×3×3 ; 1 389×9 = 12 501 ≠ 12 469 ; assignation des 5 températures non décrite), avec un TODO auteur en français encore dans le source (l. 848). Un relecteur CL qui fait le calcul — et l'un des trois le fera — conclura que les chiffres n'ont pas été vérifiés, et ce doute contaminera l'audit de la Table 2, qui est pourtant solide. Deuxième obstacle, non bloquant mais réel au vu du retour encadrant : la passe de simplification de la langue est à ~60 % (il reste ~15 phrases de plus de 42 mots en prose courante et une douzaine de mots rares recensés ci-dessous). Tout est corrigeable sans nouvelle expérience, en 2 à 3 jours.

**Recommendation** : Major revision — mais portée par un seul item (Annexe B) ; le reste relève d'une minor. Annexe B corrigée et passe de langue finie, je mettrais « accept with minor revisions ».
**Confidence** : High

---

## Detailed critique

### 1. Contribution clarity — STRONG

La thèse tient en une phrase lisible dès l'abstract (« hallucination should instead be evaluated against the prompt's truth contract », l. 140) et est reformulée opérationnellement en §1 (l. 188–199) avec la garde qui manquait avant : « The contract relativizes the evaluative verdict, not truth itself » (l. 195). La distinction H/LD n'est plus seulement affirmée : elle est opérationnalisée par deux gates vérifiables + un score d'utilité gradué (encadré l. 356–361), une règle de décision (l. 363–368), un arbre (Fig. 1) et une règle formelle (Annexe A) qui sont mutuellement cohérents. Les trois contributions sont typées (conceptuelle / diagnostique / programmatique, l. 280–284) — exactement le format qu'attend un position paper CL.

**What a stronger version would do** : rien de structurel ; ajouter « forty » dans l'abstract (« an illustrative audit of forty representative benchmarks ») pour donner à la contribution diagnostique un contour chiffré dès la première page.

### 2. Novelty and positioning — ADEQUATE

Le positionnement contre les voisins immédiats est fait et honnête : FaithQA « has neither O nor κ » (l. 171–172, développé l. 671), HIC-Bench dérive son label de l'output « so the label cannot flip with the contract » (l. 172, 672), Jiang et al. traités par déplacement d'unité d'analyse (l. 673), et la faithfulness distinguée par l'absence d'analogue de κ (l. 198, 446–456). Le paragraphe « What the contract is not » (l. 176–181) préempte l'objection « relabeling ». Ce qui manque pour un lectorat *Computational Linguistics* précisément : l'ascendance pragmatique. Un « contrat » fixé par le prompt, avec des engagements de vérité et des licences — c'est du Grice (principe de coopération, maximes de qualité) et du Clark (common ground) à un lecteur CL, et le papier ne cite ni l'un ni l'autre (Stalnaker et Searle sont là, mais pour l'assertion et la fiction seulement). Un relecteur demandera « en quoi TC(p) n'est-il pas la maxime de qualité rendue explicite ? » et le papier n'a pas de paragraphe pour répondre.

**What a stronger version would do** : un paragraphe court dans §2 (Motivation) reconnaissant la filiation gricéenne et la différence (Grice décrit des normes conversationnelles implicites ; TC(p) en isole le sous-ensemble pertinent pour la vérité et le rend annotable et scorable) — deux citations, cinq lignes, objection désamorcée.

### 3. Argument structure and logic — STRONG

La progression annoncée (l. 272–278 : deux « analytical moves ») est tenue : audit (§3) puis verdicts travaillés (§4), et la conclusion ne prétend à rien de plus que ce que ces deux moves portent. Les surclaims de la version antérieure sont corrigés (« suggest the gap is not merely anecdotal », l. 277 ; « cannot justify the appropriate verdict… without silently assuming a task contract », l. 740). Deux points restent affirmés plutôt qu'argumentés : (a) l. 464, « audience and genre act on evaluation through the oracle they select and the form license they grant » — une phrase, zéro exemple, alors qu'un sceptique tient là son angle (la politesse ? la persona ? la politique de sécurité du fournisseur, pourtant mentionnée l. 679 ?) ; (b) la fonction scope(κ) porte beaucoup de poids (l. 359, 392, 717) et n'est définie que par exemples — le Cas D montre *où* est la frontière mais pas *comment* on la trace en général. La limitation 1 (l. 799) concède la normativité globalement, sans nommer scope(κ) comme le lieu où elle mord le plus.

**What a stronger version would do** : donner un exemple concret pour l. 464 (ou l'affaiblir en conjecture explicite) ; une phrase dans les limitations nommant scope(κ) comme le point où le désaccord d'annotation se concentrera.

### 4. Claim calibration — WEAK (un seul item, mais bloquant)

Les hedges du corps sont bien calibrés (« suggest », « admits two readings », « we report them only as motivation », « proposed instrument, not a validated one ») et il n'y a plus aucun `\citetodo`. Mais l'Annexe B casse la calibration là où elle est le plus vérifiable : (i) « 1,389 prompts … crossing three writing formats … three style-emphasis levels … and three target lengths » (l. 849) — 3×3×3 = 27 ne divise pas 1 389 ; le facteur « sujets Wikipédia » est mentionné mais sa cardinalité manque ; (ii) 1 389 × 9 modèles = 12 501 ≠ 12 469 outputs annoncés — les ~32 générations exclues ne sont pas documentées ; (iii) « five sampling temperatures » sans assignation (croisées ? réparties ?) ; (iv) le TODO auteur en français est toujours dans le source (l. 848). S'ajoutent : « substantial inter-judge agreement (mean Cohen's kappa of 0.756) » (l. 968) — « substantial » est la bande de Landis & Koch, à citer ou à supprimer, et la taille du « shared subset » jugé par les 4 LLM n'est pas donnée ; l'item XSum `bbcid 28328378` / BERTS2S (l. 694) doit être re-vérifié contre les annotations publiées de Maynez et al. avant soumission.

**What a stronger version would do** : réconcilier les comptes depuis les logs (plan exact du croisement, cellules exclues comptées, assignation des températures) ; à défaut, remplacer les nombres précis par des ordres de grandeur explicitement approximatifs. Ne soumettre en aucun cas l'état intermédiaire.

### 5. Framework coherence — STRONG

Le défaut structurel relevé par la review externe du 30/06 (« unverifiable » comme verdict terminal, incohérent avec le Cas C) est réparé partout et de façon cohérente : l'état d'évidence est une couche enregistrée, pas un verdict (règle l. 363–368 ; arbre et caption l. 424–433 ; Annexe A l. 831–839 ; Cas C l. 708–712). σ a un rôle stable et non contradictoire (pas un axe de verdict, mais l'axe d'invariance de la mesure — l. 316–319, répété fonctionnellement l. 772–775) ; insufficient-LD est correctement cantonné au niveau output (l. 211, 536–539, 790–793) ; la carte Fig. 2 et la Table 2 sont harmonisées sur le coin (σ low, κ=2). Un seul résidu : le test 5 de l'arbre est formulé en question fermée (« is c novel and appropriate? », sorties yes/no, l. 394, 406, 411) alors que le texte insiste trois fois sur le fait que l'utilité est un *score gradué* et non un gate (l. 347, 360, 431–433). Un relecteur pointilleux y verra une contradiction interne entre la figure et le texte.

**What a stronger version would do** : renommer le nœud 5 « score usefulness (graded) » et remplacer les labels yes/no de ses sorties par high/low.

### 6. Related work coverage — ADEQUATE

88 références, aucune clé morte, les entrées sensibles du tour précédent sont corrigées (WritingBench 2025, titre CreativityPrism, Jiang et al. intégré). Spot-checks d'exactitude (5) : Maynez et al. — « extrinsic but factual » sur XSum, usage exact ; Searle 1975 — « pretended assertions », exact ; Stalnaker 1978 — assertion/common ground, exact ; Bayat et al. — verdict ternaire avec `undecidable` pénalisé, exact (vérifier le détail « at a fixed weight », l. 709) ; Zhou et al. — contraintes vérifiables d'instruction-following, exact. Trois fils manquent ou méritent vérification : (i) la pragmatique (cf. dimension 2) ; (ii) la ligne « SemDis » de la Table 2 cite `organisciak_beyond_2023` (« Beyond semantic distance… ») alors que la plateforme SemDis est de Beaty & Johnson (2021) — renommer la ligne (« Automated DT scoring ») ou ajouter la citation d'origine ; (iii) `yona_metacognition_2026` (« Hallucinations Undermine Trust; Metacognition is a Way Forward ») porte l'attribution de « faithful uncertainty » (l. 455) — le terme vient de Yona et al. 2024 ; vérifier que l'entrée 2026 est bien le bon véhicule pour cette attribution précise. Le multi-tour/dialogue est concédé en limitation 5 sans ancrage bibliographique — acceptable, une citation d'ancrage serait mieux.

**What a stronger version would do** : corriger la ligne SemDis, vérifier l'attribution Yona, ajouter Grice/Clark, et une citation d'ancrage pour la limitation dialogue.

### 7. Writing quality — ADEQUATE (en net progrès ; passe inachevée)

La passe B du plan 2026-07-02 est appliquée sur sa hit-list d'origine (vérifié : « This effort hides a paradox » l. 160, « confuses » l. 194, « fragility » l. 774, « adds to the problem rather than solving it » l. 679, « the most instructive case » l. 573, « not an accident » l. 567) et la moyenne tombe à 24,1 mots/phrase — correct. Mais le critère encadrant n'est pas encore atteint : 38 phrases ≥ 42 mots subsistent, dont ~15 en prose courante (les pires : l. 366, 72 mots, la phrase-règle centrale du papier ; l. 671, 56 mots ; l. 451–454 ; l. 317 ; les items d'agenda l. 750, 757, 758). Vocabulaire rare résiduel recensé : « relativizes » (l. 195), « orthogonal » ×2 (l. 317, 669), « echoing … energizes » (l. 349), « revealingly » (l. 687), « schematic verdict tests » (l. 689), « posit » (l. 184), l'idiome « read off » ×5 (l. 590, 756, 791, 799 + caption l. 433), « admits » ×4 (l. 580, 758, 852…), « pull against each other » (l. 567), « does its work » (l. 773), « licensed-divergence yield » (l. 792). S'ajoutent deux tics non lexicaux : le disclaimer « illustratif / non validé » répété ≥ 6 fois (l. 277–278, 556–559, 574–575, 582, 761, 802–803) — la prudence répétée finit par ressembler à un manque de confiance — et ~12 renvois « (Section 5) » qui hachent la lecture. Le commentaire TODO en français (l. 848) doit disparaître du source.

**What a stronger version would do** : finir la passe avec la hit-list v2 et les découpes de phrases du plan compagnon (`plan_modification_reformulation_2026-07-05.md`), puis faire relire abstract + §1 + §2 à l'encadrant comme test de sortie.

---

## Critical issues (must fix before submission)

1. **Annexe B : arithmétique non réconciliée + TODO français dans le source** (l. 848–849). Reconstituer depuis les logs : cardinalité du facteur sujets, plan exact du croisement, compte des générations exclues (12 501 − 12 469 = 32 ?), assignation des 5 températures ; sinon, passer aux ordres de grandeur explicites. Supprimer le commentaire l. 848.
2. **Ligne « SemDis » de la Table 2** (l. 638) : attribution à vérifier — `organisciak_beyond_2023` n'est pas SemDis (Beaty & Johnson 2021). Renommer la ligne ou corriger la citation. Une erreur d'attribution visible dans la table centrale de l'audit coûte cher en crédibilité.
3. **Vérification d'ancrage du Cas A** (l. 694) : confirmer `bbcid 28328378` / BERTS2S / « stripped of environmental permit » dans les annotations publiées de Maynez et al. C'est le seul item réel cité verbatim ; s'il est faux, le paragraphe qui assume des « schematic verdict tests » partout ailleurs s'effondre.
4. **Build local cassé** : `build/main_position_personal.aux` est corrompu (écriture interrompue ; le dernier `make` s'est terminé en « Fatal error occurred, no output PDF file produced! »). `make clean && make pdf` avant toute itération — vérifié par ailleurs : le .tex compile proprement sur aux frais (39 p., 0 erreur, 0 overfull).

## Minor issues

- l. 968 : sourcer ou supprimer « substantial » (Landis & Koch) ; donner la taille du sous-ensemble jugé par les 4 LLM.
- l. 394/406/411 : test 5 de l'arbre formulé en gate yes/no alors que le texte le définit comme score gradué — renommer le nœud et ses sorties.
- l. 464 : affirmation audience/genre sans exemple — illustrer ou marquer comme conjecture.
- l. 554–562 : le paragraphe « What the columns show » répète quatre fois la même idée (annotations ≠ mesures) — compresser à deux phrases.
- Abstract : envisager « forty representative benchmarks » (cohérent avec l. 550, 565).
- Renvois « (Section~\ref{sec:agenda}) » : ~12 occurrences — n'en garder qu'un par sous-section.
- Limitation 5 (dialogue, l. 804) : une citation d'ancrage.
- Métadonnées CL (`CL_submission_metadata.txt`) : à jour et cohérentes avec le PDF (titre, abstract, single-blind) — re-synchroniser si l'abstract bouge.

## What works

Le cœur conceptuel est solide et c'est le bon papier pour la catégorie : κ comme composante irréductible est défendu par un argument propre (le contraste κ=1 à proposition constante, l. 446–456, est la meilleure page du papier) ; l'architecture évidence/licence/stance/utilité est cohérente dans ses quatre expositions (règle, arbre, annexe, cas) ; le Cas D — le flip qui *ne se produit pas* — est un choix argumentatif intelligent qui immunise contre l'objection « tout devient permis sous κ=2 » ; l'audit assume son statut d'illustration codée par un seul annotateur au lieu de se faire passer pour une mesure ; les limitations sont réelles et non cosmétiques ; et la dernière phrase de la conclusion (« stop scoring divergence as if every prompt asked for the same thing », l. 812) est exactement le genre de phrase de position qu'on retient. La migration terminologique « contrat » est complète et paye : les termes se répondent (truth contract / form license / content license / licensed–unlicensed divergence) comme le demandait l'encadrant.

---

## Severity key

| Rating | Meaning |
|--------|---------|
| FATAL | Paper cannot be accepted as-is |
| WEAK | Likely grounds for rejection; fixable but non-trivial |
| ADEQUATE | Passes the bar; room for improvement |
| STRONG | A genuine asset to the paper |
