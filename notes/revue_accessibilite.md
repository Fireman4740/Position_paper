# Revue d'accessibilité — *Hallucination Is Relative: Evaluating LLM Divergence under Truth Contracts*

**Rôle** : éditeur/relecteur senior, Computational Linguistics.
**Objet de la revue** : lisibilité et charge cognitive pour un chercheur NLP compétent mais extérieur à ce cadre, **pas** la nouveauté scientifique.
**Version lue** : `main_position.tex` (2300 lignes) + `main_position.pdf` (38 p.), lus intégralement.
**Convention** : les citations du manuscrit et les propositions de réécriture sont en anglais ; l'analyse est en français. Les localisations donnent la page du PDF et/ou la ligne du `.tex`.

---

## 1. Test de compréhension en première lecture

Lecture des deux premières pages (p. 1 abstract + Introduction, p. 2), **sans** remonter depuis les sections ultérieures.

| # | Question | Verdict | Justification |
|---|---|---|---|
| 1 | Quel problème le papier identifie-t-il ? | **Immédiatement clair** | p. 1, §1 ¶1–2 : les LLM produisent des affirmations que l'information disponible ne tranche pas ; ce n'est pas toujours une erreur. Le contraste est posé net. |
| 2 | Pourquoi ce problème importe-t-il ? | **Immédiatement clair** | p. 2 ¶1 : assistant médical vs assistant de fiction. Deux phrases, très efficaces. |
| 3 | Que manque-t-il aux pratiques d'évaluation actuelles ? | **Clair après relecture** | p. 2 ¶2. Le paragraphe empile factualité, fidélité à la source, et *trois* références créativité (Runco/Diedrich, CreativityPrism, trois métriques de nouveauté) avant d'énoncer le manque. La phrase-clé — *"These dimensions do not by themselves determine whether a novel factual claim violates a task constraint"* — arrive en 8ᵉ position dans le paragraphe. |
| 4 | Qu'argumentent exactement les auteurs ? | **Immédiatement clair** | p. 2, *"We argue that the hallucination label is relative to the task's truth contract."* Marqueur auctorial explicite, placé en tête de paragraphe. Excellent. |
| 5 | Quelle est la solution proposée ? | **Clair après relecture** | Le contrat est nommé en p. 2, mais la *procédure* (chaîne de sept étapes) n'existe qu'en p. 6. En p. 2 on reçoit un résultat, pas un mécanisme. |
| 6 | Que contient le contrat de vérité ? | **Clair après relecture** | Les trois champs sont glosés en une phrase chacun (l. 172–174), mais `Γ_p` et `μ_p` sont définis *par* les termes qu'ils sont censés éclairer (*"which evidence-unknown content the task authorizes"* — or `evidence-unknown` n'a pas encore été défini). |
| 7 | Différence entre état de preuve et étiquette finale ? | **Seulement clair plus tard** | C'est le point le plus grave. En p. 2, les deux vocabulaires (ENTAILED/CONTRADICTED/UNKNOWN vs SUP/H/LD) apparaissent *dans la même phrase*, sans qu'on dise jamais qu'il s'agit de **deux niveaux distincts**. La phrase méta qui l'explicite — *"We reserve ENTAILED, CONTRADICTED, and UNKNOWN for evidence states. The three claim labels are supported, hallucination, and licensed divergence"* — est en **§2.4, p. 9**. Sept pages d'écart. |
| 8 | Pourquoi la même affirmation UNKNOWN reçoit-elle des étiquettes différentes selon la tâche ? | **Immédiatement clair** *(à condition d'atteindre la Figure 1)* | La Figure 1 répond parfaitement. Mais elle est **p. 5**, référencée p. 2 et p. 4. Sur les deux premières pages, la réponse est purement verbale. |
| 9 | Que contribue le papier au-delà de la terminologie ? | **Seulement clair plus tard** | Le ¶ *Contributions* (p. 4) annonce trois contributions ; les deux dernières (verdict structuré, mapping + agenda) ne sont pas motivées avant leurs sections respectives (p. 12, p. 18). Sur les deux premières pages, un lecteur sceptique conclut « c'est du vocabulaire ». |
| 10 | Quelles preuves soutiennent la position ? | **Seulement clair plus tard** | Le ¶ *Mapping and worked cases* est en p. 4, après la Figure 1. Sur les p. 1–2, aucune indication du type de preuve. L'abstract le dit (*"A purposive mapping of forty resources and five worked cases"*), mais l'abstract n'est pas les deux premières pages du corps. |

**Score d'accessibilité en première lecture : 6 / 10**

Ce qui empêche un score plus élevé :

1. **La distinction état de preuve / étiquette n'est jamais nommée comme distinction sur les pages 1–2.** Elle est *utilisée* (l. 175–181) mais jamais *thématisée*. Le lecteur voit six termes en petites capitales et suppose une seule taxonomie à six valeurs.
2. **Le pic de densité de la p. 2.** En une trentaine de lignes (l. 155–186) le lecteur reçoit : `claim`, `x`, `p`, `task context` (avec sa liste de six composantes), `y`, `evaluator`, `response span s`, `TC(p)=(O_p,Γ_p,μ_p)`, trois états de preuve, trois étiquettes, trois codes de raison, et un renvoi en avant vers la « forme normalisée ». Soit **~18 objets nouveaux** avant tout exemple.
3. **La Figure 1 arrive trois pages après le besoin.** Elle est l'ancrage intuitif du papier ; le lecteur la reçoit après avoir déjà été formalisé.
4. **Termes utilisés avant définition sur les p. 1–2** : `observed status marking` (l. 179 ; défini p. 6/8), `reason code` (l. 176 ; défini p. 9), `claim recovery` (l. 230 ; défini p. 8), `evidence-unknown` (l. 173 ; jamais défini comme composé — inféré).

---

## 2. Reconstruction du papier en langage simple

**Résumé en 7 phrases, sans notation ni jargon interne :**

> Les modèles de langue produisent souvent des affirmations que les informations disponibles pour la tâche ne permettent ni de confirmer ni de démentir, et les évaluations actuelles traitent presque toujours ce cas comme une erreur. Or cela dépend de la tâche : un assistant médical ne doit pas présenter un diagnostic non vérifié comme acquis, tandis qu'un assistant d'écriture de fiction doit pouvoir inventer. Les auteurs soutiennent donc que l'étiquette « hallucination » dépend de ce que la tâche autorise, et non de la vérité de la proposition, qui elle ne change pas. Pour rendre cette dépendance explicite, ils demandent que chaque tâche déclare trois choses : la source qui fait autorité pour trancher, le type de contenu non tranché que la tâche autorise malgré tout, et la manière dont ce contenu doit être signalé. L'évaluation se fait alors en deux temps : on regarde d'abord ce que la source dit de l'affirmation (elle la confirme, la contredit, ou reste muette), puis, dans le seul cas où la source reste muette, on regarde si la tâche autorisait ce contenu et s'il a été correctement signalé — ce qui donne « hallucination » ou « divergence autorisée ». Les auteurs passent en revue quarante ressources d'évaluation existantes et constatent qu'aucune ne représente séparément ces trois éléments tout en contrôlant la formulation. Cinq cas construits montrent ensuite précisément quel élément il faut changer pour faire basculer une étiquette, ce qui débouche sur un programme d'études empiriques dont le test central est de savoir si cette évaluation « sous contrat » fait mieux qu'une combinaison de vérification factuelle et de suivi d'instructions.

**Un chercheur NLP non spécialiste pourrait-il reconstruire ce résumé après une seule lecture ?**

> ### Verdict : **Oui, mais avec effort.**

Les phrases 1 à 4 se reconstruisent sans difficulté. Les phrases 5 à 7 exigent un travail supplémentaire :

- **Phrase 5 (les deux temps de la décision)** — le manuscrit ne l'énonce jamais comme « deux temps ». Il l'énonce comme une chaîne de sept étapes (§2.1, p. 6), qui mélange des étapes de *préparation* (sélection du span, récupération, canonicalisation) et des étapes de *décision* (états 4, 5, 6, 7). Le lecteur doit lui-même repérer que seules les étapes 4–7 constituent la règle, et que 5–6 ne s'appliquent qu'à une branche. La phrase la plus utile du papier sur ce point — *"Two of the three evidence states settle the label on their own. The third does not"* (l. 152–154) — est excellente mais isolée, et n'est jamais reprise comme structure organisatrice.
- **Phrase 6 (le mapping)** — reconstructible, mais le lecteur risque de sur-généraliser en « aucune ressource de la littérature ne fait cela », précisément ce que le papier passe beaucoup d'énergie à éviter (voir §13 et §22 ci-dessous).
- **Phrase 7 (l'agenda)** — reconstructible seulement si le lecteur atteint la p. 21 avec assez d'énergie ; sept priorités × quatre rubriques = 28 blocs, ce qui est le second pic de charge du manuscrit.

**Où le message s'obscurcit** : dans la §2 (Framework), entre la p. 8 et la p. 13. Sept sous-sections y introduisent, dans l'ordre : récupération, canonicalisation, vérification, règle d'étiquetage, codes de raison, sévérité, méta-affirmations, niveau de marquage stylistique σ∈{0,1,2}, alignement de marquage, couverture de récupération, verdict de contenu ordonné, succès créatif, quatre types d'échec procédural. **Le noyau argumentatif (la règle) occupe une page et demie ; les périphériques en occupent cinq.**

---

## 3. Revue de l'Introduction comme dispositif d'accueil

### Progression observée vs progression attendue

| # | Étape attendue | Présente ? | Où | Commentaire |
|---|---|---|---|---|
| 1 | Problème concret et intuitif | ✅ | p. 1 ¶1–2 | Très bien fait. |
| 2 | Pourquoi c'est important | ✅ | p. 2 ¶1 (médical / fiction) | Deux phrases, exemplaire. |
| 3 | Ce que l'évaluation actuelle capture | ⚠️ | p. 2 ¶2 | Correct mais surchargé de références (voir ci-dessous). |
| 4 | **Cependant**, pourquoi c'est insuffisant | ⚠️ | p. 2 ¶2 fin | Énoncé, mais enfoui en fin de paragraphe. |
| 5 | Position des auteurs | ✅ | p. 2, *Our position* | Excellent marqueur. |
| 6 | Explication intuitive de la solution | ❌ | — | **Absente.** On passe directement de la position à la notation `TC(p)=(O_p,Γ_p,μ_p)`. |
| 7 | Exemple simple ou Figure 1 | ⚠️ | Figure **p. 5** | Présente mais placée trois pages trop loin. |
| 8 | Périmètre de la proposition | ✅ | p. 3 ¶1 | Bien fait, quoique redondant avec §3.6 et §8.3. |
| 9 | Contributions | ✅ | p. 4 | Claires, trois items numérotés. |
| 10 | Feuille de route | ✅ | p. 4, *Organization* | Complète. |

### Problèmes identifiés

**a) Matériel technique introduit trop tôt.** Le paragraphe *Our position* (p. 2) contient, avant tout exemple :

> **Original :**
> *"We use $x$ for the literal prompt and $p$ for the complete task context. […] The model produces a response $y$. […] A response span $s$ is a segment of $y$ from which the evaluator recovers zero, one, or several truth-conditional claims."*

**Problème** : quatre symboles introduits d'affilée. `$s$` **n'apparaît nulle part ailleurs dans le manuscrit** (vérifié : une seule occurrence, l. 168). `$x$` apparaît trois fois en tout (définition, l. 159, et la boîte « Prompt $x$ » de la Figure 2). Le lecteur paie un coût de mémorisation pour une notation qui n'est jamais réutilisée.

**Version plus simple :**
> *"Throughout, the task context is everything the evaluation treats as applicable when the response is produced: the prompt itself, system instructions, dialogue history, domain constraints, attached data, and tool or environment state. An evaluator — a human annotator, an automated pipeline, or both — reads the response and identifies the truth-conditional commitments it makes."*

**b) Littérature discutée avant que le lecteur comprenne le problème.** Le ¶2 de la p. 2 cite huit travaux (Maynez, Kryscinski, Min, Runco & Jaeger, Diedrich, Hou, Ismayilzada, Zhao, Namuduri) pour établir un seul point : les critères existants ne tranchent pas le cas visé. Les trois références « nouveauté » (Ismayilzada, Zhao, Namuduri) n'ajoutent rien à l'argument à cet endroit et appartiennent à §3.5.

**c) Terminologie introduite avant motivation.** `evidence-unknown content` (l. 173) est employé comme si le lecteur savait déjà ce qu'est un *evidence state*. Or les trois états sont énoncés deux lignes plus bas. L'ordre est inversé.

**d) Équations avant explication intuitive.** `TC(p)=(O_p,Γ_p,μ_p)` (l. 171) précède de trois pages tout exemple travaillé. La Figure 1 fait ce travail — mais après.

**e) Paragraphes qui détournent de la position centrale.** Le ¶ *A secondary problem: claim recovery under marked style* (p. 3, ~30 lignes) est le plus long paragraphe thématique de l'Introduction. Il introduit `style marking`, `foregrounding`, la littérature stylistique, le style transfer, et `claim-preserving style variation`. Le manuscrit le qualifie honnêtement de « secondaire » — mais lui donne **plus d'espace qu'au ¶ *Our position*** et le place avant la Figure 1. Un lecteur de première lecture en sort avec l'impression que le papier a deux thèses de poids égal.

**f) Contribution secondaire qui masque la principale.** Même constat, au niveau de l'abstract : sur 205 mots, ~45 concernent le style et le verdict au niveau réponse. C'est disproportionné par rapport au rôle réel de ces éléments dans l'argument.

**g) Répétitions de la même motivation.** Le disclaimer « le contrat change l'étiquette, pas la vérité » apparaît **six fois** dans le manuscrit (l. 92, 149, 150, 359, 1837, 1954–1955), dont **deux fois à quatre lignes d'intervalle** dans le même paragraphe :

> l. 149 : *"the truth value of the underlying proposition does not."*
> l. 150 : *"The truth contract changes the evaluation label, not what is true."*

**h) Transitions manquantes.** Entre le ¶ *Why a truth contract rather than…* et le ¶ *A secondary problem*, aucune articulation : on passe d'une défense contre une objection à un problème méthodologique distinct sans annonce.

**i) Contribution des auteurs insuffisamment saillante.** Marqueurs auctoriaux présents : *"We argue"* (l. 147), *"By relative, we mean"* (l. 148), *"We use"* (l. 158), *"We write"* (l. 171), *"By style marking we mean"* (l. 235), *"We call"* (l. 240), *"We make this notion precise"* (l. 247). **Manquant : *"We propose"***. Le ¶ *Contributions* utilise la troisième personne (*"it introduces"*, *"it derives"*, *"it uses"*), ce qui affaiblit l'attribution au moment précis où elle devrait être la plus nette.

### Verdict

> ### Accessibilité de l'Introduction : **difficile**

L'Introduction n'échoue pas — elle contient tous les éléments requis, dans un ordre presque correct. Elle échoue sur **le placement de l'ancrage intuitif** (étape 6 absente, étape 7 à trois pages) et sur **la densité de la p. 2**. Une restructuration ciblée (voir P0-1 et P0-2) la ferait passer à « acceptable » sans réécriture de fond.

---

## 4. Audit « concept avant usage »

| Concept | 1ʳᵉ occurrence | 1ʳᵉ explication claire | Usage avant explication ? | Facile à comprendre ? | Révision nécessaire |
|---|---|---|---|---|---|
| hallucination | p. 1 (titre, abstract) | **jamais définie comme terme** | ⚠️ implicite | Non — voir note A | **Oui, P0** |
| factuality | p. 1 abstract | p. 14 (§3.2) | Oui (13 p.) | Oui (sens communautaire) | Non |
| faithfulness | p. 1 abstract | p. 14 (§3.2) | Oui (13 p.) | Oui | Non |
| claim | p. 2, l. 155 | p. 2, l. 155 | Non | **Oui** — définition excellente | Non |
| response span | p. 2, l. 168 | p. 2, l. 168 | Non | Oui | Retirer le symbole `$s$` |
| task context | p. 2, l. 158 | p. 2, l. 158 | Non | Oui | Non |
| prompt (`$x$`) | p. 2, l. 158 | p. 2, l. 158 | Non | Oui | Retirer le symbole |
| evaluator | p. 2, l. 165 | p. 2, l. 165 | Non | Oui | Non |
| truth contract | p. 1 abstract | p. 6 (§2.2) | Oui | Partiellement | Ajouter une glose non technique p. 2 |
| task oracle | p. 1 abstract | p. 7 (§2.2) | Oui | Oui (glose p. 2 suffisante) | Non |
| permission scope | p. 1 abstract | p. 7 (§2.2) | Oui | ⚠️ voir note C1 | Oui, P1 |
| required status marking | p. 1 abstract | p. 7–8 (§2.2) | Oui | Oui (exemple Lyme excellent) | Non |
| **observed status marking** | **p. 2, l. 179** | **p. 6, l. 432** | **Oui — 4 p.** | Non | **Oui, P0** |
| evidence state | p. 2, l. 175 | p. 9 (§2.4) | Oui — 7 p. | Non | **Oui, P0** |
| ENTAILED | p. 2, l. 175 | p. 9 | Oui | Oui | Non |
| CONTRADICTED | p. 2, l. 176 | p. 9 | Oui | Oui | Non |
| UNKNOWN | p. 2, l. 178 | p. 9, l. 632 | Oui | ⚠️ voir note B1 | Oui, P1 |
| supported (SUP) | p. 2, l. 175 | p. 9 | Oui | Oui | Non |
| hallucination *comme étiquette* | p. 2, l. 176 | p. 9 | Oui | Non — voir note A | **Oui, P0** |
| licensed divergence (LD) | p. 1 abstract | p. 9 | Oui | Partiellement | Oui, P1 |
| **reason code** | **p. 2, l. 176** | **p. 9, l. 640** | **Oui — 7 p.** | Non | **Oui, P0** |
| **claim recovery** | **p. 3, l. 230** | **p. 8 (§2.3)** | **Oui — 5 p.** | Non | **Oui, P1** |
| claim extraction | p. 8, l. 551 | p. 8, l. 551 | Non | Oui | Non |
| canonicalization | p. 4, l. 395 (roadmap) | p. 8 (§2.3) | Renvoi explicite | Oui | Non |
| claim verification | p. 6, l. 434 | p. 8, l. 591 | Léger | Oui | Non |
| procedural failure | **p. 1 abstract, l. 99** | **p. 13 (§2.7)** | **Oui — 12 p.** | Non | **Oui, P1** |
| claim-recovery coverage | p. 1 abstract, l. 98 | p. 12 (§2.6) | Oui — 11 p. | Oui une fois défini | Oui, P2 |
| content verdict | p. 1 abstract, l. 97 | p. 12 (§2.6) | Oui — 11 p. | Oui | Oui, P2 |
| usefulness | p. 2, l. 136 | p. 12, l. 1024 | Oui — 10 p. | Oui | Oui, P2 |
| severity | p. 9, l. 682 | p. 9, l. 682 | Non | Oui | Non |
| style / style-marking | p. 3, l. 235 | p. 10 (§2.5) | Glose p. 3 | Oui | Non |
| instruction following | p. 3, l. 217 | p. 3, l. 217 | Non | Oui | Non |
| **alignment** | p. 1 abstract, l. 100 | — | — | **Non — collision, note C6** | **Oui, P1** |
| nominal task profile | p. 17, l. 1276 | p. 17, l. 1276 | Non | Oui | Non |
| evaluation resource | p. 16, l. 1240 | p. 16, l. 1240 | Non | Oui | Non |
| error localization | p. 21, l. 1598 | p. 21, l. 1598 | Non | Oui | Non |

