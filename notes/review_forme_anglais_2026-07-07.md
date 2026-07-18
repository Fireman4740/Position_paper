# Review forme + anglais — `main_position.tex` — 2026-07-07

**Angle demandé** : lecture dans la peau d'un chercheur non-natif en anglais, connaissance moyenne du domaine (il connaît « hallucination » et les benchmarks QA, pas la stylistique ni la pragmatique). Question : le papier est-il facile à lire ? Quelles phrases reformuler ?

**Version auditée** : `main_position.tex` (520 lignes). Les numéros de ligne renvoient à ce fichier.

---

## Overall verdict

Le squelette de l'argument est lisible : la thèse est simple, les exemples (photosynthèse, café parisien, année d'élection) sont excellents et portent le lecteur non-natif d'une section à l'autre. Mais entre ces îlots clairs, la prose impose un coût de lecture élevé et constant : 40 % des phrases dépassent 30 mots, 18 % dépassent 40 mots (7 dépassent 55), l'anglais est truffé d'idiomes que seul un natif décode sans effort (« turns on », « read off », « stop short of », « load-bearing », « pinned to »), et plusieurs constructions relèvent de la syntaxe littéraire (inversion « Were X annotated… », sujets extraposés, appositions emboîtées sur trois niveaux). Le passage le plus dur — le bloc σ, l.143–153 — demande deux ou trois relectures même à un lecteur à l'aise. Vos encadrants ont raison : rien n'est incompréhensible, mais presque tout est plus difficile que nécessaire. C'est entièrement corrigeable par édition locale : aucun contenu à changer, ~45 phrases à casser ou reformuler, une douzaine de mots à remplacer globalement. Une journée disciplinée.

**Recommendation** : passe de simplification obligatoire avant soumission (l'équivalent « langue » d'une major revision — mais mécanique, pas conceptuelle).
**Confidence** : High — chaque constat est ancré ligne à ligne, stats mesurées sur le source.

**Cibles chiffrées après la passe** : moyenne ≤ 22 mots/phrase (actuel : 26,6) ; < 10 % de phrases > 35 mots (actuel : ~28 %) ; zéro phrase > 50 mots hors définitions formelles (actuel : 12).

---

## Les 6 habitudes qui rendent le papier difficile

### P1 — Phrases-paragraphes (le problème n°1)

87 phrases > 30 mots. Le schéma récurrent : affirmation + apposition définitoire + parenthèse + citation + subordonnée de conséquence, le tout en une phrase. Un non-natif perd le fil au 2e niveau d'emboîtement. Pire cas : l.158 (68 mots), l.146 (62), l.176 (61), l.281 (58), l.286 (56), l.372 (56).
**Remède global** : une idée = une phrase. Verbe principal dans les 10 premiers mots. Les listes de trois conditions (l.176) ou de trois niveaux (l.147, l.157) passent en `itemize` ou en phrases séparées.

### P2 — Idiomes et métaphores de natif

Invisibles pour vous, opaques pour le lecteur cible :

| Idiome | Occurrences | Remplacement |
|---|---|---|
| turns (not) on / turn only on | l.106, 151, caption Tab.1 | depends (only) on |
| read(s) X off Y | l.94, 373, 446, 480, 487 | derive X from Y / follow from |
| stop short of | l.94 | do not reach / fall short of capturing |
| carry the weight | l.112 | our argument rests on |
| load-bearing | l.152 | essential for / critical for |
| pinned to an assumed value | l.281 | silently fixed to an assumed value |
| missing at random (jargon stats) | l.281 | supprimer, dire simplement « never simply absent » |
| compounds the picture | l.379 | makes the problem harder |
| on-brief (jargon pub) | Tab.1, l.243 | consistent with the prompt |
| by accident of protocol | l.496 | depending on which protocol happens to be used |
| a date slip | l.458 | a wrong date |
| does its work | l.462 | matters / plays its role |
| no slot for | l.430 | no way to represent |

### P3 — Vocabulaire savant à remplacer globalement

