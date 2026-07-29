# Revue pré-soumission — *Computational Linguistics* Position Paper

## A. Executive assessment

Le manuscrit défend une position claire et pertinente : **l’absence de support ne suffit pas, à elle seule, à justifier l’étiquette *hallucination*; l’évaluation doit aussi déterminer si la tâche autorisait le contenu non établi et sous quelle présentation épistémique**. Cette thèse est importante pour l’évaluation des LLM, car elle articule trois traditions encore trop souvent traitées séparément : factualité/faithfulness, suivi d’instructions et créativité computationnelle. Le meilleur apport du manuscrit est la séparation entre **support**, **permission** et **qualité** : une divergence peut être autorisée sans être vraie, et peut être autorisée sans être utile. Cette distinction évite à la fois de valoriser des erreurs factuelles et de pénaliser toute invention demandée par la tâche.

Le texte fonctionne désormais comme un véritable position paper. La thèse apparaît tôt, l’état de l’art sur l’extraction de claims est substantiel, la relation avec la faithfulness est mieux explicitée, la figure principale suit le chemin prompt → spans → claims → evidence state → label, et l’agenda s’étend aux agents. Ces améliorations répondent à une grande partie des remarques des encadrants.

La faiblesse principale reste néanmoins **la preuve du diagnostic collectif**. Le mapping de quarante ressources est purposif, codé par les auteurs, hétérogène dans ses unités et fondé sur des variables parfois inférées à partir de l’absence de contrôle explicite. Il peut soutenir l’existence d’un espace d’évaluation intéressant, mais pas encore l’affirmation forte selon laquelle les deux littératures « occupent des coins séparés » ou laissent systématiquement la même lacune. Plusieurs exemples centraux ont aussi des problèmes d’isolation causale ou de cohérence interne. Enfin, la présence de `σ`, `Γ`, `μ`, `κ`, `SV`, `U`, `V` et `R` rend le cadre plus lourd que nécessaire et laisse ouverte l’objection selon laquelle le style relève d’un contrat d’évaluation général, non d’un « truth contract ».

**Venue-fit verdict:** **strong**. Le sujet, l’angle méthodologique et l’agenda correspondent très bien à *Computational Linguistics*. Toutefois, selon les critères déclarés du journal pour les position papers — raisonnement rigoureux et preuves persuasives — le manuscrit n’est pas encore prêt.

**Position-paper verdict:** **genuine position paper, but its evidential foundation remains underdeveloped**.

## B. Recommendation

**Recommendation:** **requires major revision before submission**.

**Confidence:** **4/5**.

Cette recommandation ne sanctionne pas l’absence d’une nouvelle expérience. Elle reflète trois risques qui touchent directement la contribution : (1) le cadre peut être lu comme une reformulation de la task compliance ou de l’intent-aware evaluation; (2) le mapping est actuellement trop fragile pour porter le principal constat empirique du manuscrit; (3) certains exemples et choix formels affaiblissent précisément la distinction que le texte cherche à établir. Une révision ciblée peut corriger ces points sans transformer l’article en papier expérimental.

## C. Scores

| Criterion | Score | Justification |
|---|---:|---|
| Fit with *Computational Linguistics* | 5 | Problème central pour l’évaluation en NLP, lien direct avec LLM, factualité, sémantique, style, annotation et méthodologie. Fort potentiel de long terme. |
| Strength of the position | 4 | La position est explicite, contestable et génère des conséquences méthodologiques. Elle doit encore être distinguée plus nettement de la task compliance. |
| Importance to the field | 4 | La séparation entre erreurs non autorisées et invention autorisée concerne factual QA, génération ancrée, communication scientifique, créativité et agents. |
| Originality | 3 | L’assemblage `evidence + permission scope + epistemic presentation + style-conditioned recovery` est original. Chaque composante possède toutefois des antécédents proches; la nouveauté combinatoire doit être mieux démontrée. |
| Rigor of reasoning | 3 | Le raisonnement est généralement discipliné, mais plusieurs cas ne font pas varier une seule variable, et certaines conclusions excèdent les prémisses. |
| Quality of evidence | 3 | L’état de l’art et les cas contrastifs sont utiles. Le mapping reste un instrument exploratoire non validé; les exemples construits ne démontrent pas une erreur réelle de mesure. |
| Literature positioning | 4 | La sous-section sur l’extraction/décomposition de claims est solide. Les travaux proches sur intent, alignment, creativity et value sont discutés, mais le contraste direct doit être synthétisé. |
| Conceptual clarity | 3 | Les définitions sont désormais précoces et détaillées. Le rôle de `κ`, la place de `σ` et la frontière entre hallucination et non-compliance restent difficiles. |
| Operational usefulness | 3 | Le pipeline est traduisible en annotation. Les coûts, l’autorité du contrat, l’accord inter-annotateurs et l’agrégation restent ouverts. |
| Research agenda | 4 | L’agenda est une contribution réelle, séquencée et plus riche. Il doit être converti en questions falsifiables avec données, métriques et baselines. |
| Organization | 4 | Progression logique : position → cadre → état de l’art → mapping → cas → agenda. Des répétitions et un placement de Table 2 après le début des annexes nuisent encore au flux. |
| Academic English | 4 | Anglais globalement publication-level, direct et lisible. Quelques phrases longues, formulations non idiomatiques et suraffirmations subsistent. |
| Figures and tables | 3 | Figure 1 claire; Figure 2 riche mais trop dense; Figure 3 redondante; Figure 4 méthodologiquement ambiguë; Table 2 mal placée par le flottant. |
| Overall submission readiness | 2 | La thèse est prometteuse, mais le risque de rejet sur nouveauté, validation du mapping et formalisation reste élevé. |

## D. Probable desk-rejection risks

### D1. Le manuscrit peut être perçu comme une nouvelle terminologie pour la task compliance

- **Risk:** l’éditeur peut considérer que factuality et faithfulness sont déjà relatives à une source ou à un contexte, et que « licensed divergence » désigne simplement un contenu conforme à l’instruction.
- **Evidence from the manuscript:** le texte affirme que l’hallucination n’est pas context-free, mais plusieurs taxonomies existantes sont déjà source-relative. La nouveauté réelle concerne surtout la **permission de quitter l’évidence**, non la relativité au sens général.
- **Severity:** **high**.
- **Required correction:** reformuler la thèse comme suit et l’opposer explicitement aux alternatives :

> **Proposed central thesis:** “Unsupportedness is not sufficient for a hallucination verdict. A claim should be labeled as hallucinated only when its evidential status and epistemic presentation violate the task specification that governs that claim.”

Ajouter, en fin d’introduction ou au début de §3, un tableau comparatif entre factuality, faithfulness, intent/constraint satisfaction, value-based “good hallucination” et le truth-contract framework.

### D2. Le mapping de quarante ressources peut être jugé insuffisamment crédible comme preuve

- **Risk:** le journal demande une preuve persuasive même sans résultats expérimentaux. Un échantillon sélectionné par les auteurs, sans protocole de recherche détaillé, sans double codage et avec des catégories inférées, peut sembler circulaire.
- **Evidence from the manuscript:** §4 décrit un mapping « purposive » et « author-coded »; l’article reconnaît l’absence de codebook public et de recodage indépendant. L’abstract emploie néanmoins “widely used” et “shows”.
- **Severity:** **high**.
- **Required correction:** soit renforcer le protocole avec date de recherche, sources, requêtes, critères d’inclusion/exclusion, unité “resource”, codebook, audit d’un sous-échantillon et tableau de désaccord; soit renommer la section **“Diagnostic Resource Mapping”**, réduire la force des conclusions et présenter le mapping comme un générateur d’hypothèses.

### D3. Les exemples centraux contiennent des ambiguïtés qui atteignent la validité du cadre

- **Risk:** un reviewer peut montrer que le running example contient une instruction contradictoire et que certains cas ne font pas varier la variable annoncée.
- **Evidence from the manuscript:** le prompt de Figure 2 exige que “Every historical statement must be faithful to the extract” tout en autorisant des reconstructions lorsque l’extrait est silencieux. Case C change à la fois le contrat et la formulation; Case B change le frame et le scope.
- **Severity:** **high**.
- **Required correction:** réécrire le prompt, construire des paires minimales, et indiquer clairement quels cas sont illustratifs et quels cas isolent effectivement un champ.

### D4. Le titre peut paraître plus ontologique que l’argument effectivement défendu

- **Risk:** “Hallucination Is Contract-Relative” peut être lu comme une affirmation sur la nature de l’hallucination, alors que la démonstration porte surtout sur **l’étiquette d’évaluation**.
- **Evidence from the manuscript:** le texte répète que la vérité ne change pas; il propose un niveau de décision évaluatif.
- **Severity:** **moderate to high**.
- **Required correction:** préférer un titre méthodologique :

> **Recommended title:** “Hallucination Evaluation Should Be Contract-Aware: Separating Unsupported Error from Licensed Divergence”

ou défendre explicitement, dans §1, pourquoi l’article redéfinit légitimement le label plutôt qu’il n’ajoute une dimension de task compliance.

## E. Five highest-priority revisions

### 1. Reserrer la thèse et établir la nouveauté par contraste direct

- **Location:** Abstract; Introduction, paragraphs “Our position” and “Contributions”; §3.3.
- **Problem:** la formulation “hallucination is relative” est plus large que la nouveauté réellement établie. Le lecteur peut assimiler le cadre à factuality + intent.
- **Why it matters:** c’est l’objection la plus probable d’un reviewer expert et le principal risque de desk rejection.
- **Concrete revision:** introduire un tableau à cinq colonnes : paradigm, evidence source, permission to leave evidence, epistemic presentation, style-conditioned recovery. Ajouter un paragraphe qui affirme que la contribution n’est ni une nouvelle source de vérité, ni un score de créativité, ni une métrique d’alignement globale.
- **Expected benefit:** rend la contribution immédiatement identifiable et réfutable.

### 2. Reconcevoir ou déclasser le mapping de ressources

- **Location:** §4.1, §4.2, Figure 4, Appendix B, abstract.
- **Problem:** échantillon hétérogène, sélection insuffisamment documentée, style “neutral” parfois inféré à partir d’une absence de contrôle, codage `κ=1` contestable pour code/math, décompte de cellules ambigu.
- **Why it matters:** le mapping est présenté comme le principal soutien du diagnostic collectif.
- **Concrete revision:** distinguer au minimum `explicitly neutral`, `uncontrolled`, `not reported`; définir la nature de chaque ressource; séparer text-generation benchmarks et executable-solution tasks; ajouter les critères de sélection et une justification ressource par ressource; corriger Figure 4; employer “suggests within this sample” partout.
- **Expected benefit:** transforme un point vulnérable en scoping analysis défendable.

### 3. Réparer le running example et convertir les worked cases en contrastes minimaux

- **Location:** Figure 2; §2.1; Cases A–E.
- **Problem:** instruction interne contradictoire; exemples qui font varier plusieurs éléments; “the winter that would not lift” est traité comme non-propositionnel alors qu’il peut impliciter une durée ou une persistance.
- **Why it matters:** les exemples sont le test de compréhension et la principale preuve constructive du cadre.
- **Concrete revision:** remplacer l’instruction par :

> “Do not contradict the archive extract. Distinguish statements supported by the extract from plausible reconstructions, and mark every reconstruction explicitly as conjecture.”

Remplacer l’exemple SV-only par un élément sans engagement propositionnel non ambigu, ou annoter le désaccord possible. Pour Case C, conserver le même `O`, le même `Γ` et le même `μ`, puis comparer uniquement une assertion catégorique et une formulation hedgée.
- **Expected benefit:** rend le cadre intuitif et méthodologiquement propre.

