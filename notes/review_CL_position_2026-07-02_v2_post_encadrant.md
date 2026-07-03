# Review pré-soumission v2 — `main_position_personal.tex` — *Computational Linguistics*, catégorie **Position Papers**

Fichier audité : `main_position_personal.tex` (948 lignes). Build vérifié ce jour : PDF plus récent que le `.tex`, aucune erreur, 89/89 citations résolues dans `references.bib`, 0 `\citetodo`, 11 Overfull hbox, warnings de police uniquement. Cette review **remplace** celle du matin (`review_CL_position_2026-07-02.md`) : elle reprend ce qui y reste dû et intègre le retour de l'encadrant (langue trop littéraire, terminologie difficile à retenir, proposition de lexique « contrat »). Critère CL Position Papers : « rigorous reasoning and persuasive evidence ».

---

## Overall verdict

Le fond est prêt ; la surface ne l'est pas. La thèse est précise et posée tôt, le cadre `(O,σ,κ)` est opérationnel (arbre exécutable, worked verdicts qui flippent pour trois mécanismes distincts plus une borne qui ne flippe pas), la calibration des claims est exemplaire, et les rivaux les plus proches sont différenciés avec exactitude. Trois obstacles restent, et le plus grave est nouveau. Un : l'Annexe B conserve son arithmétique irréconciliable et son non-sequitur « property of the verifier » — inchangés depuis la review du matin. Deux : le retour de l'encadrant documente un fait que les reviews précédentes traitaient en dimension mineure : **un co-auteur bienveillant, qui baigne dans le sujet depuis trois mois, ne lit pas le papier confortablement**. Un reviewer CL pressé, souvent non-natif, abandonnera plus vite — et un position paper ne survit pas à un lecteur qui décroche, parce que la prose y *est* le produit. Trois : le manuscrit fait tourner **deux métaphores en parallèle** — « regime » (~105 occurrences) et « contract » (~30 occurrences, dont la définition même de \TR{} : « task-specific contract ») — ce qui est en soi un défaut d'écriture que la proposition de l'encadrant résout au lieu de l'aggraver. Rien n'exige de nouvelle expérience ; tout exige des passes d'édition disciplinées (~3,5–4 jours, cf. plan compagnon).