### A. Concepts introduits mathématiquement avant intuitivement

1. **`TC(p)=(O_p,Γ_p,μ_p)` (l. 171, p. 2).** La notation précède l'exemple de trois pages. Le triplet n'a *aucune* structure algébrique exploitée : le papier ne compose jamais deux contrats, n'en projette jamais une composante, ne quantifie jamais dessus. C'est une liste de trois champs écrite comme un uplet.
2. **`c*=(q*,m*)` (l. 430, p. 6).** Introduit dans une phrase de 54 mots qui fait simultanément le travail d'exemple et de définition. L'idée sous-jacente est simple (« on sépare *ce qui est affirmé* de *comment c'est présenté* ») et devrait être énoncée en une phrase nue avant la notation.
3. **Équation (1)** est un environnement `equation` numéroté, **avec un label `eq:truth-contract` qui n'est jamais référencé** (vérifié : une seule occurrence dans le fichier, la définition du label elle-même). Une équation numérotée signale au lecteur « vous devrez y revenir » ; ici, c'est un faux signal.
4. **`σ_p ∈ {0,1,2}` (p. 10).** L'échelle est présentée comme une définition avant que le lecteur ait vu un cas où elle sert. Le minimal pair du Cas E (p. 20) est la meilleure explication du concept dans tout le papier — dix pages plus loin.

### B. Concepts corrects mais trop abstraits

1. **`UNKNOWN`.** La formulation *"UNKNOWN means only that the task oracle neither entails nor contradicts the claim; it is not a statement about all possible knowledge"* (l. 631–633, p. 9) est exacte et importante — mais elle est **négative**. Un exemple concret la rendrait immédiate. Le manuscrit en possède déjà un : l'excerpt de la Rosetta Stone est muet sur l'emplacement de la stèle. Il suffirait d'ajouter, à cet endroit : *"In Figure 1, the frozen excerpt says nothing about where the complete stele stood; that silence is what UNKNOWN records."*
2. **`Permission scope`.** La définition (*"specifies the topics, entities, claim types, or fictional world in which evidence-unknown content may be introduced"*) est une énumération de types de portée, pas une intuition. L'exemple médical qui suit (diagnostics possibles autorisés / posologies inventées exclues) est excellent et devrait **précéder** la définition, pas la suivre.
3. **`Content verdict` ordonné (p. 12).** La règle en trois branches est correcte mais l'ordre `contract-violating → indeterminate → contract-compliant` est contre-intuitif : le lecteur s'attend à ce que le cas nominal vienne en premier. Une phrase d'amorce résoudrait cela : *"The rule is worst-case first: one violation is enough to condemn the response, and an unreliable evaluation is reported as such rather than as a pass."*
4. **`Claim-recovery coverage`.** Définie comme une proportion dont le dénominateur exige un ensemble adjugé indépendamment — donc **non calculable en pratique sans annotation gold**. Ce point est dit (l. 974–975), mais le lecteur ne comprend pas immédiatement que cette composante rend le verdict `indeterminate` de facto inatteignable dans un pipeline automatique. Une phrase le dirait.

### C. Concepts dont la distinction avec un autre terme reste floue

| Paire | Où le lecteur se perd | Le papier la traite-t-il ? |
|---|---|---|
| **C1. evidence state vs claim label** | p. 2, l. 175–181 : les six termes arrivent ensemble. | Oui, mais **p. 9**. Voir §6 ci-dessous — c'est le problème n°1 du papier. |
| **C2. task oracle vs reference evidence** | §3.2 (p. 14) dit que le document source « instancie » l'oracle. Mais un lecteur venu de la factualité se demande p. 2 si `task oracle` = « les données gold ». | Oui, très bien : *"The task oracle does not represent whatever the user would like to be true"* (l. 505–506) et la liste des sept types admissibles (l. 493–497). Bien traité — mais p. 7. |
| **C3. permission scope vs usefulness** | Le lecteur suppose que ce qui est autorisé est ce qui est utile. | **Oui, remarquablement bien** : *"an ingenious fabricated medical fact still receives the hallucination label, whereas an unhelpful but in-frame fictional invention still receives the licensed-divergence label, with low usefulness"* (§3.5, p. 15). **C'est la meilleure phrase du papier sur ce point — et elle est enterrée dans Related Work.** Elle devrait être en §2.4. |
| **C4. required status marking vs style** | Distinction centrale, contre-intuitive, énoncée ~8 fois. | Oui, §2.5 (p. 10) : *"Required status marking concerns the epistemic or discourse status of an UNKNOWN claim. Style-marking level concerns rhetorical form."* Nette. **Mais** la Figure 1 utilise le mot *"voice"* pour le style (*"voice is separate"*), la Figure 2 utilise *"style-marking level"*, et le corps utilise *"requested style"* (27×), *"communicative form"* (2×), *"requested voice"* (3×). Voir §5. |
| **C5. claim extraction vs claim recovery** | Distinction fine, introduite tardivement. | Oui, §2.3 l. 549–555 : *"Claim extraction refers to existing methods that segment a response into checkable units […] Claim recovery refers to the broader, context-sensitive step."* **Mais** `claim recovery` est employé 5 pages plus tôt (l. 230, p. 3) comme si le lecteur connaissait déjà le terme. |
| **C6. « alignment » — collision de sens** | Le mot désigne trois choses différentes. | **Non traité.** (a) *style-marking alignment* = le check du papier ; (b) *general alignment* au sens RLHF (l. 227, l. 945, l. 1860) ; (c) *prompt alignment* comme métrique de DefAn dans le Tableau B.1 (l. 2199). Un lecteur NLP lit « alignment » avec le sens (b) par défaut. |
| **C7. factuality vs faithfulness** | Le lecteur du domaine connaît la distinction ; le lecteur extérieur non. | Oui, §3.2 (p. 14) — mais les deux termes apparaissent **dès l'abstract**. |
| **C8. instruction following vs contract-aware labeling** | Objection naturelle du relecteur : « pourquoi pas simplement une rubrique de suivi d'instructions ? » | **Oui, excellemment**, p. 3 : *"A sufficiently detailed instruction-following rubric could reproduce the same labels only by representing the task oracle, permission scope, and required status marking explicitly […] In that case, it would instantiate the truth-contract rule rather than replace it."* Réponse anticipée et honnête. Rien à corriger. |

---

## 5. Cohérence terminologique et audit des synonymes

Le manuscrit est **globalement discipliné** — les traces d'un commentaire de canonicalisation en tête de fichier (l. 36–43) montrent que le travail a été fait. Les cas restants sont ceux-ci.

| Concept | Termes actuellement employés | Terme canonique recommandé | Pourquoi |
|---|---|---|---|
| Le niveau de marquage stylistique demandé | *requested style-marking level* (43×), *requested style* (27×), *requested voice* (3×, Fig. 1 + corps), *requested communicative form* (2×, §8.2 + §2.6), *voice* seul (Fig. 1) | **requested style-marking level** partout ; en légende de figure, *requested style* si la place manque | Quatre expressions pour une variable formelle. La Figure 1 — première rencontre du lecteur avec le concept — utilise le terme le moins canonique (*voice*), ce qui casse le lien avec §2.5. |
| Les cinq comparaisons construites de la §6 | *worked cases* (7×, dont abstract, Intro, Contributions), *case studies* (titre de section §6 + 1×), *the five comparisons*, *constructed specification checks* (1×) | **worked cases** dans le corps ; **retitrer la §6 en « Worked Cases »** | Le titre de section contredit tous les renvois. « Case Studies » suggère en outre de l'empirique, ce que le papier dément explicitement deux lignes plus bas. |
| La §7 | Titre *Future Work* ; désignée *research agenda* dans les Contributions (l. 391) et l'abstract ; label `sec:agenda` | **Research Agenda** (retitrer) | Le papier vend une « falsifiable research agenda » comme troisième contribution ; le lecteur cherche une section de ce nom et trouve « Future Work », qui signale en CL une section de moindre importance. Le contenu (7 priorités × critère de falsification) est bien un agenda, pas des « travaux futurs ». |
| La §5 | Titre *Results* ; désignée *the mapping* (5×), *purposive mapping* (8×), *resource mapping* (2×) | **Mapping Results** (retitrer) ; **purposive mapping** dans le corps | « Results » fait attendre des résultats expérimentaux. Une section « Results » de 1,5 page suivie d'un aveu qu'il ne s'agit pas d'une estimation de prévalence est le genre de chose qui déclenche un relecteur hostile. |
| Le résultat au niveau réponse | *content verdict*, *response-level verdict*, *structured verdict*, *structured response-level content verdict*, *response-level record* (Fig. 2), *the verdict* (Tab. B.1) | **content verdict** pour la composante ; **structured response-level record** pour l'objet à trois composantes | Le papier distingue correctement *une* composante (contenu) de *l'ensemble* (contenu + style + créatif), mais emploie « verdict » pour les deux. Le lecteur ne sait plus si `contract-compliant` conclut la réponse ou seulement son contenu. |
| L'affirmation non tranchée | *UNKNOWN claim*, *evidence-unknown content/claim* (4×), *claim left unknown by the available information* (l. 119), *a claim that the task oracle leaves UNKNOWN* | **UNKNOWN claim** (déjà défini l. 634) ; réserver *evidence-unknown* aux composés adjectivaux | Le papier définit explicitement *"We call a claim with evidence state UNKNOWN an UNKNOWN claim"* (l. 633–634) — puis continue d'alterner. La définition existe ; il faut l'appliquer. |
| Le critère de réussite créative | *creative-task success* (8×), *creative success* (3×), *task-specific creativity* (4×), *task-specific creativity criterion*, *creativity criterion* (2×) | **creative-task success** (nom de la composante) ; **creative-task criterion** (la rubrique) | Deux objets — la composante rapportée et la rubrique qui la produit — méritent deux noms stables, pas cinq. |
| L'étiquette | *claim label* (50×), *evaluation label* (6×), *the label* (5×) | **claim label** | *evaluation label* apparaît surtout dans les passages « relatif » (abstract, l. 149, l. 1837) où la précision compte le plus. Uniformiser vers **claim label** y renforcerait le contraste avec *truth value*. |

**Cas où la répétition est correcte et doit être conservée** : `task oracle`, `permission scope`, `required status marking`, `evidence state`, `claim`, `canonicalization`, `procedural failure`. Aucune variation stylistique n'y est observée — c'est le bon comportement, et il ne faut surtout pas l'« améliorer ».

**Non-recommandation explicite** : ne pas introduire de synonymes pour alléger la prose. Dans les passages les plus denses (§2.4, §2.6), la répétition littérale est ce qui permet au lecteur de suivre.

---

## 6. État de preuve vs étiquette d'affirmation — test de compréhension critique

C'est le point de bascule du papier.

### Ce que le lecteur doit comprendre

1. `ENTAILED / CONTRADICTED / UNKNOWN` = **états de preuve**, produits d'une comparaison avec l'oracle.
2. `supported / hallucination / licensed divergence` = **étiquettes d'affirmation**, produits de la règle complète.
3. Une affirmation `UNKNOWN` **n'est pas** automatiquement une divergence autorisée.
4. Un `UNKNOWN` peut devenir `H` **ou** `LD` selon le contrat.

### Où le lecteur peut le comprendre pour la première fois

**Réponse : p. 9, §2.4, lignes 623–625.**

> *"We reserve ENTAILED, CONTRADICTED, and UNKNOWN for evidence states. The three claim labels are supported, hallucination, and licensed divergence."*

C'est la première phrase du manuscrit qui **nomme les deux vocabulaires comme deux vocabulaires**.

### Où le lecteur en a besoin

**p. 2, ligne 175.** Sept pages plus tôt. Les points (3) et (4) sont *illustrés* par la Figure 1 (p. 5) et *énoncés* par la phrase *"Two of the three evidence states settle the label on their own. The third does not"* (l. 152–154, p. 2) — mais cette phrase est **la seule** de l'Introduction à porter la distinction, et elle ne dit jamais que les deux séries de mots appartiennent à deux registres différents.

> ### ⚠️ **Problème majeur de lisibilité confirmé.**

Le manuscrit demande au lecteur d'absorber six termes en petites capitales dans un paragraphe d'une trentaine de lignes sans lui dire qu'ils forment deux ensembles. La conséquence prévisible en relecture par les pairs : un relecteur écrit « pourquoi trois états *et* trois étiquettes ? ce n'est pas la même chose ? », et le papier a déjà la réponse — sept pages trop tard.

### Explication plus simple proposée

À insérer **immédiatement avant** la première mention de `TC(p)` (p. 2), en remplacement de la transition actuelle :

> *"Evaluating a claim takes two steps, and the paper's whole argument lives in the gap between them. The first step asks what the evidence says: the task's adjudication standard either entails the claim, contradicts it, or leaves it open. We call these three outcomes **evidence states**. The second step asks what the task makes of that outcome, and produces a **claim label**: supported, hallucination, or licensed divergence. For two of the three evidence states the second step is trivial — what is entailed is supported, what is contradicted is a hallucination. For the third it is not, and that is where the task's permissions decide. Current protocols collapse the two steps, which is why an open claim is almost always scored as an error."*

Bénéfice : le lecteur reçoit l'architecture (deux étapes, un seul point de décision) **avant** de recevoir le vocabulaire, et la thèse du papier devient une conséquence visible de l'architecture plutôt qu'une assertion à croire.

**Recommandation complémentaire** : dans toutes les figures et tables, ajouter les intitulés de ligne `evidence state` et `claim label` — la Figure 2 le fait déjà (excellent), la Figure 1 ne le fait pas. Ajouter à la Figure 1 une bande intermédiaire `evidence state: UNKNOWN (in both tasks)` rendrait le point visible en 5 secondes au lieu de 20.

---

## 7. Test de compréhension du contrat de vérité

Test : chaque composante peut-elle être restituée en une phrase simple après une lecture ?

### Task oracle — ✅ **Réussi**

*« Ce à quoi la réponse doit rendre des comptes pour cette tâche. »* Le lecteur peut le dire.

- **L'oracle peut-il être plus qu'une base ou un document ?** Oui, c'est clair : la liste des sept types (document source, ensemble de récupération, base de connaissances, labels gold, état d'environnement ou d'outil, procédure d'adjudication humaine, contraintes de monde fictionnel) est explicite (l. 493–497, p. 7). Les trois exemples qui suivent (article fourni / tests d'exécution / contraintes de monde narratif) verrouillent bien le point.
- **Distingue-t-on ce que la tâche tient pour établi de ce que l'utilisateur veut voir généré ?** Oui, et très bien : *"The task oracle does not represent whatever the user would like to be true. It records what the evaluation treats as established or authoritative for the task."* (l. 505–507). C'est une des meilleures formulations du manuscrit.

### Permission scope — ⚠️ **Réussi avec effort**

*« Le contenu non tranché que la tâche autorise malgré tout. »* Restituable, mais l'ordre est à corriger : la définition abstraite précède l'exemple médical, alors que l'exemple fait tout le travail.

- **Séparé de l'utilité, de la créativité, du style ?** Oui, avec insistance. Mais **la démonstration la plus convaincante est en §3.5 (p. 15)** — l'opposition « fait médical fabriqué ingénieux → H » / « invention fictionnelle inutile mais dans le cadre → LD ». Elle appartient à §2.2 ou §2.4.
- **Point restant flou** : la relation entre `Γ_p` et les contraintes de sécurité. Le manuscrit dit deux choses à deux endroits — *"A user request cannot override those constraints by redefining the task oracle or permission scope"* (l. 485–487) et *"User-specified permission scope also remains bounded by applicable safety, legal, and domain constraints"* (§8.3, l. 1933). Le lecteur ne sait pas si ces contraintes **bornent** `Γ_p` (elles en font partie) ou **le surplombent** (elles s'appliquent après). Une phrase le trancherait.

### Required status marking — ✅ **Réussi**

*« Comment le contenu autorisé mais non tranché doit être présenté. »*

L'exemple Lyme est le meilleur exemple du manuscrit :
> *"'this may be early Lyme disease, but testing is required' satisfies the required status marking, while 'this is early Lyme disease' does not."*

Une phrase, une paire minimale, zéro notation. C'est le modèle à suivre pour les autres composantes.

- « state it as a hypothesis », « mark it as fictional », « express uncertainty » sont-ils compréhensibles immédiatement ? **Oui.** La liste des signaux admissibles (hedge local, étiquette d'hypothèse, titre de section, cadre fictionnel au niveau tâche, l. 533–535) couvre bien la gamme, et le fait que `m*` soit récupéré depuis **toute** la réponse et non le seul span (l. 536–538) est un point subtil bien expliqué.

### Style — ✅ **Réussi sur le fond, ⚠️ fragilisé par la terminologie**

- **Le style est-il dans ou hors du contrat ?** **Hors** — dit sans ambiguïté et répété : l. 44 (commentaire source), l. 205–208, l. 476–480, l. 898–901, l. 941–947, l. 1969. Le lecteur ne peut pas se tromper.
- **Distingue-t-il « Write poetically » de « Present this as a hypothesis » ?** **Oui**, via la formulation de §2.5 : *"Required status marking concerns the epistemic or discourse status of an UNKNOWN claim. Style-marking level concerns rhetorical form."*
- **Ce qui fragilise** : la Figure 1 — première rencontre — nomme cela *voice* et non *style-marking level*, et le rangement de σ hors contrat n'y est signalé que par la bande de bas de figure *"voice is separate"*. Un lecteur qui ne lit que la figure ne relie pas les deux.

**Recommandation** : uniformiser vers *requested style-marking level* dans la Figure 1, et déplacer l'exemple Lyme en amont, comme paire minimale d'ouverture de §2.2.

---

## 8. Cohérence de l'exemple filé

### Inventaire des exemples

| # | Exemple | Où | Concept illustré |
|---|---|---|---|
| 1 | Assistant médical / assistant de fiction | p. 2, Intro | La motivation générale |
| 2 | **Rosetta Stone — étiquette de musée factuelle vs enfants** | **p. 5, Fig. 1** | Γ change → l'étiquette change |
| 3 | **Rosetta Stone — « engaging museum panel »** | **p. 6, §2.1** | La chaîne en 7 étapes |
| 4 | Brainstorming médical : diagnostics vs posologies | p. 7, §2.2 | Permission scope |
| 5 | Lyme disease | p. 8, §2.2 | Required status marking |
| 6 | **Rosetta Stone — « engaging museum panel for young visitors »** | **p. 11, Fig. 2** | 4 affirmations, 3 étiquettes |
| 7 | « the winter that would not lift » | p. 13, §2.7 | Échec de récupération |
| 8 | Fait médical fabriqué ingénieux vs invention inutile | p. 15, §3.5 | Portée ≠ utilité |
| 9 | FEVER / LitBench / ToolQA | p. 17, §4.2 | Codage des profils |
| 10 | XSum | p. 19, Cas A | Changer l'oracle |
| 11 | Café Verdier, Paris années 1920 | p. 20, Cas B | Cadre discursif |
| 12 | Outil / formats supportés | p. 20, Cas C | Marquage de statut |
| 13 | Cadre fictionnel / personne réelle nommée | p. 20, Cas D | Frontière de portée |
| 14 | **Rosetta Stone — réalisation neutre vs marquée** | **p. 20, Cas E** | Variation stylistique |
| 15 | Posologie fausse vs date de trivia | p. 25, §8.2 | Sévérité |

**Quinze exemples distincts, dont quatre variantes de la Rosetta Stone.**

### Diagnostic

Le manuscrit **a** un exemple filé (Rosetta Stone, 4 apparitions) et le sait — §2.1 s'ouvre sur *"Consider the running example used throughout this paper."* **Mais le lecteur ne le sait pas encore à ce moment-là**, et surtout : **les quatre apparitions n'ont pas le même setup.**

| Apparition | Oracle | Tâche demandée |
|---|---|---|
| Fig. 1 (p. 5) | Extrait figé de 3 phrases | « short factual museum label » / « short museum label for children » |
| §2.1 (p. 6) | *"the Wikipedia article on the Rosetta Stone"* — **l'article entier** | « an engaging museum panel » |
| Fig. 2 (p. 11) | *"Wikipedia excerpt"* — extrait, formulé différemment de Fig. 1 | « an engaging museum panel for young visitors » |
| Cas E (p. 20) | Renvoi à Fig. 2 | (implicite) |

**C'est le principal défaut de l'exemple filé** : le lecteur qui essaie de relier Fig. 1 et Fig. 2 doit d'abord vérifier s'il s'agit du même oracle (extrait figé vs article entier) et de la même tâche (trois libellés différents). Le coût est faible mais réel, et il est **entièrement évitable**.

### Ce que l'exemple filé couvre déjà

| Concept | Couvert par Rosetta Stone ? |
|---|---|
| la tâche | ✅ Fig. 1, Fig. 2 |
| la réponse | ✅ Fig. 1, Fig. 2 |
| l'affirmation | ✅ Fig. 2 (4 affirmations) |
| le task oracle | ✅ Fig. 1 (extrait figé), Fig. 2 |
| UNKNOWN | ✅ Fig. 1, Fig. 2 (`q*_3`) |
| permission scope | ✅ Fig. 1 (Γ₁ vs Γ₂) |
| required status marking | ⚠️ Fig. 2 (`m*_3 : possible`) — mais l'échec de marquage n'est pas illustré ; il faut aller au **Cas C** (outil/formats) |
| hallucination | ✅ Fig. 1, Fig. 2 (`q*_4`, date contredite) |
| licensed divergence | ✅ Fig. 1, Fig. 2 |
| variation stylistique | ✅ Cas E |

**Constat important : l'exemple Rosetta Stone couvre neuf concepts sur dix.** La seule lacune — l'échec de marquage — est illustrée par le **Cas C** (outil/documentation), qui n'a aucun lien avec le reste.

### Exemples redondants (candidats à la suppression ou à la fusion)

1. **Cas C (outil / formats)** — redondant avec l'exemple Lyme (p. 8), qui fait exactement la même paire minimale (« this is X » vs « this may be X, but verification is required ») et le fait mieux. **Recommandation** : reformuler le Cas C sur la Rosetta Stone — *« One possible reconstruction places the complete stele near a temple entrance »* (marqué → LD) vs *« The complete stele stood near a temple entrance »* (non marqué → H, `marking-failure`). Cela fermerait la seule lacune de l'exemple filé et supprimerait un exemple orphelin.
2. **Cas D (cadre fictionnel / personne réelle)** — se recoupe partiellement avec le Cas B (Café Verdier), qui traite déjà l'opposition monde réel / monde narratif. Le Cas D ajoute la frontière *à l'intérieur* d'un cadre fictionnel, ce qui est un point distinct — mais il est présenté sans nom, sans texte, sans contenu concret (*"a named real person presented as real history"*), donc il coûte un exemple de plus pour un gain d'abstraction. **Recommandation** : le concrétiser en le raccrochant au Café Verdier (« Café Verdier » inventé → LD ; « Verdier servait Hemingway » → H, `out-of-scope`), ce qui ferait des Cas B et D une paire au lieu de deux cas indépendants.
3. **Exemple médical** (apparitions 1, 4, 8, 15) — quatre apparitions, quatre points différents, aucune continuité de scénario. Ce n'est pas grave (le médical est le contre-poids naturel du muséal), mais l'apparition 8 (§3.5) devrait migrer vers §2 comme indiqué en §7 ci-dessus.

### Recommandation d'ensemble

**Ne pas inventer de nouvel exemple.** Le Rosetta Stone est le bon choix : concret, sans expertise requise, riche en affirmations vérifiables et en zones de silence. Trois actions suffisent :

1. **Figer un seul setup** (oracle = l'extrait de trois phrases de la Fig. 1 ; tâche = « museum label ») et le réutiliser à l'identique en §2.1, Fig. 2 et Cas E.
2. **Annoncer l'exemple filé dès l'Introduction**, au moment de la Figure 1 : *"We use this example throughout the paper."*
3. **Rapatrier le Cas C sur la Rosetta Stone**, pour que le filé couvre 10/10 des concepts.

---

## 9. Formalisme et notation mathématique

Règle appliquée : *le formalisme n'est justifié que s'il lève une ambiguïté ou s'il est réutilisé.*

| Objet formel | 1ʳᵉ occ. | Réutilisé ? | Nécessaire ? | Coût lecteur | Recommandation |
|---|---|---|---|---|---|
| `$x$` (prompt littéral) | l. 158, p. 2 | 3 occ. (déf. + l. 159 + Fig. 2) | Non — l'opposition prompt/contexte se dit en mots | Moyen (arrive dans le pic de densité) | **Retirer** — garder « the prompt » et « the task context » |
| `$p$` (contexte de tâche) | l. 158, p. 2 | ~70 occ. en indice | **Oui** — indispensable pour `O_p, Γ_p, μ_p` | Faible | **Conserver** |
| `$y$` (réponse) | l. 164, p. 2 | 4 occ. | Marginal — utile seulement pour `σ̂(y,p)` et `y_0,y_1,y_2` | Faible | **Simplifier** — retirer du corps, garder en Annexe A |
| **`$s$` (response span)** | l. 168, p. 2 | **0** | **Non** | Moyen | **Retirer le symbole** — garder le terme « response span » |
| `TC(p)=(O_p,Γ_p,μ_p)` | l. 171, p. 2 | 5 occ. + figures | Oui — c'est le nom du concept central | Élevé si non préparé | **Conserver, mais introduire après l'exemple** |
| **Équation (1) numérotée** | l. 466–469, p. 6 | **Label `eq:truth-contract` jamais référencé** | Non | Moyen — signal trompeur | **Convertir en inline** : `\TC(p)=(O_p,\Gamma_p,\mu_p)` dans le corps de phrase, sans numérotation |
| `$O_p$` | l. 172 | 36 occ. | **Oui** | Faible | **Conserver** |
| `$\Gamma_p$` | l. 171 | 34 occ. | **Oui** | Faible | **Conserver** |
| `$\mu_p$` | l. 171 | 30 occ. | **Oui** | Faible | **Conserver** |
| `$c^*=(q^*,m^*)$` | l. 430, p. 6 | 5 / 32 / 24 occ. | **Oui** — `q*` et `m*` sont tirés séparément par `O`/`Γ` et par `μ` | Moyen | **Conserver `q*` et `m*` ; envisager de retirer `c*`** (5 occ. seulement, souvent réductible à « the canonical claim ») |
| `$\sigma_p \in \{0,1,2\}$` | l. 918, p. 10 | 11 occ. | Discutable — l'échelle est déclarée provisoire (l. 794–795) | Moyen | **Simplifier** — garder les trois niveaux nommés (*minimally / locally / sustained marked*), retirer les valeurs numériques du corps, les garder en Annexe A et §7-Priorité 2 |
| `$\widehat{\sigma}(y,p)$` | l. 937, p. 10 | 3 occ. | Non — « observed style-marking level » suffit | Élevé pour ce qu'il rend | **Convertir en prose** |
| `$\mathcal{C}^*(y_i,p_i)$` | l. 2046, App. A | 2 occ. | Oui, dans le test formel de stabilité | Faible (annexe) | **Conserver** |
| `$O_t$` | l. 1803, §7 | 2 occ. | Oui — signale l'indexation temporelle | Faible | **Conserver** |
| Chaîne des 7 étapes (`enumerate`) | l. 442–450, p. 6 | Référencée l. 452 | Oui | **Élevé** — voir ci-dessous | **Simplifier en deux blocs** |
| Règle SUP/H/LD (`description` + `enumerate` imbriqué) | l. 640–655, p. 9 | Cœur du papier | **Oui** | **Élevé** — voir ci-dessous | **Conserver la structure, alléger la précédence** |

### Points critiques

**a) La chaîne en sept étapes est un arbre de décision déguisé en séquence.**

> **Original (p. 6) :**
> *"Steps 1–6 can fail, with Steps 5 and 6 applying only on the relevant UNKNOWN and in-scope branches."*

**Problème** : la phrase avoue que la liste n'est pas une séquence. Le lecteur vient de mémoriser sept étapes ordonnées ; on lui apprend ensuite que deux d'entre elles sont conditionnelles et que six peuvent échouer. La structure réelle est : **trois étapes de préparation** (1–3), **une étape de vérification** (4), **puis deux vérifications conditionnelles** (5–6) et l'assignation (7).

**Version plus simple :**
> *"Labeling proceeds in two phases. In the **preparation phase**, the evaluator selects a span, recovers the claims it commits to, and canonicalizes each one into content $q^*$ and observed status marking $m^*$. In the **decision phase**, the evaluator records the evidence state of $q^*$ against $O_p$; if that state is ENTAILED or CONTRADICTED, the label follows immediately, and if it is UNKNOWN, the permission-scope check on $q^*$ and the required-status-marking check on $m^*$ decide between the two remaining labels. Any step of the preparation phase can fail; Section 2.7 records those failures instead of a label."*

Bénéfice : la structure narrée reflète la structure logique, et le point de bascule du papier (le seul branchement) devient visible typographiquement.

**b) La règle de précédence des codes de raison est sur-formalisée.**

> **Original (p. 9) :**
> *"The evaluator records exactly one reason code, applying the following precedence: (1) if $O_p$ contradicts $q^*$, record CONTRADICTED; (2) otherwise, if the evidence state is UNKNOWN and $q^*$ falls outside $\Gamma_p$, record OUT-OF-SCOPE; (3) otherwise, if $q^*$ lies inside $\Gamma_p$ but $m^*$ fails $\mu_p$, record MARKING-FAILURE."*

**Problème** : une liste numérotée imbriquée dans un environnement `description`, avec trois `otherwise` en cascade, pour exprimer une idée que le paragraphe suivant énonce en une phrase — et mieux : *"The reason code identifies the first contract condition that fails."*

**Version plus simple :**
> *"The evaluator records exactly one reason code: the first contract condition that fails, in the order evidence → scope → marking. A contradicted claim is CONTRADICTED; an UNKNOWN claim the task does not authorize is OUT-OF-SCOPE; an authorized claim presented without the required marking is MARKING-FAILURE. Scope is checked before marking because the marking check applies only to claims the task permits."*

**c) Ce qui n'est *pas* du sur-formalisme et doit être défendu.**

`O_p`, `Γ_p`, `μ_p`, `q*`, `m*` sont **justifiés**. Ils sont réutilisés des dizaines de fois, ils apparaissent dans les figures, ils permettent aux Cas A–E de dire précisément *ce qui est fixé et ce qui change*, et ils rendent le codage de l'Annexe B lisible. Un relecteur qui demanderait de tout mettre en prose aurait tort — les Cas A–E deviendraient illisibles.

Le problème n'est donc **pas** que le papier soit trop formel. C'est que **quatre symboles à usage nul ou quasi nul (`x`, `s`, `σ̂`, l'équation numérotée) sont placés exactement là où le lecteur est le plus chargé**, et qu'ils décrédibilisent par contagion les cinq symboles qui, eux, travaillent.

---

## 10. Progression globale de lecture

| Section | Question attendue du lecteur | Y répond clairement ? | Problème principal | Correction recommandée |
|---|---|---|---|---|
| **1. Introduction** (p. 1–4) | « De quoi s'agit-il et pourquoi devrais-je lire ? » | ⚠️ Partiellement | Ancrage intuitif (Fig. 1) trois pages après le besoin ; pic de densité p. 2 | Déplacer Fig. 1 au plus près de la p. 2 ; découper le ¶ *Our position* (voir P0-1) |
| **2. Framework** (p. 6–13) | « Comment applique-t-on concrètement cette règle ? » | ⚠️ Oui, mais noyé | 7 sous-sections ; le cœur (§2.4) occupe 1,5 p. sur 8 ; §2.5 et §2.6 sont des périphériques traités comme des égaux | Fusionner §2.5 et §2.6 en une seule sous-section « What the framework does *not* label » |
| **3. Related Work** (p. 14–16) | « Qu'est-ce qui existe déjà et pourquoi ça ne suffit pas ? » | ✅ Oui | §3.6 ne contient **aucune citation** — c'est un rappel de périmètre, pas de la littérature | Supprimer §3.6 ; son contenu est déjà en §1, §2.6, §8.2, §8.3 |
| **4. Methodology** (p. 16–17) | « Comment le mapping a-t-il été construit ? » | ✅ Oui | S'ouvre sur l'unité d'analyse avant d'avoir dit **pourquoi** un mapping | Ajouter une phrase d'ouverture énonçant la question du mapping |
| **5. Results** (p. 18–19) | « Qu'a-t-on trouvé ? » | ✅ Oui | Titre trompeur ; ouvre sur un renvoi à l'annexe plutôt que sur le résultat | Retitrer « Mapping Results » ; ouvrir sur le résultat, renvoyer à l'annexe ensuite |
| **6. Case Studies** (p. 19–20) | « Que prédit la règle aux frontières ? » | ✅ **Oui, très bien** | Structure `Fixed / Changed / Predicted` excellente ; le Cas B rompt le schéma (multi-facteur) | Retitrer « Worked Cases » ; signaler visuellement le statut particulier du Cas B |
| **7. Future Work** (p. 21–24) | « Comment saurait-on que c'est vrai ou faux ? » | ✅ Oui | 7 priorités × 4 rubriques = 28 blocs de prose sur 4 pages ; second pic de charge | Retitrer « Research Agenda » ; envisager un tableau récapitulatif en tête |
| **8. Discussion** (p. 24–26) | « Que dois-je retenir et qu'est-ce qui reste ouvert ? » | ⚠️ Oui, mais répétitif | §8.2 re-énonce **verbatim** la règle du verdict de §2.6 | Remplacer par un renvoi et garder seulement l'interprétation |
| **9. Conclusion** (p. 26) | « Quel est le message et le prochain test ? » | ✅ **Oui, très bien** | Aucun — c'est la meilleure section du papier | Aucune |

### Ordre des sections

**L'ordre actuel est correct et ne doit pas être changé.** Position → cadre → littérature → méthode → résultats → cas → agenda → discussion → conclusion est la progression attendue en CL, et chaque section prépare bien la suivante.

**Une seule exception mérite discussion** : §2.6 (verdict au niveau réponse) et §2.7 (échecs procéduraux) interrompent le cadre entre la règle (§2.4) et Related Work. Un lecteur qui vient de recevoir la règle veut savoir *en quoi elle diffère de ce qui existe*, pas *comment on agrège au niveau réponse*. **Recommandation prudente** : ne pas déplacer, mais **compresser** §2.5–§2.7 d'environ un tiers et les faire précéder d'une phrase de cadrage : *"The rest of this section states three things the rule deliberately does not do."* Le lecteur saurait alors qu'il peut lire ces pages en diagonale et revenir plus tard — ce qui est exactement le bon comportement.

---

## 11. Audit des transitions

**Localisation :** fin de §1 → §2 (p. 4 → p. 6)
**Problème :** le ¶ *Organization* énumère les sections, mais rien ne dit **pourquoi** un cadre formel est nécessaire après la position. La première phrase de §2 fait ce travail (*"Those roles are usable only if each is specified precisely enough for two evaluators to apply them to the same response"*) — elle est bonne, mais elle arrive après une liste administrative.
**Transition suggérée** *(à placer avant le ¶ Organization, ou à en fusionner l'idée)* :
> *"Stating that the label depends on the contract is only useful if two evaluators reading the same task can agree on what the contract is. The next section specifies each field precisely enough for that."*

---

**Localisation :** fin de §2.7 → §3 (p. 13 → p. 14)
**Problème :** §2.7 se termine sur un point étroit (un décalage stylistique n'est pas un échec procédural). Le lecteur ne reçoit aucun signal de fin de cadre. §3 ouvre bien, mais sans main tendue depuis §2.
**Transition suggérée** *(à ajouter en fin de §2.7)* :
> *"The framework now defines the decision we want an evaluator to make. The next question is whether existing evaluation resources make the information that decision requires explicit."*

*(Note : cette formulation est celle que le protocole de revue donne en exemple ; elle convient exactement ici, ce qui indique que le manque est bien réel.)*

---

**Localisation :** fin de §3.7 → §4 (p. 16)
**Problème :** §3.7 se termine correctement (*"That gap motivates the controlled test defined in Section 2 and the resource analysis reported below"*). Mais §4 ouvre sur *"The unit of analysis in the purposive mapping is the evaluation resource"* — une décision méthodologique avant la question à laquelle elle répond. Le lecteur ne sait pas encore ce que le mapping cherche.
**Transition suggérée** *(nouvelle première phrase de §4)* :
> *"The gap identified above is a claim about evaluation designs, and it can be checked directly: we ask, resource by resource, whether an evaluation design makes the task oracle, the permission scope, and the required status marking separately visible, and whether it controls how the same claim is worded. This section describes how we selected and coded the resources; Section 5 reports what the coding shows."*

---

**Localisation :** fin de §4.2 → §5 (p. 17 → p. 18)
**Problème :** §4.2 se termine sur le vocabulaire de codage ; §5.1 ouvre sur *"The complete coding of the selected sample appears in Appendix Tables B.1–B.3."* La première phrase de la section « Results » est un renvoi bibliographique, pas un résultat.
**Transition suggérée** *(nouvelle première phrase de §5.1)* :
> *"Three patterns emerge from the coding. Strict-grounding resources specify a task oracle but leave permission and marking implicit; creative resources score quality but specify no adjudication standard; and no resource in the sample does both. The complete resource-level coding is in Appendix Tables B.1–B.3."*

---

**Localisation :** fin de §5 → §6 (p. 19)
**Problème :** **aucun.** *"These results identify a design gap but do not show how the proposed rule behaves at its boundaries. The case studies below make those predicted label changes explicit."* — transition exemplaire. À conserver telle quelle.

---

**Localisation :** fin de §6 → §7 (p. 20 → p. 21)
**Problème :** **aucun.** *"Together, the cases isolate changes in the task oracle, discourse frame, required status marking, permission scope, and surface realization. Their predictions define tests for the annotation and benchmark studies below."* — excellent.

---

**Localisation :** fin de §7 → §8 (p. 24)
**Problème :** **aucun.** *"Until such evidence is available, the implications of the position must remain limited to the distinctions stated below."* — la transition la mieux calibrée du manuscrit : elle borne le discours de la Discussion avant même qu'il commence.

---

**Localisation :** fin de §8.3 → §9 (p. 26)
**Problème :** mineur. §8.3 se termine sur une phrase de périmètre (*"it is not a universal measure of truth, reasoning, creativity, usefulness, or safety"*), et §9 rouvre sur *"We have argued that…"*. Deux clôtures successives.
**Transition suggérée** : supprimer la dernière phrase de §8.3 (elle est déjà dite en §1 p. 3, §2.6, §3.6 et §8.2) et laisser la §9 assumer seule la clôture.

---

## 12. Lisibilité du Related Work

Grille appliquée : *les travaux antérieurs mesurent **X** → utile pour le cadre parce que **Y** → mais laissent **Z** implicite.*

| Sous-section | X posé ? | Y explicite ? | Z explicite ? | Verdict |
|---|---|---|---|---|
| **3.1 Hallucination Taxonomies** | ✅ Ji, Huang, Zhang, Jiang | ✅ | ✅ *"The truth contract addresses a subsequent decision"* | **Exemplaire** |
| **3.2 Task Oracles in Factuality/Faithfulness** | ✅ Maynez, Kryscinski | ✅ *"the supplied source document instantiates the task oracle"* | ✅ | **Exemplaire** |
| **3.3 Claim Extraction, Recovery, Commitment** | ✅ Stalnaker, Clark, Choi, Hyland, Min, Song, Metropolitansky | ✅ | ✅ | **Bon** — voir note ci-dessous |
| **3.4 Instruction Following, Permission, Status Marking** | ⚠️ une seule référence (Hao) | ✅ | ✅ | **Trop mince** |
| **3.5 Creativity and Response-Level Quality** | ✅ Jiang, Sui, Yang, Argese | ✅ | ✅ | **Exemplaire** — contient la meilleure phrase du papier |
| **3.6 Global Reasoning and Complete-Response Eval.** | ❌ **zéro citation** | — | — | **À supprimer** |
| **3.7 Claim-Preserving Style Variation** | ✅ Leech, Van Peer, Pavlick, Rao, Briakou | ✅ | ✅ *"Neither literature therefore tests claim recovery across matched realizations"* | **Exemplaire** — la meilleure sous-section de la §3 |

### Points saillants

**a) §3.6 n'appartient pas au Related Work.** Douze lignes, aucune citation, aucun travail antérieur discuté. C'est une redite du périmètre déjà énoncé en §1 (p. 3, l. 200–204), §2.6 (l. 1022–1024), §8.2 (l. 1881–1883) et §8.3 (l. 1907–1911). Placée dans une section « Related Work », elle donne au lecteur l'impression que les auteurs n'ont pas trouvé de littérature sur le raisonnement global — ce qui est faux et affaiblit la §3 entière.
**Recommandation** : supprimer la sous-section. Si le point doit rester dans la §3, le convertir en une vraie revue (il existe une littérature abondante sur la cohérence et la validité inférentielle des sorties de LLM) ou le rattacher en deux phrases à §3.3.

**b) §3.4 est trop courte pour son enjeu.** L'objection « pourquoi pas simplement du suivi d'instructions ? » est **la** principale objection que recevra ce papier. La §1 (p. 3) y répond excellemment ; la §3.4 ne cite qu'un travail (Hao et al.) et ne mentionne même pas IFEval (`zhou_ifeval_2023`), pourtant cité en §1. Le lecteur qui va chercher la réponse là où elle devrait être — dans le Related Work — trouve moins que dans l'Introduction.
**Recommandation** : rapatrier en §3.4 le raisonnement de la p. 3 (*"A sufficiently detailed instruction-following rubric could reproduce the same labels only by…"*) et y citer IFEval + Wu et al.

**c) Aucune sous-section ne dégénère en mini-revue.** Le Related Work est court (2,5 p. pour 7 sous-sections), argumenté et systématiquement raccroché au cadre. C'est une réussite et cela mérite d'être dit : la plupart des position papers échouent ici.

**d) Les distinctions demandées sont-elles rendues visibles ?**

