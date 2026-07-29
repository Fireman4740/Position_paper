# Revue de pré-soumission — *Computational Linguistics*, catégorie Position Paper

**Manuscrit évalué :** `main_position.tex` (89 579 octets, 1 277 lignes, PDF de 27 pages, compilé le 29/07/2026 16:23)
**Titre :** *Hallucination Evaluation Should Be Contract-Aware: Separating Unsupported Error from Licensed Divergence*
**Bibliographie :** `references.bib` (111 entrées, 77 clés citées, 0 citation non résolue, 0 `\citetodo`)
**Date de la revue :** 29 juillet 2026

> Note de méthode. Les citations du manuscrit et toutes les reformulations proposées sont en anglais. Les vérifications bibliographiques ont été faites via Crossref et arXiv ; les entrées non vérifiables sont explicitement marquées **[requires verification]**. Les affirmations du manuscrit sans appui probant sont marquées **[evidence needed]**.

---

## A. Évaluation générale

L'article défend une position claire et énonçable en une phrase : *le seul défaut de support probatoire ne devrait pas suffire à déclarer une hallucination ; l'étiquette doit être relative à un contrat de vérité propre à la tâche.* Cette position arrive dès la ligne 71 de l'abstract et est reprise au paragraphe « Our position » de l'introduction. Elle est spécifique, contestable, et l'article énonce lui-même les conditions qui l'affaibliraient — qualité rare dans un position paper.

La contribution la plus solide n'est pas le formalisme mais l'**agenda de recherche** (§5). Les six priorités sont ordonnées en séquence de validation, chacune énonce le problème, la raison de sa pertinence, la tâche de recherche et — point remarquable — la condition de réfutation (« The proposal is weakened if the fields cannot be recovered reliably… »). C'est un agenda exécutable, pas une section de travaux futurs.

La faiblesse principale est que **Γ_p, le champ qui porte toute la charge argumentative, n'est jamais opérationnalisé**. `LD` est définie comme « evidence-unknown ∧ dans Γ_p ∧ conforme à μ_p », et Γ_p est défini comme l'ensemble du contenu que la tâche autorise. « Divergence licite = divergence licite » est vrai par construction. Dans les sept exemples travaillés (Fig. 1, Fig. 2, Tab. 1, Cas B–D), Γ_p est toujours stipulé par les auteurs dans le prompt. Aucun exemple ne traite le cas majoritaire : un prompt réel qui ne dit rien de ce qu'il autorise. L'article déplace la difficulté du niveau de l'énoncé au niveau du contrat sans montrer que le second est plus tractable que le premier.

S'y ajoutent deux défauts vérifiables et immédiatement corrigibles : une **incohérence numérique** entre le texte (« twenty-four strict factuality and faithfulness resources », l. 777) et les tableaux d'annexe (20 lignes codées *strict grounding*, lignes 1–20) ; et un **vocabulaire de codage** annoncé comme comportant trois codes (§4.1, l. 768) alors que les tableaux en emploient une vingtaine, dont aucun n'est défini nulle part — malgré la phrase l. 770 : « Appendix~\ref{app:mapping} makes this distinction auditable by … defining every code used in the tables. » L'annexe ne définit aucun code.

**Adéquation au support :** plausible mais pas forte. Le sujet intéresse le lectorat de *CL*, mais l'article traite un objet linguistique (engagement assertif, modalité épistémique, cadre fictionnel) avec un outillage presque exclusivement issu de l'évaluation NLP. Il se lirait aujourd'hui davantage comme un article ACL/EMNLP long.

**Maturité pour soumission :** non. Révision majeure requise avant envoi.

*(≈ 300 mots)*

---

## B. Recommandation

**Requires major revision before submission.**

