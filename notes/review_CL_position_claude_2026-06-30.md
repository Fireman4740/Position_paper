# Review pré-soumission — *Hallucination Is Relative* — cible : **Computational Linguistics**, catégorie **Position Papers**

Fichier audité : `main_position_personal.tex` (1 121 lignes). Build vérifié : compile proprement, aucune citation indéfinie, aucun `\citetodo` résiduel dans le corps. Citations pivots vérifiées en ligne (voir dim. 2/6). Review **indépendante** ; là où elle diverge des notes `review_pre_submission.md` et `review_CL_position_2026-06-30.md`, c'est signalé explicitement.

---

## Verdict global

Sur le fond, c'est un bon position paper : le cadre `(O,σ,κ)` est propre, la decision rule est réellement opérationnelle (arbre + 3 conditions de `PD`), l'audit de 40 benchmarks et les worked verdicts font un vrai travail argumentatif, la calibration des hedges est exemplaire, et les deux rivaux les plus proches (FaithQA, HIC-Bench) sont réels et différenciés avec exactitude. **Correction factuelle majeure par rapport aux deux reviews internes** : la page de soumission CL (vérifiée en direct le 2026-06-30) liste bel et bien **« Position Papers »** comme catégorie, et c'est la **seule** catégorie **sans limite de pages annoncée** (Long ≤ 40 p., Short ≤ 20–25 p., Squibs ≤ 8 p., Last Words ≤ 10 p.). L'« obstacle n°1 = mauvaise catégorie / 27 p. trop longues » des notes précédentes **tombe** : le format et la longueur sont conformes, et les expériences ne sont pas interdites (« not necessarily requiring experimental results »).

Le vrai obstacle n°1 est donc ailleurs, et il est interne à l'argument. CL exige d'un position paper « rigorous reasoning **and** persuasive evidence ». Le raisonnement est rigoureux. Mais la pièce d'évidence censée illustrer le cœur de la thèse — la confusion `PD`↔`Hallu` par un scoreur régime-agnostique — repose sur un diagnostic `κ` HIGH/LOW (App. B.6) qui **ne peut pas, même en principe, établir ce qu'il est cité pour établir**, et sur des worked verdicts **construits** plutôt qu'ancrés sur des items réels publiés. Tant que ce maillon n'est pas durci, un bon reviewer dira : « la thèse est séduisante et bien raisonnée, mais l'évidence avancée est sous-déterminée. » C'est réparable sans nouvelle théorie.