| Famille | Traitée séparément ? | Lien au cadre explicite ? |
|---|---|---|
| hallucination | ✅ §3.1 | ✅ |
| factuality | ✅ §3.2 | ✅ |
| source faithfulness | ✅ §3.2 | ✅ |
| instruction following | ⚠️ §3.4, trop courte | ✅ |
| creativity evaluation | ✅ §3.5 | ✅ |
| usefulness | ✅ §3.5 | ✅ (excellent) |
| claim extraction | ✅ §3.3 | ✅ |
| style transfer | ✅ §3.7 | ✅ |

Toutes les familles demandées sont présentes et reliées. Seule §3.4 est sous-dimensionnée.

---

## 13. Lisibilité de la section mapping / benchmark

| Question du lecteur | Réponse disponible ? | Où | Qualité |
|---|---|---|---|
| Pourquoi ces ressources ont-elles été retenues ? | ✅ | §4.1, p. 16 | **Excellente** — voir ci-dessous |
| Qu'est-ce qui compte comme « evaluation resource » ? | ✅ | §4.1, l. 1240–1244 | Bonne — deux exemples (FEVER, WritingBench) |
| Que code-t-on exactement ? | ✅ | §4.2, 7 questions | Bonne |
| Quelle est l'unité d'analyse ? | ✅ | §4.1, 1ʳᵉ phrase | Claire |
| Ce que le mapping peut montrer | ✅ | §4.1, l. 1249–1253 | **Excellente** |
| Ce qu'il ne peut pas montrer | ✅ | §4.1 + abstract + §5.1 + §8.3 | **Sur-dit — 4×** |
| Pourquoi ce mapping soutient la position | ⚠️ | §4.1, l. 1263–1265 | Implicite |

