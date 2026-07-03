# Plan de modification et reformulation — post-retour encadrant (2026-07-02)

Compagnon de `review_CL_position_2026-07-02_v2_post_encadrant.md`. Cible : `main_position_personal.tex`. Trois chantiers : **C** (must-fix contenu, hérités de la review), **A** (migration terminologique « contrat »), **B** (simplification de la langue), puis abstract, mécanique, build. Ordre strict : C → décisions → A → B → abstract → mécanique → build. Raison de l'ordre : C est indépendant du lexique ; A est un remplacement global qui doit passer **avant** B pour que la reformulation des phrases se fasse directement dans le vocabulaire final.

**Principe non négociable** : aucune passe ne modifie un claim, un hedge, un chiffre ou une citation. « Suggest » ne devient jamais « show ». La simplification vise la forme, pas la calibration.

---

## 0. Pourquoi adopter la proposition de l'encadrant (et où elle doit être ajustée)

Trois faits jouent pour la migration :

1. **Le papier utilise déjà la métaphore du contrat.** « Contract » apparaît ~30 fois, et TR est *défini* comme « the task-specific contract » (l.185, 287) ; une section s'appelle « What the contract is not » (l.171). Le manuscrit fait donc tourner deux métaphores en parallèle (regime ~105 occurrences + contract ~30). La migration n'ajoute pas un lexique : elle en supprime un.
2. **Les nouveaux termes s'auto-définissent.** « Licensed/unlicensed divergence », « form license », « content license » se comprennent à première lecture et se répondent entre eux — exactement le défaut que l'encadrant pointe sur « truth-regime », « stylistic latitude », « productive divergence ». Bonus : « truth regime » a une résonance foucaldienne (« régime de vérité ») qui peut égarer une partie du lectorat CL, tandis que « contract » s'adosse naturellement au contrat conversationnel gricéen.
3. **Pas de collision.** Vérifié sur alphaXiv le 2026-07-02 : ni « truth contract » ni « licensed divergence » n'est un construct établi en évaluation hallucination/créativité.

Un ajustement est nécessaire sur **PD → LD** : dans le cadre actuel, PD = licence + stance + utilité, et l'arbre a une sortie « benign » (licencié mais inutile). « Licensed divergence » au sens strict couvre licence + stance seulement. Deux options en T2 ci-dessous ; la recommandation transforme ce problème en amélioration.

---

## 1. Décisions à trancher avec les co-auteurs AVANT tout édit

