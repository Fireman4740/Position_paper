# Review — Forme et anglais de `main_position_personal.tex`

**Angle de lecture** : chercheur non-anglophone natif, connaissance moyenne du domaine (il connaît « hallucination » et « faithfulness », pas « foregrounding » ni « stance »).
**Date** : 2026-07-07.

---

## Verdict global

Le papier n'est pas mal écrit — il est écrit *trop bien*, dans un registre littéraire natif que seul un relecteur anglophone à l'aise lira sans effort. La structure argumentative est solide, les exemples concrets (diabète, moonlight, Lyme, café parisien) sont excellents et portent le papier. Mais la prose accumule quatre habitudes qui, combinées, rendent la lecture coûteuse pour un non-natif : des phrases longues (33 % dépassent 30 mots, 13 % dépassent 40), des relatives sans « that », des verbes métaphoriques (*flip, move, track, fix, carry, settle, leave*), et des fins de phrase elliptiques. Chaque habitude prise isolément est du bon anglais ; leur densité est le problème. La bonne nouvelle : c'est réparable mécaniquement, sans toucher au fond.

**Recommandation** : révision de langue systématique (2–3 passes ciblées), pas de réécriture de fond.
**Confiance** : haute.

### Chiffres de lisibilité (corps du texte, hors tables/figures)

| Mesure | Valeur | Cible raisonnable |
|---|---|---|
| Longueur moyenne de phrase | 25,6 mots | ~20 mots |
| Phrases > 30 mots | 33 % | < 15 % |
| Phrases > 40 mots | 13 % | < 5 % |

---

## Les 7 problèmes systématiques

Ce sont des *patterns* : corriger la règle corrige des dizaines d'occurrences d'un coup.

### 1. Relatives sans « that » (contact clauses) — le tic n° 1

Grammaticalement correct, mais un non-natif doit relire la phrase pour trouver où commence la relative. Le papier en contient partout, souvent dans les phrases-clés :

- « the verdicts **current pipelines get wrong** » (×2, §2 Scope et §fin)
- « a verdict **current pipelines cannot decide** » (§4)
- « the unresolved tension **Maynez et al. flag** » (Case A)
- « the one component **nothing else can replace** » (intro)
- « not a measurement **we can make** from the text alone » (limitations)
- « the verdict **κ fixes** » (§2)

**Règle** : réinsérer « that » systématiquement. Coût nul, gain de lisibilité immédiat.

### 2. Fins de phrase elliptiques

- « what is true does not change with the prompt; what counts as a violation **does**. » (intro)
- « Only the content license changed; the claim, and its surface form, **did not**. » (Case B)

Un non-natif doit reconstruire mentalement le verbe élidé. Répéter le verbe : « …but what counts as a violation **does change** ».

### 3. Verbes métaphoriques non glosés

Le vocabulaire conceptuel du papier repose sur des métaphores anglaises jamais définies :

- **flip** (le mot le plus important du papier !) — « the label cannot flip with the contract », « verdicts flip ». Jamais expliqué. Un lecteur moyen comprend « retourner une crêpe ». → Définir à la première occurrence : *"the verdict flips (changes to the opposite)"*, ensuite le mot est acquis.
- **leave the evidence** — « whether the task allowed the model to leave the evidence », « the license to leave it ». Métaphore spatiale opaque. → « go beyond the evidence ».
- **fix** — « fixes what counts as true », « an ambiguous prompt may not fix it fully », « Two consequences fix σ's role ». Piège de polysémie (fix = réparer). → « determines » / « specifies ».
- **track** — « κ tracks the kind of speech act », « that label tracks evidence availability ». → « reflects » / « follows ».
- **move / moved** — « raising σ alone **moved** what a binary verifier flagged » (§3). Très idiomatique. → « changed how much content a verifier flagged ».
- **slot** — « faithfulness has no slot for it », « no slot to represent ». → « has no place for it » / « no way to represent it ».
- **gate** — « two gates », « a third gate ». Utilisé dans l'encadré LD *avant* d'être expliqué. → une glose d'une ligne : *"two gates (two binary checks that must both pass)"*.