### Ce qui est très bien fait

La justification de l'échantillonnage raisonné est **exemplaire** :

> *"Purposive selection is the appropriate strategy here, because the question is whether a particular combination of evaluation fields is ever realized, not how often it occurs. A representative sample would answer a frequency question that this paper does not ask."*
> *"An absence in a sample chosen for coverage is informative precisely because the sample was constructed to make the combination easy to find."*

Cette seconde phrase est l'argument méthodologique décisif du papier et elle est parfaitement formulée. Un relecteur qui attaquerait la représentativité y trouve sa réponse.

### Ce qui pose problème

**a) Le niveau de détail méthodologique est *insuffisant*, pas excessif.** Contrairement à ce que le protocole de revue anticipe, la §4 ne noie pas l'argument sous la méthode — elle en dit trop peu. Manquent :

- **La procédure de recherche.** Comment les quarante ressources ont-elles été trouvées ? Aucune indication (bases interrogées, mots-clés, période, point de départ).
- **Les critères d'inclusion / exclusion.** *"so that the sample spans the design space the argument concerns"* énonce un objectif, pas un critère applicable. Un lecteur ne peut pas dire pourquoi telle ressource connue est absente.
- **Le nombre de codeurs.** Le manuscrit dit *"our coding"*, *"the authors' interpretation"* — donc au moins un auteur. **Aucun accord inter-codeurs n'est rapporté, et l'absence n'est jamais reconnue explicitement dans la §4.** La §8.3 la mentionne obliquement (*"Independent recoding … are natural extensions"*), mais c'est trop tard et trop indirect.
- **La procédure de recodage.** Pas mentionnée.

**Ceci est le point le plus attaquable du manuscrit sur le plan de la relecture par les pairs**, et il ne s'agit pas d'une critique de lisibilité mais d'une critique de lisibilité *qui devient* une critique de validité : le lecteur ne peut pas évaluer la solidité du seul résultat empirique du papier.

**Recommandation** : ajouter un paragraphe de 6–8 lignes en §4.1, avant « Coding Protocol » :
> *"We assembled the sample by starting from the resources cited in recent hallucination and creativity evaluation surveys [refs], then adding resources needed to fill under-covered profiles, principally constrained solution search and divergent thinking. A resource was included when its evaluation design was documented in enough detail to code all seven questions, and excluded when the adjudication standard could not be determined from the published description. All coding was performed by [N] of the authors; [describe adjudication of disagreements, or state plainly that the coding was performed by a single author and that independent recoding remains necessary]. The resource-level coding is published in Appendix B so that every code can be checked against the original resource."*

**b) Sur-répétition du disclaimer de portée.** *"In our selected sample, no resource separately represents…"* apparaît **quatre fois à l'identique** : abstract (l. 102), §5.1 (l. 1345), légende Fig. 3 (l. 1485), Conclusion (l. 1974). Le hedging *"In our selected sample"* est correct et nécessaire — mais quatre répétitions littérales produisent l'effet inverse de celui recherché : le lecteur se demande ce que les auteurs craignent. **Deux occurrences suffisent** (§5.1 et Conclusion) ; la légende de la Fig. 3 devrait renvoyer au texte plutôt que le dupliquer.

**c) Aucune affirmation ne dépasse ce que l'échantillon supporte.** Vérifié systématiquement : toutes les formulations sont bornées (*"in our selected sample"*, *"among the twenty-one resources assigned to the strict grounding profile in our coding"*, *"the selected divergent-thinking resources"*). **Rien à corriger sur ce point** — c'est irréprochable.

**d) La Figure 3 est correcte mais son avertissement est plus long que sa lecture.** La légende consacre quatre phrases à dire ce que la figure **ne** signifie **pas** (positions, tailles, couleurs, chevauchements n'encodent rien). Ces avertissements sont justifiés — mais leur volume suggère que la figure invite naturellement à des lectures fausses. Voir §15.

---

## 14. Lisibilité des cas travaillés

**Constat général : c'est la section la mieux conçue du manuscrit.** La structure `Fixed / Changed / Predicted result` répond directement aux besoins du lecteur, et le cadrage d'ouverture est irréprochable :

> *"The five comparisons below are constructed specification checks: they state what is held fixed, what changes, and which result the rule predicts. They are not sampled model outputs and do not establish empirical superiority, annotation reliability, or empirical coverage."*

**Cas construits vs résultats empiriques : distinction parfaitement établie.** Elle est faite trois fois (§1 p. 4, §6 ouverture, légende Fig. 2 *"The precise temple-entrance placement and the incorrect date are constructed test claims"*). Aucun risque de confusion. **Rien à corriger.**

### Cas par cas

| Cas | Fixé clair ? | Changé clair ? | Pourquoi l'étiquette bouge ? | Quel élément du cadre est testé ? | Distinct du précédent ? |
|---|---|---|---|---|---|
| **A** (oracle) | ✅ | ✅ | ✅ | `O_p` | — |
| **B** (cadre discursif) | ⚠️ | ⚠️ | ✅ | `O_p` + `Γ_p` + l'affirmation | ✅ mais confus — voir ci-dessous |
| **C** (marquage) | ✅ | ✅ | ✅ | `μ_p` | ✅ |
| **D** (frontière de portée) | ✅ | ⚠️ | ✅ | `Γ_p` | ⚠️ recoupe B |
| **E** (réalisation de surface) | ✅ | ✅ | ✅ (stabilité) | hors contrat (σ) | ✅ |

### Problèmes

**a) Le Cas B rompt le contrat implicite de la section.** Les quatre autres cas sont des contrastes à un facteur ; B en change trois simultanément. Le manuscrit l'annonce honnêtement :

> *"This case is not a single-factor contrast: changing the discourse frame also changes the task oracle, the permission scope, and the contextualized claim."*

Mais l'avertissement est **dans le corps du paragraphe, après le titre**. Un lecteur qui parcourt les titres en gras (`Fixed / Changed / Predicted`) ne le voit pas et se demande pourquoi le cas est mal contrôlé.
**Correction** : porter la mention dans le titre du cas — *"Case B (multi-factor): a contextualization boundary across historical and fictional frames"* — et ajouter une quatrième rubrique explicite `**Purpose.** To show that identical strings need not express identical claims` (le texte le dit déjà deux fois, à deux endroits différents du paragraphe).

**b) Le Cas D n'a pas de contenu concret.** *"The claim concerns either a fictional entity or a named real person presented as real history"* — le lecteur doit inventer lui-même l'exemple. Tous les autres cas donnent des chaînes littérales. **Correction** : voir §8, recommandation 2 (raccrocher au Café Verdier).

**c) Une rubrique manque à la grille.** Les cas donnent `Fixed / Changed / Predicted result`. Il manque **`Why this case is here`** — c'est-à-dire quelle propriété du cadre le cas met à l'épreuve. Le lecteur doit le déduire. Une ligne suffirait par cas :

- A : *"Tests that the label depends on which oracle the task designates, not on the claim."*
- B : *"Tests that the recovered claim itself depends on the discourse frame."*
- C : *"Tests that permission alone is not enough; presentation is part of the contract."*
- D : *"Tests that a permission scope has a boundary, and that the boundary is about content, not about the frame."*
- E : *"Tests that wording, which is outside the contract, does not move the label."*

**d) Le contrat n'a jamais à être reconstruit manuellement.** Point positif : dans chacun des cinq cas, `O_p`, `Γ_p`, `μ_p` sont nommés dans les rubriques `Fixed`/`Changed`. Le lecteur n'a pas à remonter dans les paragraphes. **Rien à corriger.**

---

## 15. Figures et tableaux

Chaque objet est évalué comme si le lecteur le regardait **avant** le texte environnant.

### Figure 1 (p. 5) — *Same source and claim, different permissions*

| Critère | Verdict |
|---|---|
| 1. Message unique à retenir | ✅ « Même source, même phrase, deux étiquettes, parce que la permission diffère » |
| 2. Compréhensible en < 20 s ? | ✅ **Oui** — flux vertical, symétrie gauche/droite, deux boîtes de résultat colorées |
| 3. Termes déjà définis ? | ⚠️ `Γ`, `μ`, `TC(p₁)` apparaissent nus dans les boîtes de contrat |
| 4. Ordre de lecture évident ? | ✅ Haut → bas, oracle partagé → deux tâches → deux contrats → réponse commune → deux verdicts |
| 5. Duplique la prose ? | ⚠️ Partiellement — la légende (une dizaine de lignes) redit le paragraphe p. 2–3 |
| 6. Réduit la charge cognitive ? | ✅ **Nettement** |
| 7. Légende auto-suffisante ? | ✅ Oui, mais trop longue |
| 8. Le texte dit-il pourquoi elle compte ? | ✅ p. 2, l. 188–199 |

**Évaluation spécifique demandée** — la Figure 1 rend-elle la thèse centrale compréhensible sans notation ?

| Élément attendu | Présent ? |
|---|---|
| la tâche / le prompt | ✅ Les deux prompts sont donnés *verbatim* |
| l'affirmation identique ou comparable | ✅ **Identique** — même réponse littérale dans les deux branches. Excellent choix |
| la relation de preuve | ⚠️ **Présente mais textuelle** : *"The excerpt neither confirms nor rejects it"* dans la boîte de réponse |
| ce que déciderait la baseline | ❌ **ABSENT** |
| ce que le cadre vérifie en plus | ✅ Les deux boîtes de contrat |
| pourquoi l'étiquette finale diffère | ✅ Les deux boîtes de résultat, avec justification en une ligne |

**Verdict : la Figure 1 fonctionne, mais lui manque un élément de charpente.**

Elle montre que *le cadre proposé* produit deux étiquettes. Elle ne montre **pas** que *la pratique actuelle* en produirait une seule — or c'est exactement la thèse. Un lecteur qui ne connaît pas le domaine ne sait pas ce qui est nouveau ici.