| # | Décision | Options | Reco | Conséquence si non tranchée |
|---|----------|---------|------|------------------------------|
| T1 | Adopter le lexique contrat globalement | (A) oui, une passe complète ; (B) non, garder les termes et ne faire que la simplification B | **A** | Deux lexiques coexistants = pire que l'état actuel |
| T2 | Sémantique de LD | (A) **LD = verdict dur** (license-pass + stance-pass) ; l'utilité devient un **score gradué** reporté sur les LD ; « productive » ne survit qu'en qualificatif informel (« useful, i.e. productive, licensed divergence ») + 1 phrase conservant le lien littérature (`parry_team_2023`, `lingard_pulling_2017`) ; (B) LD = simple renommage, on garde les 3 conditions dans le label | **A** | (A) est déjà ce que dit l'encadré l.338–343 (« the first two are constraint-like and checkable; the third is evaluator-dependent »). Il neutralise l'objection « votre verdict dépend d'un jugement subjectif » et simplifie l'arbre : le test 5 devient un score, la sortie « benign » devient « LD à utilité faible ». (B) est plus rapide mais garde le défaut. |
| T3 | σ : « form license » | (A) oui + **phrase de garde** obligatoire ; (B) garder « stylistic latitude » ; (C) compromis « form latitude » | **A** | Sans la garde, un reviewer demandera « que se passe-t-il quand la form license est violée ? ». Réponse à insérer : violer la forme demandée relève de l'instruction-following (déjà séparé, l.742), pas de la vérité ; σ reste l'axe d'invariance de la mesure, pas un troisième axe de verdict (l.303–306 le disent déjà — les conserver telles quelles, reformulées). |
| T4 | O : « content oracle » | (A) première mention « content oracle », ensuite « oracle » ; (B) statu quo | **A** (coût nul, aligne O du côté contenu avec κ) | — |
| T5 | Titre | (A) « Hallucination Is Relative: A Position on Truth-Contract-Aware Evaluation of LLM Divergence » ; (B) « Hallucination Breaks the Contract: Truth-Contract-Aware Evaluation of LLM Divergence » ; (C) garder « Truth-Regime » au titre seulement | **A** (continuité minimale) ; jamais (C) — un titre qui contredit le corps est le pire cas | Aligner ensuite README + `active-paper-context.md` |
| T6 | Notation mathématique | (A) `TC(p)=(O,σ,κ)` partout ; (B) garder `TR(p)` | **A** (l'expansion de `\TR` passe de `\textsc{TR}` à `\textsc{TC}` ; symboles σ, κ, O inchangés — figures et tables restent valides) | — |

Règle projet respectée : les **noms de macros** `\TR`, `\PD`, etc. ne changent pas dans le source ; seule leur expansion imprimée change. Diff source minimal, historique Git lisible.

---

## 2. Phase C — must-fix contenu (avant migration ; rédigés ici dans le lexique actuel, la passe A les balaiera)

**C1 — Arithmétique de l'Annexe B (l.824).** Donner le plan exact : nombre de sujets Wikipédia, structure du croisement (formats × niveaux × longueurs × sujets), cellules déséquilibrées le cas échéant, générations échouées exclues avec leur compte (12 501 − 12 469 = 32 ?), assignation des 5 températures (croisées ou par run). Si les comptes exacts ne peuvent pas être reconstitués depuis les logs d'expérience : retirer les nombres précis et écrire des ordres de grandeur explicitement approximatifs. Ne pas soumettre l'état intermédiaire.

**C2 — Disjonction « property of the verifier » (l.557–558 et l.827) + 5ᵉ caveat (l.943).** Texte proposé (à adapter) :

> *l.557–558* : « In principle, σ changes no proposition. The measured increase therefore admits two readings: either the verifier misreads marked form as unsupported content, or the styled outputs really add unsupported propositions — an effective invention license the model infers from the creative instruction, which our framework predicts. A binary verifier with no licensed-divergence label cannot separate the two. That missing instrument is precisely what our agenda specifies. »
> *5ᵉ caveat (B.3)* : « Fifth, the style instruction may itself shift the effective license the model infers, so part of the increase may be real unsupported content rather than verifier error; separating the two requires the claim-level labels this paper argues for. »

**C3 (si le temps le permet) — Ancrer Case A** sur une annotation XSum publiée de Maynez et al. (item citable par ID). Un seul cas réel suffit.

---

## 3. Phase A — migration terminologique (une session, une passe, un grep final)

### 3.1 Table de migration

| Terme actuel | Nouveau terme | Occurrences approx. | Notes |
|---|---|---|---|
| truth regime (\TR) | **truth contract** (\TR imprime `TC`) | ~105 « regime » + 44 `\TR` | Inclut titre, §3 titre (« ...Ignores the Truth Contract »), §2.1 titre, Step 0 de l'arbre, colonne « Regime » de Table 2 (→ « Contract »), caption Fig. 2 (« Canonical truth contracts ») |
| regime-aware / -conditioned / -relative | contract-aware / contract-conditioned / contract-relative | inclus ci-dessus | Remplacer les composés **avant** le mot seul |
| regime-agnostic | **contract-blind** | idem | Plus simple et plus parlant que « contract-agnostic » |
| « on the regime's terms » | « as the contract requires » | ~6 | Arbre (test 4), decision rule, Annexe A, §2 |
| productive divergence (\PD) | **licensed divergence (LD)** (\PD imprime `LD`) | 9 en toutes lettres + 55 `\PD` | Selon T2-A : LD = verdict dur ; utilité = score. Garder UNE phrase : « When licensed divergence is also useful we may call it productive, echoing uses of the term outside NLP \citep{parry_team_2023, lingard_pulling_2017}. » |
| hallucination (\Hallu) | hallucination, **définie** « unlicensed divergence — a breach of the truth contract » | déf. l.323–325 | Le mot du domaine reste ; la définition par contraste fait le travail pédagogique |
| stylistic latitude (σ) | **form license** (σ) | ~28 « latitude » | Selon T3-A + phrase de garde (§1). σ low/high inchangé |
| invention license (κ) | **content license** (κ) | ~16 | κ 0/1/2 inchangé |
| oracle (O) | **content oracle** à la première mention, « oracle » ensuite | 1 édit | Selon T4-A |
| « benign » (sortie arbre) | « LD, low usefulness » | arbre + l.515 + Annexe A | Selon T2-A ; le test 5 de l'arbre devient une couche « usefulness score », plus un gate |

### 3.2 Procédure

1. Modifier les expansions de macros (l.55–60) : `\TR` → `\textsc{TC}`, `\PD` → `\textsc{LD}` ; commentaires mis à jour.
2. Remplacements texte, **composés d'abord** (regime-aware → contract-aware, etc.), puis « truth regime » → « truth contract », puis « regime » seul → « contract » avec relecture de chaque occurrence (certaines phrases voudront « the contract » vs « a contract »).
3. Zones sensibles à traiter à la main : abstract ; Table 1 (titres de cartes, reading rule) ; Step 0 et labels de l'arbre (l.357–415) ; captions Fig. 2 et Table 2 ; Annexe A ; définitions §2.
4. Ajuster la sémantique T2-A : encadré l.338–343 (reformuler : le verdict = deux gates ; l'utilité = score reporté avec désaccord), test 5 de l'arbre (étiquette « usefulness score » au lieu d'un gate binaire vers benign/PD), l.514–516, Table 3 (colonne « Regime that yields PD » → « Contract that yields LD »), §5 (« Operationalizing PD » → « Operationalizing LD and its usefulness score »), verdicts §6.1 (« insufficient-PD » → « insufficient-LD », toujours marqué output-level).
5. Insérer les deux phrases de garde : (i) σ/instruction-following (fin de la définition de σ) ; (ii) « relative = verdict » (fin de la thèse, l.188) : « The contract relativizes the evaluative verdict, not truth itself: what is true does not change with the prompt; what counts as a violation does. »
6. **Contrôle final** : `grep -ci 'regime' main_position_personal.tex` → 0 ; `grep -ci 'latitude'` → 0 ; « productive divergence » → 1 (la phrase-pont) ; « licence » → 0. Rebuild.

### 3.3 Risques

- **Migration partielle** = état pire que l'actuel. Ne pas commencer la passe si elle ne peut pas être finie dans la session.
- T2-A change légèrement la sémantique de l'arbre → revalider Figure 1, Annexe A et Table 3 dans une passe dédiée avant rebuild.
- L'Annexe B utilise « creativity levels » pour une manipulation de σ : renommer « style-emphasis levels » dans la même passe (cohérent avec C2).

---

## 4. Phase B — simplification de la langue (après A)

### 4.1 Règles (retour encadrant, opérationnalisé)

- **R1** : une idée par phrase ; casser toute phrase à 3+ subordonnées ; viser ≤ ~25 mots en moyenne.
- **R2** : SVO par défaut ; limiter les incises entre tirets à une par paragraphe.
- **R3** : vocabulaire simple quand un équivalent existe (hit-list ci-dessous) ; en cas de doute, préférer le mot que Linguee/COCA classe fréquent.
- **R4** : ne PAS toucher aux termes de l'art : faithfulness, grounding, entailment, hedge, atomic claims, NLI, foregrounding (glosé l.299), pretended assertion (Searle). La simplification vise l'ornement, pas la technicité.
- **R5** : ne PAS affaiblir ni renforcer un hedge (« suggest » ≠ « show » ; « can » ≠ « does »).
- **Test de sortie** : l'encadrant relit abstract + §1 + définitions §2 ; chaque terme doit passer à première lecture.

### 4.2 Hit-list vocabulaire (lignes de la version actuelle, à re-localiser après la passe A)

| l. | Actuel | Proposé |
|----|--------|---------|
| 155 | « A paradox sits underneath this effort. » | « This effort hides a paradox. » |
| 166 | « Even the closest recent steps stop short of the contract. » | « Even the closest recent work does not model the contract. » |
| 168, 541, 649 | « reads that label off the output's… scores » | « derives that label from the output's… scores » |
| 176 | « The irreducible component is κ » | « κ is the one component nothing else can replace » |
| 188, 282, 511, 943 | « conflates / conflated » | « confuses / confused » (ex. encadrant) |
| 267 | « leave underdetermined » | « cannot decide » |
| 289, 776 | « underdetermine it » | « may not fix it fully » |
| 305 | « nonetheless load-bearing for measurement » | « nonetheless critical for measurement » |
| 332 | « A contrast pins the category down. » | « A contrast makes the category concrete. » |
| 430 | « The two come apart at κ=1. » | « The two differ at κ=1. » |
| 502 | « the load-bearing tension is the dashed cell » | « the important tension is in the dashed cell » |
| 547 | « not an incidental hole » | « not an accident » |
| 553 | « the instructive near-miss » | « the most instructive case » |
| 558, 750 | « brittleness » | « fragility » |
| 646 | « a non-assertoric or inventive move » | « a hedged or inventive move » |
| 656 | « compounds the picture rather than resolving it » | « adds to the problem rather than solving it » |
| 785 | « by accident of protocol » | « depending on which protocol happens to be used » |

### 4.3 Phrases à casser (exemple type fourni pour la première)

À traiter : l.185 (thèse), l.299 (définition σ), l.329 (conditions PD/LD), l.533, l.554, l.768.

Exemple — l.299, actuel (une phrase, ~90 mots, six propositions) → proposé (cinq phrases) :

> « Style is not a single variable but a bundle of co-varying dimensions \citep{kang_style_2021}. It can be transferred while meaning is held fixed \citep{jin_deep_2022}, and the dual operation — moving facts across a fixed style — is equally well defined \citep{balepur_text_2023}. Figurative devices such as metaphor and hyperbole change the form of a claim, not its truth conditions \citep{badathala_match_2023}. Foregrounding, the long-standing notion that marked language stands out against an unmarked background \citep{leech_short_style_1981}, is reliably recognized by readers \citep{vanpeer_stylistics_2020}. This is what lets a graded σ be annotated rather than guessed; formality datasets and style-transfer metrics make the axis measurable \citep{pavlick_empirical_2016, rao_dear_2018, briakou_evaluating_2021}. »

(Une incise tiret conservée, R2 respectée ; citations inchangées ; à dédupliquer avec Pavlick/Osyvokon en phase E.)

---

## 5. Phase D — abstract reformulé (en dernier, dans le lexique final)

Version proposée, raffinée depuis celle de l'encadrant (phrases courtes, claims et hedges strictement inchangés) :

> Hallucination is usually scored as a binary defect: a claim is either supported or it is not. Yet the same unsupported content can be dangerous in a medical answer, harmless in a metaphor, and useful in fiction or ideation. We argue that hallucination should instead be judged against the prompt's truth contract, $\mathrm{TC}(p)=(O,\sigma,\kappa)$. The content oracle $O$ fixes what counts as true. The form license $\sigma$ sets how freely the answer may be phrased. The content license $\kappa$ sets what the answer may claim beyond the oracle. On this view, hallucination (H) is unlicensed divergence: it breaks the contract. Licensed divergence (LD) is divergence the contract permits and the task rewards. The same output can therefore change verdict — H under one contract, LD under another — while its text stays the same. Current hallucination and creativity benchmarks share a blind spot: neither ties its scores to what the prompt licenses. We make this concrete in two ways: an illustrative audit of forty representative benchmarks against $(O,\sigma,\kappa)$, and a claim-level rule that relabels documented outputs as H or LD once their contract is stated. These observations motivate a research agenda for contract-aware evaluation that scores H and LD separately, under explicit oracle and license annotations.

Écarts par rapport au brouillon de l'encadrant, à lui signaler : « the truth contract a prompt — the user — sets up » simplifié en « the prompt's truth contract » (l'attribution à l'utilisateur est traitée dans le corps, l.289–290) ; « switch between H and LD » → « change verdict » (c'est le verdict qui change, pas la sortie) ; « We then point to » → « share a blind spot » conservé du texte actuel ; ajout de « forty » (compte vérifié : 26 + 14 = 40, cohérent avec l.532).

---

## 6. Phase E — mécanique (inchangée depuis la review, + nouveautés)

1. « licence » → « license » (l.362, 496, 499).
2. `κ_agree` → « inter-judge agreement (Cohen's kappa) of 0.756 » (l.943).
3. `\jyear{2025}` → `{2026}` (l.5).
4. Caption Table 1 : « different verdicts across cards » + « insuff. LD » marqué output-level.
5. Coin (σ low, κ=2) Fig. 2 vs lignes SemDis/Verbal Creativity de Table 2 : harmoniser.
6. Redondance intro/§3.3 (FaithQA/HIC-Bench) : réduire l'intro à deux phrases + renvoi.
7. Scoper « never annotated / never graded » (l.532) : « in this sample ».
8. Hygiène `.bib` : compléter ou supprimer les 4 entrées à warnings ; élaguer les entrées non citées pour le dépôt.
9. Dédupliquer `pavlick_empirical_2016` / `osyvokon_pavlick_formality_2016` ; stabiliser `yona_metacognition_2026`.
10. Overfull hbox ×11 (dernier build).

---

## 7. Phase F — build, relecture, logistique CL

1. `make pdf` (variante personal) ; vérifier 0 erreur, citations résolues, Overfull résorbés.
2. Relecture-échantillon par l'encadrant (abstract + §1 + définitions §2) — test de sortie de la phase B.
3. Fichier texte séparé exigé par CL (titre, auteurs, abstract, email de contact) ; catégorie « Position Paper » ; checklist « original submissions » ; option `[manuscript]` vs format demandé.
4. Aligner README, `active-paper-context.md` et titre courant (`\runningtitle`) sur le titre final.

---

## 8. Effort estimé et séquence

| Phase | Contenu | Effort |
|-------|---------|--------|
| C | Annexe B (arithmétique + disjonction + caveat) [+ Case A si temps] | 0,5 j |
| Décisions | T1–T6 avec co-auteurs | 1 réunion |
| A | Migration terminologique + gardes + grep de contrôle | 1 j |
| B | Hit-list + phrases denses | 1–1,5 j |
| D | Abstract | 0,25 j |
| E | Mécanique | 0,5 j |
| F | Build + relecture + logistique | 0,5 j |
| **Total** | | **~3,5–4 j** |

Chemin minimal si T1 = (B) [lexique refusé] : C + B + D (abstract dans le lexique actuel, en gardant la structure en phrases courtes) + E + F ≈ 2,5 j — mais la charge terminologique (critique #3 de la review) reste alors non traitée, et c'est le point que l'encadrant juge bloquant.