### 4. Réduire le formalisme et clarifier le statut de `σ` et `κ`

- **Location:** §2.2–2.5; Table 1; Figures 2–3; Appendix A.
- **Problem:** quatre champs sont appelés “three components”; `κ` n’est pas un champ et n’est jamais utilisé par le label, mais reste omniprésent; `σ` intervient dans recovery, pas dans truth labeling.
- **Why it matters:** le reviewer peut conclure que le formalisme masque une intuition simple.
- **Concrete revision:** option préférée :

> `TC(p) = (O_p, Γ_p, μ_p)` for claim labeling, and `TS(p) = (TC(p), σ_p)` for the complete task specification.

Supprimer `κ` du noyau et le garder uniquement comme index exploratoire dans Appendix B, ou définir formellement sa fonction et ses limites. Corriger `V(c* | p)` en `V(c*, s | p)` puisque la décision dépend de la présentation dans `s`.
- **Expected benefit:** diminue la charge cognitive et répond à la note des encadrants sur l’excès de formalisme.

### 5. Transformer l’agenda en roadmap falsifiable

- **Location:** §6 and §7.2.
- **Problem:** sept priorités pertinentes, mais plusieurs restent des souhaits sans design, baseline ou critère de réfutation.
- **Why it matters:** pour un position paper, l’agenda doit être une contribution scientifique, pas une future-work list.
- **Concrete revision:** pour chaque priorité, ajouter une question, une unité d’analyse, les annotations requises, une baseline contract-blind, une métrique et un résultat qui affaiblirait la position. Prioriser trois étapes : annotation reliability → factorial benchmark → pipeline diagnosis. Présenter aggregation, mitigation, generalization et agents comme extensions.
- **Expected benefit:** rend la position empiriquement attaquable et plus influente.

### Suivi explicite des notes des encadrants

| Note | Statut dans la version actuelle | Évaluation reviewer | Action résiduelle |
|---|---|---|---|
| Ajouter SOTA extraction de claim | **Traité** | §3.2 est l’une des meilleures parties | Relier plus directement chaque choix de granularité à l’annotation TC; éviter les claims d’absence non systématiques. |
| Remonter les définitions de `TC(p)` | **Traité** | La position et les termes apparaissent dès l’introduction | Réduire le nombre de symboles et résoudre “three components/four fields”. |
| Refaire la figure prompt → claim | **Traité** | Figure 2 montre tout le pipeline | Simplifier visuellement; supprimer ou fusionner Figure 3. |
| Ajouter faithfulness et alignment | **Traité partiellement** | Bonne intégration en §3.3 | Retirer l’affirmation non démontrée selon laquelle les trade-offs publiés sont “partly a property of measurement”. |
| Ouvrir sur Agent AI | **Traité** | Agenda item 7 pertinent | Le présenter comme extension spéculative, avec un exemple de trajectoire et un baseline concret. |
| Lier `σ`, faithfulness et style SOTA | **Traité partiellement** | Argument de recovery-stage bien posé | `σ` reste la composante la plus contestable du “truth contract”; envisager `TS=(TC,σ)`. |
| Définir usefulness avec SOTA | **Traité** | Bonne séparation permission/value | Préciser que usefulness peut être évaluée au niveau idée/réponse/processus, pas toujours au claim. |
| Bien définir `O_p` comme source/oracle | **Traité partiellement** | Les exemples de sources sont clairs | Ajouter une règle d’adjudication et une hiérarchie en cas de sources contradictoires. |
| Ajouter transitions et plan | **Traité** | Plan du papier présent et transitions améliorées | Réduire les répétitions entre §6, §7.1 et conclusion. |
| Réduire le formalisme | **Non entièrement traité** | Le cadre est encore symboliquement lourd | Supprimer/quarantiner `κ`, fusionner figures, numéroter seulement les équations centrales. |
| Expliquer granularité des claims | **Bien traité** | §3.2 couvre atomicité, decontextualization, molecular facts, sensitivity | Ajouter une décision pratique : unité recommandée et procédure d’arbitrage. |
| Introduction entre §4 et §4.1 | **Traité minimalement** | Une phrase annonce le mapping | Ajouter une phrase sur l’unité “resource”, le but diagnostique et la non-prévalence. |
| Informations sur les samples | **Insuffisant** | 40 ressources listées, mais sourcing et sélection restent faibles | Date, sources, requêtes, inclusion/exclusion, catégories, coder(s), codebook. |
| Expliquer l’agenda et sa raison d’être | **Amélioré** | Le séquençage est clair | Ajouter RQ, méthode, métrique, baseline, falsifier pour chaque item. |
| Détailler certaines phrases | **Encore nécessaire** | Quelques claims condensent plusieurs étapes | Priorité aux passages sur style, mapping, mesure des trade-offs et agents. |

## F. Position and argument map

### F1. Reconstructed position

- **Central position:** an unsupported claim should not automatically receive the label *hallucination*. The label must depend on the evidence relevant to the task, the scope within which evidence-unknown content is permitted, and the epistemic presentation required by the task. Requested style additionally conditions the recovery of claims from surface text.
- **Problem:** factuality and creativity evaluations often operationalize different task assumptions without making those assumptions independently visible or controllable.
- **Target of criticism:** the practice of treating unsupportedness as sufficient for hallucination, and the related practice of reporting a single response-level score that collapses support, permission, style, usefulness and severity.
- **Supporting premises:**
  1. a response contains multiple units with different truth-conditional status;
  2. the evidence source must be explicit before support can be judged;
  3. some tasks intentionally authorize evidence-unknown content;
  4. authorization has a scope and a required presentation;
  5. stylistic realization can perturb claim recovery without changing the intended factual commitment;
  6. current protocols do not consistently expose these variables as separate controls.
- **Evidence offered:** hallucination/creativity literature; claim-extraction SOTA; a purposive mapping of forty resources; five contrastive cases; a formal decision rule.
- **Implications if accepted:** benchmark designers annotate task permissions; evaluators separate recovery errors from evidence and permission errors; mitigation is scored on reduction of unlicensed error and preservation of authorized divergence; agents receive trajectory-level contracts.
- **Research agenda:** reliability of contract annotation, factorial benchmarks, style-robust recovery, response aggregation, mitigation, cross-domain/language validation, agentic extension.
- **Falsifiability:** the position is weakened if (a) annotators cannot reliably identify contract fields, (b) contract-aware labels do not improve agreement or diagnostic stability, (c) contract-blind baselines perform equally across controlled permission/style conditions, or (d) the proposed labels collapse empirically into existing faithfulness or constraint-satisfaction labels.

### F2. Evidence map

| Major claim | Claim type | Evidence provided | Evidence quality | Appropriate wording | Missing evidence |
|---|---|---|---|---|---|
| Unsupportedness is not sufficient for a hallucination label | Conceptual/normative | Fiction, hypotheses and contrastive prompt examples; adjacent creativity literature | **Moderate to strong** as a conceptual distinction | “Unsupportedness is not sufficient under tasks that explicitly authorize evidence-unknown content.” | Human annotation showing that evaluators actually disagree less when permission is explicit. |
| Hallucination should be claim-level | Methodological | FActScore-style decomposition, WiCE, claim extraction and decomposition work | **Strong** for decomposed factual evaluation | “Claim-level labels are necessary for mixed responses, although other units may be needed for discourse-level phenomena.” | Treatment of distributed, presupposed and discourse-level commitments. |
| `O_p`, `Γ_p` and `μ_p` are separable | Conceptual | Medical, fiction and hypothesis examples | **Moderate** | “The fields represent analytically distinct decisions.” | Inter-annotator evidence; edge cases where scope and presentation interact. |
| Requested style must be included because it affects claim recovery | Methodological/hypothesis | Style-transfer/foregrounding literature and LLM-judge bias studies | **Partial** | “Requested style is a plausible perturbation variable for claim recovery and should be tested explicitly.” | Direct evidence that current factuality pipelines change extracted claims or labels under claim-preserving style transformations. **[evidence needed]** |
| Current factuality and creativity resources occupy different task-design regions | Descriptive | Author-coded mapping of 40 resources | **Weak to moderate** | “In our purposive sample, the resources cluster in different coded regions.” | Systematic selection, validated codebook, independent coding, sensitivity analysis. |
| No sampled resource jointly controls all contract variables | Descriptive absence claim | Appendix B coding | **Moderate only within the sample** | “We did not identify such a resource in this purposive sample.” | A systematic search is required for any field-wide claim. **[evidence needed]** |
| Reported instruction/faithfulness trade-offs are partly measurement artifacts | Causal/interpretive | Wu et al. establishes a training trade-off; style/recovery argument is theoretical | **Insufficient** | “Some apparent trade-offs may also be amplified by style-sensitive measurement.” | Controlled empirical comparison of training effects versus measurement effects. **[evidence needed]** |
| Contract-aware mitigation can preserve creativity while reducing hallucination | Hypothesis | Recent mixed evidence on mitigation/creativity; agenda | **Hypothesis** | “This should be evaluated as a multi-objective goal.” | Direct evaluation under matched contracts and controlled methods. |
| The framework extends to agents | Speculative/methodological | Reasoned trajectory example and ToolQA contrast | **Plausible but preliminary** | “Agentic settings expose additional contract-tracking problems.” | Multi-step datasets with changing evidence and subtask permissions. |

### F3. Logical validity assessment

The central inference is valid in its narrow form:

1. Evidence-relative evaluation alone classifies any non-entailed claim as unsupported.
2. Some tasks explicitly authorize certain non-entailed claims.
3. Therefore, unsupportedness alone cannot distinguish task failure from task-authorized generation.
4. An evaluator needs at least one permission variable in addition to evidential status.

The argument becomes weaker when it moves from this narrow conclusion to three broader claims:

- that *hallucination itself* is contract-relative rather than its **evaluation label**;
- that style belongs inside a truth contract rather than in the broader task specification;
- that the mapped literature demonstrates a field-wide blind spot.

These are not fatal problems, but each requires narrower wording or stronger evidence.

### F4. Alternative positions that must be answered fairly

1. **Task-compliance alternative:** keep hallucination defined as unsupported or false content; separately score whether fiction or speculation was requested. Under this view, “licensed divergence” is not a third hallucination label.
2. **Two-layer alternative:** factuality/faithfulness first, then task utility. A fictional claim can remain “unsupported” at layer one and be “appropriate” at layer two without redefining hallucination.
3. **Epistemic-status alternative:** the real missing variable is assertion status—asserted, hypothesized, counterfactual, fictional—not a full truth contract.
4. **Extractor-robustness alternative:** `σ` identifies a robustness problem in semantic parsing or claim extraction and should not be part of the truth definition.
5. **Existing-intent alternative:** constraint-based or intent-aware evaluation already represents task requirements; the manuscript must show that `O`, `Γ` and `μ` yield distinct error diagnoses.

The article mentions parts of these alternatives but does not yet present the strongest version of each. A dedicated “Why not simply score factuality and task compliance separately?” paragraph is required.

## G. Major reviewer concerns and rebuttal plan