### 4. Phrases > 40 mots avec subordonnées empilées

40 phrases dépassent 40 mots. Les pires sont listées dans la section « Passages à reformuler ». **Règle** : une idée = une phrase ; couper aux deux-points et points-virgules.

### 5. Jargon non défini pour un lecteur moyen du domaine

- **stance / stance-pass / stance check** — jamais glosé. → *"stance (how the claim is presented: asserted as fact, or marked as a hypothesis)"*.
- **hedge / hedged** — « asserted where a hedge was due ». Un non-natif connaît rarement « hedge » hors finance. → gloser une fois : *"a hedge (an explicit marker of uncertainty)"*.
- **marked form / stylistically marked** — terme de stylistique, utilisé dès la définition de σ ; la justification (foregrounding) arrive après. → définir « marked » dès la première utilisation.
- **soft label** — utilisé plusieurs fois, jamais défini.

### 6. Doubles abstractions empilées

Des groupes nominaux où trois abstractions s'emboîtent, à dérouler en phrases :

- « the dimension along which measurement of the other two must be held invariant » (§2, σ)
- « no faithfulness metric can recover the verdict κ fixes » (§2)
- « provider-chosen contract commitments that reshape when a model declines to diverge » (§3.4) — en plus, garden path : « reshape when » se lit d'abord comme un « when » temporel.
- « the protocol-level absence of scored contract variables » (§3)

### 7. Fautes et incohérences objectives

1. **§Agenda, phrase CLEF 2026** : espaces cassées « `( the form may change while new content must not be introduced ,$\sigma>0$, $\kappa{=}0$ )` » — ponctuation à réparer. **Et incohérence** : `σ>0` alors que σ est déclaré binaire low/high partout ailleurs.
2. **§3.1** : virgule fautive (comma splice) : « licensed invention is not merely undecidable**,** the contract *allows* it. » → tiret ou point-virgule.
3. **§2 (σ)** : « calls for input from stylistics that is still ongoing » — bancal (c'est le travail qui est ongoing, pas l'input). → « requires ongoing work in stylistics ».
4. **§Agenda intro** : « organized from measurement foundations (items 1–4) to system-level design (items 5–7) » — mais les items ne sont **pas numérotés** dans le texte (paragraphes en gras). Numéroter ou supprimer la référence.
5. **Abstract** : « can therefore change verdict » — article manquant (« change **its** verdict » ou reformuler, cf. ci-dessous).

---

## Passages à reformuler (par section)

Format : citation → problème → proposition.

### Abstract

**A1.** « The same output can therefore change verdict, \Hallu\ under one contract and \PD\ under another, while its text stays the same. »
— « change verdict » sans article est agrammatical ; « while » ambigu.
→ *"The same output can therefore be \Hallu\ under one contract and \PD\ under another, even though its text does not change."*

### Section 1 — Introduction

**I1.** « When users ask an LLM to write fiction, brainstorm, or propose creative solutions, they actively want the model to go beyond established facts, and punishing every unsupported statement would suppress the very outputs they seek. » (41 mots)
→ Couper : *"…they want the model to go beyond established facts. Punishing every unsupported statement would suppress exactly the outputs these users ask for."*

**I2.** « Intent-aware evaluation checks whether a response covers the query's constraints, but it has neither $O$ nor $\kappa$; the closest split of hallucinations into "intelligent" and "defective" derives its label from the output rather than from the prompt, so the label cannot flip with the contract. »
— 45 mots, deux idées, et « flip » non encore défini.
→ *"Intent-aware evaluation checks whether a response covers the query's constraints, but it has neither $O$ nor $\kappa$. The closest work splits hallucinations into "intelligent" and "defective", but it derives the label from the output, not from the prompt: the same output always keeps the same label, whatever the prompt asked for."*