| Mot | Occurrences | Remplacement |
|---|---|---|
| underdetermine(d) | l.115, 136, 387, 488 | leave undecided / not fully determine |
| conflate(s/d/ing) — *flaggé par vos encadrants* | l.106, 129, 253, 463 | fail(s) to separate / mix(es) up |
| instantiate(s) | l.252, 400 | illustrate / show concretely |
| unsupportedness (mot inventé) | l.262 | count of unsupported claims |
| oppose X to Y (gallicisme) | l.194–195 | contrast X with Y |
| operationalizations | l.362 | implementations / ways to measure it |
| epistemic status | l.409 | evidence status |
| proprietor | l.400 | owner |
| salient voice | l.147 | strong authorial voice |

**À garder tels quels** (termes techniques du cadre, définis dans le texte) : oracle, license/licensed, regime, verdict, claim-level, normative, idealization. La simplification porte sur tout ce qui les *entoure*.
**Option à discuter** : « stylistic latitude » — vos notes montrent que la version *personal* a abandonné « latitude ». « Stylistic freedom » est plus transparent pour un non-natif ; mais c'est une décision terminologique globale (macro, table, agenda), pas une retouche.

### P4 — Noms composés en chaîne

« licensed-divergence yield » (l.481, le pire du papier), « provider-chosen regime commitments » (l.379), « regime-conditioned diagnosis » (l.477 — acceptable car défini), « hallucination-only scoring » (l.260), « novelty-with-value criterion » (l.448). Un non-natif doit dérouler ces piles mentalement. Dérouler dans le texte : « how much licensed divergence the output actually produces ».

### P5 — Syntaxe littéraire

- **Inversion subjonctive** l.280 : « *Were stylistic latitude or invention license sometimes annotated, the columns would vary…* » → « If some benchmarks annotated… »
- **Sujet extraposé** l.280 : « *that every benchmark […] leaves σ unannotated and κ ungraded is what shows the omission to be structural* » → phrase coupée, sujet simple (voir liste ci-dessous).
- **Causatif** l.400 : « *has a real, named historical figure assert a specific claim* » → « makes a real historical figure state a claim ».
- **Relative réduite** l.430 : « *each case is one a regime-agnostic scorer must get wrong* » ; l.496 : « *flips verdicts the same output would otherwise receive* » → restaurer « that » et restructurer.
- Tournures d'effet : « A paradox sits underneath this effort » (l.83), « The opposite holds » (l.279), « Two analytical moves carry the weight » (l.112). Élégantes, mais coûteuses ; à lisser.

### P6 — Forme / structure (hors langue)

- **l.94 ≈ l.371–374** : le paragraphe FaithQA/HIC-Bench de l'intro duplique §3.3 presque mot pour mot. Réduire l'intro à 1–2 phrases de renvoi ; garder le traitement complet en §3.3.
- **l.94** : « the contract » apparaît avant que la métaphore du contrat soit posée (l.103). Inverser, ou écrire « the prompt's contract (introduced below) ».
- **Bloc σ (l.143–153)** : 11 lignes, 5 idées distinctes (définition, littérature, échelle, orthogonalité, rôle pour la mesure) en un seul pavé. Couper en 2–3 paragraphes, ou passer l'échelle en liste.
- **l.435** : « items 1–4 » / « items 5–7 » — mais les items de l'agenda ne sont pas numérotés ; le lecteur doit compter les paragraphes en gras. Les numéroter.
- **l.387** : « Each case is drawn… Each isolates… and in each… » — triple « each » en trois lignes.

---

## Phrases à reformuler — liste ligne à ligne

Termes du cadre conservés ; seule la syntaxe est simplifiée. Les propositions sont des points de départ, pas du texte imposé.

### Abstract

