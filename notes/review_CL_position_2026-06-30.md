# Review pré-soumission — *Hallucination Is Relative* — cible : **Computational Linguistics** (position)

Fichier relu intégralement : `main_position_personal.tex` (1121 l.). Build vérifié : `make check` → **EXIT 0**, 0 citation/référence non définie, 0 erreur fatale. **89/89** clés citées résolvent dans `references.bib` ; **0** `\citetodo`/`\TODO`/`\claimtodo`. PDF = **40 pages** en mode `[manuscript]` (double interligne) — soit ~18–22 p. de contenu une fois en interligne simple CL. L'audit annonce « forty benchmarks » : **40** lignes confirmées dans la Table 2 (26 hallucination + 14 créativité). Tirets cadratins `---` en prose : **0 restant** (déjà corrigés ; le « their worked instance » de Maynez a aussi été reformulé en « an instance of the kind they document », l.671).

Cette review est indépendante. Elle recoupe par endroits `review_pre_submission.md`, mais elle est **recalibrée sur la structure réelle de la revue CL** (voir Issue #1), ce qui change le verdict sur la longueur.

---

## Verdict global

Sur le **fond**, c'est un bon position paper : le cadre `(O,σ,κ)` est propre, la decision rule est réellement opérationnelle (arbre + 3 conditions de `PD`), l'audit de 40 benchmarks et les worked verdicts font un vrai travail argumentatif, et la calibration des hedges est exemplaire. Mais le papier **n'est pas prêt à soumettre**, et l'obstacle n°1 n'est pas conceptuel : **« position paper » n'est pas une catégorie de soumission de Computational Linguistics.** CL a quatre voies — *Papers* (30–40 p. de contenu ; courts 15–25 p.), *Survey Articles* (sur proposition), *Squibs & Discussions* (≤ 8 p.), et *Last Words* (« a personal opinion or provocative perspective », essai court, sur contact direct de l'éditeur). Une « position » au sens propre = **Last Words**, qui est un essai de quelques pages, sans appareil — l'opposé exact de ce manuscrit. Tel quel, le texte (cadre + audit + verdicts + **annexes expérimentales**) a le gabarit et l'apparat d'un **regular Paper**, mais alors il est jugé aux standards « significant new research results » et l'annexe expérimentale devient une expérience *évaluée comme telle* — sous-puissante. Le manuscrit souffre donc d'une **crise d'identité** que cette variante `_personal` aggrave : elle réintègre en Annexes B–D une étude de 12 469 sorties (GLM/médiation/fiabilité inter-juges) que le corps désavoue (« we argue this position rather than establish it with a new controlled study », l.265). Tant que la cible CL exacte n'est pas tranchée, le meilleur reviewer recommandera *major revision* — non par faiblesse du cadre, mais par inadéquation format/catégorie.

**Recommandation** : Major revision
**Confiance** : Medium-High

---

## Critique détaillée (7 dimensions)

### 1. Clarté de la contribution — STRONG

La thèse est précise, testable et posée tôt : abstract (l.142, `TR(p)=(O,σ,κ)`) puis l.186–193. Un lecteur résume la contribution depuis le seul abstract. La distinction `H`/`PD` est **opérationnellement définie**, pas assertée : decision rule (l.343), arbre (Fig., l.351–416), et surtout les trois conditions de `PD` — *licensed / useful / presented-on-terms* (l.334). Trois contributions explicitement étiquetées conceptual/diagnostic/programmatic (l.276–279). La Table 1 « thesis in one view » (l.198–262) est un dispositif pédagogique efficace : elle fait flipper le verdict à régime fixé, ce qui *montre* la thèse avant de la formaliser.

*Réserve* : la dernière phrase de l'abstract (l.145) fait entrer la sonde empirique (« diagnostic evidence … binary verification can mistake licensed divergence for hallucination ») dans l'abstract d'un position paper. Déjà adoucie vs versions antérieures, mais elle brouille encore la contribution annoncée.

**Version plus forte** : sortir toute trace empirique de l'abstract ; n'y annoncer que cadre + audit + worked verdicts.

### 2. Nouveauté et positionnement — ADEQUATE (risque WEAK chez un reviewer dur)

La différenciation vs les rivaux proches est faite tôt et bien : FaithQA (l.169, « it has neither $O$ nor $\kappa$ ») et HIC-Bench (l.170, « reads that label off the output … cannot flip with the contract »). Le paragraphe « What the contract is not » (l.173–178) exécute frontalement les trois objections de relabeling (oracle / style / task-type) et désigne `κ` comme la composante irréductible — c'est exactement la parade attendue, et elle est bien placée. L'argument porteur (le cas `κ=1` de triage clinique, l.427–437, ancré sur `yona_metacognition_2026` et `searle_logical_1975`) tient : deux sorties portant la *même* proposition reçoivent des verdicts opposés selon le marquage épistémique, ce qu'aucune métrique de faithfulness ne capture.

*Risque réel pour CL* : la revue exige « a substantive contribution to the computational processing of language ». Un reviewer déterminé verra `(O,σ,κ)` comme la **synthèse** de trois lignes connues (choix d'oracle / style transfer / permissivité de tâche) et demandera ce que la synthèse *permet de calculer* qu'on ne calculait pas. La réponse du papier est la decision rule qui change des verdicts (§4) — mais ces verdicts sont *construits* (Issue #4), donc la démonstration de nouveauté repose sur des exemples illustratifs, pas sur une mesure. C'est le maillon que CL poussera le plus.

**Version plus forte** : ancrer au moins un worked verdict sur un item réel publié (annotations XSum de Maynez et al. sont publiques) pour que « le cadre change un vrai verdict » cesse d'être une démonstration sur exemple fabriqué.

### 3. Structure argumentative et logique — ADEQUATE/STRONG

Enchaînement net : paradoxe → thèse → cadre → audit → verdicts → agenda → discussion. Peu de trous ; concessions honnêtes (idéalisation de `TR` l.294–295 ; pas de claim de complétude l.446).

Deux endroits où l'on **asserte plus qu'on ne prouve** :
- **Minimalité de `(O,σ,κ)`** (l.439–447) : les réductions « severity → couche de scoring », « audience/genre → se ramènent à $O$ et $\sigma$ » sont plausibles mais non démontrées. Le hedge « We make no completeness claim » (l.446) sauve la mise, mais « minimal » est revendiqué dans le titre de la sous-section sans preuve de minimalité.
- **Localisation de `TR` au prompt** (l.294–295) : c'est l'hypothèse cachée qu'un sceptique rejette. Si `TR` vit aussi dans le system prompt / le contexte de déploiement / les attentes utilisateur (ce que le texte concède), l'annotation prompt-level est partielle — et l'audit, qui lit `σ/κ` sur le *task design*, devient partiellement circulaire (cf. Issue #5).

**Version plus forte** : reformuler « minimal » en « suffisant pour faire flipper les verdicts que les pipelines actuels ratent » (ce que le texte dit déjà l.447, mais que le titre contredit), et durcir la défense anti-circularité de la Table 2.

### 4. Calibration des claims — STRONG

C'est le point fort le plus constant : « indicative rather than confirmatory » (l.560), « a proposed instrument, not a validated one » (l.730), la section Limites (l.764–770) et l'Annexe *Reviewer-Informed Caveats* (l.1111–1117) sont des modèles d'honnêteté. Aucun chiffre non sourcé dans le corps conceptuel.

*Le paradoxe de cette variante* : la sonde empirique est caveatée jusqu'à la quasi-nullité — `κ` bas partout (l.814), vérifieur binaire qui « inflate » les taux concédé (l.1115), confond `lesson_plan` non-groundable et hallucination (l.1114). Un reviewer demandera mécaniquement : **« pourquoi inclure 332 lignes d'annexe expérimentale si vous en désavouez chaque lecture ? »** L'excès de hedging n'est pas un défaut de calibration — c'est le symptôme de l'Issue #2 (identité). Dans `main_position.tex` (la variante sans expérience) ce paradoxe disparaît.

**Version plus forte** : voir Issue #2 — soit assumer la sonde et la défendre, soit la réduire à un paragraphe indicatif dans le corps.

### 5. Cohérence du cadre — STRONG

`O, σ, κ, F, A, H, PD` sont définis précisément (l.291–340) et utilisés de façon cohérente ; macros stables (`\CI` retiré proprement). Le cadre **contraint réellement** ce qui compte comme hallucination (arbre + 4 feuilles). Le double rôle de `σ` (orthogonal au verdict, mais load-bearing pour la *mesure*, l.308–311) est la pièce la plus fine et la plus originale du papier.

*Friction mineure* : l'arbre (Fig.) a **six** sorties (SV, supported, unverifiable, H, H, PD) ; la decision rule en prose (l.343) et l'Annexe A (l.794–803) raisonnent en **trois** branches (H/PD/neither). Le pont existe (l.512–514 : « These four categories are the leaves … ») mais le lecteur fait encore le travail de réconcilier 6 feuilles ↔ 3 verdicts. De plus *stylistic variation* et *benign noise* sont deux feuilles distinctes qui retombent dans « neither » sans que la distinction soit jamais load-bearing.

**Version plus forte** : une phrase sous la figure mappant explicitement les 6 feuilles sur les 3 verdicts (3 scorés ; 3 états opérationnels non-divergents).

### 6. Couverture du related work — ADEQUATE

Bien couvert : surveys hallucination (`ji`, `huang`), faithfulness (`maynez`, `kryscinski`), créativité (`hou`, `runco`, `acar`, `franceschelli`), détection (`farquhar` semantic entropy, `marks` geometry, `min` factscore), décomposition/vérification (`rajendhran`, `chen_menli`). L'ancrage *speech-act* de `κ` (`stalnaker_assertion_1978`, `searle_logical_1975`) est une connexion non triviale et juste, qui donne au cadre une profondeur au-delà de l'ingénierie d'éval. RLHF/alignement traité (l.656, `ouyang`) ; instruction-following séparé proprement (l.726, l.734, `zhou_ifeval`).

*Manques attendus par un reviewer CL* :
- **Grounding en dialogue** et **domaines légal/factuel** : seulement en motivation (l.154), jamais engagés — or CL a une tradition forte sur le dialogue.
- **Abstention / selective prediction / calibration** : touché (l.646) mais à préempter plus fort. C'est la « réponse strict-regime » la plus proche ; il faut dire clairement que `κ>0` est précisément ce que cette ligne n'a pas.
- **Dépendance lourde à des preprints très récents** pour la nouveauté centrale : `hao_faithqa_2025` (arXiv 2506), `yang_hicbench_2025` (arXiv **2512**, déc. 2025), `yona_metacognition_2026` (arXiv 2605, *à paraître ICML 2026, position track*). Vérifié : les trois existent et sont cités fidèlement. Mais ce sont des cibles mouvantes — re-vérifier versions/venues avant soumission, la différenciation en dépend.

Spot-check (5 clés) : `maynez_faithfulness_2020` (catégorie « extrinsic but factual » réelle, exemple désormais prudemment reformulé) ✓ ; `searle_logical_1975` (pretended assertions) ✓ ; `sun_hallucinating_2024` (« good hallucinations as reasoning paths correct after convergence ») ✓ ; `bayat_factbench_2024` (verdict `undecidable`, pénalité à poids fixe) ✓ ; `sadeq_mitigating_2024` (role-play fictionnel, EMNLP 2024 Findings) ✓ — utilisé pour *le phénomène*, l'instance « 1920s Paris » étant ensuite construite (cf. Issue #4).

**Version plus forte** : un demi-paragraphe engageant abstention/selective-prediction comme la « réponse strict-regime » à laquelle `κ` ajoute la licence de *quitter* l'évidence.

### 7. Qualité d'écriture — ADEQUATE (dense)

Prose précise, terminologie cohérente (la passe prose-hygiene se voit ; em-dashes purgés). Mais **très dense** : phrases multi-clauses de 50+ mots qui ralentissent un texte censé persuader — p. ex. l.145 (abstract), l.304 (énorme : style/transfer/foregrounding/datasets en une phrase), l.271, l.539, l.552. Redondances : la différenciation FaithQA/HIC-Bench apparaît **3×** (l.168–171, l.510/528, l.648–651) ; le caveat « indicative not confirmatory » **4×+** (l.270, l.273, l.560, l.770, l.1113). Pour Last Words/Squib ce serait rédhibitoire ; pour un Paper c'est du polissage.

**Version plus forte** : casser les 5 phrases les plus longues ; dédupliquer la différenciation (une fois en §1, une fois en §3.3) ; fusionner les caveats empiriques en un seul lieu.

---

## Issues critiques (à corriger avant soumission)

1. **Catégorie CL — LA décision, bloquante.** « Position paper » n'existe pas comme section CL. Trois routes, conséquences distinctes :
   - **(a) Last Words** (la vraie « position ») : essai court, provocateur, ~4–6 p., quasi sans appareil, **sur contact direct de l'éditeur** (`editor@cljournal.org`). ⇒ couper ~80 % : garder thèse + l'argument d'irréductibilité de `κ` + l'agenda en 2–3 paragraphes ; **supprimer** audit Table 2, expérience, la plupart des figures. C'est un autre objet.
   - **(b) Regular Paper (court, 15–25 p. de contenu)** : le gabarit actuel convient *en longueur*, mais on est jugé « significant new research results ». ⇒ il faut **trancher l'identité** (Issue #2) : soit assumer l'étude empirique comme résultat, soit la retirer et laisser cadre + audit + worked verdicts porter, en réécrivant le disclaimer l.265.
   - **(c) Squib & Discussion (≤ 8 p.)** : le critère squib « a commonly accepted idea/method is flawed » colle parfaitement à la thèse (« hallucination-as-binary est défectueux »). ⇒ compression forte mais format honnête pour une thèse conceptuelle.
   *Fix* : choisir (a/b/c) **avant** tout autre travail. Recommandé si tu veux rester « position » : (c) Squib, ou (a) Last Words après contact éditeur. Si tu veux garder l'apparat : (b) Paper, et résoudre #2.

2. **Crise d'identité position vs empirique — propre à `_personal`.** Le corps désavoue toute étude contrôlée (l.265) ; les Annexes B–D présentent une étude de 12 469 sorties, 9 modèles, 310 357 claims, + diagnostic `κ` HIGH/LOW (l.808–1117). Un reviewer la jugera comme une expérience et la trouvera sous-puissante : vérifieur binaire sans label `PD` (l.816), inflation concédée (l.1115), confond `lesson_plan` non-groundable et hallucination (l.1114). *Fix* : **trancher.** Option A (recommandée pour rester « position ») — réduire à **un paragraphe « sonde indicative »** dans le corps (garder seulement « le style seul fait monter le taux mesuré » + le diagnostic `κ` HIGH/LOW), supprimer GLM/médiation/fiabilité. Option B — assumer le pilote comme contribution et le défendre (mais ce n'est alors plus un position paper « pur », et il faut le muscler : c'est la route (b) de l'Issue #1). La variante `main_position.tex` (sans expérience) résout déjà ce point — clarifier laquelle des deux est la soumission.

3. **`PD` non opérationnalisée — le construit central neuf.** Concédé (l.769) et un protocole est esquissé (l.722–730 : gate de licence + stance check ≈ IFEval + seuil d'usefulness). C'est mieux que rien, mais « usefulness » reste evaluator-dependent et non validé. Sceptique : « vous avez renommé le creativity scoring et ajouté une porte. » *Fix* : vendre explicitement la **décomposabilité** — les deux composantes mécaniques (licensing gate l.725 ; stance check l.726) font déjà un travail qu'aucun scorer regime-agnostic ne fait, *même si* usefulness reste dur. Ne pas prétendre mesurer `PD` ; prétendre l'avoir rendu **partiellement auditable**.

4. **Worked verdicts présentés comme phénomènes documentés mais instances construites** (§4, l.669–688). Case A déjà prudemment reformulé (« an instance of the kind they document », l.671) ✓. Restent Case B (« 1920s Paris », l.679) et Case C (« a tool supports multiple input formats », l.686) : vérifier que l'item FactBench de Case C est réel ou le marquer « FactBench-style instance » (c'est déjà le cas l.686 — bon). *Fix* : ancrer **au moins un** cas sur un item réel publié et citable par ID (annotations XSum publiques de Maynez et al.) ; sinon un reviewer lira tout §4 comme des exemples ad hoc, ce qui affaiblit la preuve de nouveauté (cf. #2 de la dim. 2).

5. **Circularité potentielle de la Table 2.** Les colonnes `σ/κ` sont *tes* inférences lues sur le task design (l.534–540), pas des mesures. Le texte le dit (l.535–538) et défend « l'uniformité EST le résultat » (l.540). *Fix* : durcir d'une phrase la distinction entre **« aucun benchmark ne *score* `(σ,κ)` »** (le constat, imparable) et **« voici les niveaux que la tâche implique »** (l'inférence, contestable), pour qu'un reviewer ne lise pas la table comme une donnée fabriquée. Le risque augmente si `TR` n'est pas purement prompt-level (cf. dim. 3).

6. **Format `[manuscript]` / longueur.** 40 p. en double interligne. CL veut interligne **simple** (Style Guidelines) ; la longueur de *contenu* (~18–22 p.) est ce qui compte, hors réf./annexes. *Fix* : décider en fonction de #1 ; si Paper, OK ; si Squib/Last Words, c'est la coupe massive. Passe finale : 155 overfull/underfull hbox signalés au build (cosmétiques mais nombreux).

## Issues mineures

- Abstract l.145 : retirer la mention empirique (chiffre/diagnostic hors d'un abstract de position).
- Dédupliquer la différenciation FaithQA/HIC-Bench (3×) et les caveats « indicative » (4×+).
- Pont arbre (6 feuilles) ↔ decision rule (3 branches) : une phrase sous la Fig.
- Phrases > 50 mots (l.145, 271, 304, 539, 552) : scinder.
- Titre de sous-section « Scope and minimality » : « minimality » sans preuve — adoucir (cf. dim. 3).
- Re-vérifier versions/venues arXiv de `hao_faithqa_2025`, `yang_hicbench_2025`, `yona_metacognition_2026` avant soumission (nouveauté qui en dépend).
- 155 overfull/underfull hbox : passe de mise en page finale.
- `references.bib` = 498 entrées pour 89 citées : surensemble inoffensif, mais élaguer les clés de l'ancienne version empirique (cartes-modèles, stats) si tu vises la propreté.

## Ce qui fonctionne (forces réelles)

- **Le cadre `(O,σ,κ)` fait un vrai travail**, pas qu'un vocabulaire : la decision rule change des verdicts (§4).
- **L'argument d'irréductibilité de `κ`** (l.427–437, cas `κ=1` clinique) est la meilleure page du papier et le rempart solide contre « ce n'est qu'un relabeling ».
- **Le double rôle de `σ`** (orthogonal au verdict, load-bearing pour la mesure, l.308–311) : subtil, original, et c'est ce qui justifie d'inclure `σ` dans le contrat sans en faire un 3ᵉ axe de verdict.
- **Calibration et honnêteté** (Limites, Caveats) : rares et précieuses ; un éditeur les remarquera positivement.
- **Intégrité technique** : 89/89 clés résolvent, 0 citetodo, `make check` propre, « forty benchmarks » exact, em-dashes purgés.
- **L'ancrage speech-act** (`stalnaker`/`searle`) donne au cadre une assise théorique que la plupart des papiers d'éval n'ont pas.
- **La Table 1 « thesis in one view »** : excellent dispositif — montre la thèse (flips à régime fixé) avant de la formaliser.

---

## Clé de sévérité

| Note | Sens |
|------|------|
| FATAL | Le papier ne peut pas être accepté en l'état |
| WEAK | Motif probable de rejet ; corrigeable mais non trivial |
| ADEQUATE | Passe la barre ; perfectible |
| STRONG | Atout réel du papier |

---

### Synthèse actionnable (ordre de travail)

1. **Trancher la catégorie CL** (Issue #1) — tout le reste en dépend. Pour rester « position » : Squib (≤8 p.) ou Last Words (contact éditeur). Pour garder l'apparat : regular Paper.
2. **Trancher position vs empirique** (Issue #2) — décider si la soumission est `main_position.tex` (sans expé) ou `main_position_personal.tex` (avec). Ne pas soumettre une variante qui se désavoue elle-même.
3. Ancrer ≥ 1 worked verdict sur un item réel (#4) ; durcir la défense anti-circularité Table 2 (#5).
4. Vendre la décomposabilité de `PD` (#3) ; abstract sans empirique ; dédup + scinder les phrases longues.
5. Passe format finale (interligne simple, overfull boxes) selon la catégorie retenue.