**I3.** « $\kappa$ is the one component nothing else can replace » → *"…the one component **that** nothing else can replace"*.

**I4.** « Better detectors alone do not address the missing variable, which is not only evidential support but license: whether the task allowed the model to leave the evidence. »
→ *"Better detectors alone do not solve this. The missing variable is not evidential support but license: did the task allow the model to go beyond the evidence?"*

**I5.** « appeals to incompleteness and undecidability point to a structural error floor that better training does not remove »
— « appeals to », « structural error floor » : très abstrait.
→ *"arguments based on incompleteness and undecidability suggest that some level of error will remain, no matter how well the model is trained."*

**I6.** « The contract changes the verdict, not the truth: what is true does not change with the prompt; what counts as a violation does. »
→ garder la première moitié (elle est bonne), expliciter la fin : *"…what is true does not depend on the prompt, but what counts as a violation does depend on it."*

**I7.** « Two analytical moves carry the weight. » — idiome pur.
→ *"Our argument rests on two analyses."*

**I8.** « Together these suggest the gap is not merely anecdotal: it follows from leaving the prompt's truth commitments implicit, and a lightweight layer making $(O,\sigma,\kappa)$ explicit would settle verdicts that current pipelines cannot decide. » (36 mots)
→ Couper en trois : *"Together, these two analyses suggest that the gap is not anecdotal. It comes from leaving the prompt's truth commitments implicit. A lightweight annotation layer that makes $(O,\sigma,\kappa)$ explicit would decide verdicts that current pipelines cannot."*

### Section 2 — Framework

**F1.** « The truth contract borrows this insight and narrows it: where Gricean norms are implicit and global, $\TR(p)$ isolates the truth-relevant subset of those expectations and makes it explicit enough to annotate and score, one prompt at a time. » (39 mots)
→ *"The truth contract borrows this insight but makes it narrower. Gricean norms are implicit and global. $\TR(p)$ instead selects only the truth-related expectations, for one prompt at a time, in a form explicit enough to annotate and score."*

**F2.** « an ambiguous prompt may not fix it fully » → *"may not determine it fully"* (et auditer tous les « fix »).

**F3.** « A finer, validated gradation of form license (and in particular a decision about where the contested "moderately marked" middle falls) calls for input from stylistics that is still ongoing »
→ *"Defining a finer, validated scale for the form license — in particular, deciding where the middle level lies — requires ongoing work in stylistics."*

**F4.** « Second, $\sigma$ is nonetheless critical for measurement: raising the form license is exactly what leads an automatic verifier to misread marked form as unsupported content, so a contract that leaves $\sigma$ unspecified leaves the validity of any \Hallu\ count undefined. $\sigma$ thus enters the contract not as a third verdict axis but as the dimension along which measurement of the other two must be held invariant. »
— Le passage le plus dur du papier (double « leaves », « held invariant »).
→ *"Second, $\sigma$ still matters for measurement. When the form license is high, an automatic verifier may misread stylistic form as unsupported content. A contract that does not specify $\sigma$ therefore cannot guarantee that the \Hallu\ count is valid. In short, $\sigma$ is not a third verdict axis: it is the dimension that must not distort the measurement of the other two."*

**F5.** « Both conditions are constraint-like and checkable, so the verdict itself is decidable rather than subjective. »
→ *"Both conditions can be checked like constraints, so the verdict is objective, not subjective."*

**F6.** « the line that electrons dream in parallel worlds is supported by no oracle »
— « the line that… » se lit mal ; « supported by no oracle » est une inversion littéraire.
→ *"the line 'electrons dream in parallel worlds' is not supported by any oracle"*.