**Confiance : 4/5.** Confiance élevée sur les défauts vérifiables (incohérence numérique, codes non définis, équations non numérotées, métadonnées obsolètes, quasi-tautologie de `LD`). Confiance moindre (d'où 4 et non 5) sur l'appréciation de l'originalité : la frontière entre « règle de composition explicite » et « renommage de la fidélité conditionnée à la tâche » est un jugement que deux relecteurs compétents peuvent trancher différemment.

---

## C. Notes détaillées

| Critère | Note | Justification |
| --- | ---: | --- |
| Adéquation à *Computational Linguistics* | 3/5 | Sujet central pour le lectorat, mais la profondeur proprement linguistique est mince : une seule référence de sémantique/pragmatique mobilisée (Searle 1975). `stalnaker_assertion_1978`, `grice_logic_1975`, `clark_using_1996` sont présents dans `references.bib` mais **jamais cités** — trace d'un axe abandonné qu'il faut réactiver. |
| Force de la position | 3/5 | Position explicite, précoce, unique et falsifiable. Mais sa prémisse la plus contestable (Γ_p est identifiable) est renvoyée à l'agenda plutôt que défendue. |
| Importance pour le domaine | 4/5 | L'évaluation de l'hallucination est un goulot d'étranglement reconnu ; la distinction entre erreur et divergence autorisée a des conséquences directes sur la conception des benchmarks. |
| Originalité | 3/5 | La règle de composition explicite est un incrément réel mais modeste. `E ∈ {entailed, contradicted, unknown}` reprend l'axe intrinsèque/extrinsèque de Ji et al. ; μ_p recoupe la littérature sur le hedging et l'évidentialité ; σ_p gonfle la nouveauté apparente sans entrer dans la règle. |
| Rigueur du raisonnement | 3/5 | Modalisation exemplaire et distinctions bien tenues, mais deux failles logiques non traitées : la quasi-tautologie de `LD` et l'hétérogénéité de `H` (§4 ci-dessous). |
| Qualité des preuves | 2/5 | Un seul cas documenté (Cas A, qui reproduit une distinction déjà établie par Maynez et al.) ; quatre cas construits ; mapping auto-codé, codeur unique, aucun accord inter-annotateurs, codebook non publié. |
| Positionnement dans la littérature | 3/5 | Couverture NLP solide et à jour. Absente : sémantique de l'assertion et de la présupposition, typologie de l'évidentialité, pragmatique du discours fictionnel au-delà de Searle. |
| Clarté conceptuelle | 3/5 | Définitions du §2 soigneuses et stables. Mais le vocabulaire de codage de §4.1 ne correspond pas à celui des tableaux B.1–B.3, et « hallucination » circule entre deux sens (phénomène / étiquette `H`). |
| Utilité opérationnelle | 2/5 | Aucune règle d'agrégation, aucun codebook, aucune mesure de fiabilité, aucune procédure d'inférence de Γ_p. En l'état, la règle ne peut produire aucun score. |
| Agenda de recherche | 4/5 | Meilleure section de l'article : séquence de validation ordonnée, conditions de réfutation explicites pour chaque priorité. |
| Organisation | 4/5 | Progression efficace ; placer le cadre (§2) avant les travaux connexes (§3) est justifié et bien exécuté. |
| Anglais académique | 4/5 | Prose directe et propre. Une seule phrase ≥ 38 mots dans tout le corps. Orthographe américaine cohérente, aucune abréviation latine en prose courante. Répétition formulaire lourde (« prompt–response style alignment » : 18 occurrences). |
| Figures et tableaux | 2/5 | Fig. 2 surchargée ; Fig. 3 invite à une sur-lecture quantitative ; Tab. 1 n'est pas un tableau ; les tableaux d'annexe emploient des codes non définis ; couleurs rouge/vert incohérentes entre Fig. 1 et Fig. 2. |
| Maturité globale pour soumission | 2/5 | Deux erreurs factuelles internes vérifiables, non-conformité de format (équations), métadonnées de soumission contredisant le PDF. |

---

## D. Risques de rejet éditorial avant relecture

### D1. Le fichier de métadonnées de soumission contredit le manuscrit — **sévérité : critique**

`CL_submission_metadata.txt` (daté du 05/07/2026) contient :
- un **titre différent** : « Hallucination Is Relative: A Position on Truth-Contract-Aware Evaluation of LLM Divergence » vs. le titre du PDF ;
- un **abstract entièrement obsolète** décrivant un formalisme abandonné : « TC(p) = (O, sigma, kappa) », « content oracle O », « form license sigma », « content license kappa ». Le manuscrit actuel utilise `TC(p) = (O_p, Γ_p, μ_p, σ_p)` avec quatre champs et une sémantique différente : σ n'y est plus une *license* mais une variable contextuelle qui n'autorise rien ;
- une affirmation contredite par le manuscrit : « an illustrative audit of forty representative benchmarks », alors que le manuscrit insiste sur « purposive » et « not representative ».

*CL* exige que le titre, les auteurs et l'abstract soient fournis dans un fichier texte séparé. Un éditeur qui compare ce fichier au PDF y verra deux articles différents. **Correction :** régénérer intégralement `CL_submission_metadata.txt` à partir du manuscrit actuel avant toute soumission.

### D2. Incohérence numérique dans le cœur empirique — **sévérité : élevée**

> **Original (l. 777) :** "In our coding, the twenty-four strict factuality and faithfulness resources generally fix reference evidence…"

Comptage effectué sur les tableaux B.1 et B.2 : le profil *strict grounding* couvre les lignes 1–13 (Tab. B.1) et 14–20 (Tab. B.2), soit **20 ressources**. La Figure 3 confirme : cluster « Factual QA and reasoning » = 14 entrées, cluster « Summarization / Faithfulness » = 6 entrées, total 20. Les lignes 21–22 (*bounded hypothesis*) et 23–26 (*heterogeneous suites*) sont comptées séparément dans le texte lui-même.

**Correction :** remplacer « twenty-four » par « twenty », ou expliciter que les quatre suites hétérogènes ont été agrégées — auquel cas la phrase suivante devient fausse. Vérifier ensuite les totaux 20 + 2 + 4 + 9 + 5 = 40.

### D3. Promesse non tenue sur la définition des codes — **sévérité : élevée**

> **Original (l. 768) :** "The appendix uses \emph{implicit} when a value is inferred from task design, \emph{partial} when only part of a component is represented, and \emph{not scored} when the protocol does not separately evaluate that field."
> **Original (l. 770) :** "Appendix~\ref{app:mapping} makes this distinction auditable by listing the resource-level profiles and defining every code used in the tables."

Comptage des codes réellement employés dans les tableaux B.1–B.3 :
- colonne *Style σ* — 6 codes : `not controlled` (27), `not controlled or n/a` (6), `requested or evaluated; not isolated` (4), `mixed; not isolated` (1), `requested or evaluated; mixed` (1), `scored; not claim-controlled` (1) ;
- colonne *Γ* — 13 codes : `inferred empty` (20), `implicit story frame` (3), `implicit task frame` (3), `task constraints` (3), `implicit ideation frame` (2), `subtask-specific` (2), et sept codes à occurrence unique ;
- colonne *μ* — 2 codes : `not scored` (20), `not separated` (20).

L'annexe B ne définit **aucun** de ces codes. Le mot *implicit* annoncé n'apparaît que dans des syntagmes composés ; *partial* apparaît dans trois cases ; *not scored* est employé mais jamais défini sur place. **Correction :** ajouter en tête de l'annexe B un glossaire exhaustif des codes, ou réduire réellement le schéma aux trois codes annoncés et recoder les 40 lignes en conséquence.

### D4. Équations non numérotées — **sévérité : modérée mais certaine**

Le manuscrit contient quatre équations en display, toutes introduites par `\[ … \]` : la définition de `TC(p)` (l. 303), la relation probatoire `E(c*,O_p)` (l. 395), la règle `V(c*|y,p)` (l. 405), la condition de stabilité en annexe A (l. 1139). `\begin{equation}` n'apparaît **zéro fois**. Les consignes de style de *CL* demandent que les équations et les exemples formels soient numérotés et référençables.

**Correction :** convertir les quatre en `equation` / `align`, puis remplacer les renvois en prose (« Then », « the desired stability condition is ») par des références numérotées, par exemple : "Equation~(3) assigns one of three labels to each canonical claim."

### D5. Mots-clés absents — **sévérité : faible mais bloquante à la soumission**

Aucun mot-clé dans le manuscrit ; les sept mots-clés du fichier de métadonnées appartiennent à l'ancienne version (« truth contract » y figure, mais pas « licensed divergence », ni « claim-level evaluation », ni « permission scope »). *CL* demande 5 à 10 mots-clés dans les commentaires à l'éditeur.

**Liste proposée :** hallucination evaluation; claim-level evaluation; factuality; faithfulness; licensed divergence; truth contract; epistemic marking; benchmark design; natural language generation evaluation; computational creativity.

---

## E. Cinq révisions prioritaires

### E1. Opérationnaliser Γ_p sous sous-spécification, ou déclarer le cadre inapplicable dans ce cas

- **Localisation :** §2.2, paragraphe « Permission scope (Γ_p) », l. 322–326 ; à compléter par une nouvelle sous-section §2.6.
- **Problème :** Γ_p est stipulé dans tous les exemples. Or la majorité des prompts réels — ceux qui produisent effectivement les hallucinations que le domaine cherche à mesurer — ne déclarent ni portée de permission ni exigence de marquage. Le cadre est démontré uniquement sur des cas où la difficulté a été retirée à l'avance.
- **Pourquoi c'est décisif :** sans procédure d'inférence, l'annotateur reconstruit Γ_p *a posteriori* à partir de l'étiquette qu'il juge appropriée. La règle devient alors une reformalisation du jugement, non une contrainte sur lui. C'est l'objection qui tuera l'article en relecture.
- **Révision concrète :** ajouter une sous-section « Contract inference under underspecification » comportant (i) une hiérarchie de contrats par défaut (contrainte système/sécurité/domaine > requête explicite de l'utilisateur > convention de genre > défaut factuel strict `Γ_p = ∅`) ; (ii) **un cas travaillé supplémentaire dans lequel le prompt est silencieux**, montrant comment la hiérarchie produit Γ_p ; (iii) une quatrième issue de la règle. Formulation proposée :

  > "When the task context does not determine Γ_p or μ_p, the evaluator reports the claim as **contract-indeterminate** and records the competing readings, rather than defaulting to \Hall. Contract indeterminacy is a property of the task specification, not of the response, and should be reported as a separate rate alongside the claim-label distribution."

- **Bénéfice attendu :** transforme la plus grande vulnérabilité en contribution diagnostique — le taux d'indétermination contractuelle devient une mesure de la sous-spécification des benchmarks existants, mesurable dès la Priorité 1 de l'agenda.

### E2. Désagréger l'étiquette `H`

- **Localisation :** §2.5, règle `V(c*|y,p)`, l. 405–416 ; conséquences dans le §6.1.
- **Problème :** « `\Hall` otherwise » agrège trois situations distinctes : (a) claim contredit par O_p ; (b) claim inconnu de O_p et hors de Γ_p ; (c) claim inconnu, **dans** Γ_p, mais non marqué comme μ_p l'exige. Le cas (c) est une faute de présentation épistémique sur un contenu que la tâche autorise ; il reçoit la même étiquette qu'une fabrication médicale.
- **Pourquoi c'est décisif :** l'article argumente précisément contre l'agrégation de phénomènes distincts sous une étiquette unique (« No single rate should conflate evidential support, contractual permission, required epistemic marking… », l. 1077). Sa propre règle fait exactement cela. Un relecteur hostile citera cette phrase contre l'article.
- **Révision concrète :** introduire trois sous-types reportés séparément, sans changer la règle principale :

  > "\Hall\ subsumes three violation types, which should be reported separately: \Hall$_{\text{contra}}$ (contradicted by $O_p$), \Hall$_{\text{scope}}$ (evidence-unknown and outside $\Gamma_p$), and \Hall$_{\text{mark}}$ (evidence-unknown and inside $\Gamma_p$, but not presented as $\mu_p$ requires). The three types differ in what a mitigation must change: \Hall$_{\text{contra}}$ requires better evidence use, \Hall$_{\text{scope}}$ requires better scope adherence, and \Hall$_{\text{mark}}$ requires only a change in epistemic presentation."

- **Bénéfice attendu :** coût rédactionnel faible, gain diagnostique élevé, et cohérence rétablie entre la thèse et le formalisme. Cela renforce aussi la Priorité 5 de l'agenda (les trois sous-types appellent des mitigations différentes).

### E3. Ajouter une démonstration de faisabilité sur des données réelles

- **Localisation :** nouvelle sous-section à la fin de §4, ou §4.3.
- **Problème :** l'article ne contient aucune application de la règle à un item non construit par les auteurs. Le Cas A lui-même n'applique pas la règle : il rappelle une distinction déjà établie par Maynez et al. (2020). L'affirmation centrale de §1 — « An evaluator that literalizes a metaphor … can therefore report a hallucination although the underlying claim remains supported » — reste **[evidence needed]**. `feuer_style_2025` établit que des juges LLM sur-pondèrent le style en *benchmarking d'alignement*, non que les vérificateurs de factualité littéralisent la métaphore.
- **Pourquoi c'est décisif :** un position paper n'a pas à contenir de nouvelles expériences, mais il doit établir que le problème diagnostiqué **existe**. Actuellement, un relecteur peut écrire : « the authors have not shown that any deployed protocol mislabels a single real output. »
- **Révision concrète :** re-étiqueter 25 à 40 items existants (par exemple le sous-ensemble extrinsèque annoté de XSum, ou une trentaine de sorties de HaluEval) sous la règle contractuelle, deux annotateurs, et rapporter : la distribution `SUP`/`H`/`LD`, le taux d'indétermination contractuelle (cf. E1), et les items où l'étiquette contractuelle diverge de l'étiquette d'origine. Présenter cela explicitement comme « a feasibility demonstration, not a validation study », en renvoyant à la Priorité 1 pour l'étude complète. Ajouter, en parallèle, **un exemple réel** de métaphore factuellement exacte mal traitée par un vérificateur disponible (FActScore, ou un modèle NLI) — un seul exemple authentique convertirait une hypothèse en observation motivante.
- **Bénéfice attendu :** neutralise l'objection la plus fréquente aux position papers (« le problème est-il réel ? ») pour un coût de quelques jours d'annotation, sans transformer l'article en article empirique.

### E4. Ancrer μ_p et Γ_p dans la sémantique/pragmatique — condition d'adéquation à *CL*

- **Localisation :** §3 (travaux connexes), nouvelle sous-section §3.6 ; renforts en §2.2.
- **Problème :** l'article manipule des notions proprement linguistiques — engagement véri-conditionnel, cadre discursif, marquage de statut épistémique, assertion feinte — avec une seule référence de pragmatique (Searle 1975), utilisée en passant. Or `references.bib` contient déjà `stalnaker_assertion_1978`, `grice_logic_1975`, `clark_using_1996`, `choi_decontextualization_2021`, tous **non cités**. Le lectorat de *CL* remarquera immédiatement qu'un article sur l'engagement assertif ignore la littérature sur l'assertion.
- **Pourquoi c'est décisif :** c'est le principal facteur qui distingue « article de *Computational Linguistics* » de « article long d'ACL ». μ_p est, en termes linguistiques, une exigence portant sur la **modalité épistémique et l'évidentialité** ; Γ_p est une contrainte sur l'**engagement au sens du common ground**. Le dire explicitement coûte deux paragraphes et augmente sensiblement l'adéquation au support.
- **Révision concrète :** ajouter §3.6 « Assertion, commitment, and epistemic marking », établissant que (i) μ_p formalise, au niveau de l'évaluation, ce que la typologie de l'évidentialité et de la modalité épistémique décrit au niveau de la langue ; (ii) Γ_p correspond à une restriction sur ce que la réponse peut ajouter au common ground ; (iii) le traitement de la fiction s'appuie sur l'assertion feinte de Searle, en distinguant les éléments du texte fictionnel qui engagent encore l'auteur sur le monde réel. Citer `stalnaker_assertion_1978`, `grice_logic_1975`, `clark_using_1996`, et ajouter au moins une référence typologique sur l'évidentialité.
- **Bénéfice attendu :** fait passer l'adéquation au support de « plausible » à « forte », et fournit une justification théorique à μ_p qui manque actuellement.

### E5. Sortir σ_p du tuple, ou justifier positivement sa présence

- **Localisation :** §1 (« Our position »), §2.1, §2.3, §2.5, §6.1, §7 — la clause de non-effet est répétée **au moins sept fois**.
- **Problème :** l'article affirme sans relâche que σ_p n'entre pas dans la règle d'étiquetage : « Style therefore never grants permission for unsupported content » (l. 117), « The style field does not appear directly in this rule » (l. 413), « never authorizes unsupported content » (l. 1117). Un quatrième champ dont la fonction principale est décrite par ce qu'il ne fait pas est une faiblesse structurelle. Un relecteur écrira : « the contract is really a triple plus an experimental covariate ; the fourth field inflates the apparent novelty. »
- **Pourquoi c'est décisif :** cela touche à la fois l'originalité et la clarté conceptuelle, et explique une part notable de la répétition dans le texte.
- **Révision concrète — deux options, la première recommandée :**
  1. Redéfinir `TC(p) = (O_p, Γ_p, μ_p)` et introduire σ_p comme **condition d'évaluation** déclarée à côté du contrat :

     > "We write the truth contract as $\TC(p)=(O_p,\Gamma_p,\mu_p)$: the three fields that jointly determine a claim label. Requested style $\sigma_p$ is declared alongside the contract as an evaluation condition. It conditions claim recovery and is compared with observed style $\widehat\sigma(y,p)$, but it is deliberately excluded from the contract because it can never license content. Separating the two makes the exclusion structural rather than stipulated."

     Cela supprime cinq des sept clauses de non-effet et *renforce* l'argument : l'exclusion devient une propriété de l'architecture, non une règle à répéter.
  2. Conserver le quadruplet, mais fournir un argument positif jamais donné : σ_p appartient au contrat parce que **le contrat est ce que l'évaluateur doit déclarer avant d'observer la réponse**, et que σ_p est nécessaire pour interpréter la réponse. Si cette option est retenue, l'écrire une fois clairement et supprimer les six autres rappels.
- **Bénéfice attendu :** clarté conceptuelle, réduction d'environ 15 lignes de répétition, et originalité mieux calibrée sur ce qui est réellement nouveau (la règle de composition).

---

## F. Carte de la position et des preuves

### F.1 Reconstruction de l'argument

| Élément | Contenu tel que reconstruit |
| --- | --- |
| **Position centrale** | Le seul défaut de support probatoire ne devrait pas déterminer un verdict d'hallucination ; l'étiquette doit être assignée au niveau du claim, relativement à un contrat de vérité propre à la tâche. |
| **Problème** | Les protocoles de factualité pénalisent tout claim non soutenu ; les protocoles de créativité récompensent la nouveauté sans tester les contraintes factuelles. Aucun des deux ne représente explicitement ce que la tâche autorise. |
| **Cible de la critique** | La convention selon laquelle « non soutenu ⇒ hallucination », et l'absence, dans les protocoles, de la portée de permission et de l'exigence de marquage comme variables d'évaluation indépendantes. |
| **Prémisse 1** | Certaines tâches autorisent légitimement du contenu non entraîné par les preuves (fiction, brainstorming, génération d'hypothèses). — *Bien établie.* |
| **Prémisse 2** | Un même énoncé de surface peut exprimer des claims différents selon le cadre discursif. — *Solide, quoique appuyée sur des exemples construits.* |
| **Prémisse 3** | La portée de permission Γ_p est identifiable à partir du contexte de tâche. — **Non défendue ; renvoyée à l'agenda. Point de rupture.** |
| **Prémisse 4** | Le style demandé peut modifier la récupération des claims et donc induire des faux positifs de factualité. — **Explicitement présentée comme hypothèse testable, non comme résultat.** |
| **Prémisse 5** | La combinaison factualité + suivi d'instructions ne détermine pas, à elle seule, l'étiquette d'un claim donné. — *Argumentée l. 129–137 ; concède qu'une rubrique de conformité assez fine encoderait la même distinction.* |
| **Preuves** | (a) Cas A, appuyé sur Maynez et al. (2020) — seul cas documenté ; (b) Cas B–E, construits ; (c) mapping de 40 ressources, auto-codé ; (d) Fig. 1 et Fig. 2, exemples construits. |
| **Implications** | Séparer, dans les rapports d'évaluation, l'étiquette de claim, l'alignement stylistique, la sévérité, l'utilité et l'agrégation. Les mitigations doivent être jugées sur trois axes, pas sur un taux unique. |
| **Agenda** | Six priorités séquencées : annotation du contrat → benchmark factoriel → diagnostic par étape → agrégation → mitigation → généralisation. |
| **Falsifiabilité** | Énoncée : le cadre est affaibli si les champs ne sont pas annotables de façon fiable, si le coût d'annotation est disproportionné, ou si une base factualité + conformité récupère les mêmes distinctions avec une stabilité égale. **C'est une force réelle de l'article.** |

### F.2 Carte des preuves

| Affirmation majeure | Type | Preuve fournie | Qualité de la preuve | Modalisation appropriée | Preuve manquante |
| --- | --- | --- | --- | --- | --- |
| « generation beyond the available evidence is not always an error » (l. 88) | Normative | `franceschelli_creativity_2024`, `jiang_survey_2024`, `sui_confabulation_2024` | Bonne — `sui_confabulation_2024` (ACL 2024) argumente explicitement la valeur des confabulations | Oui | — |
| « Current evaluation protocols do not always represent this distinction explicitly » (l. 95) | Descriptive | Mapping §4 | Faible : codeur unique, échantillon raisonné, aucun accord | Oui (« do not always ») | Double codage + accord |
| « two protocols can assign different labels to identical surface wording » (l. 98) | Causale/conceptuelle | Fig. 1, exemple construit | Illustration, non preuve | Oui (« can ») | Un cas réel de désaccord documenté entre deux protocoles publiés |
| « An evaluator that literalizes a metaphor … can therefore report a hallucination » (l. 103) | Causale | Aucune | **[evidence needed]** — l'article le concède l. 104 | Oui, mais l'affirmation porte une large part de la motivation | Un seul exemple réel avec un vérificateur existant |
| « model-based judges can overweight stylistic form relative to factual content » (l. 364) | Descriptive | `feuer_style_2025` (ICLR 2025) — **vérifiée** | Bonne pour le jugement d'alignement ; **ne couvre pas** la vérification de factualité | Modalisation correcte | Preuve sur les pipelines de factualité proprement dits |
| « no resource represents O_p, σ_p, Γ_p, and μ_p as independently varied evaluation variables » (l. 789) | Descriptive, négative | Tab. B.1–B.3 | Circulaire : l'absence est définie dans le vocabulaire même du cadre, sur un échantillon choisi pour l'illustrer | Modalisée (« In our coding of the mapped sample ») | Condition de falsification : que devrait montrer une ressource pour compter comme couvrante ? |
| « the twenty-four strict factuality and faithfulness resources » (l. 777) | Descriptive, quantitative | Tab. B.1–B.2 | **Contredite par les tableaux : 20, pas 24** | — | Correction du chiffre |
| « Formal work suggests that some errors remain possible for sufficiently general models operating with incomplete evidence » (l. 1091) | Conceptuelle | `kalai_calibrated_2024`, `xu_hallucination_2024`, `banerjee_llms_2024` | Partielle — voir §L | Trop lisse : trois résultats hétérogènes agrégés | Distinguer les trois résultats et leurs hypothèses |

---

## G. Objections majeures et plan de réponse

| Objection du relecteur | Gravité | Le manuscrit y répond-il ? | Meilleure réfutation ou révision |
| --- | --- | --- | --- |
| **1. `LD` est vraie par définition.** Γ_p est *l'ensemble de ce que la tâche autorise* ; « licensed divergence » est donc analytique. Tout le contenu empirique repose sur l'identification de Γ_p, qui est renvoyée à l'agenda. | **Fatale si non traitée.** | Non. §5, Priorité 1, reconnaît la difficulté mais après que le cadre a été présenté comme opérationnel. | Ne pas nier la circularité : l'assumer et montrer où se loge le contenu empirique. Le cadre affirme (i) que Γ_p est *déclarable ex ante*, indépendamment de la réponse observée, et (ii) que des annotateurs indépendants convergent sur Γ_p à partir du seul contexte de tâche. Ces deux affirmations sont substantielles et testables. Implémenter E1 (issue *contract-indeterminate*) et déclarer explicitement : "The framework's empirical content is the claim that $\Gamma_p$ can be fixed before the response is seen, and that independent annotators converge on it. If it cannot, the framework fails." |
| **2. C'est de la fidélité conditionnée à la tâche, renommée.** La fidélité à la source instancie déjà O_p ; l'évaluation de suivi d'instructions couvre déjà Γ_p et μ_p ; les trois valeurs de E reprennent l'axe intrinsèque/extrinsèque de Ji et al. | **Élevée.** | Partiellement — l. 124–137 anticipe l'objection et concède qu'« a sufficiently fine-grained compliance rubric could encode the same distinction ». | La concession actuelle affaiblit l'article sans le protéger. Renforcer en montrant ce que la décomposition permet et que la rubrique agrégée ne permet pas : l'attribution de la faute à un champ précis. Ajouter un exemple où une rubrique de conformité produit le bon score global tout en masquant la source de l'erreur, puis renvoyer à la Priorité 3 (diagnostic par étape) comme test décisif de cette valeur ajoutée. |
| **3. Aucune preuve que le problème existe en pratique.** Un cas documenté, quatre construits, zéro sortie réelle mal étiquetée. | **Élevée.** | Reconnu avec honnêteté (l. 243, l. 954), mais reconnaître n'est pas répondre. | Implémenter E3. Une démonstration de faisabilité sur 25–40 items réels suffit à faire passer l'objection de « fatale » à « limitation admise ». |
| **4. Le mapping est de la circularité déguisée en observation.** Un échantillon raisonné, codé par les auteurs dans le vocabulaire du cadre, produit nécessairement le manque que le cadre comble. Aucun accord inter-codeurs. Les colonnes μ ne prennent que deux valeurs (`not scored`, `not separated`) sur 40 lignes : la variable n'est jamais variée. | **Élevée.** | Partiellement : modalisation abondante (« purposive », « in our coding », « not a prevalence estimate »). La modalisation empêche la sur-généralisation mais pas la circularité. | Publier le codebook et la grille de codage en matériel supplémentaire ; faire coder à l'aveugle 10 ressources par une seconde personne et rapporter l'accord ; énoncer la condition de falsification (« a resource would count as covering all four fields if it… »). Sans cela, réduire la contribution 2 à une simple illustration et ne plus la présenter comme une des trois contributions. |
| **5. `H` agrège trois fautes de nature différente**, en contradiction directe avec la thèse anti-agrégation de l'article. | **Modérée, mais facile à exploiter** — il suffit de citer l. 1077 contre l'article. | Non. | Implémenter E2 (sous-types `H_contra` / `H_scope` / `H_mark`). Coût faible, gain élevé. |
| **6. (secondaire) Le cadre ne produit aucun score.** `R(y|p)` est déclaré problème ouvert ; sans agrégation, aucun benchmark n'est constructible. | Modérée. | Oui, explicitement et en toute honnêteté (§2.5, Priorité 4). | Réponse acceptable pour un position paper. La renforcer en montrant que *fixer* une agrégation prématurément détruirait précisément les distinctions défendues — l'argument est déjà présent l. 1041, il gagnerait à être mis en avant dès §2.5. |

---

## H. Revue section par section

### Abstract (l. 67–80) — 193 mots

**Fonction visée :** énoncer le problème, la position, le dispositif et la testabilité.
**Réussite :** partielle.

Points conformes : 193 mots (fourchette 150–250 ✅), aucune citation ✅, aucune notation mathématique ✅, « position article » explicite ✅, mention de la testabilité ✅.

Problèmes :
1. Trois phrases sur onze sont consacrées à des mises en garde méthodologiques (l. 76–78). Dans un abstract, cela déséquilibre : le lecteur reçoit les limites avant d'avoir saisi l'apport.
2. « A separate measurement question is whether requested style changes how evaluators recover claims » (l. 70) arrive en troisième position, avant l'énoncé de la position, et introduit un second fil dont le lecteur ne comprend pas encore la nécessité.
3. Le résultat négatif principal du mapping (aucune ressource ne croise style fortement marqué et politique strictement factuelle) est absent alors qu'il est le plus concret.
4. « This position article » puis « This position paper » (l. 246) : incohérence *article* / *paper*.

**Éléments manquants :** le résultat négatif spécifique du mapping ; une phrase disant ce qui change si la position est acceptée.

**Abstract révisé proposé (224 mots) :**

> Hallucination evaluation usually treats an unsupported or contradicted claim as an error. This convention suits factual question answering, but it becomes incomplete when a task explicitly permits conjecture, hypotheses, or fictional invention. This position article argues that evidential support alone should not determine a hallucination verdict, and that the verdict should instead be assigned at claim level under a task-specific truth contract. The contract states three decision fields: the reference evidence against which a claim is checked, the permission scope within which evidence-unknown content may be introduced, and the epistemic marking that such content must carry. These three fields assign each recovered claim one of three labels: supported, hallucination, or licensed divergence. Requested style is declared alongside the contract as an evaluation condition; it conditions how an evaluator recovers claims from figurative wording, but it never authorizes unsupported content. We motivate the distinction through a purposive mapping of forty evaluation resources and five contrastive test cases. Within this sample, factuality and creativity protocols rarely expose permission scope and epistemic marking as independent evaluation variables, and no resource combines strongly marked style with a strictly factual claim policy. The mapping describes the selected resources and does not estimate prevalence in the wider literature. The proposal is falsifiable: contract-aware annotation should improve inter-annotator agreement or diagnostic stability relative to a combination of factuality and task-compliance judgments.

**Nombre exact de mots de la version révisée : 224.**

> Remarque : cette version suppose l'adoption de E5 (σ hors du tuple). Si le quadruplet est conservé, remplacer la phrase sur le style par : "The contract also records the requested style, which conditions claim recovery but never authorizes unsupported content." (le total passe alors à 213 mots ; les deux versions restent dans la fourchette 150–250).

### §1 Introduction (l. 82–256)

**Fonction visée :** établir l'enjeu, la pratique dominante, sa limite, la position, les contributions, le plan.
**Réussite :** oui, dans l'ensemble. C'est une bonne introduction de position paper. La thèse arrive au paragraphe 5 (l. 106), soit environ 20 lignes après le début — délai acceptable.

Problèmes précis :
1. **L. 100–104, le second fil (style) est introduit trop tôt et trop faiblement.** Il ouvre par « A second diagnostic problem concerns form rather than invention », mais l'article concède immédiatement l. 104 que le problème n'est pas démontré. Une introduction ne doit pas ouvrir un second front en le désamorçant dans la même respiration. → **Déplacer** ce paragraphe après le paragraphe « Our position », et le reformuler en question de recherche plutôt qu'en « problème ».
2. **L. 111–120 : neuf notions nouvelles en dix lignes** (claim, response span, TC, O, Γ, μ, σ, SUP, H, LD). C'est une charge terminologique lourde avant que le lecteur ait vu un seul exemple. → La Figure 1 arrive l. 145 et fait exactement le travail nécessaire. **Inverser :** annoncer la position en prose sans symboles, renvoyer immédiatement à la Fig. 1, puis introduire la notation.
3. **L. 124–137 : le paragraphe « Why a structured contract rather than factuality plus instruction following? »** est le meilleur de l'introduction — c'est là que l'article se défend. Mais il concède beaucoup (« A sufficiently fine-grained compliance rubric could encode the same distinction »). → Conserver la concession, mais la faire suivre immédiatement d'une clause de valeur ajoutée : "…; the contribution of the truth contract is to make the composition rule explicit and inspectable, so that a disagreement can be attributed to the evidence source, the permission scope, or the marking requirement rather than to an aggregate rubric score."  *(la première moitié existe déjà l. 133 ; ajouter la clause d'attribution)*
4. **L. 246, « This position paper makes three contributions »** — l'article a utilisé « article » l. 71 et l. 120. → Uniformiser sur *article* (usage *CL*).

### §2 A Contract-Aware Claim Verdict (l. 258–693)

**Fonction visée :** définir contrat, récupération des claims, étiquettes, contrôle d'alignement stylistique.
**Réussite :** partielle. C'est la section la plus soignée sur le plan de la rédaction et la plus vulnérable sur le plan logique.

Points forts : la chaîne fixe *response → span → contextualized claim → canonical claim → evidence state → label* (l. 273) est excellente et bien tenue dans toute la suite. Le traitement du refus et de l'abstention (l. 425–427) est un raffinement pertinent que peu d'articles anticipent. La distinction entre `LD` et vérité (l. 417) est correctement posée.

Problèmes :
1. **§2.2, Γ_p** — voir E1. Défaut principal.
2. **§2.5, la règle** — voir E2. Second défaut.
3. **§2.5, l. 419–420 :** « For fiction, $O_p$ includes the declared fictional frame and its constraints; disagreement with the real world alone does not make an in-frame invention contradicted. » Cette clause fait de O_p un objet hétérogène : tantôt un ensemble de preuves externes, tantôt un ensemble de stipulations narratives. Un même symbole désigne alors deux types d'objets aux propriétés de vérification très différentes. → Soit distinguer $O_p^{\text{ext}}$ et $O_p^{\text{frame}}$, soit énoncer explicitement : "$O_p$ is a set of admissible propositions, whether documentary or stipulated; the evaluator must record which kind it is, because retrieval failure is possible only for the documentary kind."
4. **§2.3, l. 338–351 : l'échelle σ à trois niveaux** est présentée avec les bonnes précautions (« a working discretization rather than a validated universal scale »), mais reste non ancrée : rien ne dit *qui* assigne le niveau ni sur quels indices. Si σ conditionne la récupération des claims, sa fiabilité borne celle du pipeline. → Ajouter deux ou trois indices opérationnels par niveau, ou renvoyer explicitement la question à la Priorité 1.
5. **§2.4, l. 375 :** « If a span yields no truth-conditional claim, it receives no claim label. » Combiné à l'exemple de la Fig. 2 (le span $s_5$ « The winter that would not lift » ne reçoit aucune étiquette), cela ouvre une échappatoire : un système qui produirait exclusivement de la prose figurative n'aurait aucun claim et donc aucune hallucination. → Ajouter la couverture des claims comme grandeur obligatoirement rapportée : "Claim coverage — the proportion of the response from which truth-conditional claims are recovered — must be reported alongside the label distribution, because a response with few recovered claims trivially has few violations."
6. **Table 1 (`tab:contracts`)** — voir §J.

### §3 Related Evaluation Paradigms (l. 695–745)

**Fonction visée :** situer la règle par rapport aux paradigmes voisins.
**Réussite :** partielle.

Placer cette section **après** le cadre est un bon choix : le lecteur dispose de la règle pour lire les comparaisons. La couverture NLP est à jour et pertinente.

Problèmes :
1. **§3.6 manquante** — voir E4. C'est la lacune décisive pour l'adéquation à *CL*.
2. **§3.1, l. 704–715 :** quatre taxonomies sont énumérées puis évacuées en trois phrases (« These surveys classify mismatches by their evidence relation, inconsistency type, source, cause, or evaluation setting »). C'est une liste, pas un argument. → Choisir la taxonomie **la plus proche** (Huang et al. 2025, dont les *faithfulness hallucinations* couvrant l'instruction sont très voisines de Γ_p/μ_p) et montrer précisément sur un cas ce que sa classification ne tranche pas.
3. **§3.4, l. 736–739 :** le contraste avec les travaux sur les hallucinations « intelligentes » est net et bien mené (« an ingenious fabricated medical fact remains \Hall »). C'est un des meilleurs passages de l'article — à conserver tel quel.
4. **§3.3, l. 727 :** « These studies do not establish the permission rule or directly test requested style as an independent recovery factor. » Le référent de « These studies » est ambigu — s'agit-il des méthodes *decompose-then-verify* de la l. 723 ou de `wanner_closer_2024` de la l. 724 ? → Expliciter : "The decompose-then-verify literature does not establish…".

### §4 Diagnostic Mapping (l. 747–946)

**Fonction visée :** montrer que les ressources existantes ne représentent pas les quatre variables.
**Réussite :** non, en l'état.

C'est la section la plus fragile de l'article, alors qu'elle porte la contribution 2. Problèmes : D2 (chiffre faux), D3 (codes non définis), objection G4 (circularité, codeur unique), colonne μ constante sur les 40 lignes.

Autre point : **§4.1, question 3** demande « Which nominal task profile best describes it » — c'est un jugement d'attribution que le protocole source n'énonce pas. Sur 20 lignes, Γ est codé « inferred empty », c'est-à-dire inféré par les auteurs. Dire ensuite que « the factuality cluster … represent[s] no permission scope » revient à répéter le codage, non à observer une propriété des protocoles. → Reformuler pour rendre l'inférence visible dans la conclusion elle-même : "Twenty resources give no indication that evidence-unknown content could ever be permitted; we therefore code their permission scope as empty. This is our inference from the task design, not a statement made by the protocols."

**Action recommandée :** conserver la section mais **rétrograder son statut** de « contribution » à « illustration diagnostique », sauf si le double codage de E3/G4 est effectué. Si le double codage est fait, la section devient une contribution défendable.

### §5 Research Agenda (l. 990–1070)

**Fonction visée :** transformer la position en programme.
**Réussite :** oui. Meilleure section de l'article. Voir §N pour l'évaluation détaillée.

Une seule réserve : la Priorité 1 devrait explicitement inclure **l'inférence de Γ_p sous sous-spécification** (E1) comme sous-tâche nommée, et non seulement l'accord sur des contrats déjà déclarés.

### §6 Discussion (l. 1073–1109)

**Fonction visée :** implications d'évaluation, portée, limites.
**Réussite :** oui, avec une réserve.

Le §6.1 est efficace et bien calibré. La clause anti-mésinterprétation est présente et explicite (« Conversely, satisfying $\sigma_p=2$ does not excuse a fabricated claim under a factual-only contract », l. 1083) — voir §H-limites ci-dessous.

Problème : **§6.2 est intitulé « Scope and validation priorities » mais fonctionne comme la section Limitations**, sans le dire. Les trois « First / Second / Third » énoncent des limites réelles mais formulées comme des propriétés positives (« Making these choices explicit is a feature of the framework »). Un relecteur y verra une section de limites qui refuse de s'annoncer.
→ **Renommer** en « Limitations » et ajouter les limites actuellement absentes (voir §H-limites).

### §7 Conclusion (l. 1112–1122)

Compacte et exacte ; ne sur-promet pas. La dernière phrase (« The immediate test is whether contract-aware annotation improves agreement or diagnostic stability… ») est un bon point final pour un position paper. Aucune révision requise au-delà de la correction du terme *paper* → *article*.

### Annexe A (l. 1127–1160)

**Fonction visée :** consigner les diagnostics additionnels.
**Réussite :** oui. Le test de stabilité est bien posé et la précision l. 1137 (« Equality below means that the matched sets contain the same factual commitments, not that their surface strings are identical ») évite un contresens fréquent. L'équation doit être numérotée (D4). La distinction finale l. 1157 (« this is contract dependence, not relative truth ») est importante et gagnerait à être **remontée dans le corps du texte, en §2.5** : c'est la réponse directe au malentendu que le titre initial du projet (« Hallucination Is Relative ») pouvait induire.

### Annexe B (l. 1162–1272)

Voir D3 et §J. Non exploitable en l'état sans glossaire des codes.

### Sur la section Limitations — éléments à ajouter

L'article couvre correctement : incertitude sur le contexte de tâche, choix normatifs sur les sources de preuve, dépendance au contexte, limites de l'échantillon du mapping, distinction évaluation / contrôle du modèle.

**Absents et à ajouter :**
1. **Subjectivité d'annotation** — aucun chiffre, aucune estimation, aucune discussion du coût. Formulation proposée : "We have not measured whether annotators agree on $\Gamma_p$ or $\mu_p$. Because the claim label depends on both, low agreement on either field would propagate directly to the label; establishing this is the first task of the agenda."
2. **Risque de mésusage de l'évaluation permissive** — la clause l. 1083 protège contre la lecture « le style excuse la fabrication », mais rien ne protège contre le risque symétrique : un fournisseur qui déclarerait un Γ_p large pour faire baisser son taux d'hallucination. Formulation proposée : "Because the contract is declared rather than discovered, a permissive $\Gamma_p$ can lower a reported \Hall\ rate without any change in model behavior. Contract declarations must therefore be published with the score, and benchmark contracts should be fixed by the benchmark designer rather than by the system under evaluation."  **Cette limite est la plus importante des absentes.**
3. **Limites des exemples** — dire une fois, explicitement, que quatre des cinq cas et les deux figures sont construits par les auteurs. C'est dit par fragments (l. 609, l. 952) mais jamais rassemblé.

---

## I. Édition de l'anglais académique

L'anglais est de bon niveau : direct, sans surcharge, orthographe américaine cohérente (aucune graphie britannique détectée), aucune abréviation latine en prose courante, une seule phrase de plus de 38 mots dans tout le corps. Les corrections ci-dessous portent sur des problèmes **récurrents et conséquents**, non sur des coquilles isolées.

### I.1 Incohérence *paper* / *article* (récurrent, 5 occurrences)

> **Original :** "This position paper makes three contributions." (l. 246) ; "This position paper presents an operational starting point" (l. 1097) ; "In this position paper, we argued" (l. 1114) — mais "This position article argues" (l. 71) et "this article" (l. 120).

**Problème :** deux désignations concurrentes pour l'objet soumis. *CL* privilégie *article*.
**Révision :** remplacer les trois occurrences de « position paper » par « position article ».
**Raison :** cohérence terminologique interne et conformité à l'usage du support.

### I.2 Formule fixe répétée 18 fois

> **Original :** "prompt--response style alignment" — 18 occurrences ; "requested style" — 30 ; "status marking" — 18.

**Problème :** la répétition littérale d'un syntagme de quatre mots à chaque mention alourdit la lecture et donne l'impression que l'article insiste plutôt qu'il n'explique.
**Révision :** introduire l'abréviation une fois en §2.1 — "…a separate prompt--response style-alignment check (hereafter, the *style-alignment check*)" — puis employer la forme brève. Cela retire environ 40 mots et allège six paragraphes.
**Raison :** lisibilité, sans perte de précision.

### I.3 Clause de non-effet du style répétée sept fois

> **Original (l. 117) :** "Style therefore never grants permission for unsupported content."
> **Original (l. 312) :** "Including style in the contract therefore does not allow it to license unsupported content."
> **Original (l. 345) :** "…and they do not grant permission to invent."
> **Original (l. 365) :** "…in all cases, $\sigma_p$ does not authorize new content."
> **Original (l. 413) :** "The style field does not appear directly in this rule…"
> **Original (l. 1083) :** "Conversely, satisfying $\sigma_p=2$ does not excuse a fabricated claim…"
> **Original (l. 1117) :** "Requested style $\sigma_p$ conditions claim recovery … but never authorizes unsupported content."

**Problème :** répéter sept fois une clause négative signale au relecteur que l'architecture ne rend pas la propriété évidente. La répétition produit l'effet inverse de celui recherché.
**Révision :** adopter E5 (option 1). Conserver l. 1083 (utile, car elle traite le malentendu, non l'architecture) et **une** énonciation structurelle en §2.3 ; supprimer les cinq autres.
**Raison :** la clarté structurelle remplace avantageusement la répétition ; environ 15 lignes gagnées.

### I.4 Référents pronominaux non résolus

> **Original (l. 727) :** "These studies do not establish the permission rule or directly test requested style as an independent recovery factor."
> **Problème :** « These studies » suit deux groupes distincts (les méthodes *decompose-then-verify*, l. 723 ; `wanner_closer_2024`, l. 724). Le lecteur ne sait pas lequel est visé.
> **Révision :** "The decompose-then-verify literature does not establish the permission rule, nor does it test requested style as an independent factor in claim recovery."
> **Raison :** lever une ambiguïté dans une phrase qui délimite la contribution de l'article.

> **Original (l. 133) :** "A sufficiently fine-grained compliance rubric could encode the same distinction; the contribution of the truth contract is to make the composition rule explicit and inspectable."
> **Problème :** « the same distinction » — laquelle ? Deux distinctions viennent d'être évoquées (`H`/`LD`, et jugement probatoire / jugement de conformité).
> **Révision :** "A sufficiently fine-grained compliance rubric could encode the same \Hall/\LD\ distinction; the contribution of the truth contract is to make the composition rule explicit and inspectable, so that a disagreement can be attributed to the evidence source, the permission scope, or the marking requirement."
> **Raison :** précision, et renforcement d'une concession actuellement trop coûteuse.

### I.5 Une affirmation plus forte que la preuve disponible

> **Original (l. 793) :** "Such tasks can reveal whether a factuality verifier mistakes figurative wording for unsupported claim content."
> **Problème :** « can reveal » présente comme acquis que le test serait informatif ; or aucune preuve n'établit que ce mode de défaillance se produit.
> **Révision :** "Such tasks would allow this failure mode to be measured directly; whether current verifiers exhibit it is an open question."
> **Raison :** aligne la force de l'énoncé sur l'état de la preuve, ce que l'article fait correctement ailleurs.

### I.6 Nominalisation lourde

> **Original (l. 336) :** "Although requested style does not enter the claim-label rule, we record it in the truth contract because it is part of the context in which response spans are interpreted and because making it explicit enables controlled tests of claim-recovery robustness."  *(40 mots — la plus longue phrase de l'article)*
> **Problème :** deux subordonnées causales empilées sous une concessive ; le lecteur doit tenir trois propositions avant d'atteindre l'information principale.
> **Révision :** "Requested style does not enter the claim-label rule. We nevertheless declare it, for two reasons. It is part of the context in which an evaluator interprets a response span, and stating it explicitly makes controlled tests of claim-recovery robustness possible."
> **Raison :** trois phrases courtes ; l'information principale arrive en premier.

### I.7 Points de forme mineurs à vérifier

- Fig. 2 : « Dr. Chapuis » — dans une figure par ailleurs en anglais américain, le point abréviatif est correct ; vérifier la cohérence avec l'usage de la classe.
- Fig. 2 : l'extrait d'archive est en français (« Registre de l'Hôtel-Dieu ») **sans traduction**. Pour un lectorat international, ajouter une glose entre crochets.
- L. 683 : « Write a story set in 1920s Paris neutral prose » — **il manque un mot** (« …in 1920s Paris **in** neutral prose »). Coquille dans la Table 1.
- Deux `\label` sur la même figure (l. 610–611) : `fig:prompt-to-claim-full` n'est jamais référencé. Supprimer.

---

## J. Revue des figures et des tableaux

### Figure 1 — *Identical wording under two truth contracts* (l. 145–229)

- **Message visé :** un même énoncé reçoit `H` ou `LD` selon le contrat ; l'état probatoire ne suffit pas.
- **Difficulté actuelle du lecteur :** faible. C'est la meilleure figure de l'article. La symétrie gauche/droite, le span partagé au centre et l'encadré de synthèse en bas fonctionnent immédiatement.
- **Informations manquantes :** (i) la légende ne dit pas que l'exemple est construit — la Fig. 2 le précise (l. 608), pas la Fig. 1 ; (ii) $\sigma_h=0$ et $\sigma_f=0$ sont affichés mais leur rôle nul n'est explicité que dans la légende, ce qui peut laisser croire que σ contribue.
- **Révisions requises :** ajouter la mention « constructed example » ; conserver l'affichage de σ (le contrôle est pédagogiquement utile) mais l'annoter dans la figure elle-même, par exemple par une mention grisée « σ held constant ».
- **Améliorations facultatives :** le rouge `clrH` (155,18,18) et le vert `clrLD` (22,98,48) diffèrent de ceux de la Fig. 2 (`figred` 162,54,42 ; `figgreen` 42,118,67). Unifier. L'opposition rouge/vert est le cas classique de défaillance en deutéranopie ; les sigles textuels **H** et **LD** assurent heureusement la redondance, mais ajouter une différence de forme (trait plein vs. pointillé sur le cadre) éliminerait le risque.
- **Légende auto-suffisante proposée :**

  > "**Figure 1. Identical wording under two truth contracts (constructed example).** Two task contexts are shown side by side. Each fixes a truth contract $\TC(p)=(O_p,\Gamma_p,\mu_p,\sigma_p)$: reference evidence $O_p$, permission scope $\Gamma_p$, required status marking $\mu_p$, and requested style $\sigma_p$. Both tasks receive the identical response wording shown in the center box. Under the historical contract, the register is stipulated as exhaustive, so the recovered real-world claim is contradicted and receives \Hall\ (hallucination). Under the fiction contract, the recovered claim is internal to the declared story world: it is evidence-unknown, lies inside $\Gamma_f$, and inherits the declared fictional frame required by $\mu_f$, so it receives \LD\ (licensed divergence). Both tasks request plain wording ($\sigma=0$), so requested style cannot explain the difference in label. \LD\ records contractual permission only; it is not a claim about truth, quality, or safety, and it does not denote a benign hallucination. The example is constructed by the authors for illustration."

- **Verdict de clarté :** claire.
- **Verdict de nécessité :** essentielle.
- **Risque de mésinterprétation :** faible.

### Figure 2 — *From one prompt to four claim-level decisions* (l. 431–612)

- **Message visé :** dérouler le pipeline complet sur un cas unique, du contexte de tâche aux quatre étiquettes.
- **Difficulté actuelle du lecteur :** élevée. La figure comporte 6 rangées, 4 colonnes de claims, 2 encadrés latéraux, un bus de contrat, un chemin probatoire en pointillé qui contourne toute la figure, et deux annotations d'étape à droite. Le tout est passé dans `\resizebox{0.98\textwidth}` alors que le contenu est déjà en `\scriptsize` : après réduction, plusieurs textes descendront probablement sous 6 pt. **[requires verification]** — à contrôler sur épreuve imprimée, pas à l'écran.
- **Informations manquantes :** (i) l'extrait d'archive est en français sans traduction ; (ii) les couleurs de la réponse (bleu pour les segments fidèles, rouge pour l'invention) ne sont **jamais expliquées**, ni dans la figure ni dans la légende ; (iii) le span $s_0$ « Panel 3 of 6 » est classé *other*, catégorie introduite nulle part ailleurs dans l'article ; (iv) la légende ne dit pas que $\mu_p$ est satisfait pour $c^*_3$ par le mot « probably », information portée uniquement par une note en petits caractères.
- **Révisions requises :**
  1. **Scinder en deux figures.** Fig. 2a : contexte de tâche → contrat → réponse (les trois rangées supérieures). Fig. 2b : typage des spans → claims canoniques → état probatoire → étiquette (les rangées inférieures). Chacune tiendra alors à taille lisible.
  2. Expliquer le codage couleur de la réponse dans la légende.
  3. Traduire l'extrait d'archive entre crochets.
  4. Définir le type de span *other* en §2.4 ou le supprimer de la figure.
- **Améliorations facultatives :** le chemin probatoire en pointillé orange qui contourne la figure entière est difficile à suivre ; le remplacer par un renvoi textuel (« compared with $O_p$, top right ») serait plus lisible.
- **Légende auto-suffisante proposée (pour Fig. 2b après scission) :**

  > "**Figure 2b. From response spans to claim labels (constructed example, continued from Figure 2a).** The response of Figure 2a is segmented into spans. Each span is typed: *claim-only* spans express a truth-conditional commitment; *claim + figurative wording* spans express one through marked language; spans that express no commitment ($s_5$) and non-content spans ($s_0$) receive no claim label. Each remaining span yields a canonical claim $c^*$, restated in neutral wording while preserving modality, attribution, negation, temporal scope, and discourse frame. Each canonical claim is compared with the archive extract $O_p$, giving an evidence state, and is then assigned a contract label. Note the two right-hand stages: requested style $\sigma_p$ acts only on which claims are recovered; $O_p$, $\Gamma_p$, and $\mu_p$ act only on which label each recovered claim receives. $c^*_2$ shows that figurative wording adds no factual commitment; $c^*_3$ is evidence-unknown but lies inside $\Gamma_p$ and carries the hedge *probably* required by $\mu_p$; $c^*_4$ names a real person and therefore falls outside $\Gamma_p$. The archive extract and the name Chapuis are constructed by the authors."

- **Verdict de clarté :** compréhensible au prix d'un effort important.
- **Verdict de nécessité :** essentielle — mais seulement après scission.
- **Risque de mésinterprétation :** modéré.

### Figure 3 — *Resource clusters by typical task permission and style salience* (l. 799–946)

- **Message visé :** montrer que les ressources échantillonnées occupent des régions disjointes et qu'une région reste vide.
- **Difficulté actuelle du lecteur :** modérée, mais le problème n'est pas la lisibilité — c'est l'inférence induite.
- **Informations manquantes :** rien de factuel ; la légende désamorce correctement (« Positions are qualitative summaries … not measured scores, prevalence estimates, model performance, or an ordinal permission scale »).
- **Révisions requises :** **le dispositif visuel contredit la légende.** Deux axes fléchés continus, des boîtes placées à des coordonnées précises (2.15, 1.45), (10.55, 9.00), et une « Missing region » délimitée par un rectangle dessiné à un emplacement déterminé : tout l'appareil graphique est celui d'un nuage de points mesuré. Le lecteur pressé lira des positions quantitatives, et un relecteur y verra une figure qui affirme visuellement plus que le texte n'autorise. → **Remplacer les axes fléchés par une grille 2×2 ou 3×3 à cases nommées**, sans coordonnées continues, chaque cellule listant les ressources qu'elle contient et la cellule vide étant simplement vide. Le message (« une combinaison n'est pas représentée ») est identique et l'over-reading devient impossible.
  Second point : les numéros entre crochets renvoient aux lignes des tableaux d'annexe — mécanisme utile mais il faut vérifier que le lecteur le comprend avant de rencontrer l'annexe ; l'ajouter en tête de légende plutôt qu'en milieu.
- **Améliorations facultatives :** sept couleurs de remplissage distinctes pour sept clusters ; trois d'entre elles (blue!12, cyan!12, violet!12) sont très proches en niveaux de gris. Ajouter des motifs ou des bordures différenciées pour l'impression noir et blanc.
- **Légende auto-suffisante proposée :**

  > "**Figure 3. Coverage of the forty mapped resources, by nominal task profile and treatment of style.** Cells group the resources of Tables B.1--B.3; bracketed numbers are the row identifiers used there. Cell membership reflects our coding of each resource's task design, not measured scores, prevalence in the literature, model performance, or an ordinal permission scale. The empty cell marks the combination we did not identify in this purposive sample: a protocol that controls strongly marked style while enforcing a strictly factual claim policy. Heterogeneous suites and tool-use resources appear in a separate cell because their evidence and permission conditions vary by subtask, so a single profile would misrepresent them."

- **Verdict de clarté :** claire.
- **Verdict de nécessité :** utile, non essentielle — le tableau d'annexe porte la même information.
- **Risque de mésinterprétation :** **élevé** en l'état ; faible après passage à une grille.

### Tableau 1 — *Core objects in the truth-contract framework* (`tab:symbols`, l. 277–298)

- **Fonction actuelle :** table des symboles.
- **Faiblesse principale :** placé en `[h!]` juste après son appel, ce qui est correct, mais il liste $R(y\mid p)$ — objet dont l'article dit explicitement qu'il ne le définit pas. Un lecteur qui consulte la table des symboles trouve un symbole sans définition opératoire.
- **Révision requise :** ajouter à la ligne concernée la mention « (not fixed in this article; see §5, Priority 4) ». Ajouter également $E$, $L$, $M$ avec leurs codomaines, actuellement donnés en prose seulement.
- **Légende proposée :** "**Table 1. Core objects in the truth-contract framework.** Symbols are listed in the order in which they enter the labeling chain of Section 2.1. Domains and codomains are given where a symbol takes values in a fixed set. $R(y\mid p)$ is named for completeness; this article does not fix its aggregation rule (see Section 5, Priority 4)."
- **Décision :** conserver dans le corps du texte.

### Tableau 2 — *Representative truth contracts and claim-level labels* (`tab:contracts`, l. 628–693)

- **Fonction actuelle :** appliquer la règle à quatre prompts représentatifs.
- **Faiblesse principale :** **ce n'est pas un tableau.** C'est une suite de quatre `minipage` encadrées, chacune contenant un `tabularx` à trois colonnes **sans en-têtes**. La colonne du milieu (l'étiquette) et la colonne de droite (la justification) n'ont pas de titre ; le lecteur doit déduire leur fonction. De plus, le flottant est placé en `[!p]` — page entière —, donc potentiellement très loin de son appel l. 625.
- **Autres problèmes :** coquille l. 683 (« in 1920s Paris neutral prose ») ; la mention « *(constructed claim template)* » n'apparaît que sur une seule des huit lignes alors que les quatre cartes sont construites ; « $\mu_p =$ not applicable because $\Gamma_p=\varnothing$ » est répété deux fois à l'identique.
- **Révision requise :** convertir en un vrai tableau à cinq colonnes — *Prompt* | *$O_p$ / $\Gamma_p$ / $\mu_p$* | *$\sigma_p$* | *Response span and recovered claim* | *Label and reason* — avec en-têtes, `booktabs`, et une ligne par claim (8 lignes). Le contenu est bon ; c'est la présentation qui empêche la comparaison, alors que la comparaison est précisément la fonction du tableau. Placer en `[t]` ou `[b]`, pas en `[!p]`.
- **Légende proposée :** "**Table 2. Four representative truth contracts and the resulting claim labels (constructed examples).** Each block states one contract and evaluates one or two claims recovered from example response spans. Requested style $\sigma_p$ is shown for each contract to demonstrate that it does not enter the label: rows 3 and 4 share $\sigma_p=2$ yet receive different labels, and rows 1 and 7 share $\sigma_p=0$ yet also differ. No row assigns a verdict to a complete response; response-level aggregation is not fixed in this article. All prompts and spans are constructed by the authors."
- **Décision :** conserver dans le corps du texte, mais reformater intégralement.

### Tableaux B.1, B.2, B.3 — *Purposive mapping* (l. 1171–1272)

- **Fonction actuelle :** codage ressource par ressource des 40 items.
- **Faiblesse principale :** **aucun code n'est défini** (D3). Six codes pour σ, treize pour Γ, deux pour μ ; §4.1 en annonce trois ; l'annexe promet de « defin[e] every code used in the tables » et n'en définit aucun. En l'état, ces tableaux ne sont pas auditables, ce qui est exactement ce qu'ils prétendent être.
- **Autres problèmes :**
  1. La colonne μ ne prend que deux valeurs sur 40 lignes (`not scored` × 20, `not separated` × 20), parfaitement corrélées au profil de tâche. Elle ne discrimine rien et donne l'illusion d'une observation là où il y a une constante.
  2. **Imprécision de citation, Tab. B.2, ligne 14 :** « CNN/DailyMail \citep{hermann_teaching_2015} — Summarization ». Hermann et al. (2015) introduisent ce corpus pour de la compréhension de lecture de type *cloze*, non pour le résumé ; son usage comme benchmark de résumé provient de Nallapati et al. (2016) et See et al. (2017). Dans un tableau dont l'objet est de caractériser exactement des ressources, c'est un défaut visible. → Corriger la référence ou ajouter « (summarization use follows Nallapati et al. 2016) ».
  3. Aucune colonne « profil déclaré par le protocole vs. inféré par nous », alors que §4.1 fait de cette distinction le garant de l'auditabilité. Elle n'existe que sous forme d'adjectifs dispersés (`inferred`, `implicit`).
- **Révision requise :** (i) ajouter un glossaire complet des codes en tête d'annexe B ; (ii) ajouter une colonne binaire *Stated / Inferred* ; (iii) réduire le vocabulaire σ de six à trois codes ; (iv) corriger la ligne 14 ; (v) publier la grille de codage en matériel supplémentaire.
- **Légende proposée (B.1) :** "**Table B.1. Factuality and faithfulness resources in the purposive mapping (part I of III).** Codes are defined in the glossary at the head of this appendix. *Stated* marks a value asserted by the source protocol; *Inferred* marks a value we derived from the task design. The recurring profile in this part is: reference evidence stated; requested style not controlled; permission scope inferred empty; status marking not separately scored. *Style not controlled* means that the protocol does not treat style as a variable — not that it fixes a neutral style."
- **Décision :** conserver en annexe ; non exploitable avant l'ajout du glossaire.

---

## K. Audit de la terminologie, de la notation et des définitions

### K.1 Termes centraux

| Terme / symbole | Première définition | Emplois ultérieurs | Ambiguïté ou incohérence | Formulation recommandée |
| --- | --- | --- | --- | --- |
| *claim* | l. 109 : "a truth-conditional commitment attributed to the response" | Stable dans tout l'article | Aucune. Définition claire et bien tenue. | Inchangée. |
| *response span* $s$ | l. 110 | Stable | Aucune. | Inchangée. |
| *contextualized claim* / *canonical claim* $c^*$ | l. 371–373 | Stable | Aucune. La liste des propriétés à préserver (modality, attribution, negation, temporal scope, provenance, discourse frame) est explicite et cohérente avec §3.3. | Inchangée. |
| $O_p$ | l. 317–320 | Partout | **Hétérogène** : preuves documentaires (registre, corpus, base) *et* stipulations narratives (l. 420). L'échec de recherche documentaire n'a de sens que pour le premier type. | Distinguer $O_p^{\text{doc}}$ / $O_p^{\text{stip}}$, ou déclarer le type dans le contrat. |
| $\Gamma_p$ | l. 322–326 | Partout | **Quasi-tautologique et jamais inféré.** Défini comme « ce que la tâche autorise » ; `LD` défini comme « autorisé ». Aucune procédure d'obtention. | Voir E1. Ajouter une hiérarchie de contrats par défaut et l'issue *contract-indeterminate*. |
| $\mu_p$ | l. 328–332 | Partout | Stable, mais **non ancré linguistiquement** : « hedge », « hypothesis label », « section heading », « inherited fictional frame » sont mis sur le même plan sans typologie. | Ancrer dans la modalité épistémique / l'évidentialité (E4) et donner un critère : qu'est-ce qui compte comme marqueur suffisant ? |
| $\sigma_p$ | l. 338–343 | Partout | Trois niveaux non validés, assignateur non spécifié. L'article le concède l. 350–351. | Voir E5 ; sortir du tuple. |
| $\widehat\sigma(y,p)$ | l. 353 | Stable | Aucune. La distinction demandé / observé est bien tenue. | Inchangée. |
| `SUP` | l. 118, 414 | Stable | Aucune. | Inchangée. |
| `H` | l. 119, 415 | Partout | **Hétérogène** : agrège contradiction, hors-scope, et non-marquage. | Voir E2 : trois sous-types rapportés séparément. |
| `LD` | l. 119, 416 | Partout | Bien protégée contre le contresens (l. 417, l. 227 : "not a benign hallucination"). Mais analytique par construction. | Assumer explicitement le caractère analytique et localiser le contenu empirique dans la déclarabilité de $\Gamma_p$ (voir G1). |
| *hallucination* (mot courant) | Titre, abstract, l. 84 | Partout | **Équivoque** : sens pré-théorique (le phénomène) et sens technique (l'étiquette `H`). L. 71 « should not determine a hallucination verdict » emploie le premier ; l. 415 définit le second. | Ajouter une note en §2.5 : "Throughout, *hallucination* in running prose refers to the phenomenon as the field ordinarily understands it; \Hall\ refers to the contract-relative label defined here. We use the typeset label whenever the technical sense is intended." |
| *evaluator* | l. 263 : "may be a human annotator, an automated pipeline, or a combination" | Partout | Aucune. Précision utile et rare. | Inchangée. |
| *audit* / *mapping* | §4 titre : "Diagnostic Mapping" ; label `sec:audit` | l. 75, 233, 749 : "purposive mapping" ; l. 1106 : "the purposive mapping" | Le mot *audit* ne survit que dans le label LaTeX et dans l'ancien abstract des métadonnées. Dérive terminologique résiduelle. | Renommer le label en `sec:mapping` pour éviter toute réapparition. |
| *foregrounding* / *stylistic marking* | l. 346–347 | l. 101 emploie "stylistic foregrounding" | Deux termes pour une notion ; l. 347 dit « related to foregrounding » sans dire en quoi ils diffèrent. | Choisir *stylistic marking* comme terme opératoire ; mentionner *foregrounding* une seule fois, comme antécédent en stylistique. |

### K.2 Formalisation et notation

**Équation 1 — définition du contrat (l. 303)**
$$\TC(p)=(O_p,\Gamma_p,\mu_p,\sigma_p)$$
- **Problème :** non numérotée (D4). De plus, aucun domaine n'est spécifié pour $\Gamma_p$ ni pour $\mu_p$ : s'agit-il d'ensembles de propositions, de prédicats, de conditions ? Le texte les traite tantôt comme des ensembles (« a claim lies inside $\Gamma_p$ ») tantôt comme des exigences (« satisfies $\mu_p$ »).
- **Révision recommandée :** numéroter, et typer explicitement : "$\Gamma_p$ is a set of propositions (equivalently, a predicate on canonical claims) that the task authorizes even when $O_p$ does not establish them. $\mu_p$ is a predicate on the pair (canonical claim, complete response) that holds when the response presents the claim with the epistemic status the task requires."
- **Interprétation en clair :** le contrat déclare, avant toute observation de la réponse, quatre décisions de conception : ce qui compte comme preuve, ce qui peut être ajouté au-delà, comment cet ajout doit être présenté, et sous quelle forme la réponse est demandée.

**Équation 2 — état probatoire (l. 395)**
$$E(c^*,O_p)\in\{\textsc{entailed},\textsc{contradicted},\textsc{unknown}\}$$
- **Problème :** non numérotée. Le domaine de $E$ n'est pas donné (couples claim × ensemble de preuves). Surtout, **la fonction est présentée comme totale alors que §2.5 introduit deux issues supplémentaires** : « If retrieval is incomplete or admissible sources conflict, the evaluator reports a coverage or adjudication failure » (l. 392). Ces deux issues n'apparaissent nulle part dans le codomaine.
- **Révision recommandée :** numéroter et compléter : $E(c^*,O_p)\in\{\textsc{entailed},\textsc{contradicted},\textsc{unknown},\textsc{coverage-failure},\textsc{adjudication-failure}\}$, en précisant que les deux dernières valeurs suspendent l'étiquetage au lieu de le produire.
- **Interprétation en clair :** la relation entre un claim canonique et les preuves admissibles prend cinq valeurs : le claim est entraîné, contredit, ni l'un ni l'autre, ou bien la vérification n'a pas pu être menée correctement — soit parce que les preuves sont incomplètes, soit parce que des sources admissibles se contredisent.

**Équation 3 — règle d'étiquetage (l. 405)**
- **Problème :** non numérotée. Le `otherwise` agrège trois cas (E2). De plus, la règle est écrite comme une fonction de $(c^*, y, p)$, mais $L$ et $M$ sont définis l. 401–402 avec des signatures différentes ($L(c^*,\Gamma_p)$, $M(c^*,y,\mu_p)$) et apparaissent dans le `case` sous la forme abrégée $L=1, M=1$ sans arguments. Incohérence de notation entre la définition et l'emploi.
- **Révision recommandée :** numéroter ; écrire les arguments en toutes lettres dans le `case` ; ajouter une quatrième branche pour l'indétermination contractuelle (E1) et une clause de sous-typage de `H` (E2).
- **Interprétation en clair :** un claim entraîné par les preuves est *supported*. Un claim que les preuves ne tranchent pas est *licensed divergence* si et seulement si la tâche l'autorise **et** que la réponse le présente comme la tâche l'exige. Dans tous les autres cas — claim contredit, claim non autorisé, ou claim autorisé mais mal présenté — le claim est étiqueté *hallucination*.

**Équation 4 — condition de stabilité (annexe A, l. 1139)**
- **Problème :** non numérotée. L'égalité $\mathcal C^*(y_0,p_0)=\mathcal C^*(y_1,p_1)=\mathcal C^*(y_2,p_2)$ est une égalité ensembliste modulo l'appariement adjudiqué — l. 1137 le dit en prose, mais la notation, elle, écrit une égalité stricte. Un lecteur formel y verra une incohérence entre l'écriture et son commentaire.
- **Révision recommandée :** numéroter et introduire une relation d'équivalence explicite, par exemple $\mathcal C^*(y_0,p_0)\equiv_{\text{match}}\mathcal C^*(y_1,p_1)$, définie une fois pour toutes. Cela supprime le besoin du commentaire de la l. 1137.
- **Interprétation en clair :** si trois réponses ne diffèrent que par le style demandé, alors, après remise en forme neutre et appariement, elles doivent porter les mêmes engagements factuels et recevoir les mêmes étiquettes. Leur style observé, en revanche, peut légitimement différer.

---

## L. Audit des citations et des preuves

### L.1 État général

- 77 clés citées, **0 citation non résolue**, **0 `\citetodo`** restant. Point positif : la bibliographie est propre sur le plan technique.
- **31 des 77 références citées (40 %) sont des préprints arXiv ou des entrées `@misc`.** Pour un article de revue, cette proportion sera remarquée. Plusieurs ont une version archivale à substituer : `srivastava_beyond_2023` (BIG-Bench, publié dans *TMLR* 2023), `kasai_realtime_2024` (RealTime QA, NeurIPS Datasets & Benchmarks 2023), et probablement `wei_measuring_2024` et `zhou_ifeval_2023` **[requires verification]**.
- **34 entrées de `references.bib` ne sont jamais citées.** Parmi elles, `stalnaker_assertion_1978`, `grice_logic_1975`, `clark_using_1996`, `choi_decontextualization_2021`, `farquhar_detecting_2024`, `kalai_why_2025`, `zheng_judging_2023`, `liu_g-eval_2023`. La présence des trois premières indique un axe pragmatique préparé puis abandonné : c'est précisément celui que E4 recommande de réactiver.

### L.2 Appui vérifié

| Citation | Affirmation attribuée | Appui réel | Évaluation |
| --- | --- | --- | --- |
| Malin, Kalganova & Boulgouris (2025) | Revue des métriques de fidélité | Vérifié via Crossref : *IEEE J. Sel. Top. Signal Process.*, vol. 19, n° 7, p. 1362–1375, 10.1109/JSTSP.2025.3579203 | **supported** — ajouter volume, numéro et pages, absents de l'entrée BibTeX |
| Lamba, Tiwari & Gaur (2026) | Revue des causes par cycle de vie | Vérifié via Crossref : *Int. J. Data Science and Analytics*, vol. 22, DOI 10.1007/s41060-026-01214-6, publié le 16/07/2026 | **supported** — la référence est authentique. Signaler toutefois qu'elle date de treize jours : un relecteur ne pourra pas la vérifier facilement ; ne pas lui faire porter d'affirmation critique |
| Feuer et al. (2025), ICLR | "model-based judges can overweight stylistic form relative to factual content" | Vérifié : *Style Outweighs Substance: Failure Modes of LLM Judges in Alignment Benchmarking*, ICLR 2025 | **partly supported** — établi pour le jugement d'alignement, **pas** pour la vérification de factualité. Restreindre : "…in alignment benchmarking; whether the same effect holds for factuality verifiers is untested." |
| Sui et al. (2024), ACL | Valeur potentielle des confabulations | Vérifié : ACL 2024, p. 14274–14284 | **supported** |
| Maynez et al. (2020) | Cas A ; distinction source / preuve externe | Distinction intrinsèque/extrinsèque bien établie dans cet article | **supported** |
| Metropolitansky & Larson (2025), ACL | Extraction de claims | Vérifié : ACL 2025, p. 6996–7045 | **supported** |
| Uluoglakci & Temizel (2024), EACL SRW | HypoTermQA, profil « bounded hypothesis » | Vérifié : EACL 2024 SRW, p. 95–136 | **supported** |
| Wu et al. (2024), EMNLP | "instruction following and evidential faithfulness may require explicit reconciliation" | Vérifié : *Dancing in Chains*, EMNLP 2024, p. 3942–3965 | **supported** — c'est la citation la mieux ajustée de l'introduction |

### L.3 Appui partiel

| Citation | Affirmation attribuée | Problème | Correction |
| --- | --- | --- | --- |
| `kalai_calibrated_2024`, `xu_hallucination_2024`, `banerjee_llms_2024` (l. 1091) | "Formal work suggests that some errors remain possible for sufficiently general models operating with incomplete evidence" | Trois résultats aux hypothèses très différentes sont agrégés. Kalai & Vempala (STOC 2024) démontrent une borne inférieure du taux d'hallucination pour des modèles **calibrés**, liée au taux de *monofacts* — ce n'est pas un résultat sur l'incomplétude des preuves. | Séparer : "Kalai and Vempala (2024) show that a calibrated language model must produce a non-zero rate of unsupported statements on facts seen once in training; Xu et al. (2024) and Banerjee et al. (2024) argue for inevitability from different premises. None of these results concerns evidence incompleteness at inference time." |
| `searle_logical_1975` (l. 326) | "the task frame may permit invented characters and events while excluding fabricated real-world claims about named people" | Searle traite de l'assertion feinte et note que le discours fictionnel comporte des éléments engageant encore l'auteur. L'appui est réel mais **indirect** : Searle ne formule aucune prescription d'évaluation. | Reformuler pour marquer l'inférence : "This restriction is consistent with Searle's (1975) analysis of fictional discourse as pretended assertion, in which some elements of a fictional text nevertheless commit the author to real-world claims; the evaluation consequence we draw is our own." |
| `hermann_teaching_2015` (Tab. B.2, l. 1217) | CNN/DailyMail comme ressource de résumé | Hermann et al. (2015) introduisent ce corpus pour la compréhension de lecture de type *cloze* ; son usage en résumé vient de Nallapati et al. (2016) / See et al. (2017). | Corriger la référence ou ajouter la mention d'usage. |
| `chen_menli_2023`, `aynetdinov_semscore_2024` (l. 794) | "claim decomposition, natural-language inference, and semantic similarity may all depend on the surface realization" | Ces travaux portent sur des métriques fondées sur l'inférence et la similarité ; ils n'établissent pas de dépendance à la réalisation **figurative** en particulier. | La modalisation (« may ») est correcte. Ajouter : "although neither work isolates figurative realization as a factor." |

### L.4 Attribution non appuyée

| Emplacement | Affirmation | Statut |
| --- | --- | --- |
| L. 103 | "An evaluator that literalizes a metaphor, or reads surface unexpectedness as evidence of factual deviation, can therefore report a hallucination although the underlying claim remains supported." | **[evidence needed]** — aucune citation, aucun exemple. L'article le reconnaît l. 104, mais l'affirmation porte une part importante de la motivation. Voir E3. |
| L. 793 | "Such tasks can reveal whether a factuality verifier mistakes figurative wording for unsupported claim content." | **[evidence needed]** — voir I.5. |

### L.5 Citations manquantes

| Emplacement | Affirmation nécessitant une source |
| --- | --- |
| §2.2, définition de $\mu_p$ | La typologie des marqueurs de statut épistémique (hedges, marqueurs d'évidentialité, modalité) est une littérature établie en linguistique ; aucune référence n'est donnée. Voir E4. |
| §2.4, notion d'engagement véri-conditionnel | Aucune référence en sémantique de l'assertion. `stalnaker_assertion_1978` est dans le fichier `.bib`, non cité. |
| §2.2, hiérarchie des instructions (l. 314–316) | "higher-authority system, safety, legal, and domain constraints bound what a user can authorize" — affirmation normative présentée sans source ; la littérature sur la hiérarchie d'instructions existe. **[requires verification]** sur la référence appropriée. |
| §6.1, "Severity should weight the penalty after the contractual claim label" | Recommandation normative sans appui ; au moins une référence sur la pondération par gravité en évaluation de factualité serait attendue. |

---

## M. Matière à couper, fusionner, déplacer ou développer

| Emplacement | Action | Raison | Effet attendu |
| --- | --- | --- | --- |
| §1, l. 100–104 (paragraphe « second diagnostic problem ») | **Déplacer** après « Our position » | Ouvre un second front avant que la thèse principale ne soit posée, et se désamorce lui-même dans la foulée | Thèse principale plus nette ; le fil « style » devient une question de recherche subordonnée, ce qu'il est |
| §1, l. 111–120 (bloc de notation) | **Réécrire** : prose d'abord, renvoi à la Fig. 1, notation ensuite | Neuf notions nouvelles en dix lignes avant tout exemple | Introduction accessible à un lecteur non spécialiste, exigence explicite du cahier des charges de *CL* |
| §2.3, clauses de non-effet du style (5 occurrences sur 7) | **Supprimer** après adoption de E5 | Répétition qui signale une faiblesse architecturale | ≈ 15 lignes ; argument renforcé |
| §3.1, l. 704–711 (énumération des taxonomies) | **Raccourcir** de 8 à 4 lignes, garder Huang et al. et développer le contraste | Liste sans argument ; l'article la traverse sans y prendre position | ≈ 5 lignes ; §3 devient argumentatif |
| §3, nouvelle §3.6 (assertion, engagement, marquage épistémique) | **Développer** — ajouter ≈ 20 lignes | Condition d'adéquation à *CL* (E4) | Adéquation au support : plausible → forte |
| §2, nouvelle §2.6 (inférence du contrat sous sous-spécification) | **Développer** — ajouter ≈ 25 lignes + un cas travaillé | Répond à l'objection fatale (E1) | Transforme la vulnérabilité principale en contribution diagnostique |
| §4, nouvelle §4.3 (démonstration de faisabilité) | **Développer** — ajouter ≈ 25 lignes + un petit tableau | Répond à « le problème existe-t-il ? » (E3) | Neutralise l'objection la plus fréquente aux position papers |
| §4.2, l. 776–795 | **Réécrire** après correction de D2 et D3 | Chiffre faux et codes non définis dans la section qui porte la contribution 2 | Crédibilité restaurée |
| Fig. 2 | **Scinder** en 2a et 2b | Densité incompatible avec la lisibilité à l'impression | Deux figures lisibles au lieu d'une illisible |
| Fig. 3 | **Réécrire** en grille à cellules nommées | Le dispositif visuel affirme plus que la légende n'autorise | Risque de mésinterprétation : élevé → faible |
| Tab. 2 (`tab:contracts`) | **Réécrire** en tableau à en-têtes | Ce n'est pas un tableau ; la comparaison, sa fonction, est empêchée | Comparaison possible en un coup d'œil |
| Annexe B, en-tête | **Développer** — glossaire complet des codes | La promesse d'auditabilité n'est pas tenue (D3) | Tableaux réellement auditables |
| Annexe A, l. 1157 (« contract dependence, not relative truth ») | **Déplacer** en §2.5 | C'est la réponse directe au malentendu le plus prévisible sur la thèse ; elle est actuellement enterrée en annexe | Malentendu prévenu là où il naît |
| `CL_submission_metadata.txt` | **Régénérer intégralement** | Titre, abstract et notation obsolètes (D1) | Supprime un risque de rejet éditorial |
| `README.md` / instructions de projet | **Mettre à jour** | Mentionnent encore l'ancien titre et les macros `\CI`, `\TR`, `\PD`, `\Hallu`, `\Faith`, `\Acc`, absentes du manuscrit (qui utilise `\TC`, `\LD`, `\Hall`, `\SUP`) | Cohérence du dépôt |
| `main_position_revised.tex` (1 369 lignes, 29/07 10:22) | **Archiver ou supprimer** | Deux manuscrits proches coexistent à la racine ; risque de soumettre le mauvais PDF | Élimine un risque matériel réel |

**Estimation de compression :** environ 25 lignes récupérables sans affaiblir l'argument (répétitions du style, énumération des taxonomies, redondances de la Table 2). Les développements recommandés ajoutent environ 70 lignes. Le solde est positif d'environ 45 lignes, mais chaque ligne ajoutée répond à une objection identifiée — c'est un échange favorable.

---

## N. Évaluation de l'agenda de recherche

L'agenda est **une contribution authentique**, et non une section de travaux futurs déguisée. Trois raisons : les six priorités sont ordonnées en séquence de validation dépendante (P1 conditionne P2, qui conditionne P3) ; chacune énonce le problème, sa pertinence pour le cadre et la tâche de recherche ; chacune se termine par une **condition de réfutation** explicite. Ce dernier point est rare et devrait être mis en avant dans l'introduction, où il n'est pas mentionné.

| Item | Question de recherche | Méthode / preuve requise | Lien à la thèse | Faiblesse actuelle |
| --- | --- | --- | --- | --- |
| **P1. Annotation et fiabilité du contrat** | Des annotateurs indépendants identifient-ils $O_p$, $\Gamma_p$, $\mu_p$, $\sigma_p$ de façon cohérente à partir du contexte de tâche ? | Codebook public ; pilotes par champ ; accord par champ et par étiquette ; taux d'adjudication ; temps d'annotation | **Direct** — sans elle, rien ne tient | **Ne traite pas la sous-spécification.** Elle mesure l'accord sur des contrats *déclarés*, pas la capacité à en inférer un quand le prompt est muet. C'est le cas majoritaire. → Ajouter une sous-tâche nommée « contract inference from underspecified prompts », avec rapport du taux d'indétermination. |
| **P2. Benchmark factoriel** | Le changement d'un seul champ produit-il le changement d'étiquette prédit, toutes choses égales par ailleurs ? | Plan factoriel par blocs à partir des cas A–E ; contrastes de style à claims appariés | **Direct** | Aucune indication de taille d'échantillon, de puissance, ni de sélection des tâches. Le principal risque de validité — la difficulté à préserver l'engagement factuel à $\sigma=2$ — est mentionné mais non traité méthodologiquement. → Indiquer un ordre de grandeur et la procédure d'adjudication des appariements. |
| **P3. Récupération robuste au style et diagnostic par étape** | Où entre l'erreur dans le pipeline, et les claims appariés conservent-ils leur étiquette sous variation stylistique ? | Traces d'évaluation complètes ; comparaison extraction / NLI / retrieval / juge-modèle ; exactitude et calibration par étape et par niveau de style | **Direct** — c'est le test de la valeur diagnostique revendiquée | La mieux spécifiée des six. Aucune faiblesse notable. |
| **P4. Agrégation au niveau réponse** | Quelle règle $R(y\mid p)$ permet la comparaison sans effacer les distinctions ? | Comparaison de règles transparentes ; report systématique de la distribution sous-jacente | **Direct** — sans elle, aucun benchmark n'est constructible | Aucun critère de départage entre les quatre règles proposées. → Énoncer ce qui ferait préférer l'une : par exemple, la stabilité du classement des systèmes sous perturbation de la règle. |
| **P5. Mitigation préservant `LD` et le style factuel** | Peut-on réduire `H` sans supprimer `LD` ni le contenu soutenu à $\sigma\in\{1,2\}$ ? | Évaluation sur trois axes ; comparaisons de Pareto ; rapport par contrat | **Direct** — c'est l'enjeu pratique de la position | Bien conçue. Elle gagnerait beaucoup à s'appuyer sur les sous-types de `H` de E2 : les trois sous-types appellent des mitigations différentes, ce qui rend la priorité plus opérationnelle. |
| **P6. Généralisation** | Les distinctions survivent-elles au changement de domaine, de langue et à l'interaction ? | Réplication multi-domaines ; études multilingues sur les marqueurs épistémiques ; suivi des trajectoires agentiques | **Indirect mais légitime** | La plus vaste et la moins spécifiée : elle contient au moins trois programmes distincts. → Scinder ou hiérarchiser. Le volet multilingue est le plus fort et le plus pertinent pour *CL* : les conventions de hedging et d'évidentialité varient typologiquement, ce qui teste directement la portabilité de $\mu_p$. **À mettre en avant.** |

**Items à ajouter :**
1. **Robustesse du contrat à la déclaration adverse** — mesurer de combien un $\Gamma_p$ élargi fait baisser le taux de `H` rapporté à comportement du modèle constant. Découle directement de la limite identifiée en §H (risque de mésusage) et fournit une garantie méthodologique aux concepteurs de benchmarks.
2. **Coût comparé** — comparer le temps et le coût d'annotation contract-aware au gain diagnostique, face à une base factualité + conformité. P1 mentionne le temps d'annotation mais aucune priorité ne pose la question du rapport coût/bénéfice, qui déterminera l'adoption réelle.

**Aucun item de l'agenda n'est vague, non testable, ou déconnecté de la thèse.** C'est un point fort qu'il faut signaler dès l'introduction.

---

## O. Liste de conformité à la soumission

| Exigence | Statut | Détail |
| --- | --- | --- |
| Rédigé en anglais | ✅ | Anglais de bon niveau, accessible à un lecteur non natif |
| Orthographe américaine cohérente | ✅ | Aucune graphie britannique détectée ; `\usepackage[american]{babel}` cohérent |
| Abstract informatif de 150–250 mots | ✅ | 193 mots |
| Aucune citation dans l'abstract | ✅ | — |
| Aucune notation mathématique dans l'abstract | ✅ | — |
| Classe LaTeX *Computational Linguistics* courante | ⚠️ | `clv2025.cls` présent et fonctionnel ; vérifier qu'il s'agit bien de la version en vigueur en juillet 2026 sur cljournal.org **[requires verification]** |
| Noms et affiliations présents (relecture en simple aveugle) | ✅ | Cinq auteurs, deux affiliations, contact indiqué |
| **Équations numérotées** | ❌ | 4 équations en display, **aucune numérotée** ; `\begin{equation}` : 0 occurrence. Voir D4 |
| Exemples formels numérotés | ❌ | Cas A–E désignés par lettres en `\paragraph`, non numérotés ni référençables |
| Références de format homogène | ⚠️ | Style `compling` appliqué correctement, mais 31/77 entrées en préprint/`@misc`, dont plusieurs disposent d'une version archivale ; `malin_faithfulness_review_2025` incomplète (volume, numéro, pages manquants) |
| Figures et tableaux cités dans l'ordre | ✅ | Fig. 1 (l. 140) → Tab. 1 (l. 275) → Fig. 2 (l. 429) → Tab. 2 (l. 625) → Tab. B.1–B.3 (l. 774) → Fig. 3 (l. 797). Ordre correct |
| 5 à 10 mots-clés préparés | ❌ | Absents du manuscrit ; ceux du fichier de métadonnées appartiennent à l'ancienne version. Liste proposée en D5 |
| Métadonnées de soumission cohérentes avec le PDF | ❌ | Titre, abstract et notation obsolètes. Voir D1 — **risque le plus élevé de la liste** |
| Compilation sans erreur | ✅ | PDF de 27 pages produit le 29/07 ; journal sans citation ni référence non définie |
| Aucune clé de citation non résolue | ✅ | 77/77 résolues, 0 `\citetodo` |
| Longueur adaptée à la catégorie *Position Paper* | ⚠️ | 27 pages. *CL* ne publie pas de limite stricte pour cette catégorie, mais vérifier les attentes éditoriales avant envoi **[requires verification]** |
| Étiquettes LaTeX propres | ⚠️ | Double `\label` sur la Fig. 2 (`fig:prompt-to-claim-full` inutilisé) ; `sec:audit` pour une section renommée « Mapping » ; numérotation des annexes obtenue par un détournement de `\@currentlabel` — fragile, à vérifier sur épreuve |

---

## P. Plan de révision final

### 1. Obligatoire avant soumission

| # | Action | Renvoi |
| --- | --- | --- |
| 1 | Régénérer `CL_submission_metadata.txt` à partir du manuscrit actuel (titre, abstract, mots-clés) | D1, D5 |
| 2 | Corriger « twenty-four » → « twenty » et revérifier tous les décomptes du §4.2 contre les tableaux | D2 |
| 3 | Ajouter un glossaire exhaustif des codes en tête d'annexe B, ou réduire réellement le vocabulaire aux trois codes annoncés | D3 |
| 4 | Numéroter les quatre équations et les cinq cas travaillés ; les référencer par numéro | D4 |
| 5 | Opérationnaliser $\Gamma_p$ : hiérarchie de contrats par défaut, cas travaillé à prompt muet, issue *contract-indeterminate* | E1 |
| 6 | Désagréger `H` en trois sous-types rapportés séparément | E2 |
| 7 | Renommer §6.2 en « Limitations » et y ajouter la limite du risque de déclaration permissive et celle de la subjectivité d'annotation | §H |
| 8 | Corriger la coquille l. 683 et la référence CNN/DailyMail de la Tab. B.2 | I.7, L.3 |
| 9 | Archiver `main_position_revised.tex` hors de la racine du dépôt | §M |

### 2. Fortement recommandé

| # | Action | Renvoi |
| --- | --- | --- |
| 10 | Ajouter la §3.6 sur l'assertion, l'engagement et le marquage épistémique ; citer `stalnaker_assertion_1978`, `grice_logic_1975`, `clark_using_1996` | E4 |
| 11 | Ajouter une démonstration de faisabilité sur 25–40 items réels, plus un exemple authentique de métaphore mal traitée par un vérificateur existant | E3 |
| 12 | Sortir $\sigma_p$ du tuple et le déclarer comme condition d'évaluation ; supprimer cinq des sept clauses de non-effet | E5 |
| 13 | Scinder la Fig. 2 en 2a/2b ; convertir la Fig. 3 en grille à cellules nommées ; reformater la Tab. 2 en tableau à en-têtes | §J |
| 14 | Faire coder à l'aveugle 10 ressources par une seconde personne, rapporter l'accord, publier le codebook en matériel supplémentaire | G4 |
| 15 | Corriger la glose de Kalai & Vempala et restreindre la portée de `feuer_style_2025` | L.3 |
| 16 | Ajouter la couverture des claims comme grandeur obligatoirement rapportée | §H, §2.4 |
| 17 | Adopter l'abstract révisé (231 mots) ou en dériver une version conservant le quadruplet | §H |
| 18 | Ajouter les deux items d'agenda proposés (robustesse à la déclaration adverse ; coût comparé) | §N |
| 19 | Substituer les versions archivales aux préprints lorsqu'elles existent (BIG-Bench → TMLR ; RealTime QA → NeurIPS D&B) ; compléter `malin_faithfulness_review_2025` | L.1 |

### 3. Finitions facultatives

| # | Action | Renvoi |
| --- | --- | --- |
| 20 | Uniformiser *paper* → *article* (5 occurrences) | I.1 |
| 21 | Abréger « prompt–response style alignment » après première mention | I.2 |
| 22 | Résoudre les référents pronominaux des l. 133 et 727 | I.4 |
| 23 | Unifier les couleurs `H`/`LD` entre Fig. 1 et Fig. 2 ; ajouter une redondance non chromatique | §J |
| 24 | Remonter en §2.5 la clause « contract dependence, not relative truth » | §M |
| 25 | Supprimer le `\label` inutilisé ; renommer `sec:audit` en `sec:mapping` ; mettre à jour `README.md` | §O, §M |

---

### Ce qu'il reste à accomplir

L'article possède déjà ce qui est le plus difficile à obtenir dans un position paper : une thèse énonçable en une phrase, contestable, énoncée tôt, tenue jusqu'au bout, et assortie de ses propres conditions de réfutation. La prose est propre et la modalisation est exemplaire — l'article ne sur-vend jamais ses preuves.

Ce qui manque est de trois ordres, et un seul est coûteux.

Le premier est mécanique : un chiffre faux, un vocabulaire de codage annoncé mais non fourni, quatre équations non numérotées, un fichier de métadonnées décrivant une version abandonnée de l'article. Une journée de travail.

Le deuxième est conceptuel et constitue le vrai enjeu : **le cadre doit dire d'où vient $\Gamma_p$ quand le prompt ne le dit pas.** Tant que la portée de permission est stipulée dans chaque exemple, l'article démontre une règle sur des cas dont on a retiré la difficulté à l'avance. Une hiérarchie de contrats par défaut, un cas travaillé à prompt muet, et une issue explicite d'indétermination contractuelle suffisent — ce n'est pas un nouveau programme de recherche, c'est une extension de la §2 qui transforme la principale vulnérabilité en apport diagnostique mesurable.

Le troisième est probatoire : l'article doit établir que le problème diagnostiqué **se produit**. Un position paper n'a pas à mener d'expériences, mais il ne peut pas non plus rester entièrement sur des exemples que ses auteurs ont construits. Vingt-cinq items réels ré-étiquetés, et un seul exemple authentique de vérificateur trompé par une formulation figurative pourtant exacte, changeraient la nature de la discussion en relecture.

Enfin, pour *Computational Linguistics* précisément : un article qui parle d'engagement véri-conditionnel, de cadre discursif et de marquage de statut épistémique doit citer la sémantique de l'assertion et la typologie de l'évidentialité. Les références sont déjà dans le fichier `.bib`, non citées. Les mobiliser est l'intervention la plus rentable de toute cette revue — deux paragraphes qui font passer l'adéquation au support de *plausible* à *forte*.

Une fois ces quatre chantiers menés, l'article sera compétitif. En l'état, il ne l'est pas encore.

---

*Sources vérifiées via l'API Crossref (10.1109/JSTSP.2025.3579203 ; 10.1007/s41060-026-01214-6) et par recherche web. Les entrées marquées **[requires verification]** n'ont pas pu être confirmées dans le cadre de cette revue.*