**l.68** (41 mots, 3 appositions techniques d'un coup)
→ Couper en deux : *"We argue that hallucination should instead be evaluated relative to the prompt's truth regime, TR(p) = (O, σ, κ). The oracle O fixes the reference against which claims are checked; the stylistic latitude σ says how much the form may vary; the invention license κ says whether the output may introduce new content."*

### Introduction

**l.83** « A paradox sits underneath this effort. »
→ *"Behind this effort lies a paradox."* (ou : *"This effort hides a paradox."*)

**l.94** « Even the closest recent steps stop short of the contract. »
→ *"Recent work comes close to this idea, but none of it captures the full contract."* — et condenser tout le paragraphe (cf. P6, doublon §3.3). Les deux phrases suivantes (49 et 46 mots) se coupent chacune en deux.

**l.97** « establish a nonzero structural error floor »
→ *"show that the error rate cannot reach zero"*.

**l.107** (45 mots, apposition finale)
→ *"Concretely, the distinction is already actionable. An evaluator who annotates the prompt's oracle and invention license can withhold the hallucination penalty when the regime authorizes the divergence, and score the claim as PD instead. A regime-agnostic scorer cannot make this judgment."*

**l.108** « …has no analogue of κ, the explicit license to leave it. »
→ *"Faithfulness only asks whether an output stays within its evidence. It has no equivalent of κ, the explicit permission to go beyond that evidence."*

**l.112** « Two analytical moves carry the weight. »
→ *"Our argument rests on two analyses."*

**l.115** « …would resolve verdicts that current pipelines leave underdetermined. »
→ *"…would settle verdicts that current pipelines cannot decide."*

**l.119** (contribution 1, 57 mots)
→ Couper : *"First (conceptual), we introduce TR(p) = (O, σ, κ) and a minimal vocabulary (TR, PD, H) that makes explicit what the prompt authorizes. Two components bear on truth: the oracle O and the invention license κ. The third, σ, governs form and determines whether measurements remain valid (Section 2)."*

### Section 2 (le chantier principal)

**l.146, première moitié** (62 mots)
→ *"This axis has been studied on its own. Style is not a single variable but a bundle of dimensions [kang]. It can be changed while the meaning stays fixed [jin], and facts can be changed while the style stays fixed [balepur]."*

**l.146, seconde moitié** (foregrounding, apposition emboîtée + « which is what lets »)
→ *"Metaphor and hyperbole change the form of a sentence, not its truth conditions [badathala]. Readers reliably recognize how marked a style is [leech; vanpeer], so a graded σ can be annotated rather than guessed. Existing formality datasets and style-transfer metrics already make this axis measurable [pavlick; rao; briakou]."*

**l.148** « Three levels, rather than two or five, keep an explicit median anchor (the contested "moderately marked" zone a binary split would erase) while omitting the extreme registers that rarely surface in model output. »
→ *"We use three levels rather than two because the middle level is where annotators disagree most, and a binary scale would hide it. We stop at three because more extreme registers are rare in model output."*

**l.151** « those verdicts turn only on O and κ, the two components that bear on content »
→ *"those verdicts depend only on O and κ, the two components that concern content"*.

**l.152** « σ is nonetheless load-bearing for measurement: raising stylistic latitude is exactly what leads an automatic verifier to misread marked form as unsupported content, so a regime that leaves σ unspecified leaves the validity of any H count undefined. »
→ *"σ still matters for measurement. A highly stylized output can lead an automatic verifier to read figurative wording as an unsupported claim. If a regime does not specify σ, no hallucination count can be trusted."*

**l.153** « σ thus enters the contract not as a third verdict axis but as the dimension along which measurement of the other two must be held invariant. »
→ *"σ is therefore not a third verdict dimension: it is the dimension that measurement of the other two must be robust to."*

**l.158** (Stalnaker/Searle, 68 mots — la plus longue du papier)
→ Couper en trois : *"Theoretically, κ tracks the kind of speech act the prompt allows. At κ=0 the model must make genuine assertions: it commits to the truth of what it states [stalnaker]. At κ=2, a declared fictional frame allows what Searle calls pretended assertions — sentences with the form of an assertion but without the commitment to truth. κ=1 sits in between: assertions are allowed if they are explicitly marked as provisional."*

**l.176** (définition PD, 61 mots, trois conditions inline)
→ Passer les trois conditions en liste, ou en trois phrases : *"A claim is PD when three conditions hold. It is licensed: the regime permits invention (κ>0), or the claim falls inside a declared fictional frame. It is useful: novel and appropriate under the task constraints, the standard creativity criterion [diedrich; acar]. And it is presented on the regime's terms: a flagged hypothesis under κ=1 must not be asserted as verified fact."*

**l.186** « the usefulness condition inherits the evaluator dependence of creativity judgments »
→ *"the usefulness condition depends on the evaluator, as creativity judgments always do"*.

**l.194–195** « we do not oppose "creativity vs. truth." We oppose H (TR violations) to PD (TR-compliant creativity) »
→ *"we do not set creativity against truth. We contrast H (TR violations) with PD (TR-compliant creativity)."*

**l.262** « which a single unsupportedness count cannot »
→ *"which a single count of unsupported claims cannot do"*.

### Section 3

**l.277** « The uniform columns are the finding, not an empty table. »
→ *"The uniform columns are the result, not a weakness of the table."*

**l.280** (inversion + sujet extraposé, 58 mots — la construction la plus dure du papier)
→ *"If some benchmarks annotated stylistic latitude or invention license, the columns would vary, and the blind spot would be partial and design-specific. Instead, every benchmark — in both traditions, for every task type — leaves σ unannotated and κ ungraded. This is what shows that the omission is structural rather than incidental."*

**l.281** « κ is never missing at random but pinned to an assumed value »
→ *"κ is never simply absent: each tradition silently fixes it (low in hallucination suites, high but unscored in creativity suites)."*

**l.286** (56 mots, trois propositions)
→ *"The coding is a single-author pass against these criteria. We offer it as the first instance of the annotation layer we advocate, not as a validated resource. Because the test is near-binary (is (σ,κ) a scored variable?), it leaves little room for coder disagreement; independent re-coding with reported agreement is itself part of the agenda (Section 5)."*

**l.357** (65 mots, énumération de pipelines)
→ Couper après « at scale » : *"…run at scale [rajendhran]. Some verifiers add a third undecidable verdict [bayat], and signals such as semantic entropy [farquhar] or internal probes [marks] flag unsupported content. None of them consults any prompt-level contract."*

**l.359** « refines the label space without consulting the contract »
→ *"adds a third label but still ignores the contract"*.

**l.363** « CreativityPrism typifies the trend by aligning heterogeneous tasks to shared quality, novelty, and diversity dimensions »
→ *"CreativityPrism is typical: it maps different tasks onto shared dimensions of quality, novelty, and diversity."*

**l.372** (FaithQA, 56 mots)
→ *"Intent-hallucination evaluation decomposes a query into intent constraints (subject, action, qualifiers, quantity) and checks whether the response covers them. But it defines failure independently of factual accuracy, supplies no oracle, and treats even flagged invention as a misinterpretation rather than a licensed move. It encodes neither O nor κ [hao]."*

**l.373** « it reads that label off the output's creativity and factual-deviation scores rather than off the prompt »
→ *"it derives the label from the output's own creativity and factual-deviation scores, not from the prompt"*.

**l.379** « Alignment tuning compounds the picture rather than resolving it: policies for refusal, hedging, and abstention learned during alignment tuning are themselves implicit, provider-chosen regime commitments that reshape when a model declines to diverge. »
→ *"Alignment tuning makes the problem harder, not easier. During alignment, models learn when to refuse, hedge, or abstain. These policies are implicit regime choices, made by the provider, that change when a model declines to diverge."* (supprime aussi la répétition « alignment tuning … alignment tuning »)

**l.381** « enforce convergence before anything is presented as fact »
→ *"and require verified support before anything is presented as fact"*.

### Section 4

**l.396** « The flip is exactly the unresolved tension Maynez et al. flag, whether summaries should tolerate such factual hallucinations »
→ *"This flip is exactly the unresolved tension that Maynez et al. point out: should summaries tolerate factual but unsupported content? The framework locates the answer in O, not in the text."*

**l.400** « The pattern instantiates cleanly. »
→ *"A concrete example makes the split visible."*

**l.400, suite** (causatif + 52 mots)
→ *"Asked to write a short story set in 1920s Paris, a model invents a café and its owner. This is licensed under κ=2 inside the fictional frame, hence PD if it serves the story. But the model also makes a real historical figure state, as biographical fact, a claim that person never made."*

**l.406** (VERIFY, 55 mots)
→ Couper en deux : *"…or undecidable — the last when retrieved evidence is insufficient to confirm or refute the unit [bayat]. Its hallucination score penalizes undecidable units at a fixed weight, regardless of what the prompt asked for."*

**l.409** « the verdict is set by the license κ, which a fixed undecidable penalty, and even a three-way verdict, cannot see »
→ *"The evidence status is the same in both cases; only the license κ changes the verdict. Neither a fixed penalty nor a three-way verdict can capture this."*

**l.430** « each case is one a regime-agnostic scorer must get wrong in at least one direction, because it has no slot for O, σ, or κ »
→ *"a regime-agnostic scorer must get each case wrong in at least one direction, because it has no way to represent O, σ, or κ"*.

### Section 5

**l.440** « The graded components are not hypothetical to measure »
→ *"The graded components can already be measured."*

**l.446** « it is read off the κ annotation »
→ *"it follows directly from the κ annotation"*.

**l.448** (53 mots)
→ Couper à « [organisciak]) » : *"…reach strong human correlation [organisciak]. Value can be aggregated from pairwise preference judgments onto a continuous scale via Bradley–Terry or Elo models, as quality leaderboards already do [bradleyterry; boubdir]."*