| Reviewer objection | How damaging is it? | Does the manuscript answer it? | Best rebuttal or revision |
|---|---:|---|---|
| “This is obvious: fiction permits invention and QA does not.” | High | Partly. The paper offers formal fields and pipeline consequences, but the motivating contrast is obvious. | Shift the contribution from the observation to the **operational decomposition**: permission scope, epistemic presentation, stage-specific errors and response aggregation. Demonstrate at least two non-obvious mixed contracts, not only QA vs fiction. |
| “You are renaming intent compliance.” | Very high | Partly in §3.3. | Add a comparison table and a minimal pair where two responses have equal constraint coverage but different evidence/permission diagnoses. Explain that intent scores may conflate omission, style, evidence and permission. |
| “Licensed divergence is not a type of hallucination; it is simply non-factual but appropriate text.” | Very high | Not fully. | Clarify whether the proposal changes the ontology of hallucination or only the evaluation decision. A safer claim is that evaluators need a third **verdict** after evidence checking, not that LD is a subtype of hallucination. |
| “The mapping is circular: you define the axes and then infer that benchmarks do not annotate them.” | Very high | The limitations acknowledge purposiveness, but do not eliminate circularity. | Publish a codebook, identify observable coding criteria, add independent recoding for a subset, and separate explicit from inferred variables. Alternatively, downgrade the mapping to a design-space illustration. |
| “`σ` has no place in a truth contract.” | High | §2.3 offers a two-stage defense. | Split task specification from truth labeling: `TS(p)=(TC(p),σ_p)`. This preserves the important style-robustness claim without making style constitutive of truth. |
| “The framework is too expensive and subjective to annotate.” | High | Agenda item 1 answers cost through amortization. | Add a staged annotation protocol: task-level contract first, claim recovery second, adjudication only for disagreements. Specify expected reliability targets and a minimal annotation variant. |
| “Your main evidence is constructed examples.” | High | The manuscript clearly labels them as constructed. | Replace at least two cases with short, accurately sourced examples from existing resources, or explicitly frame all cases as **unit tests** of the formal rule rather than evidence that current evaluators fail. |
| “The framework does not handle conflicting or evolving oracles.” | Moderate to high | Mentioned in agenda and agentic extension. | Define `O_p` as evidence plus an adjudication/precedence rule. Give one conflict example in the core definition. |
| “Response-level evaluation is left open, so the framework cannot rank systems.” | Moderate | The paper explicitly separates `R(y|p)`. | Defend this as intentional modularity, but provide two candidate transparent aggregations in Appendix A and state which research questions each answers. |
| “The framework may legitimize misinformation whenever a user asks for creativity.” | High | Partly in scope examples. | State a non-overridable safety/authority constraint: user permission cannot authorize violation of system, legal, safety or domain rules. Add misuse and governance language in §7.2. |

## H. Section-by-section review

### Abstract

**Intended purpose.** State the problem, position, evidence and implications without requiring the reader to know the notation.

**Does it succeed?** Mostly. The abstract is readable and identifies the third label. It is, however, 258 words, slightly above the requested 150–250 range, and it overstates the evidential force of the mapping.

**Major problems.**

1. “widely used” is not operationalized for the forty resources.
2. “which shows” is stronger than a purposive, single-coded mapping warrants.
3. “Two claims with identical wording” is defensible, but the contextualized claims differ; the point should be phrased as identical surface wording under different task contexts.
4. The benefit is framed mainly as avoiding suppression; annotation stability and clearer diagnosis should also appear.
5. The abstract does not state a falsifiable consequence.

**Required revision.** Replace the current abstract with the following 211-word version:

> Hallucination evaluation often treats any claim unsupported by a selected evidence source as an error. This convention is appropriate for grounded factual tasks, but it is insufficient when a task explicitly authorizes hypotheses, fictional invention, or figurative expression. This position paper argues that unsupportedness alone should not determine a hallucination label. Instead, evaluators should judge each recovered claim against a task-specific truth contract that specifies the relevant evidence, the requested style, the permitted scope of evidence-unknown content, and how such content must be presented. The framework distinguishes supported claims, unlicensed hallucinations, and licensed divergence, while treating usefulness, severity, style compliance, and response-level quality as separate assessments. We motivate this distinction through a purposive mapping of forty evaluation resources and contrastive cases spanning grounded generation, creative writing, hypothesis generation, and stylistically marked factual explanation. The mapping suggests that current factuality and creativity protocols usually leave at least one contract variable implicit, especially when marked language must remain factually grounded. We therefore propose a research agenda centered on reliable contract annotation, style-robust claim recovery, factorial benchmark design, transparent response-level aggregation, and mitigation methods that reduce unlicensed errors without suppressing task-authorized invention. The proposal is testable: it should improve annotation agreement and diagnostic stability over contract-blind evaluation, or be rejected if it does not.

**Exact word count:** **211**.

### 1. Introduction

**Intended purpose.** Motivate the factuality–creativity tension, define claim and task context, state the position, delimit the evidence and announce contributions.

**Does it succeed?** Yes, substantially better than the earlier version. Definitions now precede most uses; Figure 1 makes the contract dependence visible; the plan of the article is explicit.

**Major problems.**

- The first paragraph contains a comma splice.
- The sentence “the winter that would not lift asserts nothing checkable” is too categorical. It can conventionally imply that winter persisted, felt prolonged or symbolized an unresolved condition. This conflicts with the later statement that metaphors may convey recoverable claims.
- The paragraph defining `p` is dense and interrupts the main thesis with notation management.
- “We support the position in two ways” gives the mapping and worked cases more evidential weight than they can bear. They motivate and instantiate the framework; they do not validate it.
- The title-level claim is not distinguished from a safer evaluation claim.

**Precise revisions.**

1. Make the thesis the final sentence of paragraph 3 and move the full explanation of `p` to §2.2.
2. Replace the contested no-claim example with a genuinely metatextual or ornamental span, or annotate it as disputed.
3. Add one paragraph titled **“What would count as evidence against this position”** before Contributions.
4. Add one paragraph answering the two-layer alternative.

**Suggested paragraph-level order.**

1. Reliability problem and standard evidence-relative evaluation.
2. Mixed task contexts where non-entailed content can be authorized.
3. Precise thesis: unsupportedness is insufficient.
4. Why factuality + task compliance is not enough.
5. Scope of evidence: mapping as diagnostic, cases as unit tests.
6. Contributions and article plan.

### 2. Truth Contracts and Claim-Level Labels — section-level assessment

**Intended purpose.** Operationalize the position as a claim-recovery and labeling procedure.

**Does it succeed?** Partly. The section is detailed and implementable, but it currently carries too many representational layers for a position paper.

**Section-level recommendation.** Retain the pipeline, simplify the notation, and distinguish the **truth-label contract** from the broader **task specification**.

### 2.1 Overview: from a response span to a label

**Strength.** The running example is a strong pedagogical choice. One response yielding SUP, SUP+SV, LD and H demonstrates that the framework is not merely QA-versus-fiction.

**Problems.**

- The prompt is internally tense: “Every historical statement must be faithful to the extract” conflicts with permission to add a reconstruction where the extract is silent.
- “Those three requests are exactly the three components” conflicts with a four-field tuple.
- The figure and prose rely on “Dr. Chapuis” as an invented harmful attribution, which is useful but makes the example emotionally salient; ensure that the name is unmistakably fictional.

**Revision.** Use a non-contradictory prompt and say “three dimensions represented by four fields: evidence, requested style, and permission, with permission decomposed into scope and presentation.”

### 2.2 The truth contract

**Strength.** `O_p`, `Γ_p` and `μ_p` now have concrete definitions and examples. The distinction between scope and presentation is meaningful.

**Problems.**

- `O_p` combines a source, a set of admissible sources and an adjudication process. These are not equivalent.
- A declared fictional frame is listed as a form of reference evidence, while elsewhere it satisfies presentation and permission. This risks circularity.
- `κ_p` has no formal mapping from `(Γ_p, μ_p)` and is admitted to lose the information needed by the rule.
- The assertion that scope and marking “co-vary in practice” is plausible but unsupported and not generally true.

**Revision.** Define:

> “`O_p` comprises the admissible evidence set and an adjudication rule for resolving coverage, temporal validity, and source conflicts.”

Keep fictional-world constraints in `O_p`, but keep the **declaration that the response is fiction** in `μ_p`; state this boundary explicitly. Remove `κ_p` from core definitions or define it solely as an appendix coding convenience.

### 2.3 Requested style levels

**Strength.** The section directly addresses the supervisor request to connect `σ`, style and faithfulness. The distinction between requested and observed style is necessary.

**Problems.**

- The three levels are not validated and may not be comparable across genres or languages.
- “This concern is not hypothetical” is too strong because the cited judge-bias work is not a test of claim extraction under controlled style transformations.
- The argument that style belongs in the truth contract rests on task specification, not truth conditions.
- `SV` combines many phenomena: metaphor, register, voice, syntax, phonology and discourse.

**Revision.** Reframe `σ` as a **controlled perturbation variable at recovery**. Preferred structure:

> `TC(p) = (O_p, Γ_p, μ_p)` and `TS(p) = (TC(p), σ_p)`.

Then state:

> “Style does not alter the truth contract. It alters the surface realization from which an evaluator must recover the claims governed by that contract.”

This formulation is conceptually cleaner and retains the scientific contribution.

### 2.4 Unit of analysis and span typing

**Strength.** This subsection successfully explains why sentence-level labeling is insufficient and integrates the SOTA on claim granularity.

**Problems.**

- A span may express presuppositions, implicatures or discourse-level claims that cannot be assigned independently.
- The span boundaries are not operationalized.
- A binary `z` cannot capture multiple stylistic contributions or uncertainty.
- Canonicalization itself may remove epistemic status or alter the claim.

**Revision.** Add an annotation note:

> “Spans are minimal contiguous units selected for interpretation, but claims may depend on broader discourse context. Annotators preserve assertion status, modality, negation, attribution, temporal scope, and referents during canonicalization.”

State that the framework allows one span → multiple claims and one claim → multiple supporting spans.

### 2.5 Evidence state and claim label

**Strength.** The separation between evidence state and contract label is the formal core and is well motivated. The treatment of abstention as a meta-claim is useful.

**Problems.**

- `V(c* | p)` is under-specified because the rule depends on `D(c*, s, μ_p)`; `s` must be an argument or recoverable from `c*`.
- `UNKNOWN` collapses at least three causes: genuine underdetermination, evidence outside scope, and retrieval failure. The article acknowledges the problem but still routes all three through the same label.
- Binary scope/presentation functions omit an unresolved state and annotator uncertainty.
- Usefulness at claim level is not appropriate for all creative products; narrative usefulness often emerges at response or process level.

**Revision.** Use:

> `V(c_i^*, s_i | p)`

and record a reason code for `UNKNOWN`, for example `underdetermined`, `not-covered`, `retrieval-failure`, or `adjudication-conflict`. Define `U` with a level argument or state that the paper only proposes the ordering, not the unit of usefulness assessment.

### 2.6 Representative contracts

**Strength.** The examples diversify the framework beyond the running example.

**Problem.** Table 2 is physically placed on page 22, after the start of Appendix B, despite being introduced in §2.6. This disrupts the argument and makes the section appear empty.

**Revision.** Force Table 2 immediately after §2.6 using an appropriate float barrier, or move it explicitly to Appendix A and replace §2.6 with a compact in-text table. Do not leave a main-text table after an appendix heading.

### 3. Related Evaluation Paradigms — section-level assessment

**Intended purpose.** Establish that the contract adds a decision layer not present in existing hallucination taxonomies, claim extraction or adjacent evaluation paradigms.

**Does it succeed?** Largely. This section is now substantive rather than decorative.

### 3.1 Hallucination taxonomies and the missing contract layer

**Strength.** The text distinguishes descriptive taxonomies of mismatch source from a normative/evaluative decision about permission.

**Problem.** “They do not, however, jointly represent…” is a field-wide absence claim supported mainly by the later purposive mapping.

