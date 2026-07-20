# Review éditoriale pré-soumission — `main_position_personal_submission.tex`

**Cible** : Computational Linguistics (MIT Press), track *Position Papers*.
**Contraintes CL vérifiées (07/2026)** : pas de limite de pages pour les position papers ; exigence explicite de « rigorous reasoning » et « persuasive evidence ». Manuscrit PDF single-spaced au format CL (`clv2025`). Le manuscrit (20 pages dont ~13 de corps) est dans les normes.
**État du build** : compilation vérifiée ce jour (pdflatex ×3 + bibtex) — 0 erreur, 0 citation indéfinie, 0 overfull box, 20 pages.

---

## 0. Comparaison avec les versions précédentes

Trajectoire des trois versions fournies :

| Version | Date | Mots (corps) | Caractéristiques |
|---|---|---|---|
| `main_position_personal.pdf` | 18/07 | ~8 770 | Structure « Creativity–Hallucination Paradox », 7 limitations, agenda long, TC=(O, σ, κ) |
| `main_position_personal_revised.pdf` | 19/07 | ~3 550 | Resserrage −60 %. TC=(O_p, K_p) : σ rétrogradé en « form condition » hors contrat. 4 worked cases. Related work éclaté en deux sous-sections (§2.6 et §3.3) |
| `main_position_personal_submission.tex` | 20/07 | ~4 280 | σ_p réintégré dans le triple TC=(O_p, σ_p, K_p). Nouvelle §2 « Related Evaluation Paradigms ». Span typing (4 types), flag SV, σ̂ observé vs σ_p demandé, Case E, 5ᵉ question du mapping, colonne « Required stance » (Table 2), agenda 3 points, limitations en 3 groupes, Appendix A étoffé |

Bilan : la version de soumission est nettement la meilleure des trois. Trois progrès décisifs par rapport à la version révisée : (1) l'ambivalence sur σ est résolue de façon cohérente — σ_p est dans le contrat comme variable d'interprétation, sans licence de contenu, et la distinction σ_p / σ̂ ferme une objection évidente ; (2) le related work est devenu une vraie section synthétique placée avant le framework, au lieu de deux fragments dispersés ; (3) la calibration des claims est bien plus prudente (« author-coded », « purposive », « measurement hypothesis, not a prevalence result »).

Régressions ou frictions introduites par cette dernière passe, à corriger :

- le nouveau matériel de §3.3 (consistance « two-stage », ensembles canoniques `C*`, relation ≡) est sous-défini ;
- la répétition « σ does not license new content » s'est multipliée (≈ 6 occurrences) ;
- deux bugs de rendu sont apparus ou sont restés invisibles jusqu'ici : références d'annexe rendues « Appendix 8 » au lieu de « Appendix B », et alignement du label « SUP+SV » dans la Table 1 ;
- le titre a changé trois fois ; la version actuelle (« Hallucination Is Task-Relative: A Truth-Contract Framework for Evaluating LLM Outputs ») est la meilleure : déclarative, courte, et elle nomme le framework. À conserver.

---

## A. Évaluation globale

Le manuscrit est un position paper discipliné : thèse énoncée dès l'abstract et répétée en ouverture de §1 (« Hallucination is not a context-free property of a sentence »), définitions compactes, règle de décision explicite, mapping honnêtement borné à son échantillon, agenda concret. L'anglais est majoritairement propre, en phrases courtes, conforme au style visé. Les figures sont sobres et réellement informatives. Les obstacles restants sont d'ordre mécanique (cross-refs d'annexe, affiliations, bibliographie), terminologique (plusieurs doublets non arbitrés), et local (une sous-section §3.3 trop dense qui introduit des notations non définies).

### Scores (1–5)

| Dimension | Score | Justification |
|---|---|---|
| Clarté de l'argument central | 4 | Position précise, testable (claim existentiel en Appendix A), énoncée tôt. Diluée par ~6 répétitions du même point sur σ et par la densité de §3.3. |
| Qualité de l'anglais académique | 4 | Phrases courtes, voix active, hedging calibré. Quelques idiomes défaillants (« retains three requested style levels », « transformations should recover », « give opposite interpretations »). |
| Cohérence structurelle | 4 | Ordre problème → contrat → verdict → evidence → cas → agenda logique. §3.3 mélange exigences d'évaluateur et capacité de modèle ; trois passages répètent le point « verifier sensitivity ». |
| Cohérence terminologique | 3 | Doublets non arbitrés : worked contrasts / cases / Contract Shifts ; purposive / illustrative ; reference evidence / evidence reference ; epistemic presentation / stance ; « no invention » (Fig. 1) vs « grounded only » (Table 1) ; convention de sous-indice _p jamais énoncée. |
| Accessibilité pour non-spécialistes | 3 | ~16 symboles (O_p, σ_p, K_p, m_p, Γ_p, ρ_p, 𝒳, 𝒞, 𝒞*, σ̂, z, E, L, M, V, U) pour un papier de position ; `C*`, ≡ et « canonical proposition » jamais définis ; « off-diagonal » et « purposive » non glosés. |
| Clarté des figures | 4 | Fig. 1 et Fig. 3 excellentes ; Fig. 2 bonne (chemin « contradicted » implicite) ; Table 1 a un défaut d'alignement visible (« SUP » flotte entre deux lignes). |
| Qualité des captions | 4 | Captions autonomes qui énoncent ce qu'il faut retenir (bonne pratique déjà en place). Celle de Fig. 1 est dense mais nécessaire ; celle de Fig. 2 n'explique pas où va un claim « contradicted ». |
| Maturité de publication | 4 | Argumentation prête ; blocages restants presque tous mécaniques et terminologiques. |

### Simulation de lecteurs (3 risques par profil)