**Recommendation** : **Major revision** (le noyau conceptuel est proche du prêt ; le travail porte sur la *présentation de l'évidence* et la défense de la nouveauté, pas sur le cadre).
**Confidence** : **High** (faits de venue vérifiés en direct ; citations pivots vérifiées ; build vérifié).

---

## Critique détaillée (7 dimensions)

### 1. Clarté de la contribution — STRONG
La thèse est précise, testable, posée tôt : abstract `TR(p)=(O,σ,κ)` (l.142), puis l.186–193. Un lecteur résume la contribution depuis le seul abstract. La distinction `H`/`PD` est **opérationnellement définie**, pas assertée : decision rule (l.343–346), arbre (Fig., l.351–416), trois conditions de `PD` *licensed / useful / presented-on-terms* (l.334). Trois contributions étiquetées conceptual/diagnostic/programmatic (l.276–279). La Table 1 « thesis in one view » (l.198–262) fait flipper le verdict à régime fixé : elle *montre* la thèse avant de la formaliser.
**Version plus forte** : l'abstract (l.145) annonce déjà « diagnostic evidence to illustrate how binary verification can mistake licensed divergence for hallucination » — c'est exactement le point que le diagnostic ne peut pas porter (cf. Issue critique #2). Retirer cette promesse de l'abstract et n'y annoncer que cadre + audit + worked verdicts.

### 2. Nouveauté et positionnement — ADEQUATE (risque WEAK chez un reviewer dur)
La différenciation vs les rivaux proches est faite tôt et bien : FaithQA (l.169 : « it has neither `O` nor `κ` ») et HIC-Bench (l.170 : « reads that label off the output … cannot flip with the contract »). **Vérification indépendante (web)** : les deux existent et sont caractérisés *exactement* — FaithQA (arXiv 2506.06539, ACL 2025) score la couverture d'intention via CONSTRAINT SCORE sans oracle factuel ; HIC-Bench (arXiv 2512.21635, déc. 2025) lit son split *intelligent/defective* sur des métriques de sortie (TTCT Originality/Feasibility/Value + factual deviation), donc bien « off the output », pas « off the prompt ». Le paragraphe « What the contract is not » (l.173–178) exécute frontalement les trois objections de relabeling (oracle / style / task-type) et désigne `κ` comme la composante irréductible.
*Risque réel pour CL* : la revue demande une « substantive contribution ». Un reviewer déterminé verra `(O,σ,κ)` comme la **synthèse** de trois lignes connues (choix d'oracle, style transfer, permissivité de tâche), d'autant que le papier concède lui-même que `O` est standard et que `σ` « changes no verdict » (l.309) — il ne reste alors qu'un seul axe *porteur de verdict* nouveau, `κ`. La parade (la decision rule qui change des verdicts, §4) est bonne mais s'appuie sur des cas *construits* (cf. Issue #4).
**Version plus forte** : ancrer ≥ 1 worked verdict sur un item réel publié et citable (les annotations XSum de Maynez et al. sont publiques) pour que « le cadre change un *vrai* verdict » cesse d'être une démonstration sur exemple fabriqué — c'est le rempart le plus solide contre « ce n'est qu'un relabeling ».

### 3. Structure argumentative et logique — ADEQUATE (un point WEAK localisé, cf. Issue #2)
Enchaînement net : paradoxe → thèse → cadre → audit → verdicts → agenda → discussion. Concessions honnêtes (idéalisation de `TR`, l.294–295 ; pas de claim de complétude, l.446). **Le trou logique** (que les deux reviews internes n'isolent pas) est dans l'usage du diagnostic `κ` : un taux d'hallucination mesuré *plus haut* sous `κ` HIGH (+5,1 pts, l.1107) est compatible avec **deux** lectures — (a) le vérifieur compte de la `PD` licenciée comme `H` (lecture du papier, l.1108–1109), et (b) les prompts permissifs produisent réellement plus de contenu non-supporté. Le vérifieur binaire **ne peut pas trancher** entre les deux, car trancher exige précisément le label `PD` qui manque. Le diagnostic est donc *sous-déterminé* : il ne peut pas confirmer la confusion qu'il illustre. Le papier hedge (« This is not evidence that permissive prompts are worse … It suggests », l.1108) mais s'appuie quand même dessus comme « the κ effect that carries the H/PD point » (l.272).
**Version plus forte** : faire porter la *confusion* entièrement par les worked verdicts (§4, qui établissent qu'un scoreur régime-agnostique « must get wrong in at least one direction », l.709) et rétrograder le diagnostic `κ` en pure *illustration de mesure*. Ou : auditer à la main un échantillon des « hallucinations » sous `κ` HIGH et reporter la fraction réellement `PD` — ce qui transforme la suggestion en évidence.

### 4. Calibration des claims — STRONG
Hedges remarquablement calibrés : « indicative rather than confirmatory » (l.560), « not measurements; they are demonstrations » (l.708), limites explicites (l.764–770), caveats reviewer-informed (App. C). Aucun `\citetodo` résiduel. La seule fissure de calibration est celle de la dim. 3 : l'abstract (l.145) et l.272 promettent au diagnostic une portée qu'il n'a pas. Universel à surveiller : « no faithfulness metric can recover the verdict κ fixes » (l.437) est fort — il est défendu par le cas `κ=1` (assertion plate vs hedgée, l.430–435), mais une métrique de faithfulness intégrant la calibration épistémique serait un contre-exemple plausible ; scoper en « standard faithfulness metrics, which score the proposition and not its epistemic marking ».

### 5. Cohérence du cadre — STRONG
`O, σ, κ, F, A, H, PD` définis précisément (l.291–340) et utilisés de façon cohérente ; macros stables (`\CI` retiré proprement, l.56). Le cadre **contraint réellement** ce qui compte comme hallucination. Le **double rôle de `σ`** (orthogonal au verdict mais load-bearing pour la *mesure*, l.308–311) est la pièce la plus fine et la plus originale du papier — c'est ce qui justifie d'inclure `σ` dans le contrat sans en faire un 3ᵉ axe de verdict.
*Friction mineure* : l'arbre (Fig., l.374–380) a **six** sorties (SV, supported, unverifiable, H, H, PD) ; la prose (l.343) et l'Annexe A (l.798–802) raisonnent en **trois** branches (H/PD/neither). Le pont existe (l.512–514) mais le lecteur le reconstruit. Une phrase sous la figure mappant 6 feuilles → 3 verdicts (3 scorés ; 3 états opérationnels non-divergents) suffirait.

### 6. Couverture du related work — ADEQUATE/STRONG
Couverture solide et à jour : RLHF/alignement comme enforcement implicite du régime (ouyang, l.656 — fin et juste), instruction-following explicitement séparé de `TR` (zhou_ifeval, l.726/734), incertitude/abstention/métacognition (yona, farquhar, l.436/632). Spot-check (web + bib) : `maynez_faithfulness_2020` (« extrinsic but factual » réel) ✓ ; `searle_logical_1975` / `stalnaker_assertion_1978` (pretended vs genuine assertion) ✓ ; `sadeq_mitigating_2024` (role-play fictionnel, EMNLP'24 Findings — l'abstract confirme « act out of character and hallucinate ») ✓ ; `banerjee_does_2025` (CoVe ↑ / DoLa ↓ divergence — confirme l.657/746) ✓ ; `sun_hallucinating_2024` ✓.
*Lacune réelle* : le cadre est **mono-tour** (`TR(p)`, prompt → output). Le grounding conversationnel / multi-tour (où le régime évolue dans le dialogue) n'est ni couvert ni signalé comme hors-scope. À ajouter en une phrase aux limites (l.764–770). Opportunité : relier `TR` à la pragmatique gricéenne (le contrat de vérité *est* un contrat coopératif) renforcerait l'ancrage théorique de `κ` au-delà de Searle/Stalnaker.

### 7. Qualité d'écriture — ADEQUATE (dense)
Prose soignée mais très chargée ; plusieurs phrases font trop (l.304 ancrage de `σ` ; l.559 le diagnostic). Acceptable pour une revue, mais à aérer. Redondance : la différenciation FaithQA/HIC-Bench est quasi dupliquée entre l'intro (l.168–171) et §3.3 (l.648–651) — l'intro peut se réduire à un renvoi.

---

## Issues critiques (à corriger avant soumission)

1. **Trancher l'identité « position » vs « empirique » *à l'intérieur* du format Position Paper.** La venue est OK (pas de limite de pages), mais le corps désavoue l'étude (« we argue this position rather than establish it with a new controlled study », l.265) tout en gardant en App. B–C une étude de 12 469 sorties que le papier mobilise comme appui (l.270–273, l.554–560). *Fix* : assumer le pilote comme « evidence indicative » pleinement intégrée et défendue, **ou** le réduire à une sonde d'un paragraphe ; dans les deux cas, aligner l'abstract et les contributions sur ce choix.

2. **Le diagnostic `κ` HIGH/LOW ne peut pas établir la confusion `PD`↔`H` qu'il illustre** (l.1104–1109, repris l.272 et abstract l.145). Sous-déterminé entre « `PD` mal comptée » et « plus de `H` réelle ». *Fix minimal* : audit manuel d'un échantillon des claims flaggées sous `κ` HIGH → reporter la fraction réellement `PD` (suggestion → évidence) ; **ou** rétrograder le diagnostic en illustration de mesure et laisser §4 porter la confusion.

3. **Confond `σ` et `κ` dans le pilote principal.** L'étude opère `σ` via des « creativity levels » (`factual/hybrid/very_creative`, l.813/556) en prétendant tenir `κ` bas (l.814). Mais une consigne « very_creative » pousse plausiblement le modèle à *inférer* une licence d'invention (κ effectif ↑), pas seulement une latitude stylistique. La hausse d'hallucination mesurée peut donc refléter de l'invention licenciée-mais-non-labélisée (κ qui « fuit »), pas un pur effet de *mesure* de `σ` (la lecture revendiquée l.271). Le cadre du papier **prédit lui-même** ce confond. *Fix* : le reconnaître explicitement + reformuler, ou ajouter un manipulation-check séparant forme et licence.

4. **Worked verdicts présentés comme phénomènes documentés mais instanciés sur des cas construits** (§4, l.665 « illustrative rather than asserted as verbatim dataset items »). Case A déjà prudemment reformulé (« an instance of the kind they document », l.671) ✓ ; Case C déjà « FactBench-style instance » (l.686) ✓. Mais « the gap is structural, not anecdotal » (l.269) s'appuie en partie sur ces cas. *Fix* : ancrer **≥ 1** cas sur un item réel publié, citable par ID (annotation XSum publique de Maynez et al.), sinon un reviewer lit tout §4 comme ad hoc — ce qui affaiblit aussi la nouveauté (dim. 2).

5. **L'arithmétique du pilote ne tombe pas juste, telle qu'imprimée.** Fig. pipeline (l.836–837) : « 3 tasks × 3 creativity × 3 lengths = 1 389 prompts » → 3×3×3 = **27**, pas 1 389 (le facteur « sujets Wikipédia » manque du produit affiché ; et 1 389 n'est pas un multiple entier de 27). l.813 fait entrer « five sampling temperatures » dans le *crossing* des prompts (la température est un paramètre de décodage, pas un facteur de prompt). « nine LLMs (53 runs) » (l.815/888) : 9×5 = **45** ≠ 53, non expliqué. *Fix* : reconcilier prompts / runs / températures / N=12 469 et corriger la figure — même pour un pilote « indicatif », une arithmétique fausse imprimée détruit la confiance.

## Issues mineures
- **Cadrage « minimal »** : « minimal basis for the verdict » (l.440) frotte avec le titre et avec « smallest set that already suffices to flip the verdicts » (l.447). Uniformiser sur la formulation *suffisance-pour-flipper* (plus défendable que *minimalité*).
- **Hygiène BibTeX** : 7 warnings au build — `boubdir_elo_nodate`, `kalai_why_nodate`, `zhang_sirens_nodate` (year/journal vides) ; `noauthor_bradleyterry_2025` (ni auteur ni clé de tri). Compléter ou retirer (vérifier qu'ils sont même cités dans cette variante).
- **Audit mono-codeur** (l.552) : concédé et renvoyé à l'agenda, mais un petit accord inter-codeurs sur un sous-ensemble préempterait l'objection évidente.
- **Données manquantes en figure** : `gpt-5.2` n'a pas le point 500 mots (l.1042/1052/1076) — noter « données manquantes » ou compléter.
- **Citation à paraître** : `yona_metacognition_2026` (mai 2026, « to appear ICML 2026 ») est load-bearing pour le cas `κ=1` (l.436) ; stabiliser l'ID/réf avant camera-ready.
- **Cosmétique** : warning de police `T1/ppl/m/scit` (petites capitales italiques Palatino, fallback silencieux) — inoffensif, peut être silencé.

## Ce qui fonctionne (forces réelles)
- **Le cadre `(O,σ,κ)` fait un vrai travail**, pas qu'un vocabulaire : la decision rule change des verdicts (§4) et l'arbre est exécutable (retrieval+NLI sur tests 1–3, lecture de `κ` sur test 4, stance-check sur test 5).
- **Le double rôle de `σ`** (l.308–311) : subtil, original, et c'est l'idée la plus forte du papier.
- **Défense de nouveauté précise et honnête** : les deux rivaux les plus proches sont réels et différenciés avec exactitude (vérifié indépendamment).
- **Calibration et limites exemplaires** : le papier sait ce qu'il ne montre pas et le dit.
- **Ancrage actes-de-langage** (Searle/Stalnaker) donne à `κ` une base principielle, pas seulement opérationnelle.
- **Build propre, zéro `\citetodo`, zéro citation indéfinie.**

---

## Clé de sévérité
| Rating | Sens |
|--------|------|
| FATAL | Le papier ne peut pas être accepté en l'état |
| WEAK | Motif probable de rejet ; corrigeable mais non trivial |
| ADEQUATE | Passe la barre ; perfectible |
| STRONG | Atout réel du papier |

## Synthèse actionnable (ordre de travail)
1. **Issue #5** (arithmétique) — rapide, et bloquant pour la crédibilité.
2. **Issue #2 + #3** (diagnostic `κ` sous-déterminé ; confond σ/κ) — soit audit manuel d'un échantillon, soit rétrograder le pilote ; aligner abstract (l.145) et l.272.
3. **Issue #4** — ancrer ≥ 1 worked verdict sur un item XSum réel.
4. **Issue #1** — décider du statut du pilote et aligner abstract + contributions.
5. Mineurs : reformuler « minimal » (l.440/447), accord inter-codeurs, lacune multi-tour, hygiène `.bib`.