**F7.** « A truth-conditional claim not entailed by $O$ (unsupported or merely unverifiable) is not yet a verdict. »
— Erreur de catégorie (une *claim* n'est pas un *verdict*) : déroutant.
→ *"A truth-conditional claim that $O$ does not entail (unsupported or unverifiable) does not yet receive a verdict."*

**F8.** « The license $\kappa$ makes that alignment a scored term of the contract; faithfulness has no slot for it, which is why no faithfulness metric can recover the verdict $\kappa$ fixes. »
→ *"The license $\kappa$ turns that alignment into an explicit, scored part of the contract. Faithfulness has no place for it. This is why no faithfulness metric can produce the verdict that $\kappa$ determines."*

**F9.** « the smallest set that already suffices to flip the verdicts current pipelines get wrong »
→ *"the smallest set that is already enough to correct the verdicts that current pipelines get wrong"*.

### Section 3 — Diagnostic gap

**S1.** « The contract is left to the task label. » — trop compressé.
→ *"The contract is only implicit in the task label."*

**S2.** Phrase WritingBench (53 mots) : « By this criterion \textsc{WritingBench} is the most instructive case: it scores how well an output matches a requested style, yet it never treats the form license as a graded permission that conditions the truth measurement, so by our test $\sigma$ stays unannotated even though the task plainly implies it is high. »
→ Couper en trois phrases : *"By this criterion, \textsc{WritingBench} is the most instructive case. It scores how well an output matches a requested style, but it never treats the form license as a graded permission that conditions the truth measurement. By our test, $\sigma$ therefore stays unannotated, even though the task clearly implies a high $\sigma$."*

**S3.** « raising a prompt's form license $\sigma$ alone moved what a binary verifier flagged as unsupported »
→ *"raising a prompt's form license $\sigma$ alone changed how much content a binary verifier flagged as unsupported"*.

**S4.** Comma splice : « licensed invention is not merely undecidable, the contract *allows* it. »
→ *"licensed invention is not merely undecidable — the contract allows it."*

**S5.** Phrase Bendahman (65 mots) : « A domain-specific instance of the same tension appears in legal summarization: … while reducing non-factual ones. »
→ Couper en trois : *"A domain-specific instance of the same tension appears in legal summarization. \citet{bendahman_hallucinations_2025} observe that expert reference summaries introduce legal entities that are absent from the source document, yet factual under domain knowledge. Their entity-guided system preserves these factual hallucinations while reducing the non-factual ones."*

**S6.** « policies for refusal, hedging, and abstention learned during alignment tuning are themselves implicit, provider-chosen contract commitments that reshape when a model declines to diverge »
— Garden path (« reshape when » se lit comme temporel).
→ *"the refusal, hedging, and abstention policies learned during alignment tuning are themselves implicit contract commitments, chosen by the provider: they change the conditions under which a model refuses to diverge."*

**S7.** « enforce convergence before anything is presented as fact » — « enforce convergence » jamais défini.
→ *"and require support before anything is presented as fact"* (ou définir « convergence »).

### Section 4 — Worked verdicts

**W1.** « Hold the output fixed and change only the oracle ("What became of the plant's operators?", with $O=$ world knowledge), and the same claim becomes supported, hence not \Hallu. »
— Impératif + « and » : construction idiomatique dure à parser.
→ *"If we keep the output fixed and change only the oracle (…), the same claim becomes supported, so it is no longer \Hallu."*

**W2.** « The flip is exactly the unresolved tension Maynez et al.\ flag, whether summaries should tolerate such factual hallucinations »
→ *"This flip is exactly the unresolved question that Maynez et al.\ raise: should summaries tolerate such factual hallucinations?"*

**W3.** « the verdict is set by the license $\kappa$, which a fixed undecidable penalty, and even a three-way verdict, cannot see. »
— Le double sujet empilé avant « cannot see » est très dur.
→ *"the verdict is set by the license $\kappa$. A fixed penalty on undecidable content cannot capture this — even a three-way verdict cannot."*

**W4.** « Case~D marks the edge of $\kappa$ » → *"Case~D shows the limit of $\kappa$"*.

### Section 5 — Agenda

**G1.** Phrase « licensing condition » (55 mots) : « The \emph{licensing} condition is mechanical: it is taken directly from the $\kappa$ annotation, so under $\kappa{=}0$ no claim can be \PD\ and the score is zero by construction, while under $\kappa{>}0$ one checks only whether the claim falls inside the licensed scope (for example, the declared fictional frame). »
→ Couper : *"The licensing condition is mechanical: it is read directly from the $\kappa$ annotation. Under $\kappa{=}0$, no claim can be \PD, so the score is zero by construction. Under $\kappa{>}0$, one only checks whether the claim falls inside the licensed scope (for example, the declared fictional frame)."*

**G2.** « $\sigma$ could be placed on a graded scale via pairwise preference judgments fitted to comparative scoring models »
— Trois nominalisations méthodologiques enchaînées.
→ *"$\sigma$ could be turned into a graded scale: annotators compare pairs of outputs, and a comparative scoring model converts these judgments into scores."*

**G3.** Phrase CLEF : réparer la ponctuation ET l'incohérence `σ>0` (voir Fautes n° 1).

### Section 6 — Discussion

**D1.** « not a measurement we can make from the text alone » → *"not a measurement **that** we can make from the text alone"*.

**D2.** Phrase soft-label (50 mots) : « The framework treats that disagreement as signal rather than noise: where annotators diverge on a contract boundary, the divergence is recorded as a soft label instead of being forced to a single verdict (Section 6), which makes the normative choice auditable rather than hiding it inside an unstated default. »
→ Couper : *"The framework treats that disagreement as signal, not noise. Where annotators diverge on a contract boundary, the divergence is recorded as a soft label instead of being forced into a single verdict. The normative choice then stays visible and auditable, instead of hiding inside an unstated default."*

### Conclusion

**C1.** Dernière phrase (≈45 mots) : « The remaining work is to build the contract into benchmarks and to measure how much it changes what we conclude about models, but the first step is to stop scoring divergence as if every prompt asked for the same thing. »
— La chute (« stop scoring divergence as if every prompt asked for the same thing ») est excellente : la garder, mais en phrase autonome.
→ *"The remaining work is to build the contract into benchmarks, and to measure how much it changes our conclusions about models. The first step, however, is simpler: stop scoring divergence as if every prompt asked for the same thing."*

---

## Ce qui marche déjà — à ne pas toucher

1. **Les phrases courtes déclaratives de l'abstract** (« The content oracle $O$ fixes what counts as true. ») — exactement le bon registre ; c'est le modèle à généraliser.
2. **Les exemples concrets** : diabète/rapport médical, sucre/moonlight, Lyme, café de 1920 — ils font tout le travail pédagogique. Ils arrivent tôt (Table 1), c'est bien.
3. **Les parallélismes** : « A brainstorming tool that only repeats ideas that already exist is useless; a medical assistant that invents diagnoses is dangerous. » — parfait, mémorable, simple.
4. **Table 1 (cards) et l'arbre de décision** — pour un lecteur moyen du domaine, ce sont les deux points d'entrée les plus efficaces du papier.
5. **« Both statements are invented; only the first is a failure. »** — la meilleure phrase du papier.
6. Les intitulés de paragraphes (\paragraph) qui annoncent le contenu — bonne ergonomie.

---

## Plan d'action priorisé

1. **Passe mécanique** (1 h, gain maximal) : réinsérer « that » dans toutes les relatives ; remplacer « fix » → determine/specify, « leave the evidence » → go beyond the evidence, « slot » → place ; réparer les 5 fautes objectives.
2. **Passe phrases longues** (2–3 h) : couper toutes les phrases > 40 mots (liste ci-dessus + celles de l'appendice) ; viser une moyenne ≤ 21 mots.
3. **Passe glossaire** (30 min) : gloser à la première occurrence *flip*, *hedge*, *stance*, *gate*, *marked*, *soft label*.
4. **Passe finale** : relire uniquement l'abstract, le début de l'intro et la conclusion à voix haute — ce sont les seules parties que beaucoup de relecteurs liront en entier.