**Correction recommandée (P0)** — ajouter une bande intermédiaire, entre la boîte de réponse et les deux boîtes de résultat :

```
┌──────────────────────────────────────────────────────────────┐
│  Evidence state (identical in both tasks):  UNKNOWN          │
│  A standard factuality check stops here and reports the      │
│  same outcome for both tasks.                                │
└──────────────────────────────────────────────────────────────┘
```

Bénéfice : (i) le mot `evidence state` devient visible comme *niveau*, ce qui résout partiellement le problème §6 ; (ii) le contraste avec la pratique existante devient visuel ; (iii) la thèse — « le point de bascule est *après* l'état de preuve » — se lit en 10 secondes.

**Correction secondaire (P2)** : glosser `Γ` et `μ` dans les boîtes (`Γ (permission scope)`, `μ (required status marking)`) et raccourcir la légende de moitié.

**Correction majeure (P0)** : **rapprocher la figure de la page 2.** Elle est référencée l. 188 (p. 2) et flotte en p. 5. Avec `[!t]` sur une classe à colonne unique et un flottant de cette taille, le placement est fragile. Options : réduire la hauteur (les prompts peuvent être abrégés), ou déplacer le `\begin{figure}` immédiatement après le ¶ *Our position*, avant le ¶ *Why a truth contract…*.

---

### Figure 2 (p. 11) — *From one prompt to four claim-label decisions*

| Critère | Verdict |
|---|---|
| 1. Message unique | ⚠️ **Trois messages simultanés** : (a) le pipeline en étapes, (b) les quatre affirmations et leurs étiquettes, (c) le fait que le style et le verdict-réponse restent à part |
| 2. < 20 s ? | ❌ **Non — 60 à 90 s** |
| 3. Termes définis ? | ✅ Tous (elle est en p. 11, après §2.1–2.4) |
| 4. Ordre de lecture évident ? | ✅ **Oui, remarquablement** — les intitulés de ligne en marge gauche (`task context`, `truth contract and style input`, `response y`, `response spans`, `canonical claims`, `evidence state`, `claim label`) sont excellents |
| 5. Duplique la prose ? | Non — elle fait un travail que la prose ne fait pas |
| 6. Réduit la charge cognitive ? | ✅ **Oui, à la relecture** ; non en première lecture |
| 7. Légende auto-suffisante ? | ⚠️ Une quinzaine de lignes, dense, contient elle-même trois messages |
| 8. Le texte dit pourquoi elle compte ? | ✅ l. 694–698 |

**Ce qui est très bien** : les intitulés de ligne à gauche. C'est le dispositif qui rend la figure lisible malgré sa densité, et il résout le problème état/étiquette **visuellement** (deux lignes distinctes, `evidence state` puis `claim label`). **C'est le meilleur élément de design du manuscrit — et il devrait être répliqué en Figure 1.**

**Ce qui pose problème** : les trois boîtes du bas (`No separate historical claim`, `Prompt–response style-marking alignment`, `Response-level record`) ajoutent un troisième registre à une figure qui en porte déjà deux. Elles sont utiles mais elles transforment une figure lisible en figure à étudier.

**Recommandation (P1)** : retirer la boîte `Response-level record` de la Figure 2. Le verdict au niveau réponse est traité en §2.6 et n'est pas encore défini au moment où la figure apparaît (§2.4, p. 9–11 ; §2.6 est p. 12). La figure demande donc au lecteur d'accepter un objet non défini. Les deux autres boîtes (métaphore sans affirmation ; alignement stylistique séparé) portent des points nécessaires et doivent rester.

---

### Figure 3 (p. 19) — *Selected resources by nominal task profile and treatment of requested style-marking level*

| Critère | Verdict |
|---|---|
| 1. Message unique | ✅ « La case en haut à gauche est vide » |
| 2. < 20 s ? | ⚠️ **Le message oui ; sa portée exacte non** |
| 3. Termes définis ? | ✅ |
| 4. Ordre de lecture évident ? | ⚠️ Un encadré `Reading guide` de 6 lignes est nécessaire — signe que non |
| 5. Duplique la prose ? | ✅ Oui — §5.1 dit déjà tout |
| 6. Réduit la charge cognitive ? | ⚠️ Discutable |
| 7. Légende auto-suffisante ? | ✅ Oui, mais 4 de ses 9 phrases sont des avertissements |
| 8. Le texte dit pourquoi elle compte ? | ✅ l. 1359–1360 |

**Le problème structurel** : la figure emploie un **plan cartésien** (axe vertical explicitement étiqueté *"Treatment of requested style-marking level"*, avec trois niveaux ordonnés) pour représenter des données dont l'axe horizontal est **catégoriel et non ordonné** — ce que la figure doit ensuite désavouer en toutes lettres, deux fois :

> Axe horizontal : *"Nominal task profiles (categorical; horizontal distance has no metric meaning)"*
> Légende : *"Positions, box sizes, colors, and overlaps do not encode measured distance, prevalence, model performance, or an ordinal permission scale."*

**Quand une figure a besoin de quatre phrases pour dire ce qu'elle n'encode pas, la forme choisie combat le contenu.** Le lecteur voit un nuage de points ; on lui dit que ce n'est pas un nuage de points.

**Recommandation (P1)** : remplacer par une **matrice à cases** — lignes = les cinq profils de tâche, colonnes = les trois traitements du niveau stylistique, cellules = les numéros de ressources. Une grille est catégorielle par construction, la case vide reste visuellement saillante (elle serait la seule cellule sans numéro), et **tous les avertissements deviennent inutiles** parce qu'aucune distance n'est suggérée. Bénéfice secondaire : le `Reading guide` de six lignes disparaît, et la légende passe de neuf phrases à trois.

---

### Tableaux B.1 – B.3 (Annexe B, p. 28–30)

| Critère | Verdict |
|---|---|
| 1. Message unique | ✅ « Voici le codage complet, vérifiable ressource par ressource » |
| 2. < 20 s ? | N/A — tableaux de référence, pas de lecture |
| 3. Termes définis ? | ✅ **Oui** — le vocabulaire clos est donné *avant* les tableaux (l. 2103–2161). Excellent |
| 4. Ordre de lecture évident ? | ✅ Groupés par profil, numérotés 1–40 en continu, référencés depuis la Fig. 3 |
| 5. Duplique la prose ? | Non |
| 6. Réduit la charge ? | ✅ |
| 7. Légendes auto-suffisantes ? | ✅ Et elles portent des avertissements utiles (*"'Not controlled' does not mean that a neutral style-marking level is fixed"*) |
| 8. Le texte dit pourquoi ils comptent ? | ✅ §4.1 : *"the resource-level coding is published in full so that every descriptive claim below can be checked"* |

**Évaluation : irréprochable.** La publication du codage brut, avec vocabulaire clos déclaré en amont et numérotation croisée avec la Figure 3, est exactement ce qu'un relecteur exigeant demanderait. **Aucune correction.**

---

## 16. Portée et frontières

### Ce que le lecteur peut déterminer

| Le cadre couvre-t-il… | Réponse déterminable ? | Où |
|---|---|---|
| claim extraction | ✅ Non (méthodes existantes, réutilisées) | §2.3, §3.3 |
| claim recovery | ✅ Oui, mais comme prérequis non résolu | §2.3, §2.7, §7-P3 |
| claim verification | ✅ Oui, mais délégué à `O_p` | §2.3 |
| validité logique globale | ✅ **Non** | §1, §2.6, §3.6, §8.2, §8.3 |
| cohérence inter-affirmations | ✅ **Non** | idem |
| complétude | ✅ **Non** | idem |
| pertinence | ✅ **Non** | idem |
| utilité | ✅ Non | §2.6, §3.5, §8.2 |
| sécurité | ✅ Non | §2.4, §3.4, §8.3 |
| qualité au niveau réponse | ⚠️ **Partiellement** — voir ci-dessous | §2.6 |

### La distinction claim-level / response-level est-elle explicite ?

**Oui, et abondamment.** La phrase-test du protocole de revue —

> *« Une réponse peut contenir des affirmations individuellement soutenues et néanmoins comporter un raisonnement invalide, omettre une information nécessaire, ou ne pas répondre à la tâche. »*

— est présente **quasiment mot pour mot** dans le manuscrit, à trois endroits :

- §3.6 : *"Individually supported or licensed claims can be combined in an invalid inference, can conflict with one another, or can omit information required by the prompt."*
- §7-P4 : *"A response may contain only supported and licensed-divergence claims yet combine them through an invalid inference, contradict itself, omit a necessary step, or remain irrelevant to the task."*
- §8.3 : *"a favorable distribution of claim labels licenses no conclusion about global logical validity…"*

**Le lecteur ne peut pas se tromper.** C'est un point fort.

### Le problème inverse : la portée est **sur-annoncée** au point de brouiller le message

Le disclaimer de périmètre apparaît **six fois** (l. 202, 1022, 1725, 1881, 1909, 2025), avec la même énumération quadruple (*global logical validity, cross-claim coherence, completeness, relevance*). Répété six fois, il cesse d'informer et commence à inquiéter : le lecteur se demande s'il reste quelque chose que le cadre *fait*.

**Recommandation (P1)** : conserver **deux** occurrences — §1 (p. 3, où elle borne les attentes) et §8.3 (où elle est une limitation assumée). Supprimer §3.6 en entier (§12), remplacer §8.2 par un renvoi (§20), et alléger §2.6 et §7-P4.

### Un endroit où le cadre paraît plus large qu'il ne l'est

**§2.6 (p. 12) et Annexe A.** Le passage sur `reliable and creatively aligned` / `reliable but creatively misaligned` introduit une **taxonomie finale à quatre valeurs** (les deux ci-dessus + `contract-violating` + `indeterminate`), assortie de conditions de composition. Elle est présentée comme optionnelle (*"When a task requires a single categorical summary…"*), mais elle occupe une demi-page en §2.6, se répète en §8.2, et se répète encore en Annexe A.

**Un lecteur en sort avec l'impression que le papier propose une évaluation complète des réponses** — précisément ce que les six disclaimers cherchent à écarter. **La prolifération du niveau réponse est ce qui rend les disclaimers de périmètre nécessaires.** Traiter la cause (réduire §2.6) serait plus efficace que traiter le symptôme (répéter le disclaimer).

**Recommandation (P0)** : garder en §2.6 les **trois composantes** (content verdict / style-marking alignment / creative-task success) et la règle de contenu ordonnée. **Déplacer intégralement en Annexe A** la taxonomie `reliable and creatively aligned` — elle y figure déjà. Gain : une demi-page en moins au cœur du cadre, un objet en moins à retenir, et le message « ce cadre étiquette des affirmations » redevient dominant.

---

## 17. Lisibilité de l'agenda de recherche

Grille : chaque item répond-il aux quatre questions ?

| Priorité | 1. Problème non résolu | 2. Pourquoi ça compte pour le cadre | 3. Quelle étude | 4. Qu'est-ce qui falsifierait | Verdict |
|---|---|---|---|---|---|
| **1.** Annotation oracle + contrat | ✅ | ✅ | ✅ | ✅ | **Complet** |
| **2.** Benchmark factoriel | ✅ | ✅ | ✅ | ✅ | **Complet** |
| **3.** Récupération robuste au style | ✅ | ✅ | ✅ | ✅ | **Complet** |
| **4.** Verdict réponse / raisonnement | ✅ | ✅ | ✅ | ✅ | **Complet** |
| **5.** Mitigation sans suppression | ✅ | ✅ | ✅ | ✅ | **Complet** |
| **6.** Généralisation domaines/langues | ✅ | ✅ | ⚠️ *"should be tested in high-stakes factual domains, education, journalism…"* — une liste, pas un protocole | ✅ | **Le plus générique** |
| **7.** Contrats temporels / agentique | ✅ | ✅ | ✅ | ✅ | **Complet** |

**Constat : c'est un agenda de recherche de très bonne facture.** La structure `Research problem / Why it matters / Study and measures / Falsification criterion` est appliquée aux sept priorités sans exception, et **chaque critère de falsification est réellement falsifiant**, pas décoratif. Exemples :

- P2 : *"a baseline that matches contract-aware evaluation on the predefined baseline criteria, would weaken it."*
- P4 : *"If the claim trace alone predicts independently adjudicated response-level correctness and creative-task success, the additional response-level layers may be unnecessary."*
- P5 : *"A method that improves only by suppressing permitted divergence would weaken the position."*

**P4 est particulièrement remarquable** : les auteurs déclarent une condition sous laquelle **leur propre couche niveau-réponse serait inutile**. C'est rare et cela devrait être valorisé.

### Couverture demandée

| Thème | Couvert ? | Où |
|---|---|---|
| fiabilité d'annotation | ✅ | P1 (accord par champ, taux d'adjudication, temps, sources de désaccord) |
| spécification du task oracle | ✅ | P1 (types, sources admissibles, portée temporelle, ordre d'autorité) |
| annotation du permission scope | ✅ | P1 |
| robustesse de la récupération | ✅ | P3 |
| robustesse au style | ✅ | P2 + P3 |
| agrégation niveau réponse | ✅ | P4 |
| raisonnement et complétude | ✅ | P4 |
| mitigation sans suppression | ✅ | P5 |
| systèmes agentiques / à outils | ✅ | P7 |

**Couverture complète.** Aucune lacune.

### Problèmes de lisibilité

**a) Charge de format.** Sept priorités × quatre rubriques = **28 blocs sur quatre pages**, chacun introduit par `\noindent\textbf{...}\par\noindent`. Le manuscrit adopte un balisage manuel lourd (`\par\nobreak`, `\smallskip`) qui produit une page très fragmentée. C'est le second pic de charge du papier après la §2.

**Recommandation (P1)** : ajouter en tête de §7 un **tableau récapitulatif** (7 lignes × 3 colonnes : Priorité / Question centrale / Ce qui falsifierait), puis conserver la prose détaillée. Le lecteur pressé s'arrête au tableau ; le lecteur engagé continue. Le paragraphe d'ouverture actuel (*"Priorities 1–3 test whether… Priorities 4 and 5 examine…"*) fait déjà ce travail en prose et gagnerait à être tabulé.

**b) P6 est la seule priorité générique.** *"The annotation and contrast protocols should therefore be tested in high-stakes factual domains, education, journalism, scientific communication, brainstorming, and fiction"* énumère des domaines sans dire quelle propriété du cadre chacun met à l'épreuve. Comparée à P2 ou P3, elle ressemble à un vœu de travaux futurs.
**Recommandation (P2)** : nommer, pour au moins deux domaines, la propriété testée — par exemple, le journalisme met à l'épreuve `μ_p` (les conventions d'attribution y sont codifiées), et le multilingue met à l'épreuve l'universalité du marquage épistémique.

**c) L'agenda découle-t-il des limitations ?** **Oui, correctement** — mais le lien n'est jamais fait explicitement. §8.3 énumère sept limitations, §7 énumère sept priorités, et elles se correspondent largement (limitation 2 ↔ P1, limitation 4 ↔ P3, limitation 6 ↔ P2/P3, limitation 7 ↔ mapping). **Ni l'une ni l'autre section ne pointe vers l'autre.** Ajouter en §8.3 des renvois (`(see Priority 1)`) coûterait sept mots et rendrait la cohérence du papier visible.

**d) Ordre §7 avant §8.** L'agenda (p. 21–24) précède les limitations (p. 25–26). Le lecteur reçoit donc les solutions avant les problèmes qu'elles adressent. C'est défendable dans un position paper (l'agenda est une contribution annoncée), et le manuscrit compense par la phrase de transition. **Ne pas changer**, mais les renvois croisés de (c) suffiraient à neutraliser l'inconvénient.

---

## 18. Anglais académique au niveau phrase

L'anglais du manuscrit est **d'un très bon niveau** : phrases courtes, voix active dominante, sujets explicites, terminologie stable. Les passes de simplification antérieures sont visibles. Les problèmes ci-dessous sont ceux qui **ralentissent réellement la compréhension**, pas des préférences de style.

---

**Original :**
> *"A response span $s$ is a segment of $y$ from which the evaluator recovers zero, one, or several truth-conditional claims."*

**Problème :** `$s$` n'est jamais réutilisé (une seule occurrence dans tout le fichier). Le lecteur mémorise un symbole inutile au pire moment. « zero, one, or several » est aussi une précision qui n'est comprise qu'après §2.3.

**Version plus simple :**
> *"A **response span** is a segment of the response that the evaluator examines; it may commit to no truth-conditional claim, to one, or to several."*

---

**Original :**
> *"It determines how the claim's state relative to the task oracle, permission scope, and required status marking compose into an evaluation label."*

**Problème :** accord verbal ambigu (`state … compose`), et surtout une chaîne nominale de trois compléments avant le verbe. Le lecteur ne sait pas ce qui compose quoi.

**Version plus simple :**
> *"It determines how three separate findings — what the task oracle says about the claim, whether the permission scope covers it, and whether it is marked as the contract requires — combine into a single claim label."*

---

**Original :**
> *"Steps 1–6 can fail, with Steps 5 and 6 applying only on the relevant UNKNOWN and in-scope branches."*

**Problème :** construction absolue en `with`, deux qualifications superposées, et une information (la structure branchante) qui contredit la liste qu'on vient de lire. Voir §9-a.

**Version plus simple :**
> *"Steps 5 and 6 apply only when the evidence state is UNKNOWN, and Step 6 only when the claim is also in scope. Any of Steps 1 to 6 can fail; Section 2.7 records those failures instead of assigning a label."*

---

**Original :**
> *"Because the sample was selected for conceptual coverage rather than statistical representativeness, the mapping identifies design patterns and missing combinations within the sample; it does not estimate their prevalence in the wider literature."*

**Problème :** 38 mots, deux nominalisations abstraites (`conceptual coverage`, `statistical representativeness`), un point-virgule qui porte la nuance décisive. Cette phrase est importante et devrait être facile.

**Version plus simple :**
> *"We chose the sample to cover the design space, not to represent the literature in proportion. The mapping therefore shows which designs exist among these forty resources and which combination is missing. It does not tell us how common either is elsewhere."*

---

**Original :**
> *"This prompt--response style-marking alignment check does not create or excuse a truth-conditional claim."*

**Problème :** groupe nominal de six mots empilés (`prompt–response style-marking alignment check`) — quatre modificateurs avant le nom-tête. Difficile pour un lecteur non anglophone, et le terme apparaît à sa première occurrence sous sa forme la plus longue.