**Revision.** Replace with:

> “Across the surveys and benchmarks examined in our purposive mapping, we did not find a protocol that independently varies all four variables.”

This makes the claim traceable to the study actually performed.

### 3.2 Claim extraction and the recovery stage

**Strength.** This is the strongest related-work subsection. It accurately distinguishes extraction quality, decontextualization, granularity, verifiability and downstream verification. It directly answers the supervisor’s request for SOTA claim extraction.

**Problems.**

- The manuscript moves from “extract only verifiable claims” to “will misclassify licensed material” too quickly. A verifier may simply exclude non-verifiable content rather than misclassify it.
- “No extraction benchmark we are aware of…” should be bounded to the search process.
- The subsection surveys the debate but does not state the paper’s recommended operational unit.

**Revision.** Change “will misclassify” to “may omit or mishandle.” Add a final design decision:

> “For this framework, the preferred unit is a minimally decontextualized proposition that preserves modality, attribution and discourse frame; atomicity is not required.”

### 3.3 Adjacent evaluation paradigms

**Strength.** Faithfulness, alignment, intent and value are finally related to the framework. The order “permission first, usefulness second” is a meaningful contribution.

**Problems.**

- The sentence that reported training trade-offs are partly measurement effects is not established.
- The intent comparison is too short relative to the novelty risk.
- The style-preserving evaluation paragraph describes an important benchmark idea but not direct evidence.

**Revision.** Expand the intent comparison by one paragraph and label the measurement-artifact statement as a hypothesis:

> “We hypothesize that style-sensitive recovery can amplify an observed instruction–faithfulness trade-off even when the underlying factual commitments remain constant.”

### 4. Evidence from a Purposive Resource Mapping — section-level assessment

**Intended purpose.** Demonstrate that existing evaluation resources leave contract variables implicit and identify empty task-design regions.

**Does it succeed?** Only as a **diagnostic scoping exercise**. It does not support prevalence claims or a validated taxonomy of the literature.

**Recommended section title.**

> “A Diagnostic Mapping of Evaluation Resources”

The word “Evidence” in the current title invites a higher methodological standard than the section meets.

### 4.1 Mapping protocol

**Strength.** The manuscript now explicitly says the sample is purposive, not systematic, and distinguishes implicit/partial/not scored.

**Major problems.**

1. No search date, database, query, snowballing process, inclusion criterion or exclusion criterion.
2. “Resource” includes benchmarks, datasets, tasks and metrics with different units and outputs.
3. The coder is unclear: “author-coded” versus “expert coding.”
4. `σ=0` sometimes seems to mean neutral requested style and sometimes style not controlled.
5. `κ=1` is assigned to constrained code/math/problem solving even when the output does not consist of explicitly marked hypotheses.
6. No sensitivity analysis shows whether Figure 4 changes under alternative reasonable codings.

**Required revision.** Add a compact protocol box containing:

- review date and sources;
- category targets;
- inclusion/exclusion rules;
- unit of coding;
- coder count and adjudication;
- observable criteria for each code;
- treatment of non-textual/executable outputs;
- limitations.

At minimum, independently recode 20–25% of the resources and report agreement or a disagreement table. If this cannot be done, explicitly call the mapping “illustrative” and remove numerical language from the abstract.

### 4.2 Observed pattern in the sample

**Strength.** The section does not pretend to estimate prevalence and identifies a useful factorial design gap.

**Problems.**

- The contrast “factuality cluster: low σ” confounds neutral style with unmeasured style.
- The claim that “six of the nine cells are empty” is ambiguous because the creative badge spans two cells. Visually, readers may count five empty cells.
- “the combination under which a style-sensitive verifier would fail” predicts failure without evidence; “could reveal failure” is warranted.
- The term “apparent contradiction” is unclear: the two benchmark families do not make contradictory claims because they evaluate different tasks.

**Revision.** Use separate codes for `explicitly neutral`, `uncontrolled`, and `not reported`. Replace “fail” with “could fail.” Recalculate or explain the cell count. Frame the output as a **coverage map**, not a contradiction.

### 5. Worked Cases

**Intended purpose.** Show how changing evidence, frame, presentation, scope or style changes the rule’s output.

**Does it succeed?** It helps readers understand the framework, but the cases are not all minimal or evidential.

**Case-specific assessment.**

- **Case A:** useful and defensible. It demonstrates that source-faithfulness and external factuality differ. Retain.
- **Case B:** pedagogically clear but changes both discourse frame and permission scope. Present it as motivation, not isolation.
- **Case C:** currently does not isolate `μ`; it moves from grounded QA to a hypothesis-generation contract. Rewrite under one fixed contract.
- **Case D:** useful scope-boundary example. Add a sentence on fictionalization of real public figures, parody and defamation as edge cases.
- **Case E:** central to `σ`, but still only a hypothesis about evaluator behavior. Pair the neutral and figurative strings explicitly and state the gold canonical claim. Avoid claiming that the empty cell makes constructed data “the only kind available”; the authors could build a small diagnostic set.

**Structural revision.** Rename the section **“Contrastive Unit Tests of the Labeling Rule.”** This accurately describes its scientific function. Add one final table with columns: fixed fields, changed field(s), expected label, what would falsify the expectation.

### 6. Research Agenda

**Intended purpose.** Turn the position into a sequenced research program.

**Does it succeed?** Yes, more than in the earlier version. The agenda is substantive and includes annotation cost, pipeline diagnosis and agents.

**Major problems.** The seven items have unequal specificity. Items 2–4 are testable; items 5–7 remain broad. The agenda needs explicit falsifiers and baselines.

**Revision.** See Section N below for a full rewritten agenda matrix. In the main article, reduce each item to: unresolved question → minimal experiment → decisive result. Move implementation details to an appendix.

### 7. Discussion

**Intended purpose.** State evaluation implications, avoid indiscriminate suppression and delimit validation priorities.

**Does it succeed?** Partly. The separation of label, severity and style compliance is valuable.

**Problems.**

- §7.1 repeats §2.5 and §6.4.
- The inevitability paragraph risks distracting from the main contribution and depends on contested theoretical arguments.
- §7.2 is more a limitations section than a discussion, but it lacks explicit misuse and falsifiability.

**Revision.** Merge the first paragraph with §2.5 or shorten it by half. Keep the inevitability point to two cautious sentences. Rename §7.2 **“Limitations, governance, and falsifiability.”** Add who sets the contract, which constraints are non-overridable, and how the framework could be misused to launder misinformation.

### 8. Conclusion

**Intended purpose.** Restate the position, evidence and validation priorities.

**Does it succeed?** Yes, but it remains notation-heavy and repeats earlier material.

**Revision.** Remove the full tuple from the first paragraph or mention it once. End with one concrete community action rather than another list:

> “The immediate test is to compare contract-aware and contract-blind evaluators on matched prompts that independently vary evidence, permission, presentation, and style.”

### Appendix A: Additional Diagnostics and Response-Level Aggregation

**Strength.** The appendix clarifies stage-specific errors and aggregation sensitivity. It is useful and relevant.

**Problems.**

- Set equality in the stability equation is stronger than the intended matched equivalence.
- The display is unnumbered despite being referenced conceptually.
- No candidate response-level formulas are given, even as alternatives.

**Revision.** Replace equality by an explicitly defined matching relation or bijection, number the equation, and provide two non-normative candidate aggregations with their interpretation.

### Appendix B: Resource Mapping

**Strength.** Full resource-level transparency is better than an opaque summary.

**Problems.** The tables are visually dense; several fields rely on subjective inference; the reader lacks a compact codebook and source-selection trail.

**Revision.** Keep the tables in the appendix, add a one-page codebook, and release a machine-readable CSV with `resource_type`, `output_unit`, `explicit_vs_inferred`, coder notes and source locations. Ensure the text does not call the appendix a validated dataset.

### References

**Strength.** The bibliography is broad, recent and includes primary NLP sources. A mechanical audit found 112 unique BibTeX keys with author, title and year fields present and no duplicate DOI or normalized title.

**Problems.** The evidential status of preprints is not always visible in prose. A few citations are adjacent rather than direct support for the claim made.

**Revision.** Mark preprints where load-bearing, cite primary creativity work for novelty/usefulness, and reduce citations that merely share vocabulary.

### Reader simulation

| Reader | Three likely points of confusion | Most convincing part | Least convincing part | Highest-impact change |
|---|---|---|---|---|
| Senior expert in LLM evaluation | Novelty beyond intent-aware evaluation; why style is inside TC; validity of 40-resource coding | §3.2 and the evidence/permission separation | Figure 4 and field-wide absence claims | Add prior-work contrast table and validated coding protocol. |
| General CL researcher | `p` versus `x`; difference between `Γ`, `μ`, `κ`; how a full response is scored | Figure 1 and the running example’s multiple labels | Symbol density in §2 and duplicated pipeline figures | Split `TC` from style task specification; remove `κ` from core. |
| Non-native English-speaking PhD student | Long definition paragraph in intro; meaning of “epistemic presentation”; difference between unsupported and contradicted | Concrete medical/fiction contrasts | Dense Figure 2 text and abstract overclaim | Use a glossary before Figure 2 and shorten sentences. |

## I. Academic English editing

The prose is generally strong. The following changes target recurrent problems: long sentences, non-idiomatic phrasing, hidden qualifications and wording stronger than the evidence.

### I1

**Original:**
> “These errors limit the use of LLMs in high-stakes settings, therefore a large body of work aims to detect and reduce them.”

**Problem:** comma splice; the causal relation is compressed.

**Suggested revision:**
> “These errors limit the use of LLMs in high-stakes settings. Accordingly, a large body of work aims to detect and reduce them.”

**Reason:** grammatically correct and easier to process.

### I2

**Original:**
> “Claims, not sentences and not responses, are what receives a label here.”

**Problem:** subject–verb disagreement and awkward cleft construction.

**Suggested revision:**
> “The framework assigns labels to claims, not to complete sentences or responses.”

**Reason:** direct and unambiguous.

### I3

**Original:**
> “We argue that hallucination should be judged against the task’s truth contract rather than against the sentence alone: what evidence the task is answerable to, what style it invites, and what kind of invention it permits.”

**Problem:** “what evidence the task is answerable to” is non-idiomatic; a task is not normally “answerable to” evidence.

**Suggested revision:**
> “We argue that hallucination should be judged against the task specification: which evidence governs the answer, which style is requested, and which forms of invention are permitted.”

**Reason:** clearer parallel structure.

### I4

**Original:**
> “This yields three claim-level labels instead of two: supported, hallucination, and licensed divergence, the last of which covers invention the task authorized.”

**Problem:** missing relative marker; the three nouns are not grammatically parallel labels.

**Suggested revision:**
> “This yields three claim-level labels: supported claim, hallucination, and licensed divergence. The last label covers invention authorized by the task.”

**Reason:** improves grammar and category parallelism.

### I5

**Original:**
> “Consequently, two protocols can assign different claim labels to the same text because each assumes a different task, emphasized by different prompts.”

**Problem:** “emphasized by different prompts” does not attach clearly; “same text” risks confusing wording with contextualized claim.

**Suggested revision:**
> “Consequently, two protocols can assign different labels to identical surface wording because their prompts establish different task conditions.”

**Reason:** states the causal relation precisely.

### I6

**Original:**
> “A sentence may carry several claims, one, or none…”

**Problem:** non-parallel enumeration.

**Suggested revision:**
> “A sentence may express several claims, a single claim, or no truth-conditional claim.”

**Reason:** parallel and more precise.

### I7

**Original:**
> “Those three requests are exactly the three components of the contract…”

