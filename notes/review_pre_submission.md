# Review pré-soumission — *Hallucination Is Relative* (track position paper)

Review non complaisante, calibrée sur le standard d'un track position/theme de venue NLP de premier rang (ACL/EMNLP/NAACL), ou d'une soumission *Computational Linguistics* position. Fichier relu : `main_position_personal.tex` (1079 l., PDF = **27 pages**). Toutes les clés citées (93) résolvent dans `references.bib` ; 0 `\citetodo` réel ; le build compile (bbl régénéré, pas d'erreur fatale, 11 overfull hbox cosmétiques).

---

## Verdict global

C'est un bon position paper conceptuel, au-dessus de la barre d'un theme track sur le **fond** : le cadre `(O,σ,κ)` est propre, la decision rule est réellement opérationnelle (arbre de décision + 3 conditions de `PD`), l'audit de 40 benchmarks et les *worked verdicts* font un vrai travail argumentatif, et la calibration des hedges est exemplaire. Le papier n'est cependant **pas prêt à soumettre en l'état**, pour deux raisons qui ne sont pas de fond mais de cadrage, et qui sont rédhibitoires si on les ignore. **Premièrement, la longueur/venue** : 27 pages avec une annexe expérimentale de 332 lignes ne passe aucun track position de conférence (limite typique 8 p. + références) ; il faut soit viser explicitement la revue CL, soit amputer aux deux tiers. **Deuxièmement, la crise d'identité position-paper vs papier empirique** : le texte répète « we argue this position rather than establish it with a new controlled study » (l.240) tout en cachant en annexe une étude de 12 469 sorties avec GLM/GLMM/médiation que le reviewer va vouloir juger comme une expérience — et qu'il jugera sous-puissante (vérifieur binaire, inflation concédée, confond oracle/template sur `lesson_plan`). Le pilote est à double tranchant : il faut le réduire à une sonde indicative d'un paragraphe, ou l'assumer et le défendre. Tant que ces deux points ne sont pas tranchés, le meilleur reviewer recommandera *major revision*, pas par faiblesse du cadre mais par inadéquation du format à la thèse.

**Recommandation** : Major revision
**Confiance** : Medium-High

---

## Critique détaillée (7 dimensions)

### 1. Clarté de la contribution — STRONG

La thèse est précise, testable, et posée tôt : abstract l.127 (`TR(p)=(O,σ,κ)`), puis l.160-168. Un lecteur résume la contribution depuis le seul abstract (« l'hallucination doit être évaluée relativement au truth regime ; `H` = violation, `PD` = divergence licenciée »). La distinction `H`/`PD` est **opérationnellement définie**, pas seulement assertée : decision rule l.318, arbre Fig. l.380, et surtout les trois conditions de `PD` (licensed / useful / presented-on-terms, l.309). Trois contributions explicitement étiquetées conceptual/diagnostic/programmatic (l.252-254). C'est un vrai point fort.

*Réserve* : la dernière phrase de l'abstract (l.130, « a matched diagnostic in which a binary verifier counts licensed invention as hallucination ») fait entrer le pilote empirique dans l'abstract d'un *position paper*. Ça brouille la contribution annoncée — voir Issue critique #2.

**Ce que ferait une version plus forte** : sortir toute trace chiffrée de l'abstract ; n'y annoncer que cadre + audit + worked verdicts.

### 2. Nouveauté et positionnement — ADEQUATE (risque WEAK)

La différenciation vs les rivaux les plus proches est faite tôt et bien : FaithQA (l.153, « it has neither O nor κ ») et HIC-Bench (l.153, l.618-620, « reads that label off the output… cannot flip with the contract »). La distinction vs la context-faithfulness repose entièrement sur `κ` — la licence explicite de *quitter* l'évidence — et c'est argumenté de façon convaincante au §2 (l.401-411, le cas `κ=1` de la triage clinique, ancré sur `yona_metacognition_2026` et `searle_logical_1975`). C'est l'argument porteur de la nouveauté, et il tient.

*Risque* : un reviewer déterminé verra quand même `(O,σ,κ)` comme un repackaging de trois choses connues — choix d'oracle (grounding), style transfer (`σ`), et permissivité de tâche (`κ` ≈ « tâche créative ou non »). La **synthèse** est la nouveauté, pas les composantes. L'argument d'irréductibilité de `κ` (l.401-411) doit être remonté plus tôt et rendu imparable, parce que c'est le seul rempart contre « ce n'est qu'un relabeling ». Le mouvement « `σ` orthogonal au verdict mais load-bearing pour la mesure » (l.283-286) est élégant et aide beaucoup ; à mettre davantage en avant.

**Ce que ferait une version plus forte** : un court paragraphe « What `(O,σ,κ)` is not » dès le §1, qui exécute frontalement les trois objections de relabeling (oracle / style / task-type) et montre qu'aucune des trois prise isolément ne récupère le verdict que `κ` fixe en l.409.

### 3. Structure argumentative et logique — ADEQUATE/STRONG

L'enchaînement est net : paradoxe → thèse → cadre → audit → verdicts → agenda. Peu de trous. Les concessions sont honnêtes (idéalisation de `TR`, l.269-270 ; pas de claim de complétude, l.420).

Deux endroits où l'on **asserte plus qu'on ne prouve** :
- **Minimalité de `(O,σ,κ)`** (l.414-421) : la réduction « severity → couche de scoring », « audience/genre → se ramènent à O et σ » est plausible mais non démontrée. Le hedge « We make no completeness claim » (l.420) sauve la mise, mais un reviewer notera que « minimal » est revendiqué sans preuve de minimalité.
- **Localisation de `TR` au prompt** (l.269-270) : c'est l'hypothèse cachée qu'un sceptique rejette. Si `TR` vit aussi dans le system prompt / le contexte de déploiement / les attentes utilisateur (ce que le texte concède), alors l'annotation prompt-level est partielle, et l'audit (qui lit `σ/κ` sur le *task design*) devient en partie circulaire. Le papier anticipe à moitié (l.269-270, l.700) mais ne désamorce pas le risque de circularité de la Table 2.

**Ce que ferait une version plus forte** : une phrase explicite reconnaissant que lire `σ/κ` sur le design de la tâche (l.508-512) est une inférence de l'auteur, donc que la Table 2 démontre une *absence de variable scorée*, pas une mesure — ce que le texte dit (l.512) mais qu'il faut blinder contre le reproche de circularité.

### 4. Calibration des claims — STRONG

La calibration est le point fort le plus constant. « indicative rather than confirmatory » (l.532), « a proposed instrument, not a validated one » (l.697), la section Limites (l.731-737) et l'annexe *Reviewer-Informed Caveats* (l.1069-1075) sont des modèles d'honnêteté. Aucun chiffre non sourcé dans le corps conceptuel.

*Deux problèmes en sens inverse* :
- **Sur-hedging** : le pilote est caveaté jusqu'à la quasi-nullité (l.532, l.737, l.1069-1075). Un reviewer demandera « pourquoi l'inclure alors ? » — voir Issue #2.
- **Une attribution trop confiante** (calibration locale qui casse) : l.638, « Their worked instance is a system summary that supplies the correct year of a London mayoral election (`2016`) » présente cet exemple comme l'instance *littérale* de Maynez et al. Or vos propres notes (`handoff_prompt.md`, point 2) admettent que les worked verdicts sont *construits*. La catégorie « extrinsic but factual » est bien réelle chez Maynez et al. 2020 (vérifié), mais l'exemple « 2016 mayoral election » n'est, selon toute vraisemblance, pas leur exemple littéral. Présenter un exemple construit comme « their worked instance » est une faute d'exactitude citationnelle qu'un reviewer pointilleux peut attraper.

**Ce que ferait une version plus forte** : remplacer « Their worked instance is… » par « an instance of the kind they document is… », ou ancrer sur un item réel de `xsum_hallucination_annotations` (le dataset public de Maynez et al.).

### 5. Cohérence du cadre — STRONG

`O, σ, κ, H, F, A, PD` sont définis précisément (l.266-309) et utilisés de façon cohérente ; macros stables. Le cadre **contraint réellement** ce qui compte comme hallucination (arbre Fig. + 4 feuilles, l.487-488). Le double rôle de `σ` (l.283-286, l.707-710) est la pièce la plus fine du papier.

*Friction mineure* : l'arbre de décision a **six** sorties (SV, supported, unverifiable, H, H, PD) tandis que la decision rule en prose (l.318) et l'annexe A (l.753-763) raisonnent en **trois** branches (H/PD/neither) puis réconcilient *supported* et *unverifiable* après coup (l.763). Le lecteur doit faire le pont. De même, *stylistic variation* et *benign noise* sont deux feuilles distinctes qui retombent toutes deux dans « neither » (l.488) sans que la distinction soit jamais load-bearing.

**Ce que ferait une version plus forte** : aligner explicitement, en une phrase sous la Fig., les 6 feuilles de l'arbre sur les 3 verdicts de la rule (les 3 = scorés ; les 3 autres = états opérationnels non-divergents), pour que tree et rule ne semblent pas deux objets différents.

### 6. Couverture du related work — ADEQUATE

Bien couvert : surveys hallucination (`ji`, `huang`, `zhang_sirens`), faithfulness (`maynez`, `kryscinski`), créativité (`hou`, `runco`, `acar`, `franceschelli`), détection (`farquhar` semantic entropy, `marks` geometry, `min` factscore). L'ancrage *speech-act* de `κ` (`stalnaker`, `searle`) est une connexion non triviale et juste. Threads attendus par un reviewer : RLHF/alignement traité en une phrase (l.625, `ouyang_2022`) ; instruction-following fidelity traité (l.693, l.701, `zhou_ifeval_2023`).

*Manques* :
- **Grounding en dialogue** et **domaines légal/factuel** : seulement évoqués en motivation (l.139), jamais engagés.
- **Rivaux « relativité » au-delà de FaithQA/HIC-Bench** : abstention, selective prediction/calibration, et la ligne « faithful uncertainty » (vous citez `yona` mais pourriez préempter davantage le « on l'a déjà dit »).
- **Dépendance lourde aux preprints très récents (2025-2026)** pour la nouveauté centrale : `hao_faithqa_2025`, `yang_hicbench_2025` (arXiv déc. 2025), `yona_metacognition_2026` (à paraître ICML 2026). Si l'un d'eux a été retiré/révisé, la différenciation bouge. Vérifier les versions avant soumission.

Spot-check (3) : `maynez_faithfulness_2020` — catégorie correcte, exemple spécifique douteux (voir #4). `sadeq_mitigating_2024` (EMNLP 2024 Findings) — utilisé correctement pour *le phénomène* du role-play, l'instance « 1920s Paris » étant ensuite construite. `sun_hallucinating_2024` — « good hallucinations as reasoning paths correct after convergence » (l.626) est un résumé fidèle.

**Ce que ferait une version plus forte** : un demi-paragraphe engageant abstention/selective-prediction comme « la réponse strict-regime », pour montrer que `κ>0` est précisément ce que ces lignes n'ont pas.

### 7. Qualité d'écriture — ADEQUATE (dense)

Prose précise, académique, terminologie cohérente (la passe prose-hygiene se voit). Mais **très dense** : phrases multi-clauses de 50+ mots (l.279, l.524, l.686, l.694) qui ralentissent un texte censé persuader. Redondances : la différenciation FaithQA/HIC-Bench apparaît 3× (l.153, l.502/511, l.618-620) ; le caveat « indicative not confirmatory » 4×+. Restent **8 lignes avec `---`** (au moins l.516, en pleine prose) malgré votre propre règle de les supprimer.

**Ce que ferait une version plus forte** : casser les 4-5 phrases les plus longues, dédupliquer la différenciation (une fois en §1, une fois en §3), repasser les `---` en `()`/virgules.

---

## Issues critiques (à corriger avant soumission)

1. **Venue & longueur — bloquant.** 27 pages. Aucun track *position* de conférence ne l'accepte (≈ 8 p. + réf.). *Fix minimum* : décider la cible. (a) Si CL journal (revue) : OK sur la longueur, mais justifier l'annexe expérimentale. (b) Si ACL/EMNLP theme track : couper le corps à ~8 p. et réduire l'annexe B à un paragraphe. **C'est la première décision à prendre, tout le reste en dépend.**

2. **Identité position vs empirique (l.240 vs Annexe B l.767-1075).** Le papier disclaim toute étude contrôlée puis en présente une de 12 469 sorties avec GLM/GLMM/médiation. Un reviewer la jugera comme une expérience et la trouvera sous-puissante : vérifieur binaire sans label `PD` (l.775), inflation concédée (l.1073), confond `lesson_plan` non-groundable et hallucination (l.1072). *Fix* : trancher. Option A (recommandée pour un position track) — réduire à 1 paragraphe « sonde indicative » dans le corps, supprimer GLM/GLMM/médiation, garder uniquement « le style seul fait monter le taux mesuré » + le diagnostic `κ` HIGH/LOW. Option B — assumer le pilote comme contribution et le défendre (mais alors ce n'est plus un position paper « pur »).

3. **`PD` non opérationnalisée — le construit central neuf.** Vous le concédez (l.736) et esquissez un protocole (l.689-697 : gate de licence + stance check + seuil d'usefulness). C'est mieux que rien, mais « usefulness » reste evaluator-dependent et non validé. Un sceptique : « vous avez renommé le creativity scoring et ajouté une porte. » *Fix* : défendre explicitement que les deux composantes *mécaniques* (licensing gate, l.692 ; stance check proche d'IFEval, l.693) font déjà un travail qu'aucun scorer regime-agnostic ne fait, **même si** usefulness reste dur — c'est-à-dire vendre la décomposabilité, pas la mesure complète.

4. **Worked verdicts présentés comme instances documentées alors qu'ils sont construits** (l.636-655, vos notes le confirment). Risque d'exactitude sur Case A (« their worked instance », l.638) et, à vérifier, sur l'item FactBench de Case C (« a tool supports multiple input formats », l.653 — réel dans FactBench, ou construit ?). *Fix* : pour chaque cas, soit ancrer sur un item réel publié (annotations XSum ; un item FRANK/HIC-Bench/FactBench cité par son ID), soit reformuler en « of the kind X documents ».

5. **Circularité potentielle de la Table 2.** Les colonnes `σ/κ` sont *vos* inférences lues sur le task design (l.508-512), pas des mesures. Vous le dites (l.512) et défendez « l'uniformité EST le résultat ». *Fix* : renforcer cette défense d'une phrase qui distingue « aucun benchmark ne *score* `(σ,κ)` » (le vrai constat, imparable) de « voici les niveaux » (l'inférence, contestable), pour qu'un reviewer ne lise pas la table comme une donnée fabriquée.

## Issues mineures

- Abstract l.130 : retirer la mention du « matched diagnostic » (chiffre/empirique hors d'un abstract de position paper).
- l.516 et 7 autres lignes : `---` en prose → `()`/virgules (votre propre règle).
- Dédupliquer la différenciation FaithQA/HIC-Bench (3 occurrences) et le caveat « indicative » (4+).
- Arbre Fig. (6 feuilles) vs decision rule (3 branches) : ajouter une phrase de pont sous la figure.
- Phrases > 50 mots (l.279, 524, 686, 694) : scinder.
- Vérifier les versions arXiv de `hao_faithqa_2025`, `yang_hicbench_2025`, `yona_metacognition_2026` avant soumission (nouveauté qui en dépend).
- 11 overfull hbox (cosmétique) : passe finale de mise en page.

## Ce qui fonctionne (forces réelles)

- **Le cadre `(O,σ,κ)` est propre et fait un vrai travail** : la decision rule change des verdicts (§4), ce n'est pas qu'un vocabulaire.
- **L'argument d'irréductibilité de `κ`** (l.401-411, cas `κ=1` clinique) est la meilleure page du papier et le rempart solide contre « relabeling ».
- **Le double rôle de `σ`** (orthogonal au verdict, load-bearing pour la mesure, l.283-286) est subtil et original.
- **Calibration et honnêteté** (Limites l.731-737, Caveats l.1069-1075) : rares et précieuses ; un PC les remarquera positivement.
- **Intégrité citationnelle** : 93/93 clés résolvent, 0 citetodo, build propre.
- **L'ancrage speech-act** (`stalnaker`/`searle`) de `κ` donne au cadre une profondeur théorique au-delà de l'ingénierie d'éval.

---

## Clé de sévérité

| Note | Sens |
|------|------|
| FATAL | Le papier ne peut pas être accepté en l'état |
| WEAK | Motif probable de rejet ; corrigeable mais non trivial |
| ADEQUATE | Passe la barre ; perfectible |
| STRONG | Atout réel du papier |