**Version plus simple :**
> *"Comparing the requested and observed style-marking levels is a separate check. It neither creates a truth-conditional claim nor excuses one."*

---

**Original :**
> *"Otherwise, it is **indeterminate** when claim-recovery coverage falls below a predeclared threshold or a blocking truth-contract-specification, task-oracle, or adjudication failure prevents a reliable verdict."*

**Problème :** le composé `truth-contract-specification, task-oracle, or adjudication failure` fait porter un seul nom-tête (`failure`) par trois modificateurs coordonnés de longueur inégale. À la première lecture on lit *"a blocking truth-contract"* comme un groupe complet. Cette phrase apparaît **trois fois à l'identique** (§2.6, §8.2, Annexe A) — le coût est donc triplé.

**Version plus simple :**
> *"Otherwise, the verdict is **indeterminate**: either claim-recovery coverage fell below a predeclared threshold, or the evaluation was blocked by a failure — of the contract specification, of the task oracle, or of adjudication — that prevents a reliable conclusion."*

---

**Original :**
> *"An absence in a sample chosen for coverage is informative precisely because the sample was constructed to make the combination easy to find."*

**Problème :** **aucun.** Phrase citée ici comme **modèle** : 24 mots, un seul verbe principal, l'argument entier tient dans la subordonnée causale. C'est le registre à généraliser.

---

**Original :**
> *"An ingenious fabricated medical fact still receives the hallucination label, whereas an unhelpful but in-frame fictional invention still receives the licensed-divergence label, with low usefulness."*

**Problème :** **aucun sur le fond** — c'est la phrase la plus pédagogique du papier. Le seul défaut est son emplacement (§3.5, p. 15) : elle devrait être en §2.

---

**Original :**
> *"How stylistically marked the wording is, defined below as the *style-marking level*, is therefore a separate task variable."*

**Problème :** la définition apposée sépare le sujet (`How stylistically marked the wording is`) de son verbe (`is`) par huit mots. Sujet propositionnel + apposition + copule = trois obstacles en douze mots.

**Version plus simple :**
> *"We call this degree of stylistic marking the **style-marking level**. It is a separate task variable, outside the truth contract."*

---

**Original :**
> *"Because interpretation depends on conversational context, claim recovery retains the context needed to attribute that commitment."*

**Problème :** `context` employé deux fois dans la même phrase avec deux sens (contexte conversationnel général / le contexte conservé pour l'attribution). Circularité apparente.

**Version plus simple :**
> *"What a sentence commits to depends on the conversation it occurs in. Claim recovery therefore keeps whatever surrounding material is needed to attribute the commitment correctly."*

---

## 19. Revue au niveau paragraphe

Grille : *phrase-sujet → explication/preuve → conséquence/transition.*

### Paragraphes à corriger

**a) §1, ¶ *Our position* (p. 2, l. 146–186) — ~40 lignes**

**Problèmes :** (i) plusieurs idées non reliées ; (ii) trois blocs successifs sans articulation (la position ; les conventions de notation ; la règle d'étiquetage) ; (iii) densité conceptuelle très supérieure au reste du manuscrit.

**Découpe recommandée — quatre paragraphes :**
1. **l. 147–154** — *"We argue that…"* jusqu'à *"…requires a permission-scope check and a required-status-marking check."* La position et son architecture en deux temps. Conserver tel quel : c'est excellent.
2. **l. 155–157** — la définition de `claim`. Isoler : c'est la seule définition dont le lecteur a besoin immédiatement.
3. **l. 158–170** — le contexte de tâche et l'évaluateur. **Retirer `$x$`, `$y$`, `$s$`** (voir §9). Devrait faire quatre lignes, pas treize.
4. **l. 171–186** — le contrat et la règle. **À placer après la Figure 1**, pas avant.

**b) §1, ¶ *A secondary problem* (p. 3, l. 230–256) — ~27 lignes**

**Problème :** mélange travaux antérieurs (Leech & Short, Van Peer, Jin, Rao, Briakou) et contribution propre (*"We call surface realizations that express the same claims claim-preserving style variation"*) sans signaler la différence. Le lecteur ne sait pas si `claim-preserving style variation` est un terme établi ou un néologisme des auteurs.

**Découpe recommandée — deux paragraphes**, coupure après *"…it is not by itself evidence of factual error"* (l. 239) : ¶1 = ce qu'est le marquage stylistique, avec la littérature ; ¶2 = ce que les auteurs en font, avec un marqueur auctorial d'ouverture (*"We introduce a term for this case."*).

**c) §2.1, ¶1 (p. 6, l. 421–439) — 19 lignes**

**Problème :** un seul paragraphe fait simultanément office d'exemple, de définition de `c*=(q*,m*)`, de description de la vérification, et de mention du check stylistique. La phrase de tête (*"Consider the running example used throughout this paper"*) annonce un exemple ; le lecteur reçoit une définition.

**Découpe recommandée** — coupure après *"…its decree appears in those three scripts"* (l. 428) : ¶1 = l'exemple concret seul ; ¶2 = ce que l'évaluateur en fait formellement.

**d) §2.4, ¶ règle (p. 9, l. 637–655)**

**Problème :** la règle est correcte, mais l'entrée `[H.]` de l'environnement `description` contient à elle seule une liste numérotée imbriquée de trois éléments. Le lecteur voit un item de liste qui contient une liste. Voir §9-b pour la réécriture.

**e) §2.6, ¶ *reliable and creatively aligned* (p. 12, l. 1004–1016)**

**Problème :** exemple typique de paragraphe dont **la dernière phrase est nécessaire pour comprendre la première**. Il ouvre sur une condition (*"When a task requires a single categorical summary and all applicable components have been assessed, the composition must remain explicit"*) sans avoir dit qu'une telle catégorie unique existe.

**Correction :** déplacer en Annexe A (voir §16), où le contexte est établi. Si maintenu, ouvrir par : *"Some benchmarks need one final category. For those, we define two additional names."*

**f) §8.2 (p. 25) — paragraphes 2 et 3**

**Problème :** re-énoncent verbatim la règle de §2.6 sans ajouter d'information. Voir §20.

### Paragraphes exemplaires (à ne pas toucher)

- **§4.1, ¶ sur l'échantillonnage raisonné** — phrase-sujet, justification, conséquence. Modèle.
- **§3.5, ¶2** — pose la distinction portée/valeur, la démontre par une paire minimale, en tire la conséquence.
- **§9, ¶4** (Conclusion) — énonce le test empirique et la condition de réfutation en cinq lignes.
- **§2.2, ¶ *Task oracle*, phrases 5–8** — sept types, trois exemples d'instanciation, puis la conséquence méthodologique.

---

## 20. Redondance et charge cognitive

### Répétition **utile** (à conserver)

| Élément | Occurrences | Justification |
|---|---|---|
| `O_p`, `Γ_p`, `μ_p` nommés en toutes lettres à chaque réapparition | ~30 chacun | Décharge la mémoire de travail sur un cadre à trois champs |
| « les trois champs répondent à trois questions » | §2.2 + Fig. 1 + Fig. 2 | Trois modalités (prose, figure, exemple) pour un point central |
| L'exemple Rosetta Stone | 4× | Ancrage — c'est le rôle d'un exemple filé |
| Le fait que le style ne change jamais l'étiquette | ~8× | Contre-intuitif ; la répétition est ici défensivement justifiée |

### Répétition **inutile** (à supprimer)

| Contenu | Occurrences | Localisation | Recommandation |
|---|---|---|---|
| **Règle du verdict de contenu ordonné**, *quasi mot pour mot* | **3×** | §2.6 (l. 979–986), §8.2 (l. 1867–1874), Annexe A (l. 2004–2010) | **Garder §2.6 + Annexe A. Remplacer §8.2 par un renvoi.** ~8 lignes gagnées |
| **`reliable and creatively aligned` / `misaligned`** | **3×** | §2.6, §8.2, Annexe A | **Garder Annexe A seule** (voir §16). ~20 lignes gagnées |
| **« In our selected sample, no resource separately represents… »** | **4×** | Abstract, §5.1, légende Fig. 3, Conclusion | **Garder §5.1 + Conclusion.** Abstract : reformuler ; Fig. 3 : renvoyer au texte |
| **Disclaimer de périmètre** (`global logical validity, cross-claim coherence, completeness, relevance`) | **6×** | §1 p. 3, §2.6, §3.6, §7-P4, §8.2, §8.3 + Annexe A | **Garder §1 + §8.3.** Supprimer §3.6 (§12). ~15 lignes gagnées |
| **« le contrat change l'étiquette, pas la vérité »** | **6×** | Abstract, §1 ×2, légende Fig. 1, §8.1, §9 | **Garder Abstract + §1 + §9.** Deux occurrences à quatre lignes d'écart (l. 149/150) : fusionner |
| **« Licensed divergence records X, not truth »** | **4×** | Abstract, légende Fig. 1, §2.4, §8.1 | **Garder §2.4 + une légende.** |
| **Définition de `indeterminate`** | **3×** | §2.6, §8.2, Annexe A | Suit la règle du verdict ci-dessus |

**Gain total estimé : environ une page et demie**, sans perte d'information — dont la moitié dans la §2 et la §8, c'est-à-dire exactement là où la charge est la plus élevée.

### Redondance entre parties (grille demandée)

| Paire | Niveau | Verdict |
|---|---|---|
| Abstract ↔ Introduction | Élevé | **Acceptable** — attendu en CL ; l'abstract est autonome. Mais l'abstract consacre ~45 mots sur 205 au style et au verdict-réponse, ce qui sur-représente les périphériques |
| Introduction ↔ Framework | Élevé | **À réduire** — la règle complète est en §1 (l. 175–181) *et* en §2.4. §1 devrait donner l'architecture, §2.4 la règle |
| Related Work ↔ Mapping | Faible | **Correct** — §3 pose les traditions, §5 code les ressources. Pas de recouvrement |
| Worked Cases ↔ Research Agenda | Faible | **Correct et bien articulé** — les cas génèrent les tests, la transition le dit |
| Research Agenda ↔ Discussion | Modéré | **À surveiller** — P4 et §8.2 traitent tous deux du niveau réponse |
| Discussion ↔ Conclusion | Modéré | **Acceptable** — la Conclusion est courte et bien calibrée |

### Sections contenant trop de concepts nouveaux à la fois

1. **§1, ¶ *Our position* (p. 2)** — ~18 objets nouveaux en une trentaine de lignes. **Pic n°1.**
2. **§2.5 + §2.6 (p. 10–13)** — `σ_p`, l'échelle 0/1/2, `σ̂(y,p)`, alignement match/mismatch/N-A, couverture de récupération, verdict de contenu à 3 valeurs, succès créatif à 4 valeurs, la taxonomie finale à 4 valeurs, politiques d'agrégation, sévérité, utilité. **≈ 11 objets nouveaux en 3 pages, dont aucun n'est le cœur de l'argument.** **Pic n°2.**
3. **§7 (p. 21–24)** — 28 blocs structurés. Charge de **format** plus que de concept.

---

## 21. Journal des confusions d'un nouveau lecteur

Points ordonnés par page, tels qu'ils seraient annotés en marge lors d'une première lecture.

### Page 1 — Abstract

| Marge | Déclencheur |
|---|---|
| **« Was this defined? »** | *"procedural failures"* — employé comme composante du verdict ; défini p. 13 |
| **« Was this defined? »** | *"recovery coverage"* — défini p. 12 |
| **« What does this mean? »** | *"Style-marking alignment remains separate"* — séparé de quoi ? Le concept n'existe pas encore |
| **« Is this a result or a hypothesis? »** | *"In our selected sample, no resource separately represents…"* — résultat, mais le lecteur ne sait pas encore qu'il y a un échantillon |

### Page 2 — Introduction, *Our position*

| Marge | Déclencheur |
|---|---|
| **« Why do I need this? »** | *"We use $x$ for the literal prompt"* — `x` ne resservira jamais |
| **« Why do I need this? »** | *"A response span $s$…"* — `s` ne resservira jamais |
| **« Is this different from the previous term? »** | **ENTAILED/CONTRADICTED/UNKNOWN vs SUP/H/LD** — six termes en petites capitales, aucun signal qu'il s'agit de deux registres. **Point de confusion n°1 du manuscrit** |
| **« Was this defined? »** | *"its observed status marking satisfies $\mu_p$"* — `observed status marking` non défini (p. 6) |
| **« Was this defined? »** | *"reason code OUT-OF-SCOPE or MARKING-FAILURE"* — `reason code` non défini (p. 9) |
| **« Was this defined? »** | *"which evidence-unknown content the task authorizes"* — `evidence-unknown` défini implicitement deux lignes plus bas |
| **« Why is this equation necessary? »** | `TC(p)=(O_p,Γ_p,μ_p)` avant tout exemple |
| **« What is being evaluated? »** | Affirmation, span, ou réponse ? Les trois sont mentionnés en dix lignes |

### Page 3 — *Why a truth contract…* / *A secondary problem*

| Marge | Déclencheur |
|---|---|
| **« How does this relate to the paper's thesis? »** | Le ¶ sur le style occupe 27 lignes et arrive avant la Figure 1 ; le lecteur croit à une seconde thèse |
| **« Is this different from the previous term? »** | `style marking` vs `required status marking` — deux « marking » à trois lignes d'écart |
| **« Is this a result or a hypothesis? »** | *"Marked style may make claim recovery less stable, but this remains an empirical hypothesis"* — **bien traité** ; noté comme point positif |
| **« Who is doing this? »** | *"A procedure for claim recovery may nevertheless literalize a metaphor"* — le modèle, l'évaluateur, ou le pipeline ? |

### Page 5 — Figure 1

| Marge | Déclencheur |
|---|---|
| **« Why is this here now? »** | La figure est référencée p. 2 et p. 4 ; elle arrive p. 5 |
| **« What would the baseline say? »** | La figure montre ce que fait le cadre, jamais ce que ferait la pratique actuelle. **Manque structurel** |
| **« Was this defined? »** | `Γ₁`, `Γ₂`, `μ` nus dans les boîtes de contrat |

### Page 6 — §2.1

| Marge | Déclencheur |
|---|---|
| **« What changed in this example? »** | *"Consider the running example used throughout this paper"* — mais le prompt (*"an engaging museum panel"*) et l'oracle (*"the Wikipedia article"* entier, non l'extrait figé) diffèrent de la Figure 1 |
| **« Why is this equation necessary? »** | `c*=(q*,m*)` introduit à l'intérieur d'une phrase de 54 mots |
| **« Why is this section here? »** | Les 7 étapes, puis immédiatement *"Steps 1–6 can fail, with Steps 5 and 6 applying only on the relevant branches"* — la structure vient d'être invalidée |

### Page 7 — §2.2

| Marge | Déclencheur |
|---|---|
| **« Why is this true? »** | *"Searle's account of fictional discourse provides indirect support"* — « indirect » est honnête mais laisse le lecteur incertain de ce que la référence établit |
| **« Is this different from the previous term? »** | `Γ_p` borné par la sécurité (l. 485) vs `Γ_p` borné par la sécurité (§8.3, l. 1933) — deux formulations, une seule relation |

### Page 9 — §2.4

| Marge | Déclencheur |
|---|---|
| **« Why wasn't this on page 2? »** | *"We reserve ENTAILED, CONTRADICTED, and UNKNOWN for evidence states."* — **la phrase la plus nécessaire du papier, sept pages trop tard** |
| **« Why is this equation necessary? »** | La précédence des codes de raison en liste imbriquée |
| **« Why do I need this? »** | Le ¶ sur la sévérité (deux phrases) interrompt la règle et n'est repris qu'en §8.2 |

### Page 10–12 — §2.5, §2.6

| Marge | Déclencheur |
|---|---|
| **« Why do I need this? »** | `σ_p ∈ {0,1,2}` — l'échelle est déclarée non validée quatre lignes plus loin |
| **« Why is this equation necessary? »** | `σ̂(y,p)` — trois occurrences pour « niveau observé » |
| **« How does this relate to the thesis? »** | Toute la §2.6. Le lecteur vient de recevoir une règle d'étiquetage d'affirmations ; on lui donne une taxonomie de réponses à quatre valeurs |
| **« Is this a result or a hypothesis? »** | *"This exact categorical correspondence is a provisional working rule"* — **bien traité**, noté positivement |

### Page 13 — §2.7

| Marge | Déclencheur |
|---|---|
| **« What is being evaluated? »** | Quatre types d'échec (spécification de contrat / spécification d'oracle / adéquation d'oracle / adjudication) dans un seul paragraphe, sans exemple différenciant. L'exemple *"the winter that would not lift"* qui suit n'illustre qu'un cinquième type (échec de récupération) |

### Page 14–16 — §3

| Marge | Déclencheur |
|---|---|
| **« Why is this section here? »** | **§3.6** — aucune citation. Le lecteur cherche la littérature sur le raisonnement global et n'en trouve aucune |
| **« Why isn't this earlier? »** | §3.5 : *"an ingenious fabricated medical fact still receives the hallucination label…"* — la meilleure explication de portée-vs-utilité, en Related Work |

### Page 16–17 — §4

| Marge | Déclencheur |
|---|---|
| **« How were these found? »** | Aucune procédure de recherche |
| **« Who did this? »** | *"our coding"* — combien de codeurs ? Aucun accord rapporté |
| **« Why is this section here? »** | §4 ouvre sur l'unité d'analyse avant d'avoir posé la question du mapping |

### Page 19 — Figure 3

| Marge | Déclencheur |
|---|---|
| **« What am I supposed to read? »** | Un plan cartésien accompagné de quatre phrases expliquant que les positions n'encodent rien |
| **« Why is this here? »** | La figure et §5.1 disent la même chose |

### Page 20 — §6

| Marge | Déclencheur |
|---|---|
| **« What changed in this example? »** | **Cas B** — trois facteurs changent ; l'avertissement est enfoui dans le corps du paragraphe |
| **« What is being evaluated? »** | **Cas D** — aucune chaîne concrète, le lecteur doit inventer l'exemple |
| **« Is this different from the previous case? »** | Cas D vs Cas B — les deux opposent monde réel et monde fictionnel |

### Page 25 — §8.2

| Marge | Déclencheur |
|---|---|
| **« Didn't I read this already? »** | La règle du verdict ordonné, reproduite quasi mot pour mot depuis §2.6 |

---

## 22. Contrôle de régression