**Problem:** the displayed contract has four fields.

**Suggested revision:**
> “Those requests instantiate three dimensions of the task specification: evidence, style, and permission, with permission decomposed into scope and required presentation.”

**Reason:** removes an internal inconsistency.

### I8

**Original:**
> “The three components of the contract are not redundant…”

**Problem:** same component/field inconsistency; the sentence also anticipates an objection before clearly naming the levels.

**Suggested revision:**
> “The fields act at two different stages and are therefore not interchangeable.”

**Reason:** shorter and exact.

### I9

**Original:**
> “This concern is not hypothetical.”

**Problem:** overstates the available evidence. Existing studies show judge sensitivity to style, not necessarily the proposed recovery failure.

**Suggested revision:**
> “Related evidence makes this failure mode plausible, although it has not yet been tested under the controlled conditions proposed here.”

**Reason:** matches claim strength to evidence.

### I10

**Original:**
> “The granularity of the recovered unit is contested, and the contest is not settled in favour of atomicity.”

**Problem:** slightly literary repetition; British spelling “favour” conflicts with requested US English.

**Suggested revision:**
> “The appropriate granularity remains contested, and current evidence does not establish fully atomic claims as the best unit.”

**Reason:** direct, precise, US spelling.

### I11

**Original:**
> “Reported trade-offs between the two objectives are therefore partly a property of measurement, not only of training…”

**Problem:** causal conclusion not demonstrated by the cited training study.

**Suggested revision:**
> “We hypothesize that style-sensitive recovery may amplify observed trade-offs between instruction following and faithfulness.”

**Reason:** accurately labels the statement as a hypothesis.

### I12

**Original:**
> “The apparent contradiction is a coverage gap.”

**Problem:** no contradiction has been established; the phrase is rhetorically strong but analytically vague.

**Suggested revision:**
> “The sampled resources cover different regions of the proposed task-design space.”

**Reason:** states only what the mapping supports.

### I13

**Original:**
> “The outlined cell is empty for a reason that matters: no sampled resource asks for strongly marked language while holding the response to a factual-only contract, which is exactly the combination under which a style-sensitive verifier would fail.”

**Problem:** “would fail” is an unsupported prediction; the sentence is too long.

**Suggested revision:**
> “No sampled resource requests strongly marked language under a factual-only contract. This missing condition is diagnostically useful because it could reveal style-sensitive recovery or verification errors.”

**Reason:** separates observation from hypothesis.

### I14

**Original:**
> “Where the sample is empty, a constructed example is the only kind available.”

**Problem:** false as written; the authors could construct a diagnostic dataset or collect new outputs.

**Suggested revision:**
> “Because the sample contains no instance of this condition, we use a constructed contrast to specify the expected behavior of the rule.”

**Reason:** accurate and defensible.

### I15

**Original:**
> “Existing tool-use benchmarks evaluate task success and do not separate these fields…”

**Problem:** broad absence claim supported by one cited benchmark.

**Suggested revision:**
> “ToolQA evaluates task success without separately representing these fields; whether the same pattern holds across agent benchmarks requires a broader review.”

**Reason:** limits the claim to the evidence cited.

### I16

**Original:**
> “An uninteresting authorized invention is a weak answer, not a hallucination.”

**Problem:** clear but slightly conversational.

**Suggested revision:**
> “An authorized but unhelpful invention is a low-quality response component, not an unlicensed factuality error.”

**Reason:** preserves the distinction in more formal language.

### Recurrent style instructions

- Prefer **article** rather than **paper** when referring to the submitted manuscript in running prose.
- Use **favor**, **behavior**, **labeling** consistently for US English.
- Keep “claim-level,” “response-level,” “task-specific,” “evidence-unknown,” and “contract-aware” consistently hyphenated as attributive modifiers.
- Avoid using “This” without a noun when two preceding propositions are possible antecedents.
- Divide sentences longer than approximately 30 words when they contain both a literature claim and the manuscript’s inference.
- Replace categorical absence formulations (“no work,” “none,” “existing benchmarks do not”) with bounded search formulations unless a systematic review supports them.

## J. Figure and table review

### Figure 1 — “One response wording, two contract-dependent labels”

- **Intended message:** identical surface wording can receive H in factual QA and LD in fiction because the task contexts establish different evidence and permission conditions.
- **Current reader difficulty:** low to moderate. The main flow is immediately visible.
- **Missing information:** the figure uses `κ` although the main contract is defined with `Γ` and `μ`; `O_p = prompt constraints` is too compressed; the contextualized claims are not literally identical.
- **Required revisions:** replace `κ` with a compact description of `Γ`/`μ`, or explicitly label `κ` as a derived summary. Add “constructed example” in the figure, not only the caption. Change “same claim” language to “same surface wording.”
- **Optional improvements:** add a small line “contextualized claim: real-world assertion / fictional-world assertion.”
- **Proposed self-contained caption:**

> **Figure 1. Identical surface wording under two task contexts.** This constructed example compares the span “the café Verdier and its owner existed in 1920s Paris” under a historical question and a fiction-writing prompt. Under the historical task, the span expresses an unsupported real-world claim and receives H. Under the fictional task, it expresses an in-frame fictional claim permitted by the task and receives LD. The wording is identical, but the contextualized claims differ; the figure therefore illustrates contract-dependent evaluation rather than relative truth. Both labels apply to claims, not to the complete response.

- **Clarity verdict:** **clear**.
- **Necessity verdict:** **essential**.
- **Risk of misinterpretation:** **moderate**.

### Figure 2 — “From one prompt to four claim-level labels”

- **Intended message:** one mixed response can contain supported literal claims, supported stylistic claims, licensed conjecture and unlicensed fabrication; the contract acts at recovery and labeling stages.
- **Current reader difficulty:** high. The figure contains the full prompt, evidence excerpt, four fields, response, five spans, four canonical claims, evidence states, labels and two stage annotations. Text is too small at normal page scale.
- **Missing information:** the prompt’s instruction conflict is not visually resolved; the status of `κ` as derived but non-operative is visually prominent; the SV-only span is contestable.
- **Required revisions:** split into two panels or two figures:
  - **Panel A:** task context and contract;
  - **Panel B:** three representative span-to-label paths (SUP+SV, LD, H).
  Move “other” and “SV-only” to Figure 3 or a small legend. Use fewer words in boxes and a larger font. Replace the running prompt as recommended in E3.
- **Optional improvements:** align all paths vertically; use shape or labels in addition to color; place “constructed example” in the title band.
- **Proposed self-contained caption:**

> **Figure 2. Contract-aware analysis of a mixed response.** Panel A specifies a constructed museum-writing task, its admissible evidence, its requested style, and the scope and presentation requirements for conjectural content. Panel B traces three response spans through canonical claim recovery, evidence assessment, and contract-relative labeling. A figurative paraphrase of a supported claim receives SUP with an SV flag; an evidence-unknown reconstruction inside the permitted scope and explicitly marked as conjecture receives LD; and an unmarked attribution outside the permitted scope receives H. The figure illustrates the labeling procedure and does not report model performance or a response-level score.

- **Clarity verdict:** **understandable with effort**.
- **Necessity verdict:** **essential after redesign**.
- **Risk of misinterpretation:** **high** in the current version.

### Figure 3 — “Contract-aware span-to-claim hallucination evaluation workflow”

- **Intended message:** generic algorithmic flow from response to claim-level label and open response aggregation.
- **Current reader difficulty:** moderate. The decision flow is clear, but the running-example inset is too small.
- **Missing information:** the prompt/task context appears only as a contract-reading step after the response; style compliance, alignment and usefulness are intentionally absent, which the caption explains.
- **Required revisions:** merge with the redesigned Figure 2 or remove. If retained, start with **task context + response**, not response alone. Remove the tiny running-example box and refer to Figure 2.
- **Optional improvements:** mark the output as “claim-level verdict only” at the top; use solid arrows for the rule and dashed arrows only for aggregation.
- **Proposed self-contained caption:**

> **Figure 3. Claim-level decision procedure.** Given a task context and a response, the evaluator first identifies spans that express truth-conditional claims, recovers canonical claims while preserving epistemic status, and compares them with the admissible evidence. Entailed claims receive SUP. Contradicted claims receive H. Evidence-unknown claims receive LD only when both the permission scope and the required presentation are satisfied; otherwise they receive H. SV-only and non-evaluated spans bypass claim verification. The procedure does not itself score style compliance, usefulness, overall instruction following or response-level quality.

- **Clarity verdict:** **clear**.
- **Necessity verdict:** **redundant in the current article**.
- **Risk of misinterpretation:** **moderate**.

### Figure 4 — “Task-design space, with the forty mapped resources placed in it”

- **Intended message:** the purposive sample leaves most crossings of requested style and content permission untested, especially strongly marked but factual content.
- **Current reader difficulty:** moderate. The grid is visually attractive, but the badges do not behave like unambiguous cell occupancies.
- **Missing information:** explicit distinction between “neutral” and “not controlled”; resource types; uncertainty of inferred codes; explanation of whether a badge spanning two cells occupies one, both or neither for cell counting.
- **Required revisions:**
  1. separate `style explicitly set to 0` from `style not controlled`;
  2. use uncertainty symbols or hatched bands for inferred placements;
  3. remove the claim that six cells are empty unless the counting rule is defined;
  4. rename #36–40 so that code/math tasks are not presented as “flagged hypotheses” unless that is actually their output form;
  5. replace “would misfire” with “provides a diagnostic condition for testing misclassification.”
- **Optional improvements:** use small counts by resource type rather than long numeric ranges; provide the full mapping as supplementary CSV.
- **Proposed self-contained caption:**

> **Figure 4. Exploratory coverage of the proposed task-design space.** The grid crosses the derived permission level used for this mapping with requested style. Badges summarize the authors’ coding of forty purposively selected evaluation resources; they do not estimate prevalence in the field. Hatched or spanning badges indicate that the source protocol does not distinguish the relevant levels. The outlined condition—strongly marked language under a factual-only task—was not identified in the sample and is proposed as a diagnostic benchmark condition. Placements inferred from task design must be distinguished from variables explicitly controlled by the original resource.

- **Clarity verdict:** **understandable with effort**.
- **Necessity verdict:** **useful if the coding protocol is strengthened**.
- **Risk of misinterpretation:** **high**.

### Table 1 — “Core objects in the truth-contract framework”

- **Current function:** glossary of symbols.
- **Principal weakness:** it appears after Figure 2, although Figure 2 already requires all symbols; `κ` receives comparable visual status to operative variables despite being non-operative.
- **Required revision:** move the table before Figure 2; divide into “core labeling variables” and “diagnostic/aggregation variables”; move `κ` to a footnote or appendix.
- **Proposed caption:**

> **Table 1. Variables used in the claim-recovery and labeling procedure.** Core variables define task context, admissible evidence, permission, recovered claims and claim labels. Diagnostic variables record observed style and response-level aggregation. The derived permission level used only in the resource mapping is not part of the claim-labeling rule.

- **Disposition:** **retain in main text, but move and simplify**.

### Table 2 — “Representative truth contracts and claim-level labels”

- **Current function:** provides concrete prompt–contract–claim cards.
- **Principal weakness:** the float appears after the start of Appendix B, far from §2.6. It also contains many fields per card and partly duplicates Figure 2.
- **Required revision:** either place immediately in §2.6 or move intentionally to Appendix A. Use columns that separate prompt, evidence, permission, span, canonical claim and verdict. Avoid using `κ` as a substitute for explicit scope/presentation.
- **Proposed caption:**