**Expert du domaine exact.** (1) L'abstract énonce la règle en une ligne sans le cas « contradicted » — un expert verra l'écart avec la définition formelle V(c|p). (2) Les trois modes m_p sont présentés par « such as » (liste ouverte) mais Fig. 3 et tout le papier n'en utilisent que trois — l'exhaustivité revendiquée est ambiguë. (3) CNN/DailyMail codé « Summarization » avec la citation Hermann et al. 2015 (dataset de reading comprehension ; l'usage summarization vient de Nallapati 2016/See 2017) — un expert le relèvera.

**Chercheur NLP hors framework.** (1) `𝒞*` et ≡ apparaissent dans une équation sans définition : impossible de reconstruire ce que « equivalent canonical claim sets » veut dire opérationnellement. (2) La différence SV (flag de span) vs LD (verdict de claim) demande deux lectures ; la Table 1 ligne 2 (« SUP+SV ») est le seul endroit qui la rend concrète — l'alignement défectueux la brouille. (3) « Appendix 8 » dans le texte alors que les annexes sont « Appendix A/B » : le lecteur cherchera une section 8 inexistante.

**Doctorant non anglophone.** (1) Charge notationnelle de §3.3 (indices doubles σ_{p_0}, étoile, chapeau) sans tableau de notation. (2) « off-diagonal setting » (§4.2) suppose une métaphore matricielle jamais posée. (3) « purposive » est un terme de méthodologie d'échantillonnage rare ; une glose (« deliberately selected rather than random ») coûterait cinq mots.

---

## B. Cinq révisions prioritaires (ordre d'importance)

**1. Corriger les trois bugs de rendu.**
Problème : (a) les renvois `\ref{app:mapping}` impriment « Appendix 8 » (pages 8 et 11 du PDF) alors que l'annexe s'affiche « Appendix B » et ses tables « B.1/B.2 » ; (b) le bloc d'affiliations imprime « ¹ ¹INSA Lyon… » et « ² ²Alteca… » (double marqueur : celui de la classe + le `$^{1}$` manuel dans `\affil`) ; (c) dans la Table 1, le label `\shortstack{\SUP\\+\SV}` remonte : « SUP » flotte au niveau de la ligne 1 et « +SV » au niveau de la ligne 2.
Pourquoi : trois défauts immédiatement visibles par un relecteur CL dès les pages 1, 8 et 11 ; le « Appendix 8 » rend une référence fausse.
Localisation : préambule/`\affilblock` (l. 56–60), `\ref{app:mapping}` (§4.1 l. 393, §6 l. 564), Table 1 (l. 363).
Action : retirer les `$^{1}$/$^{2}$` manuels des `\affil` ; faire imprimer la lettre d'annexe (vérifier le compteur utilisé par `\appendixsection` dans `clv2025.cls`, ou écrire « Appendix~B » en dur après vérification) ; remplacer le `\shortstack` par « \SUP+\SV » sur une ligne (la colonne fait 0.09\linewidth — passer à 0.10 si besoin).

**2. Nettoyer la bibliographie.**
Problème : (a) l'entrée BIG-Bench (`srivastava_beyond_2023`) imprime la liste complète des centaines d'auteurs — ~2,5 pages de références (p. 17–19) ; (b) 5 entrées sans venue ni identifiant : `narayan_xsum_2018` (pas de booktitle EMNLP), `sun_hallucinating_2024`, `pauli_mind_2025`, `lai_multidimensional_2023`, `banerjee_does_2025` (qui imprime en plus « Version Number: 1 ») ; (c) bruit de métadonnées : « version: 1 » (`bang_hallulens_2025`, `wei_measuring_2024`), « Number: 5 » (`franceschelli_creativity_2024`) ; (d) formats arXiv incohérents (« ArXiv:XXXX [cs] » vs « arXiv preprint arXiv:2503.05244 » pour `wu_writingbench_2025`) ; (e) plusieurs papiers publiés cités en préprint (HaluEval → EMNLP 2023, FActScore → EMNLP 2023, FRANK → NAACL 2021, MacGyver → NAACL Findings 2024, etc. — à vérifier entrée par entrée).
Pourquoi : CL fait un vrai copyediting ; une bibliographie de ce volume avec entrées orphelines sera renvoyée. La liste d'auteurs BIG-Bench triple presque la taille des références.
Action : tronquer BIG-Bench avec `and others` (le style `compling.bst` rendra « et al. ») ; compléter les 5 entrées orphelines ; purger les champs `note` parasites ; unifier le format arXiv ; substituer les versions publiées quand elles existent.

**3. Définir les notations introduites en §3.3 ou les retirer.**
Problème : `𝒞*` (ensembles de claims « canoniques »), la relation ≡, « canonical proposition » (11 occurrences dans le papier) et « two-stage consistency » ne sont définis nulle part. La contrainte centrale de robustesse stylistique repose entièrement dessus.
Pourquoi : c'est la seule partie du framework qu'un lecteur ne peut pas reconstruire ; un reviewer CL demandera la définition ou considérera la contrainte comme non spécifiée.
Localisation : §3.3, display l. 256–269 ; « two-stage consistency » l. 255.
Action : une phrase de définition avant le display, p. ex. : *"We write $\mathcal C^{*}$ for the claim set after canonicalization: extracted propositions are normalized to a neutral paraphrase and matched by expert adjudication; $\equiv$ denotes equality of canonical claim sets under this matching. Consistency is two-stage: extraction may differ across styles as long as canonicalization and verdicts agree."* Idem une phrase pour « canonical proposition » à sa première occurrence (§2 ou §3.3).

**4. Arbitrer la terminologie (un terme par concept).**
Problème : doublets listés en section F — les plus visibles : « worked contrasts » (abstract, §1) vs « cases » (§5) vs « Worked Contract Shifts » (titre §5) ; « purposive mapping » vs « Illustrative Mapping » (titre §4) ; « reference evidence » (définition §3.1) vs « evidence reference » (§1) ; « epistemic presentation » (texte, ρ_p) vs « Required stance » (en-tête Table 2 — « stance » n'apparaît nulle part ailleurs, résidu de la version du 18/07) ; « K = no invention » (Fig. 1) vs « K: grounded only » (Table 1).
Pourquoi : chaque doublet oblige le lecteur à décider si deux termes désignent deux concepts ; dans un papier qui vit de distinctions fines (SV vs LD, σ_p vs σ̂), c'est coûteux.
Action : recommandations en section F. Choix suggérés : « worked cases », « purposive mapping », « reference evidence », « epistemic presentation », « grounded only ».

**5. Réparer trois points de calibration des claims.**
Problème : (a) la conclusion généralise au-delà de l'échantillon : *"The illustrative mapping suggests that these variables are rarely represented together in current evaluation resources"* — tout le reste du papier dit « in this sample » ; (b) l'abstract énonce *"A claim receives the hallucination verdict (H) when it violates this policy"* — la règle formelle donne aussi H aux claims **contradicted**, indépendamment de la policy ; (c) §2 : *"Our distinction is not based on value alone"* implique que la valeur compte partiellement, alors que le verdict l'ignore totalement (l'utilité est un score séparé).
Pourquoi : ce sont exactement les trois phrases qu'un reviewer de position paper CL citera pour tester la rigueur (« rigorous reasoning ») annoncée par le track.
Action : formulations corrigées en section D (items D2, D13, D14).

---

## C. Revue section par section

### Titre
**But** : annoncer la thèse et le dispositif. **Atteint.** « Hallucination Is Task-Relative: A Truth-Contract Framework for Evaluating LLM Outputs » est la meilleure des trois versions successives : déclaratif, court, framework nommé. Nitpick assumable : stricto sensu la relativité est au *contrat* (deux tâches partageant le même contrat donnent le même verdict) ; « Task-Relative » reste défendable puisque le contrat dérive de la tâche. Ne pas changer, sauf si un co-auteur préfère « Contract-Relative » — cohérence parfaite avec le corps mais titre moins lisible.

### Abstract (216 mots)
**But** : problème → gap → position → approche → contribution. **Atteint sur les cinq éléments** — rare et appréciable. Problèmes résiduels :
1. La règle en une ligne omet le cas contradicted (item D14).
2. *"The value of $\sigma_p$ does not license new content. It guides the interpretation of styled spans…"* — « It » renvoie grammaticalement à « The value », qui ne « guide » rien (item D4). Ces deux phrases arrivent en outre après la phrase sur l'utilité, ce qui casse le bloc σ ; regrouper les trois phrases σ (définition, non-licence, rôle interprétatif).
3. L'ordre annoncé (« five worked contrasts and a purposive… mapping ») inverse l'ordre du papier (mapping §4, cas §5) et celui du paragraphe « Evidence and scope » de §1. Harmoniser (mapping d'abord).
4. (\SV) est introduit avec une glose minimale « stylistic variation (SV) » — suffisant, mais la phrase précédente doit alors garder « canonical propositions » compréhensible sans définition ; « the propositions a span commits to » serait plus autoportant.

### §1 Introduction
**But** : établir les deux problèmes (permission ; forme) avant la terminologie, puis poser la position. **Atteint** — la meilleure section du papier. Le contraste « A medical assistant should not invent a diagnosis. A fiction-writing assistant must be able to invent characters and events. » fait le travail en 20 mots. Le paragraphe « Our position » est exemplaire. Points à régler :
- *"two protocols can give opposite interpretations to the same wording"* — les protocoles n'« interprètent » pas, ils assignent des verdicts (item D2) ;
- « The evidence reference $O_p$ » (l. 107) vs « The reference evidence $O_p$ » partout ailleurs (item F) ;
- le paragraphe « Evidence and scope » répète deux caveats (« purposive and single-coded », « do not establish annotation reliability ») déjà présents en §4.1 et §7.2 — une occurrence ici suffit, en une proposition subordonnée (section G).

### §2 Related Evaluation Paradigms
**But** : positionner contre faithfulness/factuality, intent-aware, hallucinations « utiles », stylistique. **Atteint en 4 paragraphes synthétiques** — c'est une synthèse, pas une liste ; net progrès sur la version du 19/07 où ce matériel était éclaté en deux endroits. Problèmes :
- « content-permission policy » et « canonical propositions » sont utilisés avant leur définition (§3). Ajouter un renvoi : *"…what may an output do when the evidence does not entail a proposition? (Section~3 defines this policy.)"* ;
- *"Our distinction is not based on value alone"* — précision fautive (item D5) ;
- le dernier paragraphe (« The missing bridge… ») anticipe presque mot pour mot la fin de §3.2 et le passage « off-diagonal » de §4.2 (section G) : garder la version §2 (c'est sa place) et alléger les deux autres.

### §3.1 The truth contract
**But** : définir O_p, K_p=(m,Γ,ρ). **Atteint.** Définitions nettes, la mise en garde sur « world knowledge » est bienvenue. Deux points :
- m_p est introduit par « such as » (liste ouverte) mais le papier entier — Fig. 3 en tête — n'utilise que trois modes. Écrire : *"We consider three modes in this paper: grounded reporting, flagged speculation, and in-frame invention; the taxonomy is extensible."* Sinon un reviewer demandera si la grille de Fig. 3 est complète ;
- la convention de sous-indice (les tables et figures écrivent O, σ, K sans _p) n'est jamais énoncée. La version du 18/07 contenait la phrase idoine (« We write $O_p$… and drop the subscript when the prompt is clear from context ») — elle a disparu dans la refonte. La réintroduire ici.

### §3.2 Stylistic latitude and foregrounding
**But** : définir les niveaux σ_p, les relier au foregrounding, distinguer σ_p / σ̂. **Atteint.** La distinction requested/observed est l'un des meilleurs ajouts de cette version. Problèmes :
- *"The truth contract retains three requested style levels"* — « retains » est un artefact de révision (il « retient » par rapport au brouillon précédent) qui n'a aucun sens pour le lecteur final (item D1) ;
- *"The levels order formal marking, not creativity, factuality, or permission to invent."* — zeugme : « order » s'applique mal aux trois derniers termes (item D6) ;
- la fin de section (« Claim extractors, entailment systems, and semantic metrics may react differently… ») répète §2 fin — voir section G.

### §3.3 Unit of analysis and span typing
**But** : définir l'unité claim, l'analyse 𝒳, les 4 types de spans, la contrainte de robustesse stylistique. **Partiellement atteint** — la section la plus dense du papier, et la seule où le lecteur peut décrocher. Quatre problèmes :
1. `𝒞*`, ≡, « canonical », « two-stage consistency » non définis (priorité B3).
2. Agentivité fautive : *"proposition-preserving transformations should recover equivalent canonical claim sets"* — c'est l'évaluateur qui « recover », pas les transformations (item D3).
3. Le paragraphe final mélange deux sujets : exigence sur l'évaluateur (3 phrases) puis capacité du modèle (*"The target capability is to produce stylistically creative yet factually grounded output…"*) puis retour à la typologie d'erreurs. Scinder : garder l'exigence évaluateur ici, déplacer les deux phrases « target capability / instruction-following error » vers §7.1 où la distinction compliance/verdict est déjà traitée.
4. La display ≡ occupe beaucoup d'espace pour dire « mêmes claims canoniques, mêmes verdicts » ; une fois `𝒞*` défini, envisager de la réduire à une seule ligne (𝒞* et V constants sur {s₀,s₁,s₂}).

### §3.4 Evidence state and verdict
**But** : E(c,O_p), L, M, V(c|p), cas du refus. **Atteint.** Section propre ; le traitement du contradicted par défaut, de la fiction (O_p inclut le frame), et de l'abstention comme méta-claim préemptent trois objections classiques. Rien de bloquant. Micro-point : « Let $L(c,K_p)$ indicate whether mode $m_p$ licenses an evidentially unknown claim » — L est défini seulement pour les claims unknown ici, mais génériquement en Appendix A ; aligner (définir L génériquement, la règle V ne l'appliquant qu'au cas unknown).

### §3.5 Representative contracts (Table 1)
**But** : ancrer la règle dans cinq prompts concrets. **Atteint** — la table est l'artefact le plus pédagogique du papier. Voir section E pour le défaut d'alignement SUP+SV et l'intro de deux phrases qui pourrait annoncer ce que les cinq lignes couvrent (les trois modes × verdicts).

### §4 Illustrative Mapping of a Diagnostic Gap
**But** : montrer, sur 40 ressources, que O/σ/K ne sont jamais scorés ensemble. **Atteint avec une calibration exemplaire** (« author-coded », « purposive », « not a prevalence result »). Problèmes :
- titre §4 « Illustrative Mapping » vs « purposive mapping » dans tout le texte — choisir (recommandation : *purposive*, qui est le terme méthodologique ; « illustrative » peut rester comme adjectif d'usage mais pas dans le titre de section) ;
- « off-diagonal setting » non explicité (item D10) ;
- §4.3 : bon resserrage par rapport au 19/07 ; la phrase finale à trois objectifs annonce déjà l'agenda — acceptable.

### §5 Worked Contract Shifts
**But** : cinq contrastes qui isolent chacun une composante. **Atteint.** Case E est le bon ajout de cette version (il fait travailler σ̂/z/mixed). Points :
- titre de section « Worked Contract Shifts » vs « worked contrasts » (abstract/§1) vs « cases » (corps) — unifier (item F) ;
- Case E, dernière phrase : « a contract-guided extraction error » — formulation ambiguë (l'erreur est un échec de l'extraction guidée par le contrat, pas une erreur guidée par le contrat) (item D11) ;
- Case B répète la caption de Fig. 1 (« frame dependence, not a same-proposition intervention ») presque verbatim — une des deux occurrences suffit (section G).

### §6 Research Agenda
**But** : trois chantiers dérivés du framework. **Atteint** ; chaque item est actionnable et renvoie aux variables du framework. Le renvoi cassé « Appendix 8 » est ici (item B1). Micro-point : item 2, *"holding canonical propositions as stable as possible"* — encore « canonical » non défini en amont (résolu par B3).

### §7 Discussion
**But** : séparer verdict / sévérité / compliance ; limites. **Atteint.** Le regroupement des limitations en 3 groupes (vs 7 au 18/07) est un vrai gain de lisibilité. §7.1 accueillerait naturellement les deux phrases « target capability » déplacées depuis §3.3. Micro-point : *"The framework has three main groups of limitations"* (item D12).

### §8 Conclusion
**But** : rappel de la position, pas de claim nouveau. **Presque atteint** : la phrase de généralisation « in current evaluation resources » dépasse ce que le mapping autorise (item D13). Le reste est propre.

### Appendix A — Formal Decision Rule
**But** : formalisation complète + claim existentiel. **Atteint.** La notation est désormais alignée sur le corps (M(c,s,K_p) partout — la passe d'harmonisation du 18–19/07 a payé). Les trois diagnostics (type error / claim error / verdict instability) sont un bon pont vers l'agenda. Duplication assumée avec §3.4 : acceptable pour CL (le corps reste lisible seul). Le claim existentiel avec O et E fixés (seuls K et ρ varient) est la formulation la plus défendable des trois versions.

### Appendix B — Resource Mapping (Tables B.1, B.2)
**But** : lister les 40 ressources et leurs profils. **Atteint** ; les comptes (24+2+9+5=40) sont cohérents avec la Table 2. Problèmes d'exactitude de noms :
- « DelusionQA » (Table B.1) : le nom du dataset est **DeLucionQA** (la référence imprime « DelucionQA ») — corriger le nom dans la table ;
- « HaluQA » : le benchmark de `cheng_evaluating_2023` s'appelle **HalluQA** — vérifier et corriger ;
- « WritingBench » (table) vs « Writingbench » (référence bib) — harmoniser la casse dans le .bib ;
- « RealTimeQA » (table) vs « RealTime QA » (référence) — mineur, harmoniser ;
- CNN/DailyMail cité via `hermann_teaching_2015` et codé « Summarization / News source » : Hermann et al. 2015 est le dataset de *reading comprehension* (cloze) ; la variante summarization est due à Nallapati et al. (2016)/See et al. (2017). Soit citer la variante summarization, soit recoder la ligne « Reading QA ». Un reviewer expert le verra.

---

## D. Corrections au niveau de la phrase

**D1.**
Original : *"The truth contract retains three requested style levels, $\sigma_p\in\{0,1,2\}$:"*
Problème : « retains » est un artefact de révision — le contrat « conserve » les niveaux par rapport à un brouillon antérieur que le lecteur n'a jamais vu.
Révision : *"The truth contract distinguishes three requested style levels, $\sigma_p\in\{0,1,2\}$:"*
Raison : décrit la fonction du contrat, pas l'historique du manuscrit.

**D2.**
Original : *"Consequently, two protocols can give opposite interpretations to the same wording because each protocol silently assumes a different task."*
Problème : les protocoles n'« interprètent » pas ; l'enjeu du papier est précisément le verdict.
Révision : *"Consequently, two protocols can assign opposite verdicts to the same wording because each silently assumes a different task."*
Raison : aligne le vocabulaire sur « verdict », terme central, et supprime la répétition de « protocol ».

**D3.**
Original : *"For expert-adjudicated realizations $s_0,s_1,s_2$ produced under contracts that differ only in requested style, proposition-preserving transformations should recover equivalent canonical claim sets and stable factual verdicts:"*
Problème : agentivité — les « transformations » ne récupèrent rien ; c'est l'évaluateur. Phrase de 30 mots portant trois idées.
Révision : *"Consider expert-adjudicated realizations $s_0,s_1,s_2$ produced under contracts that differ only in requested style. If the realizations preserve the same propositions, an evaluator should recover equivalent canonical claim sets and stable factual verdicts:"*
Raison : rétablit l'agent (l'évaluateur), découpe en deux phrases, explicite la condition.

**D4.**
Original (abstract) : *"The value of $\sigma_p$ does not license new content. It guides the interpretation of styled spans so that evaluators can separate canonical propositions from stylistic variation (SV) before factual verification."*
Problème : « It » renvoie à « The value », qui ne peut pas « guide » ; « The value of » est superflu.
Révision : *"$\sigma_p$ does not license new content; it guides the interpretation of styled spans, so that evaluators can separate the propositions a span commits to from stylistic variation (SV) before factual verification."*
Raison : référent net, et « the propositions a span commits to » évite d'utiliser « canonical » avant toute définition.

**D5.**
Original : *"Our distinction is not based on value alone."*
Problème : « not…alone » implique que la valeur intervient partiellement dans le verdict ; le papier affirme le contraire (l'utilité est un score séparé, jamais un critère du verdict).
Révision : *"Our distinction does not rest on value."*
Raison : la calibration de la phrase correspond exactement à la règle V(c|p) ; la phrase suivante (« Permission is evaluated first ») porte déjà la nuance.

**D6.**
Original : *"The levels order formal marking, not creativity, factuality, or permission to invent."*
Problème : zeugme — « order » se lit mal avec « permission to invent » ; trois négations en parallèle brouillent le point.
Révision : *"The levels rank the degree of formal marking. They do not rank creativity or factuality, and they do not grant permission to invent."*
Raison : sépare ce que σ mesure de ce que σ n'autorise pas — deux idées, deux phrases.

**D7.**
Original : *"Stylistic foregrounding makes language salient through devices such as deviation, parallelism, metaphor, and unusual phrasing."*
Problème : « makes language salient » est approximatif — c'est la forme linguistique qui devient saillante, pas la langue.
Révision : *"Stylistic foregrounding makes linguistic form salient through devices such as deviation, parallelism, metaphor, and unusual phrasing."*
Raison : précision conforme à la définition de Leech & Short reprise en §3.2.

**D8.**
Original : *"An evaluator that literalizes a metaphor or treats surface unexpectedness as evidential deviation can therefore report a hallucination where the underlying claim remains supported."*
Problème : « evidential deviation » est opaque pour un non-spécialiste ; 27 mots.
Révision : *"An evaluator that literalizes a metaphor, or reads surface unexpectedness as evidence of factual deviation, can therefore report a hallucination although the underlying claim remains supported."*
Raison : « evidence of factual deviation » explicite la confusion forme/fond visée ; « although » marque mieux la concession que « where ».

**D9.**
Original : *"The requested stylistic level $\sigma_p$ specifies how strongly the prompt asks the output to depart from a neutral realization while preserving its propositional commitments."*
Problème : « asks the output » — on ne demande rien à un output ; ambiguïté sur le rattachement de « while preserving ».
Révision : *"The requested stylistic level $\sigma_p$ specifies how strongly the prompt asks for departure from a neutral realization, with propositional commitments preserved."*
Raison : supprime le destinataire fautif et détache la condition de préservation.

**D10.**
Original : *"The sample also leaves an important off-diagonal setting underrepresented: strongly marked form under a strict factual contract."*
Problème : « off-diagonal » suppose une matrice jamais posée ; le lecteur de Fig. 3 cherchera une diagonale dans la grille.
Révision : *"The sample also underrepresents a setting that falls off the usual pairing of task designs: strongly marked form under a strict factual contract, whereas existing benchmarks pair factual contracts with neutral form and creative contracts with marked form."*
Raison : rend explicite la « diagonale » (l'appariement habituel factuel↔neutre / créatif↔stylé) au lieu de la présupposer.

**D11.**
Original : *"If an evaluator extracts a literal pseudo-claim from the figurative wording, a subsequent H label reflects a contract-guided extraction error rather than a factual defect in the intended proposition."*
Problème : « a contract-guided extraction error » se lit comme « une erreur guidée par le contrat » ; c'est un échec *de* l'extraction guidée par le contrat.
Révision : *"If an evaluator extracts a literal pseudo-claim from the figurative wording, a subsequent H label reflects an extraction error, not a factual defect in the intended proposition."*
Raison : le qualificatif « contract-guided » n'ajoute rien ici et crée l'ambiguïté.

**D12.**
Original : *"The framework has three main groups of limitations."*
Problème : « three main groups of limitations » est une nominalisation lourde.
Révision : *"The framework's limitations fall into three groups."*
Raison : plus direct, même contenu.

**D13.**
Original (conclusion) : *"The illustrative mapping suggests that these variables are rarely represented together in current evaluation resources."*
Problème : généralise à la littérature entière ce que §4 et §7.2 restreignent explicitement à l'échantillon — incohérence de calibration interne au papier.
Révision : *"The mapping suggests that these variables are rarely represented together in the resources we examined."*
Raison : rétablit la portée revendiquée partout ailleurs ; « suggests » + périmètre explicite.

**D14.**
Original (abstract) : *"A claim receives the hallucination verdict (H) when it violates this policy."*
Problème : la règle formelle donne aussi H à un claim **contradicted**, que la policy soit permissive ou non ; l'abstract est le seul endroit où la règle est fausse par omission.
Révision : *"A claim receives the hallucination verdict (H) when it contradicts the evidence or departs from it in a way the policy does not permit."*
Raison : couvre les deux chemins vers H (contradiction ; départ non licencié) sans allonger notablement.

---

## E. Revue des figures et tables

### Figure 1 (`fig:flip`, p. 3) — une phrase, deux contrats, deux verdicts

**A. Message scientifique.** La thèse en une image : le même énoncé de surface reçoit H sous contrat QA historique et LD sous contrat fiction. Message identifiable en <5 secondes ; soutient directement le paragraphe « Our position ». Nécessaire : c'est la seule visualisation de la thèse elle-même.
**B. Compréhension autonome.** Bonne. H et LD sont définis dans la caption ; O et K sont glosés dans les cartes. Deux réserves : (1) le contrat est un triple (O, σ, K) dans tout le papier, mais la figure ne montre que O et K — un lecteur attentif se demandera où est σ ; (2) « K = no invention » n'apparaît nulle part ailleurs — le texte et la Table 1 disent « grounded only ».
**C. Organisation visuelle.** Propre : hiérarchie claire, lecture haut→bas, rouge/vert doublé par les libellés textuels (accessible daltoniens), densité faible.
**D. Intégration texte-figure.** Référencée avant apparition (§1, l. 114) et reprise par Case B — exemplaire.
**E. Révision recommandée.**
- Message actuel : la relativité au contrat du verdict.
- Difficulté principale : l'absence de σ dans un papier qui définit TC comme un triple ; le libellé « no invention ».
- Changements requis : remplacer « K = no invention » par « K = grounded only » ; soit ajouter « σ = 0 » / « σ = 1 » dans les cartes, soit signaler l'omission en caption.
- Améliorations optionnelles : aucune — ne pas surcharger.
- Caption proposée : *"**Contract-dependent evaluation of one surface sentence.** In historical QA, the sentence asserts a real-world claim that the evidence does not support, so it receives the hallucination verdict (H). In fiction writing, the same wording is interpreted inside the declared fictional world and falls within the licensed scope (LD). The two frames yield different contextualized propositions: the figure illustrates frame dependence, not a same-proposition label reversal. The stylistic level $\sigma_p$ is omitted because it does not affect either verdict."*
- Verdict compréhension : **clair**. Verdict nécessité : **essentiel**.

### Figure 2 (`fig:decision`, p. 7) — procédure span→claim

**A. Message scientifique.** La règle de décision opérationnalisée : analyse 𝒳 puis quatre questions, chaque claim finissant en SUP/LD/H, les annotations de span restant à part. Soutient §3.3–3.4. Nécessaire : c'est la forme procédurale de V(c|p).
**B. Compréhension autonome.** Bonne, avec un angle mort : le chemin d'un claim **contradicted** est implicite (il répond « no » à q2 puis « no » à q3 faute d'être « unknown », et atterrit en H) — le lecteur doit le déduire. Par ailleurs la boîte latérale écrit « z = 1 » quand le texte écrit $z_{\sigma_p}$ (mineur).
**C. Organisation visuelle.** Lecture verticale nette, branches « yes/no » lisibles, ligne pointillée bien distinguée (annotation vs flux). Codes couleur cohérents avec Fig. 1.
**D. Intégration.** « Figure 2 summarizes the procedure. » (§3.4) — la figure rend p. 7 face au texte p. 6 : bon placement.
**E. Révision recommandée.**
- Message actuel : le pipeline complet analyse→verdict.
- Difficulté principale : le sort des claims contradicted.
- Changements requis : une phrase en caption (voir proposition) ; optionnellement étiqueter la branche q3→H « no (contradicted, unlicensed, or out of scope) ».
- Améliorations optionnelles : harmoniser « z » → « $z_{\sigma_p}$ » dans la boîte latérale ; italiser *other* comme dans le texte.
- Caption proposée : *"**Span-to-claim evaluation procedure.** The evaluator uses the requested level $\sigma_p$ to interpret the span, records the observed level $\widehat\sigma$, extracts canonical propositions, and assigns the auxiliary SV flag. SV-only and other spans bypass factual verification. Each extracted proposition receives SUP, LD, or H; contradicted claims and unlicensed or out-of-scope unknown claims reach H through the 'no' branches. Span annotations remain separate from claim-level verdicts, and usefulness is scored only after LD classification."*
- Verdict compréhension : **clair** (compréhensible avec effort pour le cas contradicted). Verdict nécessité : **essentiel**.

### Figure 3 (`fig:profiles`, p. 10) — grille modes × niveaux σ

**A. Message scientifique.** L'espace de design des tâches : 3 modes catégoriels × 3 niveaux ordonnés, 9 profils illustratifs ; σ n'est pas une licence de contenu. Soutient §4.2 et l'agenda (item 2).
**B. Compréhension autonome.** Bonne. Axes étiquetés, cellules autoportantes, caption qui désamorce les deux mauvaises lectures (fréquence empirique, ranking de qualité).
**C. Organisation visuelle.** Teintes très légères, information portée par le texte (accessible). Lecture bas→haut sur l'axe des modes (grounded en bas) : cohérent avec un axe « permission croissante », rien à changer.
**D. Intégration.** Référencée juste avant (§4.2). Bon placement.
**E. Révision recommandée.**
- Message actuel : la séparation conceptuelle contenu/forme.
- Difficulté principale : aucune sérieuse ; la figure ne dit pas laquelle des 9 cellules est sous-étudiée alors que le paragraphe précédent en parle.
- Changements requis : aucun.
- Améliorations optionnelles : encadrer (trait plus soutenu) la cellule « Strongly marked factual content » et ajouter en caption : *"The highlighted cell is the setting least represented in the mapping of Section 4."* — cela lierait la figure à l'argument au lieu d'en faire une taxonomie décorative.
- Caption proposée : caption actuelle conservée (+ la phrase optionnelle ci-dessus).
- Verdict compréhension : **clair**. Verdict nécessité : **utile** (pas essentiel : le texte de §4.2 porte le même contenu ; la valeur ajoutée est mnémonique).

### Table 1 (`tab:contracts`, p. 8) — contrats représentatifs

But annoncé dans le texte (§3.5) ✔. Colonnes non ambiguës ✔. Le lecteur peut vérifier chaque ligne contre la règle — c'est la table la plus utile du papier.
Problèmes : (1) **alignement** : le label `\shortstack{SUP\\+SV}` de la ligne 2 remonte — « SUP » flotte visuellement entre les lignes 1 et 2 et peut être rattaché à la mauvaise ligne ; le remplacer par « SUP+SV » sur une seule ligne (élargir la colonne Label à 0.10\linewidth si nécessaire) ; (2) la table est référencée p. 6 et rendue p. 8 — distance acceptable mais à surveiller après corrections ; (3) micro-incohérence : « Unknown and unlicensed » (ligne 1) vs « Unknown, in scope, and provisional » (ligne 3) — formes télégraphiques cohérentes entre elles, rien à changer.
Verdict : **essentielle** ; compréhensible après correction de l'alignement.

### Table 2 (`tab:mapping-summary`, p. 9) — synthèse du mapping

But en caption ✔ ; « Implicit » défini en caption ✔ (bonne pratique). Le texte interprète la table au lieu de la répéter ✔.
Problèmes : (1) l'en-tête « **Required stance** » utilise « stance », terme absent du corps (le texte dit « epistemic presentation », ρ_p) — résidu de la version du 18/07 ; renommer « Epistemic presentation » ou introduire « stance » comme synonyme dès §3.1 ; (2) l'en-tête « Content license » vs « content-permission policy » dans le texte — même famille, acceptable, mais « Permission » serait plus proche ; (3) `\scriptsize` : lisible en PDF, à la limite en impression — laisser tel quel sauf remarque du copyeditor.
Verdict : **essentielle** ; claire.

### Table 3 (`tab:cases`, p. 11) — synthèse des cinq cas

But ✔, colonnes claires, très bonne densité ; « Main contrast » (au lieu de « Changed component » au 19/07) reflète honnêtement le fait que les cas B et C changent plusieurs composantes à la fois.
Problème : aucun sérieux. Micro : « Mode and presentation » (Case C) pourrait s'écrire « $m$ and $\rho$ » pour renvoyer aux symboles, mais la forme verbale est plus accessible — garder.
Verdict : **utile** ; claire.

### Tables B.1 / B.2 (annexe, p. 13–15) — les 40 ressources

But ✔ ; disclaimer de codage en caption ✔ ; comptes cohérents avec la Table 2 (24+2+9+5=40) ✔.
Problèmes : les noms de ressources (DeLucionQA, HalluQA, WritingBench, RealTime QA — voir §C/Appendix B) ; la ligne CNN/DailyMail (citation Hermann 2015 vs usage summarization). La colonne « Author-coded profile » mélange des valeurs de nature différente (« Grounded », « Grounded; includes undecidable », « In-frame invention; style scored ») — acceptable pour un codage grossier annoncé comme tel.
Verdict : **utiles** ; claires après correction des noms.

### Équations et définitions formelles

- V(c|p) (§3.4 et App. A) : symboles tous définis avant usage ✔ ; le cas « otherwise » couvre contradicted — cohérent avec la prose (« By default, a claim that contradicts $O_p$ receives H »).
- 𝒳(s,p) (§3.3) : composantes définies ✔ mais voir B3 pour 𝒞*/≡.
- Display ≡ (§3.3) : le seul endroit du papier où la notation excède la prose qu'elle formalise — une fois 𝒞* défini, envisager une réduction (une ligne).
- Claim existentiel (App. A) : précis, conditions explicites (O commun, E=unknown fixé) — c'est la bonne formalisation de la thèse.
- Indicatrices $\mathbf{1}[\cdot]$ : définies par l'usage, standard ✔.

---

## F. Audit terminologie et notation

| Terme ou symbole actuel | Localisation | Problème | Forme recommandée |
|---|---|---|---|
| worked contrasts / cases / Worked Contract Shifts | abstract, §1 (« five worked contrasts ») ; §5 corps (« cases », « Case A–E ») ; titre §5 ; caption Table 3 (« Worked cases ») | trois noms pour le même objet | **worked cases** partout ; titre §5 → « Worked Cases » |
| purposive mapping / illustrative mapping | « purposive » ×4 (abstract, §1, §4.1, §7.2) ; « Illustrative » titre §4 + captions Tables 2/B.1/B.2 + conclusion | deux qualificatifs concurrents pour la même méthode | **purposive** comme terme méthodologique (avec glose à la 1ʳᵉ occurrence) ; « illustrative » admissible une fois comme adjectif d'usage, pas dans les titres/captions |
| reference evidence / evidence reference | « reference evidence » ×4 (abstract, §3.1, Table 1) ; « evidence reference » ×3 (§1 position, Case A) | inversion aléatoire | **reference evidence** (forme de la définition §3.1) |
| author-coded / single-coded / coded in one author pass | abstract + captions (author-coded) ; §1 l. 149 et §7.2 l. 598 (single-coded) ; §4.1 (one author pass) | trois formulations du même protocole | **author-coded** partout ; « coded in a single pass by one author » une seule fois en §4.1 |
| epistemic presentation (ρ_p) / Required stance | texte partout / en-tête Table 2 uniquement | « stance » n'est jamais introduit — résidu de la version 18/07 | **Epistemic presentation** en en-tête de Table 2 (ou introduire « stance » comme synonyme en §3.1 — première option plus simple) |
| grounded only / no invention | Table 1 & texte / Figure 1 uniquement | même mode m_p sous deux noms | **grounded only** dans la Figure 1 |
| $O_p,\sigma_p,K_p$ vs $O,\sigma,K$ | texte (avec _p) vs Fig. 1, Tables 1–3 (sans) | convention de suppression d'indice jamais énoncée (elle existait au 18/07 et a disparu) | réintroduire en §3.1 : *"We drop the subscript $p$ when the prompt is clear from context."* |
| $z_{\sigma_p}$ / z | §3.3, App. A / boîte latérale Fig. 2 (« z = 1 ») | notation raccourcie non déclarée | soit $z_{\sigma_p}$ en Fig. 2, soit couvert par la convention d'indice ci-dessus |
| $\mathcal C^{*}$, ≡ | §3.3 display | jamais définis | définir avant le display (voir B3) |
| canonical proposition / canonical claim set | 11 occurrences (abstract → agenda) | jamais défini formellement | une phrase de définition à la première occurrence (§2 renvoi, §3.3 définition) |
| SUP | §3.4, Fig. 2, Tables 1/3 | jamais développé en toutes lettres (« supported ») | à la première occurrence : *"the claim is supported (SUP)"* |
| two-stage consistency | §3.3, une occurrence | nom d'un concept jamais explicité (quelles sont les deux étapes ?) | soit expliciter (extraction → canonicalisation/matching), soit supprimer le nom |
| DelusionQA | Table B.1 | le dataset s'appelle DeLucionQA (la bib imprime « DelucionQA ») | **DeLucionQA** (table + .bib) |
| HaluQA | Table B.1 | le benchmark de Cheng et al. 2023 s'appelle HalluQA | **HalluQA** (à vérifier contre le papier source) |
| WritingBench / Writingbench | Table B.1 / référence bib | casse incohérente | **WritingBench** (corriger le titre dans le .bib) |
| RealTimeQA / RealTime QA | Table B.1 / référence bib | espace incohérente | suivre la graphie du papier source (« RealTime QA ») |
| licensed divergence / licensed departures | abstract (« licensed-divergence verdict ») / §4.3 (« preserve licensed ones ») | variation acceptable (verdict vs départ) — signalée pour décision consciente | garder, c'est cohérent sémantiquement |
| truth contract | partout (0 occurrence de « task contract ») | — | ✔ déjà unifié (acquis de la passe du 18/07 — ne pas régresser) |

---

## G. Répétitions et complexité superflue

Passages redondants, par ordre de coût :

1. **« σ ne licencie pas de contenu »** — ~6 occurrences : abstract (l. 75), §1 position (implicite l. 108–110), §3.2 fin (« $\sigma_p$ does not authorize new content »), caption Fig. 3, §7.1 (« satisfying $\sigma_p=2$ does not excuse a fabricated proposition »), conclusion. Garder trois : abstract, §3.2 (l'endroit de la définition), caption Fig. 3 (autonomie de la figure). Supprimer la reprise de conclusion ; celle de §7.1 est défendable car elle inverse la direction (compliance n'excuse pas la fabrication).
2. **Sensibilité des vérifieurs à la forme** — 3 occurrences quasi équivalentes : §2 dernier ¶ (« The missing bridge… »), §3.2 dernier ¶ (« Claim extractors, entailment systems, and semantic metrics may react differently… »), §4.2 (« claim decomposition, natural-language inference, and semantic similarity may all depend on the surface realization »), avec les mêmes citations (chen_menli, aynetdinov) en §3.2 et §4.2. Garder §2 (positionnement) et §4.2 (où le point devient une hypothèse de mesure) ; réduire §3.2 à une phrase avec renvoi.
3. **Caveat « purposive / single-coded / pas de prévalence »** — 4 occurrences : §1 « Evidence and scope », §4.1 (deux phrases), §7.2, intro App. B. Garder §4.1 (l'endroit méthodologique) et §7.2 (limitations) ; réduire §1 et App. B à une proposition subordonnée chacun.
4. **« frame dependence, not a same-proposition… »** — caption Fig. 1 + Case B, quasi verbatim. Garder la caption ; en Case B, une phrase suffit (« as in Figure 1, the contextualized propositions differ »).
5. **§3.4 vs Appendix A** — duplication assumée de V(c|p). Acceptable pour CL (le corps doit rester autonome) ; ne rien couper, mais s'assurer que toute future modification touche les deux.

Estimation de réduction sans perte : ~8–10 % du corps (≈ 350–400 mots), concentrés sur §1 (Evidence and scope), §3.2 fin, §3.3 (display ≡ une fois 𝒞* défini), Case B, conclusion. Aucune section n'est sous-développée ; aucune coupe structurelle n'est nécessaire.

---

## H. Checklist finale de révision

### Obligatoire avant soumission

- [ ] Corriger `\ref{app:mapping}` → « Appendix B » (rendu actuel : « Appendix 8 », p. 8 et 11)
- [ ] Corriger le double marqueur d'affiliation (« ¹ ¹INSA », « ² ²Alteca ») — retirer les `$^{1,2}$` manuels de `\affilblock`
- [ ] Table 1 : « SUP+SV » sur une ligne (supprimer le `\shortstack` mal aligné)
- [ ] Bibliographie : tronquer `srivastava_beyond_2023` (BIG-Bench) avec `and others` (~2,5 pages gagnées)
- [ ] Bibliographie : compléter les 5 entrées sans venue (`narayan_xsum_2018`, `sun_hallucinating_2024`, `pauli_mind_2025`, `lai_multidimensional_2023`, `banerjee_does_2025`) et purger « Version Number: 1 », « version: 1 », « Number: 5 »
- [ ] Conclusion : re-scoper « in current evaluation resources » → « in the resources we examined » (D13)
- [ ] Définir 𝒞*, ≡ et « canonical proposition » ; expliciter ou supprimer « two-stage consistency » (B3)
- [ ] Table 2 : en-tête « Required stance » → « Epistemic presentation »
- [ ] Figure 1 : « K = no invention » → « K = grounded only »
- [ ] Tables B.1 : DeLucionQA, HalluQA, WritingBench (noms exacts des ressources)
- [ ] D1 (« retains ») et D3 (agentivité) — les deux vraies fautes d'idiome

### Fortement recommandé

- [ ] Unification terminologique complète (section F) : worked cases, purposive, reference evidence, author-coded
- [ ] Abstract : règle avec cas contradicted (D14) + regroupement des phrases σ (D4)
- [ ] §2 : « not based on value alone » → « does not rest on value » (D5) + renvois « (Section 3) » pour les termes utilisés avant définition
- [ ] §3.1 : expliciter que les trois modes m_p sont ceux considérés dans le papier ; réintroduire la convention de sous-indice
- [ ] §3.3 : scinder le dernier paragraphe (exigence évaluateur vs capacité modèle → §7.1)
- [ ] Remplacer « off-diagonal » (D10)
- [ ] Fig. 2 : phrase de caption sur le chemin contradicted
- [ ] Coupes de répétition (section G, items 1–4)
- [ ] Bibliographie : substituer les versions publiées aux préprints (HaluEval, FActScore, FRANK, MacGyver, RealTime QA, Hallucinating Narratives…) — vérifier chaque entrée
- [ ] CNN/DailyMail : citer la variante summarization (Nallapati 2016 / See 2017) ou recoder la ligne

### Polissage optionnel

- [ ] Fig. 3 : encadrer la cellule « Strongly marked factual content » + phrase de caption la reliant à §4.2
- [ ] Tableau de notation (16 symboles) en début d'annexe A
- [ ] D6–D9, D11, D12 (idiome fin)
- [ ] Abstract : viser ~190 mots en fusionnant les phrases K_p et H
- [ ] Case B : dédoublonner avec la caption de Fig. 1
- [ ] Glose de « purposive » à la première occurrence

---

## I. Verdict de maturité de publication

**Verdict : requires moderate revision** (révision modérée requise).

Justification. L'argumentation, la structure et la calibration des claims sont au niveau attendu d'un position paper CL : thèse précise énoncée tôt, règle de décision explicite et formalisée, evidence honnêtement bornée à son échantillon, agenda actionnable — le critère « rigorous reasoning supported by persuasive evidence » du track est satisfait sur le fond. Ce qui empêche « ready after minor language editing » : trois défauts de rendu immédiatement visibles (références « Appendix 8 », affiliations doublées, alignement SUP+SV), une bibliographie qui serait renvoyée en l'état (BIG-Bench in extenso, cinq entrées orphelines, bruit de métadonnées), un noyau notationnel de §3.3 (𝒞*, ≡, « canonical ») non défini alors qu'il porte la contrainte de robustesse stylistique, et une phrase de conclusion dont la portée contredit la calibration du reste du papier. Tous ces points sont corrigeables en une passe courte (une à deux journées), sans réécriture structurelle : aucune section n'est à refondre, aucune figure à refaire. Après cette passe, le manuscrit sera prêt.