**l.458** (52 mots)
→ *"Under a regime-aware view, what matters is not the raw hallucination count but the excess relative to the regime's tolerance. This requires severity weighting (a fabricated safety claim outweighs a wrong date), a choice of claim- vs. output-level aggregation, and regime-conditioned baselines: the acceptable rate differs between grounded summarization and brainstorming."*

### Section 6

**l.480** « The first two read off the claim-level labels »
→ *"The first two follow directly from the claim-level labels."*

**l.481** « an output-level judgment that compares the output's licensed-divergence yield against what a permissive regime leads one to expect »
→ *"an output-level judgment: it compares how much licensed divergence the output actually produces with what a permissive regime leads one to expect."*

**l.487–490** (limitations) : chaque limitation fait 45–60 mots en une phrase. Couper chacune en deux ; le contenu est bon.

### Conclusion

**l.496** « applying the labeling rule by hand shows that supplying it flips verdicts the same output would otherwise receive by accident of protocol »
→ *"applying the labeling rule by hand shows that making the contract explicit changes the verdict an output receives; without it, the verdict depends on which protocol happens to be used."*

---

## Ce qui marche déjà (à garder comme modèles)

Ces phrases prouvent que le papier sait être simple — elles donnent le ton cible de la réécriture :

- l.85 : *"A brainstorming tool that only repeats ideas that already exist is useless; a medical assistant that invents diagnoses is dangerous."*
- l.86 : *"The difference lies not in the text itself, but in what the prompt asked for."*
- l.181 : *"Both statements are invented; only the first is a failure."*
- l.385 : *"The audit shows that the contract is missing; this section shows that supplying it changes verdicts."*
- l.498 : *"…the first step is to stop scoring divergence as if every prompt asked for the same thing."*
- Le worked example photosynthèse (l.188–192) et les trois cas de §4 : concrets, courts, lisibles — c'est grâce à eux qu'un non-natif suit le papier.

---

## Plan d'action priorisé (~1 journée)

**P0 — 2–3 h, le plus gros gain**
1. Remplacements lexicaux globaux (tables P2 et P3) — mécanique, `grep` + édition.
2. Les 7 phrases les plus dures : l.146 (×2), l.148, l.152–153, l.158, l.280–281, l.379.

**P1 — 3–4 h**
3. Couper les ~35 phrases restantes > 40 mots (liste ci-dessus, sections 1, 3, 4, 5, 6).
4. Dédupliquer intro l.94 ↔ §3.3 ; corriger « the contract » avant définition.
5. Gallicismes : « oppose X to Y », « instantiates cleanly ».

**P2 — 1–2 h**
6. Aérer le bloc σ (l.143–153) en 2–3 paragraphes ; envisager `itemize` pour les niveaux de σ et κ.
7. Numéroter les items de l'agenda (l.435 y renvoie par numéro).
8. Recompiler, revérifier la moyenne mots/phrase (cible ≤ 22).

**Règle d'écriture pour toute la passe** : une idée par phrase ; verbe principal tôt ; verbe plutôt que nominalisation ; zéro idiome ; les termes techniques (TR, PD, H, O, σ, κ, oracle, license) restent — c'est tout ce qui les entoure qui devient simple.