> **Table 2. Representative task specifications and claim-level outcomes.** Each row identifies the prompt, admissible evidence, permission scope, required epistemic presentation, response span, recovered canonical claim, evidence state and resulting claim label. The examples are constructed unit tests of the rule; they are not model outputs or empirical measurements.

- **Disposition:** **retain, but fix placement; otherwise move to Appendix A**.

### Tables B.1–B.3 — resource-level mapping

- **Current function:** transparent record of the forty-resource coding.
- **Principal weakness:** dense presentation; mixed resource types; inferred codes and explicit controls are difficult to distinguish; no selection trail or coder notes.
- **Required revision:** add `resource type`, `output unit`, `explicit/inferred`, and `coding rationale` columns in a machine-readable supplement. In the PDF, retain a shorter table with only fields necessary to reproduce Figure 4.
- **Proposed caption:**

> **Tables B.1–B.3. Author coding of the purposively selected evaluation resources.** Each row reports the resource type, output unit, admissible evidence, style control, permission coding, scope, presentation requirement and whether style-conditioned factuality error is tested. “Inferred” indicates an author interpretation of task design rather than a variable reported by the source. The mapping is exploratory and has not been validated as a dataset.

- **Disposition:** **retain in appendix; release full version as supplementary data**.

## K. Terminology, notation, and definitions audit

### K1. Consistency table

| Term or symbol | First definition | Later uses | Ambiguity or inconsistency | Recommended formulation |
|---|---|---|---|---|
| Hallucination (H) | Claim-level contract violation | Contradicted or evidence-unknown and unlicensed claims | Existing literature often uses hallucination for source/context mismatch independently of permission; the manuscript may redefine rather than refine | “H is the framework’s verdict for a contradicted or unlicensed evidence-unknown claim.” Explicitly call this an evaluation convention. |
| Supported (SUP) | `O_p` entails claim | Sometimes co-occurs with SV | “Supported” can mean source-supported or externally factual | Always write “supported relative to `O_p`.” |
| Licensed divergence (LD) | Evidence-unknown, in scope, correctly presented | Sometimes discussed as creative/productive | Permission does not imply novelty, truth, benefit or safety | Retain definition; add “LD is not a creativity score and not a factuality claim.” |
| Truth contract (TC) | `(O_p, σ_p, Γ_p, μ_p)` | Used as task-level specification | Style is not truth-conditional; four fields called three components | Prefer `TC=(O,Γ,μ)` and broader `TS=(TC,σ)`, or rename “truth-evaluation contract.” |
| Task context `p` | Prompt plus system/domain/evidence | Sometimes described as prompt-centered | Authority and temporal evolution unspecified | Define `p=(x, system policy, domain rules, evidence state, dialogue history)` with precedence. |
| Prompt `x` | User-visible prompt | Figure 1 and Figure 2 | System and attached evidence may also be prompt material | Reserve `x` for textual user instruction and use `p` consistently for all governing context. |
| Reference evidence `O_p` | Information against which claim is judged | Documents, database, world knowledge, fictional constraints | Conflates evidence set, retrieval result and adjudication rule | Define `O_p=(S_p,a_p)` or state that it contains admissible sources plus adjudication rule. |
| Requested style `σ_p` | 0/1/2 marking | Recovery-stage variable | Thresholds unvalidated; style multidimensional; not necessarily ordered across genres | Call it an operational benchmark factor, not a universal scale. |
| Observed style `\hatσ(s,p)` | Output style level | Style compliance | Visual notation is hard to read in text extraction; relation to requested style not formalized | Define style-compliance score separately; allow multi-label style features. |
| `Γ_p` | Permission scope | Topics/entities/frame | Scope can be hierarchical, defeasible and safety-bounded | Define as a set of admissible claim types or predicates plus non-overridable exclusions. |
| `μ_p` | Required epistemic presentation | Hedge, hypothesis marker, fiction frame | “Marking” may be lexical, discourse-level or inherited from genre; a single value may be inadequate | Define as admissible presentation conditions, not necessarily an explicit token marker. |
| `κ_p` | Coarse ordinal summary of `(Γ,μ)` | Mapping, figures, agenda | No deterministic mapping; loses operative information; not used in label | Remove from core. If retained, call it “mapping index” and define coding rules only in §4/Appendix B. |
| Claim | Truth-conditional commitment | Contextualized/canonical claim | Presupposition, implicature, modality and fictional discourse remain edge cases | Specify inclusion policy and preserve attribution, negation, modality, temporal scope and frame. |
| Response span `s` | Stretch of text used for recovery | Span types | Boundary selection is undefined | Define minimal contiguous span plus allowed discourse context window. |
| Contextualized claim `C(s,p)` | Claims interpreted in context | Figure 1 and recovery | Set-valued; may require non-local context | Retain; state that claims can be jointly expressed across spans. |
| Canonical claim `c*` | Neutral restatement | Verification | “Neutral” paraphrase may erase stance, source or modality | Require a structured record preserving stance and provenance; avoid purely literal paraphrase. |
| SV / `z` | Stylistic variation flag | SUP+SV, SV-only | Binary flag combines heterogeneous phenomena and may be subjective | Use feature annotations or treat SV as an optional diagnostic, not a core verdict. |
| Evidence state `E` | ENTAILED/CONTRADICTED/UNKNOWN | Label rule | UNKNOWN conflates retrieval and epistemic causes | Add reason codes and uncertainty. |
| Usefulness `U` | Task-dependent score over LD claims | Mitigation and agenda | Creativity/usefulness may be response- or process-level | Define `U(q,p,ℓ)` where `ℓ` is the unit level, or leave unit open explicitly. |
| Response assessment `R(y|p)` | Open aggregate | Appendix A | No candidate formula; cannot compare systems directly | Provide transparent candidate families without declaring one universal rule. |
| Factuality | External accuracy | Adjacent paradigm | Sometimes treated as an `O_p` choice, but external truth may be contested | Define as support against an explicitly external admissible evidence set. |
| Faithfulness | Support against supplied context | Adjacent paradigm | Instruction faithfulness and source faithfulness are distinct | Use “source faithfulness” for evidence grounding and “instruction compliance” for constraints. |
| Alignment | Broad relation to goals/values | §3.3 | Too broad to be a direct comparator | State that TC covers only a narrow evaluative subset of alignment. |

### K2. Formalization problems and revisions

#### Equation 1: truth contract

**Equation or definition:**

> `TC(p) = (O_p, σ_p, Γ_p, μ_p)`

**Problem:** style is not used in the label rule; the tuple has four fields but is repeatedly described as three components; `O_p` lacks an adjudication rule.

**Recommended revision — preferred:**

> `TC(p) = (O_p, Γ_p, μ_p)`  
> `TS(p) = (TC(p), σ_p)`

where `TC` governs claim labels and `TS` is the broader task specification that also governs recovery and style compliance.

**Interpretation:** the truth-relevant contract states what evidence counts, what evidence-unknown content may be introduced, and how that content must be presented. Style is part of the task but does not alter the permission or truth decision.

**Alternative minimal revision:** retain the four-field tuple but rename it `EC(p)` for “evaluation contract” and say it contains three dimensions, with permission decomposed into two fields.

#### Equation 2: evidence state

**Equation or definition:**

> `E(c*, O_p) ∈ {ENTAILED, CONTRADICTED, UNKNOWN}`

**Problem:** `UNKNOWN` has multiple causes with different implications; no confidence or unresolved adjudication state is represented.

**Recommended revision:**

> `E(c*, O_p) = (r, q)` where `r ∈ {ENTAILED, CONTRADICTED, UNDETERMINED}` and `q ∈ {covered, not-covered, retrieval-failure, source-conflict}` is a reason code when relevant.

A simpler alternative is to retain the three-way relation and report the reason code separately.

**Interpretation:** the evaluator distinguishes what the admissible evidence says from why no decision could be reached.

#### Equation 3: claim label

**Equation or definition:**

> `V(c* | p) = SUP if entailed; LD if unknown, L=1, D=1; H otherwise.`

**Problem:** the presentation function depends on span `s`, but `s` is missing from the signature of `V`; “otherwise” hides contradictory, out-of-scope, unmarked and unresolved cases; binary `L`/`D` force uncertain judgments.

**Recommended revision:**

> `V(c_i^*, s_i | p) =`  
> `SUP`, if `E(c_i^*,O_p)=ENTAILED`;  
> `LD`, if `E(c_i^*,O_p)=UNDETERMINED`, `L(c_i^*,Γ_p)=1`, and `M(c_i^*,s_i,μ_p)=1`;  
> `H`, if `E=CONTRADICTED` or either permission test is 0;  
> `UNRESOLVED`, otherwise.

**Interpretation:** the verdict depends on both the canonical content and the surface span that carries its epistemic presentation. An unresolved category prevents forced agreement in ambiguous cases.

#### Definition 4: derived permission level

**Equation or definition:**

> `κ_p ∈ {0,1,2}` as a coarse summary of `(Γ_p, μ_p)`.

**Problem:** no function maps arbitrary scope/presentation pairs to an ordinal level. The scale mixes breadth, genre and marking. It is not used by the rule but drives Figure 4.

**Recommended revision:** remove it from §2 and define it only as a coding heuristic in §4:

> “For the exploratory mapping only, we assign one of three task-profile codes according to the explicit coding rules in Appendix B. These codes are not ordered measurements and are not used in claim labeling.”

**Interpretation:** the three values become categories for visualization rather than a pseudo-metric.

#### Equation 5: style-stability test

**Equation or definition:**

> `C*(s0,p0) = C*(s1,p1) = C*(s2,p2)` and equal labels for matched claims.

**Problem:** literal set equality is stronger than semantic equivalence and contradicts the statement that matching occurs after canonicalization. The contexts differ in requested style, and the equation does not explicitly define the matching relation.

**Recommended revision:**

> `C*(s_0,p_0) ≃_m C*(s_1,p_1) ≃_m C*(s_2,p_2)`

where `≃_m` denotes an expert-adjudicated bijection preserving proposition, modality, attribution, negation and temporal scope. Require label equality only over matched claims.

**Interpretation:** stylistic variants need not yield identical strings or data structures; they should yield semantically matched factual commitments and stable labels.

### K3. Equation numbering

The core display equations are not explicitly numbered. At minimum, number and cross-reference:

1. task/truth contract;
2. evidence relation;
3. claim-label rule;
4. style-stability criterion.

Not every inline symbol needs a number, but any display used later as a formal object should have one. This improves reviewability and prevents vague references such as “the rule above.”

## L. Citation and evidence audit

### L1. Audit scope

The bibliography contains **112 unique entries**. A mechanical BibTeX audit found no duplicate key, duplicate normalized title or duplicate DOI, and every entry contains author, title and year fields. This does **not** prove that every venue, DOI, page range or in-text attribution is correct. The content audit below focuses on citations that carry the central argument, plus recent or potentially unstable sources. It is therefore a **load-bearing citation audit**, not a complete bibliographic fact-check of all 112 references.

### L2. Verified support