**Recommendation** : Major revision (en l'état) — soumission défendable après les deux fixes de l'Annexe B, la migration terminologique et une passe de simplification linguistique.
**Confidence** : High (build et citations vérifiés mécaniquement ; reviews antérieures recoupées ligne à ligne contre le texte courant ; disponibilité des nouveaux termes vérifiée sur alphaXiv le 2026-07-02).

---

## Detailed critique

### 1. Contribution clarity — STRONG

La thèse tient en une phrase et l'abstract la donne : H = violation du régime `TR(p)=(O,σ,κ)`, PD = divergence licenciée et utile (l.140–141). La distinction H/PD est opérationnellement définie, pas assertée : decision rule (l.345–350), arbre à trois couches (l.355–417), trois conditions de PD avec statut épistémique explicite (l.329–330, encadré l.338–343). Les contributions sont étiquetées conceptual/diagnostic/programmatic (l.270–274) et Table 1 fait flipper des verdicts avant toute formalisation. Manque toujours la phrase désamorçant la lecture relativiste du titre (« relative » qualifie le verdict évaluatif, pas la vérité des propositions) — recommandée deux fois, jamais appliquée.

**What a stronger version would do** : ajouter cette phrase en fin d'énoncé de thèse (l.184–188). Un philosophe du langage en reviewer la cherchera ; elle coûte une ligne.

### 2. Novelty and positioning — ADEQUATE

Les rivaux sont exécutés au bon endroit : FaithQA « has neither $O$ nor $\kappa$ » (l.167), HIC-Bench lit le label sur la sortie donc « cannot flip with the contract » (l.168–169), Jiang et al. 2024 différencié par l'unité d'analyse (l.650). « What the contract is not » (l.171–176) répond aux trois objections de relabeling ; le cas κ=1 (triage clinique, l.428–438, adossé à Stalnaker/Searle et yona_metacognition_2026) reste la meilleure arme du papier. Le risque résiduel demeure : un reviewer dur lira `(O,σ,κ)` comme la synthèse de trois lignes connues, et la parade principale (§4) repose sur des cas « schematic verdict tests rather than verbatim dataset items » (l.666) — défendable, mais c'est un repli, pas une victoire.

**What a stronger version would do** : ancrer **un seul** worked verdict (Case A) sur une annotation XSum réelle et citable de Maynez et al. — l'upgrade le moins cher restant ; il coupe l'objection « §4 est ad hoc ».

### 3. Argument structure and logic — ADEQUATE (un point WEAK localisé, inchangé)

La chaîne paradoxe → cadre → audit → verdicts → agenda → limites est sans trou dans le corps. Le point WEAK est toujours l'inférence pilote (l.557–558, répétée l.827) : « σ ne change aucune proposition, donc tout mouvement mesuré est une propriété du vérifieur » glisse de σ-comme-variable-de-contrat (vrai par définition) à σ-comme-manipulation-expérimentale (faux : une consigne `very_creative` peut élever le κ effectif que le modèle infère et produire de vraies propositions non supportées — un confound que **votre propre cadre prédit**). Les données sont compatibles avec les deux lectures ; le texte en affirme une. Les quatre caveats de B.3 (l.943) ne le mentionnent pas.

**What a stronger version would do** : réécrire les deux phrases en disjonction explicite (brittleness du vérifieur **ou** fuite du κ effectif ; les séparer exige le label que le papier spécifie — l'instrument manquant) et ajouter le confound comme 5ᵉ caveat. Ce fix transforme la faille en argument pour la thèse.

### 4. Claim calibration — STRONG

La discipline de hedge est constante : « illustrative audit » (l.265), « suggest the gap is not merely anecdotal » (l.267), « we report them only as motivation » (l.268, 559), « These verdicts are not measurements » (l.716), « a proposed instrument, not a validated one » (l.738), cinq limites explicites (l.772–779). Les deux seules phrases non calibrées du manuscrit restent celles de la dimension 3 — précisément dans l'unique pièce empirique. Vigilance pour la suite : la passe de simplification linguistique **ne doit pas** éroder ces hedges (remplacer « suggest » par « show » serait une régression de calibration, pas une amélioration de style).

**What a stronger version would do** : appliquer le fix de la dimension 3 ; scoper « never annotated / never graded » (l.532) sur l'échantillon (« in this sample »), en cohérence avec « essentially never » (l.265).

### 5. Framework coherence — STRONG (frictions mineures)

`TR, O, σ, κ, F, A, H, PD` sont définis une fois au niveau d'analyse annoncé (l.284) et tenus partout ; le double rôle de σ (orthogonal au verdict, porteur pour la mesure, l.303–306) reste l'idée la plus fine du papier et l'arbre l'implémente réellement. Frictions : (i) la caption de Table 1 promet « within each card... the outputs receive different verdicts » alors que deux cartes n'ont qu'une ligne ; (ii) le badge « insuff. PD » est un verdict output-level (le papier le dit, l.767–768) affiché dans un dispositif claim-level ; (iii) **nouveau** : orthographe incohérente « licence » (l.362, 496, 499) contre « license » (~68 occurrences) sous `\usepackage[american]{babel}` ; (iv) `κ_agree = 0.756` (l.943) entre en collision avec la licence κ∈{0,1,2}. Point structurel utile pour la décision terminologique : l'encadré l.338–343 dit déjà que licensing et stance sont « constraint-like and checkable » tandis que usefulness est « evaluator-dependent » — la sémantique « verdict dur = licence + stance, utilité = score gradué » qu'implique le renommage PD→LD est donc **déjà dans le texte** ; la migration formalise un découpage existant au lieu de le changer.

**What a stronger version would do** : corriger caption Table 1, marquer « insuff. PD » comme output-level, unifier « license », écrire « inter-judge agreement (Cohen's kappa) of 0.756 » sans symbole.

### 6. Related work coverage — STRONG

Tous les fils exigés sont couverts et au bon endroit : RLHF/alignement comme engagement de régime implicite (l.656), instruction-following séparé de TR (l.742), incertitude/abstention (l.645), métacognition (l.437), grounding/faithfulness (Maynez, Kryściński), actes de langage (Searle/Stalnaker), stylistique (Leech, van Peer, Pavlick), créativité (standard definition, TTCT/TTCW). Spot-checks déjà recoupés : `maynez_faithfulness_2020` (extrinsic-but-factual : exact), `searle_logical_1975`/`stalnaker_assertion_1978` (pretended vs genuine assertion : exact), `hao_faithqa_2025`/`yang_hicbench_2025` (conformes), `parry_team_2023`/`lingard_pulling_2017` (usage non-LLM de « productive divergence » : exact — et à conserver en une phrase si PD est renommé). Restes : dédupliquer `pavlick_empirical_2016`/`osyvokon_pavlick_formality_2016` (l.727) ; stabiliser `yona_metacognition_2026` (load-bearing pour κ=1) avant soumission.

**What a stronger version would do** : les deux points ci-dessus ; rien d'autre.

### 7. Writing quality — WEAK (poids relevé pour cette soumission)

Le skill pondère cette dimension faiblement ; ici elle ne l'est pas, pour trois raisons. D'abord le signal : un co-auteur immergé dans le projet rapporte qu'il « achoppe » sur le vocabulaire après trois mois — c'est un test de lisibilité en conditions réelles, et il est échoué. Ensuite le venue : CL est lue et reviewée internationalement ; un lexique que Linguee classe « plutôt rare » (« conflates », l.188, aussi l.282, 511, 943) filtre les lecteurs non-natifs. Enfin le genre : dans un position paper sans résultats nouveaux, la prose porte toute la charge de persuasion.

Trois défauts distincts, à traiter séparément :

**(a) Vocabulaire ornemental.** Échantillon vérifié ligne à ligne : « sits underneath » (l.155), « stop short of the contract » (l.166), « reads that label off » (l.168, 541, 649), « conflates/conflated » (l.188, 282, 511, 943), « underdetermine(d) » (l.289, 666, 776), « load-bearing » (l.305, 502), « pins the category down » (l.332), « come apart » (l.430), « the instructive near-miss » (l.553), « brittleness » (l.558, 750), « compounds the picture » (l.656), « non-assertoric » (l.646), « by accident of protocol » (l.785). Aucun n'est faux ; chacun coûte une relecture à un non-natif. À distinguer des termes de l'art (faithfulness, entailment, hedge, atomic claims, foregrounding, pretended assertion) qui doivent **rester**.

**(b) Phrases surchargées.** l.299 empile six propositions (~90 mots) dans la définition de σ ; l.185, l.329, l.533, l.554 et l.768 exigent deux lectures. La consigne de l'encadrant (phrases courtes, SVO) est la bonne prescription.

**(c) Charge terminologique.** Le lecteur doit retenir huit symboles (`TR, O, σ, κ, H, PD, F, A`), deux échelles (low/high ; 0/1/2), quatre néologismes (« truth regime », « productive divergence », « stylistic latitude », « invention license ») dont aucun ne s'auto-définit, plus les composés (regime-aware, regime-agnostic, regime-conditioned, regime-relative). Et le texte fait déjà tourner la métaphore du contrat en parallèle (~30 occurrences, dont la définition de TR elle-même, l.185 et 287). Le lexique proposé par l'encadrant (truth contract ; licensed/unlicensed divergence ; form license ; content license) rend trois des quatre néologismes auto-définis et fusionne les deux métaphores en une. Vérification faite ce jour : ni « truth contract » ni « licensed divergence » n'est un construct établi de la littérature hallucination/créativité (recherche alphaXiv — uniquement du bruit smart-contracts). Coût réel de migration : ~105 occurrences de « regime », le titre, deux captions de figures, la colonne « Regime » de Table 2, le Step 0 de l'arbre, l'Annexe A. Les macros `\TR`/`\PD` restent stables ; seule leur expansion imprimée change.

**What a stronger version would do** : adopter le lexique du contrat (une décision, une passe globale, un grep final « regime = 0 ») ; appliquer la hit-list de substitutions et casser les six phrases listées (cf. plan compagnon, phases A et B) ; renommer « creativity levels » → « style-emphasis levels » dans l'Annexe B (la dérive σ/κ déjà flaguée, cohérente avec le fix de la dimension 3).

---

## Critical issues (must fix before submission)

1. **Arithmétique de l'Annexe B irréconciliable telle qu'imprimée** (l.824). « 1,389 prompts by crossing three writing formats, three creativity levels, and three target lengths » : le croisement fait 27 cellules et 1 389 n'est pas un multiple de 27 (le facteur « sujets Wikipédia » manque) ; « 12,469 outputs from nine LLMs across five sampling temperatures » : 1 389×9 = 12 501 ≠ 12 469, écart non expliqué ; le rôle des cinq températures dans le plan n'est pas spécifié alors que la Table B en reporte un effet. *Fix minimal* : donner le plan exact (sujets, cellules déséquilibrées, générations exclues avec leur compte, assignation des températures) ou retirer les comptes précis. Un reviewer fait ce calcul en trente secondes.

2. **Non-sequitur « therefore a property of the verifier »** (l.557–558 et l.827). L'inférence confond σ-contrat et σ-manipulation ; le vérifieur binaire ne peut pas trancher entre brittleness de mesure et invention réelle sous κ effectif élevé. *Fix minimal* : disjonction explicite dans les deux phrases + 5ᵉ caveat en B.3. Trois phrases ; la seule pièce empirique cesse d'être attaquable et se met à travailler pour la thèse.

3. **Dette de lisibilité systémique, attestée par un co-auteur** (dimension 7a–c). Ce n'est plus un « minor » : si un encadrant favorable ne lit pas confortablement, un reviewer neutre refuse par défaut. *Fix minimal* : migration terminologique décidée puis appliquée en une passe (pas à moitié — deux lexiques coexistants seraient pire que l'état actuel), hit-list de vocabulaire, cassage des six phrases denses, abstract reformulé. Détail opérationnel dans `plan_modification_reformulation_2026-07-02.md`.

## Minor issues

- **Case A non ancré** (l.669–675) : ancrer sur une annotation XSum publiée de Maynez et al. si le temps le permet.
- **`\jyear{2025}`** (l.5) : on est en 2026.
- **Orthographe** : « licence » → « license » (l.362, 496, 499).
- **`κ_agree = 0.756`** (l.943) : écrire « inter-judge agreement (Cohen's kappa) of 0.756 », sans symbole.
- **Redondance FaithQA/HIC-Bench** : intro (l.166–169) ≈ §3.3 (l.647–651) ; réduire l'intro à deux phrases + renvoi.
- **Caption Table 1** (l.199–202) : « within each card... different verdicts » est faux pour les deux cartes à une ligne ; marquer « insuff. PD » comme output-level.
- **Coin (σ low, κ=2) de la Figure 2** (l.487, 502) : « uncommon; of limited interest » frotte avec Table 2 où SemDis et Verbal Creativity (tâches AUT, idéation en forme littérale) ont σ = « -- ». Soit marquer ces lignes σ low, soit adoucir le coin.
- **Phrase « relative = verdict »** (G-add) : toujours manquante en intro.
- **Hygiène `.bib`** : 4 entrées à warnings (`boubdir_elo_nodate`, `kalai_why_nodate`, `zhang_sirens_nodate`, `noauthor_bradleyterry_2025`), aucune citée — supprimer ou compléter ; élaguer les ~400 entrées non citées pour le dépôt.
- **Taux absolus 51–73 %** (Table B) : envisager de reporter les deltas seuls pour ne pas inviter l'objection « ces niveaux ne sont pas crédibles ».
- **Overfull hbox ×11** : à résorber au dernier build.
- **Logistique CL** : fichier texte séparé (titre, auteurs, abstract, contact) ; catégorie « Position Paper » ; checklist « original submissions » ; vérifier que l'option `[manuscript]` de `clv2025` correspond au format demandé ; aligner le titre du README/notes sur le titre final.

## What works

Le cadre fait un vrai travail, pas un travail de vocabulaire : l'arbre est exécutable couche par couche, §4 montre des verdicts qui flippent pour trois mécanismes distincts plus une borne (Case D) qui ne flippe pas, et le double rôle de σ (l.303–306) est l'idée la plus originale du manuscrit, énoncée exactement. La calibration des claims est au niveau des meilleurs position papers de la revue. L'ancrage actes-de-langage donne à κ une base principielle. La défense de nouveauté est honnête, avec les deux rivaux réels traités comme rivaux. L'appareil éditorial est propre : build sans erreur, 89/89 citations, notation uniforme, limites sincères. Et — décisif pour la décision à prendre — la proposition terminologique de l'encadrant n'entre pas en conflit avec ce socle : le papier définit déjà TR comme un contrat et découpe déjà PD en deux gates dures plus un score mou ; la migration nomme mieux ce qui existe.

---

## Severity key

| Rating | Meaning |
|--------|---------|
| FATAL | Paper cannot be accepted as-is |
| WEAK | Likely grounds for rejection; fixable but non-trivial |
| ADEQUATE | Passes the bar; room for improvement |
| STRONG | A genuine asset to the paper |

## Ordre de travail recommandé

1. Critiques 1–2 (Annexe B : arithmétique + disjonction + 5ᵉ caveat) — édits locaux, aucun risque de régression.
2. Décisions terminologiques T1–T6 avec les co-auteurs (cf. plan compagnon, §1), puis migration en une passe + grep de contrôle.
3. Passe de simplification linguistique (hit-list + phrases denses), abstract reformulé en dernier.
4. Mécanique : licence/license, κ_agree, `\jyear`, caption Table 1, coin (low,2), redondance intro/§3.3, bib, Overfull.
5. `make pdf`, relecture par l'encadrant d'un échantillon (abstract + §1 + définitions), checklist CL, soumission.