Le manuscrit a subi plusieurs passes de simplification. Recherche ciblée des régressions typiques.

| # | Régression recherchée | Statut |
|---|---|---|
| 1 | Formalisme mathématique réintroduit sans nécessité | ⚠️ **REGRESSION PARTIELLE** |
| 2 | Le style réabsorbé dans le contrat de vérité | ✅ **Aucune régression** |
| 3 | L'utilité confondue avec la divergence autorisée | ✅ **Aucune régression** |
| 4 | État de preuve et étiquette fusionnés | ✅ **Aucune régression conceptuelle** (mais problème d'exposition, §6) |
| 5 | Échecs procéduraux traités comme étiquettes | ✅ **Aucune régression** |
| 6 | Le mapping présenté comme représentatif | ✅ **Aucune régression** |
| 7 | Exemples construits présentés comme empiriques | ✅ **Aucune régression** |
| 8 | Affirmations plus fortes que leurs preuves | ✅ **Aucune régression** |
| 9 | Synonymes réintroduits | ⚠️ **REGRESSION PARTIELLE** |
| 10 | Portée élargie de l'affirmation à la réponse complète | ⚠️ **REGRESSION** |
| 11 | Analyse stylistique secondaire aussi proéminente que l'argument central | ⚠️ **REGRESSION** |

---

### ⚠️ **REGRESSION 1 — Formalisme sans emploi au point de charge maximale**

**Constat :** quatre objets formels n'ont aucun usage ultérieur ou un usage négligeable, et trois d'entre eux sont concentrés dans le ¶ le plus dense du papier (p. 2) :

- `$s$` (response span) — **une seule occurrence dans le fichier entier**
- `$x$` (prompt littéral) — trois occurrences, dont deux sont la définition elle-même
- `$\widehat{\sigma}(y,p)$` — trois occurrences pour un concept nommable en trois mots
- **Équation (1)** — environnement `equation` numéroté, avec un label `eq:truth-contract` **jamais référencé**

**Pourquoi c'est une régression :** un position paper qui déclare vouloir être lisible ne devrait pas exiger la mémorisation de symboles sans emploi. Plus grave : ce formalisme sans emploi **décrédibilise par contagion** le formalisme qui, lui, travaille (`O_p`, `Γ_p`, `μ_p`, `q*`, `m*`). Un relecteur qui repère `$s$` inutilisé en p. 2 abordera la §2 en supposant que le reste est également décoratif — alors qu'il ne l'est pas.

**Correction :** retirer `$s$`, `$x$`, `$\widehat{\sigma}$` ; dénumeroter l'équation (1).

---

### ⚠️ **REGRESSION 9 — Synonymes réintroduits pour des objets formels**

**Constat :** quatre concepts formels portent plusieurs noms (détail complet en §5) :

- Le niveau stylistique demandé : *requested style-marking level* / *requested style* / *requested voice* / *requested communicative form*
- Les cinq cas : *worked cases* / *case studies* / *the five comparisons* / *constructed specification checks*
- Le résultat au niveau réponse : *content verdict* / *response-level verdict* / *structured verdict* / *response-level record*
- La §7 : *Future Work* (titre) / *research agenda* (abstract, Contributions, label)

**Pourquoi c'est une régression :** le fichier source porte, l. 36–43, un bloc de commentaires intitulé `% Canonical terminology:` qui fixe explicitement le vocabulaire. Les variations observées sont donc des **écarts par rapport à une décision consignée par les auteurs eux-mêmes** — ce qui est la signature d'une réintroduction lors d'une passe d'édition ultérieure. Le cas le plus coûteux est *requested voice* : il apparaît dans la **Figure 1**, c'est-à-dire à la première rencontre du lecteur avec le concept, ce qui rompt le lien avec §2.5.

**Correction :** appliquer le bloc `% Canonical terminology` du fichier source, y ajouter les quatre entrées manquantes, et retitrer §5, §6 et §7.

---

### ⚠️ **REGRESSION 10 — Extension de la portée du niveau affirmation vers la réponse complète**

**Constat :** le papier déclare, en six endroits, qu'il n'évalue pas les réponses complètes. Il consacre pourtant à l'évaluation au niveau réponse :

- §2.6 en entier (**une page et demie**, p. 12–13)
- §8.2 en entier (**une page**, p. 25) — largement verbatim depuis §2.6
- La Priorité 4 de l'agenda (p. 23)
- Le premier paragraphe de l'Annexe A
- Une boîte dédiée dans la Figure 2
- **Vingt-six mots de l'abstract** (*"Its structured response-level content verdict combines the claim trace, recovery coverage, and procedural failures into one of three values: contract-compliant, contract-violating, or indeterminate."*)

Et il introduit, au-delà du verdict à trois valeurs, une **taxonomie finale à quatre valeurs** (`reliable and creatively aligned`, `reliable but creatively misaligned`, `contract-violating`, `indeterminate`), énoncée **trois fois**.

**Pourquoi c'est une régression :** le lecteur reçoit deux messages contradictoires. Le message explicite : « ce cadre étiquette des affirmations et ne prétend pas évaluer des réponses ». Le message implicite, porté par la répartition de l'espace : « ce cadre produit un verdict au niveau réponse en quatre catégories nommées ». **La nécessité de répéter le disclaimer six fois est le symptôme de cette contradiction, pas son remède.** Un lecteur attentif conclut soit que les auteurs se sous-vendent, soit qu'ils se sur-vendent — dans les deux cas il perd confiance dans le périmètre annoncé.

**Correction :** conserver en §2.6 le verdict de contenu à trois valeurs (justifié : il compose directement la trace d'affirmations). **Déplacer en Annexe A** la taxonomie à quatre valeurs — elle y figure déjà intégralement. Remplacer §8.2 ¶2–3 par un renvoi. Réduire l'abstract sur ce point d'environ vingt-six mots à une dizaine.

---

### ⚠️ **REGRESSION 11 — L'analyse stylistique aussi proéminente que l'argument central**

**Constat :** le style, explicitement qualifié de *"secondary problem"* par les auteurs, occupe :

- **~27 lignes de l'Introduction** (p. 3), soit **plus que le ¶ *Our position*** (~25 lignes hors notation), et **placées avant la Figure 1**
- **§2.5 en entier** (p. 10–11)
- **§3.7 en entier** (p. 16)
- La colonne 4 des trois tableaux de l'Annexe B
- **L'axe vertical de la Figure 3** — l'un des deux axes de la seule figure de résultats
- Une composante sur trois du verdict au niveau réponse
- Les Priorités 2 et 3 de l'agenda
- Les **niveaux 0/1/2** dans la légende de la Fig. 2 et dans le Cas E
- **une vingtaine de mots de l'abstract**

**Pourquoi c'est une régression :** la thèse du papier est *« l'étiquette hallucination dépend du contrat de tâche »*. Le style n'est pas dans le contrat — les auteurs le répètent huit fois. Pourtant, un lecteur qui compterait l'espace conclurait que le papier a deux thèses. **La Figure 3 en est la démonstration la plus nette : la seule figure de résultats du papier a pour axe vertical une variable que le cadre place explicitement hors du contrat**, et le résultat principal (*"no resource separately represents O, Γ, and μ"*) n'y est **pas** représenté — la légende doit le dire en toutes lettres : *"This broader result is established by the coding in Appendix B, not by the geometry of this figure."*

**Correction :** (i) réduire le ¶ style de l'Introduction à ~12 lignes et le placer **après** la Figure 1 ; (ii) retirer les valeurs numériques `σ ∈ {0,1,2}` du corps (les garder en Annexe A et §7-P2) ; (iii) reconcevoir la Figure 3 en matrice (§15) de sorte que le résultat principal — les trois champs du contrat représentés ou non — devienne visible dans la figure, le style n'y étant qu'une colonne parmi d'autres.

---

### Régressions **absentes** — à porter au crédit du manuscrit

- **Le style n'est jamais réabsorbé dans le contrat.** Vérifié sur les 43 occurrences de `style-marking level` : aucune ne le traite comme un champ du contrat. La formulation *"Only $O_p$, $\Gamma_p$, and $\mu_p$ enter the claim-labeling rule"* (l. 480) est catégorique.
- **L'utilité n'est jamais confondue avec la divergence autorisée.** §3.5 tranche explicitement (*"Permission scope is evaluated first"*), et §2.4 le redit (*"records contract compliance … not established truth, usefulness, overall response quality, or safety"*).
- **Les échecs procéduraux ne deviennent jamais des étiquettes.** *"It is recorded in place of a claim label, and the affected span is left unlabeled; it never receives SUP, H, or LD"* (l. 1036–1038). Sans ambiguïté.
- **Aucune sur-généralisation du mapping.** Toutes les formulations sont bornées (*"in our selected sample"*, *"in our coding"*). Vérifié exhaustivement.
- **Aucun exemple construit présenté comme empirique.** Trois avertissements distincts (§1, §6, légende Fig. 2).
- **Aucune affirmation excédant ses preuves.** Les hypothèses sont systématiquement marquées comme telles (*"remains an empirical hypothesis"*, *"is a testable hypothesis, not an established result"*, *"remains an open question"*).

**Ces six points sont la marque d'une discipline conceptuelle réelle.** Les régressions restantes sont des régressions de **présentation**, pas de **contenu**.

---

## 23. Corrections prioritaires

### P0 — À corriger impérativement avant soumission

---

**P0-1. Nommer la distinction état de preuve / étiquette avant d'utiliser les deux vocabulaires**

- **Localisation :** §1, p. 2, l. 171–186 (¶ *Our position*)
- **Problème :** six termes en petites capitales — ENTAILED, CONTRADICTED, UNKNOWN, SUP, H, LD — sont employés dans un même paragraphe sans que le lecteur soit averti qu'ils forment deux registres distincts. La phrase qui l'explicite (*"We reserve ENTAILED, CONTRADICTED, and UNKNOWN for evidence states…"*) est en **p. 9**.
- **Correction concrète :** insérer avant `TC(p)` le paragraphe en deux temps proposé en §6 de la présente revue (*"Evaluating a claim takes two steps, and the paper's whole argument lives in the gap between them…"*). Dans les figures et tables, étiqueter systématiquement les deux niveaux — la Figure 2 le fait déjà, la Figure 1 doit le faire.
- **Bénéfice :** le lecteur reçoit l'architecture avant le vocabulaire ; la thèse devient une conséquence visible de l'architecture ; l'objection prévisible « pourquoi trois états *et* trois étiquettes ? » est neutralisée à la p. 2 au lieu de la p. 9.

---

**P0-2. Dégonfler le pic de densité de la page 2 et déplacer la Figure 1 à sa hauteur**

- **Localisation :** §1, p. 2, l. 146–186 ; Figure 1, p. 5
- **Problème :** ~18 objets nouveaux en une trentaine de lignes avant tout exemple ; la figure qui les rend intuitifs arrive trois pages plus loin.
- **Correction concrète :** (i) découper le ¶ en quatre selon §19-a ; (ii) retirer `$x$`, `$y$` et `$s$` du corps ; (iii) déplacer le `\begin{figure}` de la Figure 1 immédiatement après le ¶ *Our position*, avant le ¶ *Why a truth contract…* ; réduire sa hauteur si nécessaire en abrégeant les prompts ; (iv) déplacer le bloc `TC(p)` + règle d'étiquetage **après** la figure.
- **Bénéfice :** l'exemple précède la formalisation, ce qui est l'ordre naturel d'apprentissage. Gain estimé : +1,5 point sur le score de première lecture.

---

**P0-3. Ajouter la comparaison avec la pratique existante dans la Figure 1**

- **Localisation :** Figure 1, p. 5
- **Problème :** la figure montre que le cadre proposé produit deux étiquettes ; elle ne montre pas que la pratique actuelle n'en produirait qu'une. Or c'est exactement la thèse. Un lecteur extérieur ne sait pas ce qui est nouveau.
- **Correction concrète :** insérer une bande entre la boîte de réponse et les deux boîtes de résultat : `Evidence state (identical in both tasks): UNKNOWN — a standard factuality check stops here and reports the same outcome for both tasks.`
- **Bénéfice :** la thèse devient lisible en 10 secondes sur la seule figure ; le mot `evidence state` devient visible comme *niveau*, ce qui renforce P0-1.

---

**P0-4. Définir `observed status marking` et `reason code` là où ils sont d'abord employés**

- **Localisation :** §1, p. 2, l. 176 et l. 179
- **Problème :** `observed status marking` est employé p. 2 et défini p. 6 (l. 432) ; `reason code` est employé p. 2 et défini p. 9 (l. 640). Le lecteur doit accepter deux termes non définis dans la phrase qui porte la règle centrale.
- **Correction concrète :** insérer à l'endroit de leur emploi : *"How the response actually presents the claim — asserted, hedged, framed as a hypothesis — is its **observed status marking**; the contract's requirement is what it is compared against. When a claim violates the contract, the evaluator also records a **reason code** naming which condition failed."*
- **Bénéfice :** supprime deux des quatre annotations « Was this defined? » de la page 2.

---

**P0-5. Retirer la taxonomie finale à quatre valeurs de §2.6 (la conserver en Annexe A)**

- **Localisation :** §2.6, p. 12, l. 1004–1016 ; répétée en §8.2, l. 1889–1893 ; déjà présente en Annexe A, l. 2028–2039
- **Problème :** `reliable and creatively aligned` / `reliable but creatively misaligned` ajoute une quatrième couche de catégories à un cadre dont le message est « nous étiquetons des affirmations ». Énoncée trois fois, c'est la principale cause de la REGRESSION 10.
- **Correction concrète :** en §2.6, conserver les trois composantes et la règle de contenu ordonnée ; remplacer le passage sur la catégorie unique par une phrase : *"When a benchmark needs one final category, Appendix A gives a composition rule that keeps the three components recoverable."*
- **Bénéfice :** ~20 lignes de moins au cœur du cadre, un objet en moins à retenir, et la nécessité de répéter six fois le disclaimer de périmètre diminue mécaniquement.

---

**P0-6. Ajouter la procédure de recherche, les critères d'inclusion et le nombre de codeurs**

- **Localisation :** §4.1, p. 16
- **Problème :** le seul résultat empirique du papier repose sur un codage dont on ignore comment les ressources ont été trouvées, sur quel critère elles ont été retenues, et par combien de personnes elles ont été codées. Aucun accord inter-codeurs n'est rapporté, et l'absence n'est pas reconnue explicitement dans la §4.
- **Correction concrète :** insérer le paragraphe de 6–8 lignes proposé en §13 ci-dessus. Si le codage a été réalisé par un seul auteur, **le dire dans la §4** plutôt que de le laisser deviner à la §8.3.
- **Bénéfice :** neutralise l'attaque la plus prévisible en relecture. Le coût est de six lignes ; le coût de l'omission est un desk-reject possible sur la seule section empirique.

---

**P0-7. Réduire le paragraphe stylistique de l'Introduction et le placer après la Figure 1**

- **Localisation :** §1, p. 3, l. 230–256
- **Problème :** ~27 lignes, plus que le ¶ *Our position*, placées avant la Figure 1, pour un problème que les auteurs qualifient eux-mêmes de secondaire. Le lecteur en sort avec l'impression de deux thèses de poids égal.
- **Correction concrète :** réduire à ~12 lignes en conservant : la définition du marquage stylistique, une référence stylistique, le terme `claim-preserving style variation` avec son renvoi, et la phrase-clé (*"Protocols that do not expose style-marking level as a controlled variable cannot measure this possible error"*). Retirer les développements sur le style transfer (ils sont déjà en §3.7). Placer après la Figure 1.
- **Bénéfice :** la thèse centrale reste dominante dans l'Introduction ; le lecteur arrive à la Figure 1 avec un seul argument en tête.

---

**P0-8. Aligner les titres de section sur les termes employés dans le corps**

- **Localisation :** titres des §5, §6, §7
- **Problème :** « Results » désigne un mapping raisonné (attente de résultats expérimentaux) ; « Case Studies » désigne des cas construits explicitement non empiriques et appelés *worked cases* sept fois ailleurs ; « Future Work » désigne ce que les Contributions vendent comme *a falsifiable research agenda*.
- **Correction concrète :** « Mapping Results », « Worked Cases », « Research Agenda ». Trois changements de `\section{}`.
- **Bénéfice :** trois attentes fausses supprimées pour trois lignes modifiées. Le rapport coût/bénéfice le plus élevé de toute la liste.

---

### P1 — Vivement recommandé

**P1-1. Supprimer §3.6 (*Global Reasoning and Complete-Response Evaluation*).**
*Localisation :* p. 16. *Problème :* zéro citation dans une section Related Work ; contenu redit en §1, §2.6, §8.2 et §8.3. *Correction :* supprimer ; si le point doit rester dans la §3, le rattacher en deux phrases à §3.3, ou le convertir en vraie revue de littérature. *Bénéfice :* la §3 cesse de suggérer une lacune bibliographique inexistante ; une occurrence du disclaimer de périmètre en moins.

**P1-2. Reconcevoir la Figure 3 en matrice à cases.**
*Localisation :* p. 19. *Problème :* un plan cartésien pour des données catégorielles, qu'il faut désavouer en quatre phrases ; le résultat principal n'y est pas représenté. *Correction :* grille profils × traitements stylistiques, cellules = numéros de ressources ; ajouter idéalement une colonne « O, Γ, μ séparément représentés ». *Bénéfice :* le `Reading guide` de six lignes et les avertissements disparaissent ; le résultat principal devient visible dans la figure.

**P1-3. Remplacer §8.2 ¶2–3 par un renvoi à §2.6.**
*Localisation :* p. 25, l. 1866–1893. *Problème :* reproduction quasi verbatim de la règle du verdict. *Correction :* *"Section 2.6 defines the ordered content rule; what follows discusses how to read its output."* puis conserver uniquement le matériel interprétatif (compliance ≠ vérité globale ; sévérité ≠ étiquette). *Bénéfice :* ~15 lignes gagnées dans une section que le relecteur lit en fin de parcours.

**P1-4. Rapatrier en §2 la paire minimale portée-vs-utilité de §3.5.**
*Localisation :* §3.5, p. 15, l. 1193. *Problème :* la meilleure explication du papier sur `Γ_p` ≠ utilité est enterrée en Related Work. *Correction :* déplacer *"an ingenious fabricated medical fact still receives the hallucination label, whereas an unhelpful but in-frame fictional invention still receives the licensed-divergence label, with low usefulness"* en §2.2 (¶ *Permission scope*) ou §2.4 ; laisser un renvoi en §3.5. *Bénéfice :* la confusion C3 est traitée là où elle naît.

**P1-5. Restructurer la chaîne en sept étapes en deux phases.**
*Localisation :* §2.1, p. 6, l. 441–455. *Problème :* la liste séquentielle est immédiatement invalidée par *"Steps 5 and 6 applying only on the relevant branches"*. *Correction :* appliquer la réécriture en deux phases proposée en §9-a. *Bénéfice :* la forme narrée reflète la structure logique ; l'unique point de branchement devient typographiquement visible.

**P1-6. Uniformiser le vocabulaire stylistique, à commencer par la Figure 1.**
*Localisation :* Figure 1 (*voice*), §2.6 et §8.2 (*communicative form*), corpus (*requested style*). *Correction :* **requested style-marking level** partout ; *requested style* toléré uniquement en légende par contrainte de place. *Bénéfice :* le lien entre la première rencontre du lecteur avec le concept et sa définition en §2.5 est rétabli.

**P1-7. Étoffer §3.4 (*Instruction Following, Permission, and Status Marking*).**
*Localisation :* p. 15. *Problème :* une seule citation pour ce qui sera l'objection principale des relecteurs ; IFEval, cité en §1, n'y figure pas. *Correction :* rapatrier le raisonnement de la p. 3 (*"A sufficiently detailed instruction-following rubric could reproduce the same labels only by…"*) et citer `zhou_ifeval_2023` et `wu_dancing_2024`. *Bénéfice :* la réponse à l'objection se trouve là où le relecteur ira la chercher.

**P1-8. Traiter la collision sur le mot « alignment ».**
*Localisation :* l. 227, 945, 1860 (sens RLHF) vs 43 occurrences de *style-marking alignment*. *Correction :* remplacer *"a general alignment … measure"* (l. 227) par *"a general measure of model alignment"* et *"general alignment"* (l. 945) par *"model alignment in the RLHF sense"*, de sorte que le sens (b) soit toujours explicitement qualifié. *Bénéfice :* le lecteur NLP, qui lit « alignment » au sens RLHF par défaut, ne bute plus.

---

### P2 — Finition

1. **Dénumeroter l'équation (1)** (§2.2, l. 466–469) — le label `eq:truth-contract` n'est jamais référencé ; une équation numérotée signale à tort au lecteur qu'il devra y revenir. La passer en inline.
2. **Retirer `$\widehat{\sigma}(y,p)$`** (§2.5, 3 occ.) — « observed style-marking level » est plus court à lire que la notation.
3. **Retirer les valeurs numériques `σ ∈ {0,1,2}` du corps** — conserver les trois niveaux nommés ; garder les chiffres en Annexe A et §7-P2, où ils servent à décrire un protocole factoriel.
4. **Figer un seul setup Rosetta Stone** — même extrait d'oracle et même libellé de tâche en Fig. 1, §2.1, Fig. 2 et Cas E ; annoncer l'exemple filé dès l'Introduction (*"We use this example throughout the paper."*).
5. **Retirer la boîte `Response-level record` de la Figure 2** (p. 11) — elle réfère à §2.6, qui n'est pas encore lue à ce point. Conserver les deux autres boîtes.
6. **Marquer le Cas B comme multi-facteur dans son titre** (p. 20) et lui ajouter une rubrique `Purpose.` explicite.
7. **Donner un contenu concret au Cas D** (p. 20) — le raccrocher au Café Verdier du Cas B : « Café Verdier » (inventé, en cadre) → LD ; « Verdier servait Hemingway » (personne réelle nommée) → H, `out-of-scope`.
8. **Reformuler le Cas C sur la Rosetta Stone** — l'exemple outil/documentation est orphelin ; la même paire minimale sur la stèle fermerait la seule lacune de l'exemple filé.
9. **Ajouter une rubrique `Why this case is here` aux cinq cas** — une ligne chacun (formulations proposées en §14-c).
10. **Ajouter un tableau récapitulatif en tête de §7** — 7 lignes × 3 colonnes (Priorité / Question centrale / Ce qui falsifierait), suivi de la prose détaillée inchangée.
11. **Ajouter des renvois croisés §8.3 ↔ §7** — sept renvois `(see Priority N)` rendraient visible une cohérence déjà présente.
12. **Raccourcir les légendes des Figures 1 et 2** — respectivement une dizaine et une quinzaine de lignes ; l'essentiel du contenu est déjà dans le texte adjacent.
13. **Fusionner les l. 149–150** — *"the truth value of the underlying proposition does not"* et *"The truth contract changes the evaluation label, not what is true"* disent la même chose à quatre lignes d'écart.
14. **Trancher la relation `Γ_p` / contraintes de sécurité** — une phrase disant si les contraintes bornent `Γ_p` ou s'appliquent après lui, et l'appliquer aux deux formulations (l. 485, l. 1933).

---

## 24. Verdict final d'accessibilité

| Dimension | Note /10 |
|---|---:|
| Message central | **8** |
| Introduction | **5** |
| Définitions des concepts | **6** |
| Cohérence terminologique | **7** |
| Compréhension du cadre | **7** |
| Accessibilité du formalisme | **6** |
| Ordre des sections | **8** |
| Transitions | **7** |
| Figures et tableaux | **7** |
| Positionnement du Related Work | **8** |
| Lisibilité du mapping | **6** |
| Clarté des cas travaillés | **9** |
| Agenda de recherche | **9** |
| Anglais académique | **8** |
| Accessibilité au lecteur NLP non spécialiste | **6** |
| **Moyenne** | **7,1** |

---

### A. Un chercheur NLP compétent hors de ce domaine peut-il comprendre le papier en une lecture attentive ?

> ### **Mostly**

Il comprendra la thèse, la motivation et le contraste central sans difficulté : la Figure 1 et le ¶ *Our position* font ce travail efficacement. Il comprendra également, sans effort particulier, ce que le papier ne prétend pas faire — le périmètre est probablement l'aspect le mieux traité du manuscrit. Ce qui lui coûtera une relecture, ce sont deux choses précises : la distinction entre états de preuve et étiquettes d'affirmation, qui est utilisée en page 2 mais nommée en page 9 ; et l'articulation entre le cœur du cadre (une règle d'étiquetage d'affirmations en une page et demie) et ses périphériques (style, verdict au niveau réponse, échecs procéduraux, sur cinq pages). Aucune de ces difficultés ne tient à la complexité intrinsèque de l'idée, qui est simple et bien pensée — elles tiennent toutes au moment où l'information est délivrée.

### B. Où se situe le point de charge cognitive maximale ?

> **§1, paragraphe *Our position*, page 2, lignes 155 à 186.**

Environ dix-huit objets nouveaux sont introduits en une trentaine de lignes : la définition de `claim` ; les symboles `x`, `p`, `y`, `s` ; la liste des six composantes du contexte de tâche ; la notion d'`evaluator` ; le triplet `TC(p)=(O_p,Γ_p,μ_p)` avec ses trois champs ; les trois états de preuve ; les trois étiquettes ; les trois codes de raison ; et un renvoi en avant vers une « forme normalisée » non encore définie. Tout cela **avant le moindre exemple** — la Figure 1 est trois pages plus loin. Quatre de ces objets (`x`, `s`, et deux termes non définis, `observed status marking` et `reason code`) ne rapportent rien au lecteur à cet endroit : deux ne resserviront jamais, deux ne seront expliqués que quatre et sept pages plus tard.

Le point de charge secondaire est §2.5–§2.6 (p. 10–13), pour une raison différente : non pas la densité par ligne, mais le fait que onze objets nouveaux y sont introduits alors qu'aucun n'appartient au cœur de l'argument.

### C. Les trois changements qui amélioreraient le plus la lisibilité

1. **Nommer la distinction état de preuve / étiquette d'affirmation à la page 2, et déplacer la Figure 1 à cette hauteur.** (P0-1 + P0-2 + P0-3.) C'est un seul mouvement éditorial et il traite le problème n°1 du manuscrit, le pic de charge n°1, et la lacune structurelle de la Figure 1. À lui seul, il ferait passer le score de première lecture de 6 à 8.
2. **Réduire l'emprise du niveau réponse et du style.** (P0-5 + P0-7 + P1-1 + P1-2.) Le papier a une thèse ; sa mise en page en suggère trois. Réduire les périphériques est plus efficace que répéter six fois qu'ils sont périphériques.
3. **Documenter la construction du mapping.** (P0-6.) Six lignes en §4.1. C'est le seul point de la revue où un défaut de lisibilité devient un défaut de validité, et c'est la faille que le relecteur le plus hostile attaquera en premier.

### D. Un concept devrait-il être supprimé plutôt que mieux expliqué ?

> **Oui — un, et un seul : la taxonomie finale à quatre valeurs `reliable and creatively aligned` / `reliable but creatively misaligned`.**

Elle est optionnelle par construction (*"When a task requires a single categorical summary…"*), elle est déclarée trois fois, elle ajoute deux noms de catégorie à un cadre qui en compte déjà onze (3 états, 3 étiquettes, 3 codes, 3 valeurs de verdict de contenu), et elle contribue plus que tout autre élément à la REGRESSION 10. Elle figure déjà intégralement en Annexe A ; sa suppression du corps ne perd rien.

**Deux quasi-candidats, à conserver malgré tout :**
- **`σ_p ∈ {0,1,2}`** — les *valeurs numériques* doivent quitter le corps (P2-3), mais le concept de niveau de marquage stylistique doit rester : il porte la Priorité 3 de l'agenda et le Cas E.
- **§3.6** — n'est pas un concept mais un doublon de périmètre ; à supprimer comme sous-section, pas comme idée (P1-1).

**Ce qu'il ne faut surtout pas supprimer**, malgré son coût de lecture : les échecs procéduraux (§2.7). Ils sont ce qui empêche le cadre de dégénérer en « tout ce qu'on ne sait pas classer devient UNKNOWN », et ils portent une des distinctions les plus fines du papier (silence d'un oracle correctement instancié → `UNKNOWN` ; oracle inadéquat → échec procédural).

### E. Une notation devrait-elle être supprimée au profit de la prose ou d'une figure ?

> **Oui — quatre objets.**

1. **`$s$` (response span)** — **une seule occurrence dans le manuscrit entier.** Le terme « response span » suffit ; le symbole ne sert jamais.
2. **`$x$` (prompt littéral)** — trois occurrences, dont deux constituent sa propre définition. L'opposition prompt / contexte de tâche se dit en mots, et le papier la dit déjà en mots dans la même phrase.
3. **`$\widehat{\sigma}(y,p)$` (niveau stylistique observé)** — trois occurrences pour un concept dont le nom en toutes lettres est plus court à lire que la notation.
4. **La numérotation de l'équation (1)** — le label `eq:truth-contract` n'est jamais référencé. Une équation numérotée promet au lecteur un retour ultérieur qui n'arrive pas.

**À défendre explicitement contre toute demande de « dé-formalisation » :** `O_p`, `Γ_p`, `μ_p`, `q*`, `m*`. Ces cinq symboles sont réutilisés des dizaines de fois, structurent les figures, et rendent les Cas A–E lisibles en une lecture — sans eux, la rubrique `Fixed / Changed` deviendrait de la prose ambiguë. Le problème du manuscrit n'est pas qu'il soit trop formel ; c'est que quatre symboles inutiles sont placés exactement là où le lecteur est le plus chargé, et qu'ils jettent le doute sur les cinq qui travaillent.

### F. Le papier emploie-t-il un terme stable pour chaque concept majeur ?

> ### **Non**

Sept inconsistances subsistent (détail complet en §5) :

1. **Niveau de marquage stylistique demandé** — *requested style-marking level* / *requested style* / *requested voice* (Figure 1) / *requested communicative form*
2. **Les cinq comparaisons** — *worked cases* (7×) / *case studies* (titre de §6) / *the five comparisons* / *constructed specification checks*
3. **La §7** — titre *Future Work* / désignée *research agenda* dans l'abstract, les Contributions et son propre label
4. **La §5** — titre *Results* / *the mapping* / *purposive mapping* / *resource mapping*
5. **Le résultat au niveau réponse** — *content verdict* / *response-level verdict* / *structured verdict* / *response-level record* (Fig. 2) / *the verdict* (Tab. B.1)
6. **L'affirmation non tranchée** — *UNKNOWN claim* / *evidence-unknown claim* / *claim left unknown by the available information*, alors même que le manuscrit définit explicitement le premier terme en l. 633–634
7. **Le critère créatif** — *creative-task success* / *creative success* / *task-specific creativity* / *creativity criterion*

**À porter au crédit du manuscrit :** les sept concepts formels centraux — `task oracle`, `permission scope`, `required status marking`, `evidence state`, `claim`, `canonicalization`, `procedural failure` — sont **parfaitement stables**, sans une seule variation stylistique. Le fichier source porte d'ailleurs un bloc `% Canonical terminology` (l. 36–43) qui montre que la discipline a été délibérée. Les sept écarts ci-dessus sont des dérives ultérieures, pas un défaut de conception, et ils se corrigent par recherche-remplacement plus trois `\section{}`.

### G. Le parcours de lecture est-il satisfait ?

| # | Étape | Statut | Localisation à réviser |
|---|---|---|---|
| 1 | Je comprends le problème | ✅ **Réussi** | — |
| 2 | Je comprends pourquoi l'évaluation existante est insuffisante | ✅ **Réussi** | — (p. 2 ¶2, allégeable mais fonctionnel) |
| 3 | Je comprends la position des auteurs | ✅ **Réussi** | — (*"We argue that…"*, p. 2) |
| 4 | Je comprends le contrat de vérité | ⚠️ **Échec partiel** | **§1, p. 2, l. 171–174** : les trois champs sont glosés avant qu'aucun exemple n'existe, et `Γ_p` est défini au moyen d'un terme (`evidence-unknown`) non encore introduit. **§2.2, p. 7** : l'exemple médical qui rend `Γ_p` intuitif suit la définition abstraite au lieu de la précéder. *Corrections : P0-2, P0-4, P1-4.* |
| 5 | Je comprends comment une affirmation reçoit une étiquette | ❌ **Échec** | **§1, p. 2, l. 175–181** : les deux vocabulaires sont employés sans être distingués ; la phrase qui les distingue est en **§2.4, p. 9, l. 623–625**. **§2.1, p. 6, l. 441–455** : la chaîne en sept étapes présente comme séquence ce qui est un arbre à un seul branchement. *Corrections : P0-1, P0-3, P1-5.* |
| 6 | Je comprends en quoi cela diffère des travaux antérieurs | ⚠️ **Échec partiel** | **§3.4, p. 15** : l'objection principale (« pourquoi pas du suivi d'instructions ? ») y est traitée en cinq lignes avec une seule citation, alors que la §1 la traite bien mieux. **§3.6, p. 16** : sous-section sans aucune citation, qui donne l'impression d'une lacune bibliographique. *Corrections : P1-1, P1-7.* |
| 7 | Je comprends quelles preuves soutiennent la position | ⚠️ **Échec partiel** | **§4.1, p. 16** : ni procédure de recherche, ni critères d'inclusion, ni nombre de codeurs, ni accord inter-codeurs, ni reconnaissance explicite de cette absence dans la section méthodologique. **§5, p. 18** : titre « Results » trompeur ; la section ouvre sur un renvoi à l'annexe plutôt que sur le résultat. *Corrections : P0-6, P0-8.* |
| 8 | Je comprends ce qui reste à tester | ✅ **Réussi** | — (§7 : sept priorités, sept critères de falsification réellement falsifiants ; §9 énonce le test immédiat et sa condition de réfutation) |

**Cinq étapes sur huit sont franchies ; l'étape 5 — le cœur du papier — échoue.** Elle échoue pour une raison unique et entièrement réparable : le lecteur reçoit le vocabulaire avant l'architecture, et l'exemple après la formalisation.

---

## Décision finale

> # **MAJOR READABILITY REVISION**
> *L'idée scientifique est compréhensible, mais le papier fait encore trop travailler le lecteur.*

**Motivation.** Ce manuscrit est conceptuellement solide et intellectuellement honnête. La thèse est claire, le périmètre est délimité avec une rigueur rare, aucune affirmation n'excède ses preuves, les cas construits ne sont jamais présentés comme empiriques, et l'agenda de recherche énonce sept critères de falsification dont l'un déclare les conditions sous lesquelles une contribution des auteurs eux-mêmes serait inutile. Le Related Work, les cas travaillés et la Conclusion sont d'excellente facture. Rien de tout cela n'est en cause.

Le classement en révision majeure tient à trois défauts de **livraison de l'information**, non de contenu :

1. **L'étape 5 du parcours de lecture échoue.** Le mécanisme central — comment une affirmation reçoit une étiquette — est utilisé en page 2 et expliqué en page 9. C'est le seul point du papier qu'un relecteur risque de mal comprendre, et c'est précisément celui qui porte la thèse.
2. **L'ancrage intuitif arrive après la formalisation.** La Figure 1 est excellente et se trouve trois pages après le paragraphe qu'elle doit éclairer. Le lecteur formalise avant de comprendre.
3. **Les périphériques occupent l'espace du cœur.** Le style et le verdict au niveau réponse — que les auteurs qualifient eux-mêmes de secondaires — occupent environ le quintuple de l'espace consacré à la règle d'étiquetage. La nécessité de répéter six fois le disclaimer de périmètre est le symptôme de ce déséquilibre, non son remède.

**Ce ne sont pas des problèmes de fond.** Aucun des huit items P0 ne demande de repenser un concept, d'ajouter une expérience ou de modifier la position. Six sont des déplacements ou des suppressions ; un est un ajout de six lignes en méthodologie ; un est un changement de trois titres de section. Un cycle de révision ciblé, sans nouvelle recherche, devrait amener ce manuscrit à **NEARLY READY** — et, l'agenda de recherche et la publication intégrale du codage étant ce qu'ils sont, à un papier que les relecteurs auront envie de défendre.

**Standard appliqué.** Un position paper n'est pas clair parce que chaque définition existe quelque part dans le manuscrit. Il est clair quand le lecteur reçoit chaque idée au moment où elle devient nécessaire, comprend pourquoi elle importe, et retient l'argument central sans avoir à revenir en arrière. Ce manuscrit satisfait la première condition intégralement, la deuxième largement, et la troisième pas encore.