| Citation | Claim attributed to it | Actual support | Assessment |
|---|---|---|---|
| Ji et al. (2023) | Hallucination taxonomies distinguish source contradiction and unsupported/extrinsic content | The survey organizes hallucination in NLG and discusses intrinsic/extrinsic distinctions | **Supported**. Appropriate survey citation; pair with primary task-specific sources where needed. |
| Bang et al. (2025), HalluLens | Hallucination and factuality need clearer separation; benchmarks use different oracles | The paper explicitly distinguishes hallucination from factuality and proposes a taxonomy/benchmark | **Supported** for the distinction. Do not imply that it supports permission-aware evaluation. |
| Min et al. (2023), FActScore | Long-form factuality can be decomposed into atomic facts and verified | This is the core FActScore design | **Supported**. |
| Song, Kim, and Iyyer (2024), VeriScore | Not every long-form claim is verifiable; extract verifiable claims and account for context | The paper explicitly challenges universal verifiability and evaluates verifiable-claim extraction | **Supported**. This is a strong citation for the recovery-stage discussion. |
| Metropolitansky and Larson (2025), Claimify | Claim extraction requires coverage, decontextualization and ambiguity handling | The ACL paper proposes these evaluation dimensions and extracts only with confidence in interpretation | **Supported**. |
| Gunjal and Durrett (2024), Molecular Facts | Fully atomic units can lose necessary context; minimality and decontextuality trade off | This is the paper’s explicit argument and contribution | **Supported**. |
| Wanner et al. (2024), DecompScore | Factuality scores are sensitive to decomposition method | The paper directly demonstrates this sensitivity and proposes a decomposition-quality metric | **Supported**. |
| Jiang et al. (2025), Core | Repetitive or obvious subclaims can inflate decompose-then-verify metrics | The paper explicitly studies this manipulation and filters by uniqueness/informativeness | **Supported**. |
| Kamoi et al. (2023), WiCE | Entailment can be annotated at sub-sentence level with minimal supporting evidence | WiCE provides sub-sentence judgments and minimal evidence subsets | **Supported**. |
| Wu et al. (2024), “Dancing in Chains” | Training for open-ended instruction following and contextual faithfulness can trade off | The paper reports this training-objective trade-off | **Supported** for training. It does not support the manuscript’s additional measurement-artifact conclusion. |
| Feuer et al. (2024/2025), “Style Outweighs Substance” | LLM judges can prioritize style over factuality/safety | The paper’s central finding is exactly this bias | **Supported** for LLM-judge preference bias. Only indirect support for claim-recovery instability. |
| Sui et al. (2024) | Some confabulations show narrativity and semantic coherence and may have value | The ACL paper empirically compares hallucinatory and veridical outputs on those properties | **Supported** for narrativity/coherence. Not evidence that hallucination is generally creative or useful. |
| Acar, Tarakci, and Van Knippenberg (2019) | Constraints can shape creativity through different mechanisms | The integrative review develops a taxonomy of constraints and their effects | **Supported** for constraints. Not the most direct citation for defining usefulness or appropriateness. |
| Franceschelli and Musolesi (2024) | LLM creativity can be discussed through novelty, value and surprise | The article explicitly analyzes those dimensions | **Supported** as conceptual creativity literature. |
| Diedrich et al. (2015) | Creativity judgments depend on novelty and usefulness, with a nontrivial interaction | The study directly investigates this relation | **Supported and more direct** than Acar et al. for the usefulness paragraph. It should be cited there. |

### L3. Partial support or overextension

| Citation | Manuscript use | Why support is partial | Required revision |
|---|---|---|---|
| Jiang et al. (2024), creativity-perspective survey | Used to motivate the idea that hypotheses/creative tasks may require unsupported claims and to organize divergence/convergence | A survey can establish that this framing exists, but not that hallucination causes creativity or that all creative tasks need non-entailed factual claims | Use “discusses” or “frames,” not “demonstrates.” Cite primary studies for any empirical effect. |
| Sui et al. (2024) | Used near brainstorming/hypothesis claims | The paper studies narrativity and coherence in confabulations, not brainstorming requirements | Move the citation to the confabulation/value discussion; use a task-specific ideation source for brainstorming. |
| Feuer et al. | Used to support style-sensitive extraction and verification | The paper studies LLM judges and alignment benchmarks, not controlled claim extraction under metaphor | Present as related evidence that motivates the hypothesis, not direct validation. |
| Wu et al. (2024) | Used to infer that reported trade-offs are partly measurement effects | The cited evidence concerns training objectives | Rewrite as an untested hypothesis and add **[evidence needed]** for the measurement component. |
| Acar et al. (2019) | Used as support for “appropriateness judgments” and usefulness measurement | The paper is about creativity under constraints, not a specific LLM creativity evaluation instrument | Add Diedrich et al. and/or a direct creativity-assessment source; retain Acar for constraints. |
| Franceschelli and Musolesi (2024) | Used as support for concrete usefulness instruments | Primarily conceptual analysis, not a validated scoring protocol | Separate conceptual definition from measurement references. |
| Banerjee, Agarwal, and Singla (2024) | Used to support inevitability/non-zero hallucination | The paper makes a broad mathematical claim using undecidability; this is controversial and not sufficient alone | Qualify heavily and do not make it load-bearing. Pair with Kalai and Vempala’s narrower formal result; distinguish lower bounds from deployment rates. |
| Kalai and Vempala (2024) | Used to support unavoidable error under broad conditions | The formal result applies under specific calibration/monofact assumptions | State the assumptions and avoid “LLMs will always hallucinate” as an unrestricted theorem. |
| Hao, Yu, and You (2025) | Used as the closest intent-aware evaluation | It supports omission/misinterpretation of constraints, but the manuscript’s summary “has neither O nor κ” is an interpretation of its scope | Keep, but add a concrete comparison of labels and units rather than a one-sentence dismissal. |
| Creativity benchmarks in Appendix B | Used to infer `κ=2` and style level | Many do not explicitly define permission or requested style; the code is the authors’ interpretation | Mark every such value as inferred and run sensitivity analysis. |

### L4. Unsupported attribution or claims requiring a citation

1. **“The two [permission fields] co-vary in practice.”** No evidence is supplied, and counterexamples are easy to construct. **[evidence needed]** or delete.
2. **“Many protocols do not expose the requested style level as a variable.”** This can be reported as the result of the authors’ mapping, but should not appear as an established field-wide fact before the mapping. Use bounded wording.
3. **“Reported trade-offs … are partly a property of measurement.”** The current article does not test this. **[evidence needed]**.
4. **“Existing tool-use benchmarks evaluate task success and do not separate these fields.”** One benchmark cannot support a class-wide absence claim. **[evidence needed]** or narrow to ToolQA.
5. **“No extraction benchmark we are aware of varies requested style…”** The wording acknowledges uncertainty, but a reproducible search trail is needed if this absence is central. **[requires verification]**.
6. **“Where the sample is empty, a constructed example is the only kind available.”** This is not a factual literature claim and is incorrect; revise.
7. **“Six of the nine cells are empty.”** The figure’s spanning badge makes the count non-reproducible. Clarify coding/counting before retaining the number.
8. **“The combination under which a style-sensitive verifier would fail.”** This is a prediction, not a result. Use “could fail” and label as hypothesis.

### L5. Missing evidence or missing citations

- A direct source for the operational definition of **usefulness/appropriateness** in creativity assessment should accompany or replace Acar in §2.5. Diedrich et al. (2015) is already in the bibliography and is a better fit.
- A primary source on **creative ideation workflows** or divergent/convergent phases should support the functional role of divergence, rather than relying only on surveys.
- The claim that style-preserving transformations can change **claim extraction**, not only NLI or judge preference, needs direct empirical evidence. **[evidence needed]**.
- The authority hierarchy among user, system, legal, safety and domain instructions needs a source from instruction hierarchy, policy compliance or agent governance if presented as established practice. Otherwise label it as the framework’s normative proposal.
- The mapping needs citations or source locations for the exact task instructions from which `σ`, `Γ` and `μ` are inferred.

### L6. Requires verification before submission

- **SimpleText Track 2026:** ongoing or recent shared-task status, task description and final venue should be checked immediately before submission. **[requires verification]**.
- **Lamba, Tiwari, and Gaur (2026):** confirm final publication status, volume/pages and whether the cited claims appear in the published version. **[requires verification]**.
- **Recent 2025–2026 arXiv works** used in the mapping or discussion—especially Hou et al., Yang et al., Marco et al., Banerjee et al. (2025), and any under-review creativity/hallucination papers—must be described as preprints unless a peer-reviewed version is confirmed. **[requires verification]**.
- **Feuer et al. venue/year:** verify the exact final ICLR bibliographic form; the arXiv version is clear, but the final reference should match the accepted version. **[requires verification]**.
- **All DOI/title/year metadata** for the nine newly added claim-extraction references should be exported from ACL Anthology or the final venue rather than manually retained from arXiv when a proceedings version exists.

### L7. Citation-justification summary

The article should distinguish three evidential roles in prose:

- **Established literature:** claim decomposition has separate failure modes; creativity is multidimensional; judges can be style-sensitive; source-faithfulness and factuality depend on an evidence reference.
- **This article’s contribution:** unsupportedness is insufficient as a verdict when permission and presentation are explicit; the proposed fields and labels operationalize this distinction.
- **Hypotheses/future work:** style-conditioned recovery errors are common; contract-aware annotation improves reliability; mitigation can preserve LD while reducing H; agent trajectories require evolving contracts.

Several current sentences blur the second and third categories. Labeling these hypotheses explicitly will strengthen rather than weaken the position.

## M. Material to cut, merge, move, or expand

The main text contains approximately **10,300 words** before the appendices. A reduction of **1,200–1,500 words (about 12–15%)** would improve force and readability without sacrificing the contribution.

| Location | Action | Reason | Expected effect |
|---|---|---|---|
| Abstract | Shorten and weaken mapping claim | Current abstract is 258 words and overstates evidence | Compliance and credibility. |
| Introduction, full explanation of `p` | Move most detail to §2.2 | Interrupts thesis with notation | Faster entry into central position. |
| Introduction, Figure 1 explanation | Shorten by 25–30% | Caption and paragraph repeat the same point | Reduce redundancy. |
| §2.2 `κ_p` discussion | Remove from core or cut by 70% | Derived variable is not used by labeling and creates confusion | Lower formal burden. |
| §2.3 style theory | Shorten general stylistics exposition | Several sentences define foregrounding beyond what the argument needs | Keep focus on recovery robustness. |
| Figures 2 and 3 | Merge or divide roles clearly | Both present the same pipeline | Save space and improve hierarchy. |
| §2.5 response-level aggregation | Retain concise definition; move examples to Appendix A | Repeated in §6.4, §7.1 and Appendix A | Remove repetition. |
| §3.1 survey list | Shorten enumeration; add contrast table | Current prose lists taxonomies but does not maximize comparison | More analytical related work. |
| §3.2 | Retain and slightly expand final design decision | Strongest SOTA section | Preserve scientific depth. |
| §3.3 faithfulness paragraph | Rewrite, not expand | Contains an unsupported measurement inference | Stronger evidential discipline. |
| §4.1 | Expand protocol by ~300–500 words or supplementary codebook | Current method insufficient | Make mapping defensible. |
| §4.2 | Shorten descriptive cluster prose after Figure 4 | Figure already shows the pattern | Avoid double reporting. |
| §5 | Convert to compact table plus 2–3 detailed cases | Five prose cases are long and uneven | Stronger controlled comparison. |
| §6 items 1 and 4 | Shorten cost/aggregation detail in main text | Good material but too long for agenda flow | More forceful roadmap. |
| §6 item 7 | Retain but shorten by ~25% | Important opening, currently disproportionate and speculative | Keep agent extension without diluting core. |
| §7.1 | Merge first paragraph with §2.5 or cut by half | Repeats labels, style and aggregation | Better narrative progression. |
| §7 inevitability paragraph | Reduce to two cautious sentences | Peripheral and theoretically contested | Avoid distracting debate. |
| §7.2 | Expand governance/falsifiability by ~200 words | Current limitations omit misuse and non-overridable constraints | Responsible framing. |
| Table 2 | Move next to §2.6 or Appendix A | Current float appears after appendix start | Restore logical placement. |
| Appendix B | Move full rationale/coder notes to supplement | Tables are dense | Better PDF readability and reproducibility. |

