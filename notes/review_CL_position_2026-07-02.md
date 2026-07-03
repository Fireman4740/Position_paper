# Review pré-soumission — `main_position_personal.tex` — *Computational Linguistics*, catégorie **Position Papers**

Fichier audité : `main_position_personal.tex` (947 lignes, PDF 38 p.). Build vérifié : compile, 0 citation indéfinie (89 clés, toutes résolues dans `references.bib`), 0 `\citetodo`, macros de draft supprimées. Page de soumission CL re-vérifiée en direct (2026-07-02) : la catégorie Position Papers existe, sans limite de pages, critère « rigorous reasoning **and** persuasive evidence ». État par rapport aux deux reviews précédentes (notes du 2026-06-30) : les must-fix M1–M6 sont **vérifiablement appliqués** dans cette version — arbre à trois couches (unverifiable = état d'évidence, non verdict), Table 3 restructurée en 4 cas avec vrais flips, audit requalifié « illustrative », Jiang 2024 cité et différencié (l.650), surclaims adoucis (l.178–179, 267, 716–717), `wu_writingbench_2025` corrigé, limite mono-tour ajoutée (l.779), `benign` → low-severity H (l.515), encadré « PD is not a binary label » (l.338–343). Cette review porte donc sur ce qui **reste**.

---

## Overall verdict

Le papier est proche du niveau requis : la thèse est précise et posée tôt, le cadre `(O,σ,κ)` est opérationnel (arbre exécutable, trois conditions de PD, quatre worked verdicts dont un contre-cas de scope), la calibration des claims est parmi les plus disciplinées que ce type de manuscrit produit, et les rivaux les plus proches sont différenciés avec exactitude. Le seul endroit où un bon reviewer peut encore planter un couteau est **l'Annexe B, telle qu'imprimée** : (i) son arithmétique ne se réconcilie pas (1 389 prompts pour un croisement 3×3×3 ; 12 469 ≠ 1 389×9 ; rôle des cinq températures non spécifié), et (ii) sa phrase de conclusion — « any such movement is therefore a property of the verifier » (l.558, répétée l.827) — est un non-sequitur que **votre propre cadre** invalide : une consigne « very_creative » peut faire fuiter le κ effectif (le modèle infère une licence d'invention et fabrique réellement), et le vérifieur binaire ne peut pas séparer cette lecture de la brittleness de mesure. C'est la seule pièce empirique du papier, et elle contient une inférence non déductible des données. Les deux fixes sont des édits locaux, sans nouvelle expérience ; tant qu'ils ne sont pas faits, la soumission expose le papier à un « major revision » évitable sur son maillon le plus faible.

**Recommendation** : Major revision (en l'état) — mais à distance d'une journée d'édits locaux d'une soumission défendable ; rien n'exige de nouvelle expérience.
**Confidence** : High (venue vérifiée en direct ; citations et build vérifiés mécaniquement ; reviews antérieures recoupées contre le texte courant).

---

## Detailed critique

### 1. Contribution clarity — STRONG

La thèse tient en une phrase et l'abstract la donne : H = violation du régime de vérité `TR(p)=(O,σ,κ)`, PD = divergence licenciée et utile (l.140–141). La distinction H/PD est opérationnellement définie, pas assertée : decision rule (l.345–350), arbre à trois couches (l.355–417), trois conditions de PD avec statut épistémique explicite par condition (l.329–330, encadré l.338–343). Les trois contributions sont étiquetées conceptual/diagnostic/programmatic (l.270–274). Table 1 fait flipper des verdicts à régime fixé avant toute formalisation — la thèse est *montrée* avant d'être définie.

**What a stronger version would do** : ajouter une phrase tôt (fin de l.184–188) désamorçant la lecture relativiste du titre : « relative » qualifie le *verdict évaluatif*, pas la vérité des propositions — recommandation G-add du 2026-06-30, jamais appliquée. Un philosophe du langage en reviewer la cherchera.

### 2. Novelty and positioning — ADEQUATE

Le papier connaît ses rivaux et les exécute au bon endroit : FaithQA « has neither O nor κ » (l.167), HIC-Bench lit le label sur la sortie, donc « cannot flip with the contract » (l.168), Jiang et al. 2024 différencié par l'unité d'analyse (l.650). « What the contract is not » (l.171–176) répond frontalement aux trois objections de relabeling et désigne κ comme composante irréductible ; le cas κ=1 (triage clinique, l.428–438, adossé à Stalnaker/Searle et à yona_metacognition_2026) est la meilleure arme du papier et il est bien placé. Le risque résiduel demeure : un reviewer dur lira `(O,σ,κ)` comme la synthèse de trois lignes connues, et la parade principale (§4 : la rule change des verdicts) repose sur des cas explicitement « schematic verdict tests rather than verbatim dataset items » (l.666) — défendable, mais c'est un choix de repli, pas une victoire.

**What a stronger version would do** : ancrer **un seul** worked verdict (Case A) sur une annotation XSum réelle et citable de Maynez et al. — l'upgrade le moins cher qui reste, il coupe l'objection « §4 est ad hoc » et consolide la nouveauté d'un coup.

### 3. Argument structure and logic — ADEQUATE (un point WEAK localisé)

La chaîne paradoxe → cadre → audit → verdicts → agenda → limites est sans trou dans le corps : l'audit établit l'absence protocolaire (avec critère de codage explicite, l.551–554, et concession mono-codeur), §4 établit que la rule est bien définie et que ses sorties suivent le contrat (l.716–717, correctement reformulé en « cannot justify... without silently assuming »). Le point WEAK est l'inférence pilote (l.557–558, l.827) : « σ ne change aucune proposition, donc tout mouvement mesuré est une propriété du vérifieur » glisse de σ-comme-variable-de-contrat (vrai par définition) à σ-comme-manipulation-expérimentale (faux : la consigne « very_creative » peut changer la *distribution des sorties*, y compris en ajoutant des propositions non supportées — de vraies H sous κ=0). Les données sont compatibles avec les deux lectures ; le texte en affirme une. C'est le confound D3 identifié le 2026-06-30 et non concédé dans le texte courant : les quatre caveats de B.3 (l.943) ne le mentionnent pas.

**What a stronger version would do** : réécrire les deux phrases en disjonction — « la hausse reflète soit une brittleness du vérifieur face à la forme marquée, soit des sorties qui ajoutent réellement du contenu non supporté quand le style est licencié (un κ effectif qui fuit, ce que notre cadre prédit) ; un vérifieur binaire sans label PD ne peut pas les séparer — c'est précisément l'instrument manquant. » Ce fix transforme la faille en argument pour la thèse. Ajouter le confound comme 5ᵉ caveat en B.3.

### 4. Claim calibration — STRONG

La discipline de hedge est exemplaire et constante : « illustrative audit » (abstract, Table 2, l.265), « suggest the gap is not merely anecdotal » (l.267), « we report them only as motivation » (l.268, 559), « These verdicts are not measurements » (l.716), « a proposed instrument, not a validated one » (l.738), cinq limites explicites dont normativité et mono-tour (l.772–779). Aucun `\citetodo`. Les deux seules phrases non calibrées du manuscrit sont celles de l'issue critique 2 (« is therefore a property of the verifier », l.558/827) — précisément là où la calibration compte le plus, dans l'unique élément empirique.

**What a stronger version would do** : appliquer le fix de la dimension 3 ; vérifier aussi la micro-tension « essentially never annotated » (l.265) vs « never annotated / never graded » (l.532) — scoper la seconde sur l'échantillon (« in this sample ») suffit.

### 5. Framework coherence — STRONG

`TR, O, σ, κ, F, A, H, PD` sont définis une fois, au niveau d'analyse annoncé (prompt-level vs output-level vs claim-level, l.284), et utilisés uniformément ; la notation σ low/high, κ 0/1/2 est tenue partout, arbre et Annexe A compris. Le double rôle de σ (orthogonal au verdict, load-bearing pour la mesure, l.303–306) reste l'idée la plus fine du papier, et l'arbre l'implémente réellement (test 1 conditionné sur `(σ,O)`). La réparation M1 est complète et cohérente sur ses six emplacements (arbre, caption, decision rule, labeling l.514–516, Annexe A l.806–815, Table 3 ligne C) ; Case D donne au cadre la borne qui lui manquait. Frictions résiduelles mineures : la caption de Table 1 promet « within each card... the outputs receive different verdicts » alors que deux cartes n'ont qu'une ligne ; et le badge « insuff. PD » (carte brainstorm) est un verdict *output-level* (le papier le dit lui-même, l.767–768) affiché dans un dispositif claim-level.

**What a stronger version would do** : un mot dans la caption de Table 1 (« different verdicts *across cards* » + signaler que insuff. PD est output-level) ; renommer `κ_agree` (l.943) — une kappa d'accord à 0.756 dans un papier où κ∈{0,1,2} est une collision de symbole gratuite.

### 6. Related work coverage — STRONG

Les fils exigés sont tous couverts et au bon endroit : RLHF/alignement comme engagement de régime implicite (l.656), instruction-following explicitement séparé de TR (l.742), incertitude/abstention (l.645), métacognition (l.437), grounding et faithfulness (Maynez, Kryściński), actes de langage (Searle/Stalnaker), stylistique (Leech, van Peer, Pavlick), créativité (standard definition, TTCT/TTCW). Spot-checks bib : `maynez_faithfulness_2020` (extrinsic-but-factual : usage exact), `searle_logical_1975`/`stalnaker_assertion_1978` (pretended vs genuine assertion : exact), `hao_faithqa_2025` et `yang_hicbench_2025` (caractérisations conformes, déjà vérifiées en ligne au tour précédent), `parry_team_2023`/`lingard_pulling_2017` (usage non-LLM de « productive divergence » : exact), `wu_writingbench_2025` (année corrigée). Deux points de friction : `sun_hallucinating_2024` sert deux rôles (théorie « reasoning paths », l.657 ; ligne de benchmark « Controlled story », l.618) — vérifier que le papier soutient bien les deux ; et `osyvokon_pavlick_formality_2016` (l.727) est le miroir dataset de `pavlick_empirical_2016`, cité juste à côté.

**What a stronger version would do** : dédupliquer Pavlick/Osyvokon ; stabiliser `yona_metacognition_2026` (load-bearing pour κ=1) avant soumission.

### 7. Writing quality — ADEQUATE

Prose disciplinée, zéro tell d'écriture générée, terminologie tenue — mais dense : la définition de σ (l.299) empile six propositions dans une phrase, et plusieurs paragraphes de §2 exigent deux lectures. La différenciation FaithQA/HIC-Bench est quasi dupliquée entre l'intro (l.166–169) et §3.3 (l.647–651) — flagué deux fois déjà, toujours présent ; l'intro peut se réduire à deux phrases + renvoi. Dans le pilote, « creativity levels » (l.824, 827, Table B, Figure B) nomme une manipulation de **σ** avec le mot que le cadre réserve à **κ** — la dérive terminologique D3-C, non appliquée.

**What a stronger version would do** : renommer « creativity levels » → « stylistic levels » (ou « style-emphasis levels ») dans tout l'appendice ; aérer l.299 ; couper la redondance intro/§3.3. Onze Overfull hbox à résorber au passage.

---

## Critical issues (must fix before submission)

1. **Arithmétique de l'Annexe B irréconciliable telle qu'imprimée** (l.824). « 1,389 prompts by crossing three writing formats, three creativity levels, and three target lengths » : le croisement fait 27 cellules et 1 389 n'est pas un multiple de 27 (le facteur « sujets Wikipédia » manque de la description) ; « 12,469 outputs from nine LLMs across five sampling temperatures » : 1 389×9 = 12 501 ≠ 12 469, écart non expliqué, et le rôle des 5 températures dans le plan (croisées ? assignées par run ?) n'est pas spécifié alors que la Table B en reporte un effet. *Fix minimal* : donner le plan exact (nombre de sujets, cellules déséquilibrées le cas échéant, générations échouées exclues avec leur compte, assignation des températures) ou retirer les comptes précis. Un reviewer fait ce calcul en trente secondes et la confiance dans tout l'appendice ne s'en remet pas.

2. **Non-sequitur « therefore a property of the verifier »** (l.557–558 et l.827, conclusion de B.2). L'inférence confond σ-contrat (ne change aucune proposition, par définition) et σ-manipulation (une consigne « very_creative » peut élever le κ effectif inféré par le modèle et produire de vraies propositions non supportées — confound que le cadre du papier prédit lui-même). Le vérifieur binaire ne peut pas trancher entre brittleness de mesure et invention réelle : l'affirmer, c'est exactement le type d'overclaim que le reste du papier a appris à éviter. *Fix minimal* : réécrire les deux phrases en disjonction explicite (« soit le vérifieur misread la forme marquée, soit les sorties ajoutent réellement du contenu non supporté ; les séparer exige le label PD manquant — l'instrument que ce papier spécifie ») et ajouter le confound comme 5ᵉ caveat en B.3. Coût : trois phrases ; gain : la seule pièce empirique cesse d'être attaquable et se met à travailler pour la thèse.

## Minor issues

- **Case A non ancré sur un item réel** (l.669–675) : le disclaimer « schematic verdict tests » (l.666) rend le choix défendable, mais ancrer Case A sur une annotation XSum publiée de Maynez et al. reste l'upgrade le moins cher du papier (coupe « §4 est ad hoc », renforce la dimension 2). À faire si le temps le permet.
- **`\jyear{2025}`** (l.5) : on est en 2026 ; `\jvol{vv}`/`\jnum{nn}` sont des placeholders template acceptables, mais l'année fausse ne l'est pas.
- **Hygiène `.bib`** : 4 entrées produisent 7 warnings au build (`boubdir_elo_nodate`, `kalai_why_nodate`, `zhang_sirens_nodate` : year/journal vides ; `noauthor_bradleyterry_2025` : ni auteur ni clé de tri) alors qu'aucune n'est citée — les supprimer ou les compléter ; ~400 entrées non citées à élaguer pour le dépôt.
- **`κ_agree = 0.756`** (l.943) : collision de symbole avec la licence d'invention κ — écrire « inter-judge agreement (Cohen's kappa) of 0.756 » sans le symbole.
- **Terminologie pilote** : « creativity levels » → « stylistic levels » partout dans l'Annexe B (cf. dimension 7) ; cohérent avec le fix critique 2.
- **Redondance FaithQA/HIC-Bench** intro (l.166–169) ≈ §3.3 (l.647–651) : réduire l'intro à un renvoi.
- **Caption Table 1** (l.202) : « within each card... different verdicts » est faux pour les deux cartes à une ligne ; et marquer « insuff. PD » comme verdict output-level.
- **Coin (σ low, κ=2) de la Figure 2** : « uncommon; of limited interest » (l.487, 502) frotte avec Table 2, où SemDis et Verbal Creativity (tâches AUT — idéation en forme littérale) ont σ = « -- » : un reviewer pointilleux dira que ce coin est en fait peuplé. Soit marquer ces lignes σ low, soit adoucir le texte du coin.
- **Phrase « relative = verdict »** manquante (G-add) : une phrase en intro immunise contre la lecture relativiste du titre.
- **Taux absolus 51–73 %** (Table B) : le caveat 3 les borne déjà, mais envisager de dégriser les valeurs absolues (ou reporter les deltas seuls) pour ne pas inviter l'objection « ces niveaux ne sont pas crédibles ».
- **Logistique CL** : préparer le fichier texte séparé (titre, auteurs, abstract, email de contact) exigé à la soumission ; indiquer la catégorie « Position Paper » ; passer la checklist « original submissions » et le Style Guide (vérifier que l'option `[manuscript]` de `clv2025` correspond au format single-spaced demandé).

## What works

Le cadre fait un vrai travail, pas un travail de vocabulaire : l'arbre est exécutable couche par couche (retrieval+NLI sur 1–2, lecture d'annotation sur 3, stance-check sur 4, soft labels sur 5) et §4 montre des verdicts qui flippent pour trois mécanismes distincts plus une borne qui ne flippe pas — Case C et Case D sont devenus, après la réparation M1, la vitrine de l'irréductibilité de κ au lieu de sa contradiction. Le double rôle de σ (l.303–306) est l'idée la plus originale du manuscrit et elle est désormais énoncée exactement. La calibration des claims est au niveau des meilleurs position papers de la revue. L'ancrage actes-de-langage (Searle/Stalnaker → κ comme type d'acte licencié) donne à κ une base principielle. La défense de nouveauté est honnête et précise, avec les deux rivaux réels traités comme rivaux. Et l'appareil éditorial est propre : build sans erreur, 89/89 citations résolues, notation uniforme, limites sincères.

---

## Severity key

| Rating | Meaning |
|--------|---------|
| FATAL | Paper cannot be accepted as-is |
| WEAK | Likely grounds for rejection; fixable but non-trivial |
| ADEQUATE | Passes the bar; room for improvement |
| STRONG | A genuine asset to the paper |

## Ordre de travail recommandé

1. Critique 1 (arithmétique B) + critique 2 (disjonction + 5ᵉ caveat) — une session, aucun risque de régression.
2. Renommage « creativity levels » → « stylistic levels » (Annexe B) + `κ_agree` + `\jyear`.
3. Si le temps le permet : ancrer Case A sur un item XSum réel ; phrase « relative = verdict » ; dédoublonner intro/§3.3.
4. Hygiène `.bib` (4 entrées), caption Table 1, coin (low,2), Overfull.
5. `make pdf`, relire l'abstract (rien à y changer si 1–2 sont faits), checklist CL + fichier texte séparé, soumettre.