### Proposed improved outline

1. **Introduction: Unsupportedness Is Not Sufficient**
   - problem, thesis, alternatives, contributions, falsifiability.
2. **A Contract-Aware Claim Verdict**
   - task context; `TC=(O,Γ,μ)`; claim recovery; decision rule; one running example.
3. **Style as a Recovery Robustness Variable**
   - `TS=(TC,σ)`; claim-preserving transformations; diagnostics.
4. **Relation to Existing Evaluation Paradigms**
   - comparison table; hallucination/factuality/faithfulness/intent/value; claim extraction.
5. **Diagnostic Mapping and Contrastive Unit Tests**
   - protocol; bounded findings; figure; minimal cases.
6. **A Falsifiable Research Agenda**
   - three core validation stages; four extensions.
7. **Limitations, Governance, and Implications**
8. **Conclusion**

Appendix A: annotation/codebook and aggregation alternatives.  
Appendix B: full resource mapping.

## N. Research-agenda assessment

### N1. Overall verdict

The agenda is a **genuine contribution**, not generic future work. It follows from the framework and includes several methodological objects the field could build. Its current weakness is that the seven priorities mix validation prerequisites, downstream applications and broad generalization goals. The main article should identify a **minimum viable validation sequence** and attach a falsifier to each stage.

### N2. Agenda matrix

| Agenda item | Research question | Required method or evidence | Connection to thesis | Current weakness |
|---|---|---|---|---|
| 1. Contract annotation, inference and reliability | Can humans reliably recover `O`, permission scope and presentation requirements from task context? | Stratified prompt sample; 3+ annotators; codebook; agreement by field; adjudication logs; ambiguous-prompt subset | If fields are not reliably annotatable, the framework is not operational | No target reliability, no baseline, no clear unit for `Γ`/`μ`. |
| 2. Factorial benchmark design | Does explicit crossing of evidence, permission, presentation and style reveal failures hidden by existing benchmarks? | Matched prompt/output sets; controlled factors; expert canonical-claim matching; contract-blind baseline | Directly tests the coverage-gap claim | `κ` conflates variables; feasibility of stable canonical claims across cells needs pilot evidence. |
| 3. Style-robust recovery and verification | Do extractors/verifiers preserve claims and labels under claim-preserving style transformations? | Neutral/marked triplets; human gold; extractor, NLI, retrieval and LLM-judge baselines; stage-specific error metrics | Tests the most novel role of `σ` | Current article has no direct evidence that this failure occurs. |
| 4. Response-level aggregation | Which aggregation reflects human risk/utility judgments under different contracts? | Claim distributions, severity annotations, pairwise human choices, calibration and sensitivity analysis | Converts claim labels into system evaluation | “Optimal” aggregate may be domain-specific; avoid universal metric claim. |
| 5. Mitigation preserving LD and factual style | Do mitigation methods reduce H without suppressing authorized divergence or style? | RAG, abstention, verification, constrained decoding; per-contract outcomes; Pareto analysis | Tests practical value | Need explicit baselines and tasks; creativity metrics must be independent from permission. |
| 6. Generalization | Are fields and labels stable across domains, languages and users? | Multilingual annotation, genre-specific codebooks, user comprehension studies, domain experts | Tests external validity | Too broad for one item; separate cross-lingual validity from user calibration. |
| 7. Agentic/tool-use contracts | Can evolving evidence and subtask permissions be tracked across trajectories? | Instrumented agent traces; time-indexed evidence; subtask contract annotations; action-level consequence metrics | Extends the framework to current agent research | Currently speculative and based on one benchmark contrast. |

### N3. Recommended testable formulations

#### Core study 1: annotation feasibility

- **Research question:** Do explicit contract fields produce more reliable claim labels than an unsupported/supported binary protocol?
- **Unit of analysis:** task context and recovered claim.
- **Conditions:** contract-blind versus contract-aware annotation; clear versus ambiguous prompts; factual, hypothesis and fiction tasks.
- **Metrics:** field-wise Krippendorff’s alpha or suitable agreement statistic, adjudication rate, annotation time, label calibration.
- **Baseline:** binary support judgment plus generic intent score.
- **Supports the position if:** contract-aware annotation increases agreement or makes disagreement attributable to a field.
- **Challenges the position if:** fields cannot be annotated reliably or do not improve diagnostic agreement.

#### Core study 2: factorial benchmark

- **Research question:** Does independent variation of permission and presentation change gold labels while evidence state remains fixed?
- **Unit:** matched canonical claim.
- **Design:** fix `O`; vary scope inclusion and required presentation; separately vary style realization.
- **Metrics:** expected label accuracy, interaction effects, claim-set equivalence.
- **Baseline:** factuality verifier and intent/constraint evaluator.
- **Supports the position if:** TC-aware evaluation predicts human labels better and localizes errors.
- **Challenges it if:** a simpler two-layer factuality + task-compliance model performs equally.

#### Core study 3: stage diagnosis

- **Research question:** Are style-related factuality errors caused by recovery, evidence matching or final labeling?
- **Unit:** span–canonical-claim pair.
- **Design:** expert-matched literal/figurative variants.
- **Metrics:** span typing, missing/spurious claim rate, evidence-state stability, label stability, calibration.
- **Supports the position if:** stage-aware diagnostics reveal errors hidden by final accuracy.
- **Challenges it if:** extraction and labels remain stable across styles and `σ` provides no additional information.

### N4. Agenda items to add or sharpen

1. **Contract-authority and governance study.** Determine precedence among user requests, system policies, domain rules and safety constraints. This logically follows from agentic and high-stakes settings.
2. **Minimality/ablation study.** Compare full `O+Γ+μ+σ` against simpler alternatives (`O` only; `O+intent`; `O+μ`). This is essential to show that each field adds diagnostic value.
3. **Human comprehension of epistemic presentation.** A marker satisfies `μ` only if intended users understand it; automatic detection alone is insufficient.
4. **Adversarial contract laundering.** Test prompts that attempt to reframe misinformation as fiction, brainstorming or role-play. This addresses responsible use.

## O. Submission-compliance checklist

The current official journal instructions accept Position Papers and state that they need not contain experiments, but must provide rigorous reasoning and persuasive evidence. The journal currently requires English, PDF, LaTeX formatting with the current CL style, author names/affiliations for single-blind review, and 5–10 keywords at submission. The PDF alone cannot prove the exact class-file version or completion of the submission form.

| Requirement | Status | Assessment/action |
|---|---|---|
| Written in English | ✅ compliant | Complete manuscript is in English. |
| Consistent US spelling | ⚠️ requires verification | At least “favour” should be changed to “favor”; run a full US-English consistency check. |
| Informative abstract of 150–250 words | ❌ non-compliant | Current abstract is approximately 258 words. Use the 211-word revision. |
| No citations in abstract | ✅ compliant | No citations observed. |
| No mathematical notation in abstract | ✅ compliant | Current abstract uses no displayed formula or symbols. |
| Makes clear that this is a position paper | ⚠️ requires verification | Title page says “Position Paper,” but the abstract should explicitly say “This position paper argues…” |
| Current *Computational Linguistics* LaTeX style | ⚠️ requires manual verification | Visual style is consistent with CL, but confirm use of `clv2025.cls` in the source. |
| Author names and affiliations present | ✅ compliant | Present on first page, consistent with single-blind review. |
| Contact author email present | ✅ compliant | Present. |
| Equations/formal examples explicitly numbered | ❌ non-compliant with the requested review standard | Core displays are unnumbered. Number at least the contract, evidence relation, label rule and stability test. |
| References consistently formatted | ⚠️ requires verification | Mechanical BibTeX structure is sound; verify recent venue statuses and final metadata. |
| Figures and tables cited in order | ⚠️ requires correction | Numbering is ordered, but Table 2 floats after the beginning of Appendix B. Fix placement. |
| Figure text legible at normal scale | ❌ non-compliant in practice | Figure 2 and parts of Figure 3 are too small. Redesign. |
| Five to ten keywords prepared | ❌ not yet provided | Suggested: `large language models; hallucination; factuality; faithfulness; claim verification; computational creativity; evaluation; instruction following`. |
| Title, authors and abstract separately prepared for submission | ⚠️ requires manual verification | Required by the submission portal; not verifiable from uploaded files. |
| Position-paper page limit | ✅ no explicit violation identified | The current guidelines do not state a specific position-paper limit. Concision remains important. |
| Claims of empirical findings accurately labeled | ⚠️ requires correction | Mapping findings and style failure hypotheses need weaker wording. |
| Preprints identified as such | ⚠️ requires verification | Check all 2025–2026 sources immediately before submission. |
| Supplement/code/data availability statement | ⚠️ recommended | Mapping codebook and machine-readable resource table should be made available if presented as evidence. |

## P. Final revision plan

### 1. Mandatory before submission

1. **Reframe the central thesis** around the insufficiency of unsupportedness and explicitly distinguish it from factuality, faithfulness, intent compliance and value-based “good hallucination.”
2. **Repair the evidence claim:** either strengthen the mapping protocol with reproducible selection/coding and independent recoding, or downgrade it to an exploratory design-space mapping throughout the title, abstract, §4 and conclusion.
3. **Correct the core examples:** remove the contradictory running prompt, replace or qualify the “winter” no-claim example, and rewrite Case C as a true minimal pair.
4. **Simplify the formalism:** separate truth labeling from style-conditioned recovery; remove `κ` from the core or define it only as a mapping code; fix `V` to include the source span; number core equations.
5. **Fix Figure 2, Figure 4 and Table 2 placement.** Figure 2 must be readable; Figure 4 must distinguish uncontrolled from neutral style and clarify occupancy; Table 2 must appear where introduced.
6. **Rewrite overstrong claims** about style failure, measurement artifacts, tool-use benchmarks and field-wide absence.
7. **Add falsifiability and governance:** state what would refute the framework and which safety/legal/system constraints cannot be overridden by user permission.
8. **Reduce the abstract to 150–250 words** and prepare 5–10 keywords.

### 2. Strongly recommended

1. Add a one-page comparison table against the closest prior paradigms.
2. Convert the worked cases into a table of fixed/changed fields plus two or three detailed cases.
3. State the preferred claim unit and canonicalization procedure after the claim-extraction review.
4. Add reason codes for `UNKNOWN` and an unresolved annotation outcome.
5. Reorganize the agenda into three validation studies and four extensions, each with baseline and falsifier.
6. Release the resource mapping and codebook in machine-readable form.
7. Cut approximately 12–15% of the main text, mainly by removing repetition among §2.5, §6.4, §7.1 and Appendix A.
8. Verify the final publication status and metadata of all recent references.

### 3. Optional polishing

1. Rename the article to emphasize evaluation rather than an ontological claim.
2. Replace the binary SV flag with a richer optional diagnostic only if space permits.
3. Add one multilingual example to motivate the generalization agenda.
4. Add a one-sentence “reader takeaway” at the end of each major section.
5. Perform a final sentence-length and US-English pass using the revisions in Section I.

### Final publication-readiness statement

For this article to become competitive as a *Computational Linguistics* position paper, the authors must **make the novelty irreducible to generic task compliance, align the strength of the empirical diagnosis with the exploratory nature of the mapping, repair the central examples and simplify the formalism into a falsifiable evaluation proposal**. The conceptual core is publishable; the current evidential and operational presentation is not yet robust enough for submission.
