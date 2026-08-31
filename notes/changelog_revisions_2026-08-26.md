# Journal de révision — lot P1

**Date :** 26 août 2026
**Périmètre :** P1-1, P1-2, P1-3, P1-4 de la revue d'accessibilité du 26 août 2026 (`notes/revue_accessibilite.md`).
**Fichiers touchés :** `main_position.tex`, `references.bib`, `notes/figure3_proposals/` (nouveau).
**Hors périmètre :** P1-5 à P1-8, P2. Le lot P0 et l'intégration AA-Omniscience étaient déjà appliqués avant ce lot et n'ont pas été modifiés.
**Build :** `make check` — 41 pages, 0 citation indéfinie, 0 référence indéfinie, 0 `Overfull \hbox`.

> **Écart assumé par rapport à la recommandation initiale.** Sur P1-1 et P1-2, l'auteur a explicitement écarté la recommandation de la revue (supprimer §3.6 ; refondre la Figure 3). Les deux items sont traités selon la décision auteur : §3.6 est **conservée et documentée**, la Figure 3 est **inchangée** et fait l'objet de propositions séparées. Ces écarts sont volontaires et signalés comme tels ci-dessous.

---

## Vue d'ensemble

| Item | Recommandation revue | Décision auteur | Statut | Fichier |
|---|---|---|---|---|
| P1-1 | Supprimer §3.6 (0 citation) | **Conserver et sourcer** | ✅ Appliqué | `main_position.tex` §3.6 |
| P1-2 | Refondre la Figure 3 en matrice | **Ne pas modifier ; proposer** | ✅ Propositions livrées | `notes/figure3_proposals/` |
| P1-3 | Remplacer §8.2 par un renvoi | Préciser sans répéter | ✅ Appliqué | `main_position.tex` §8.3 |
| P1-4 | Rapatrier la paire minimale en §2 | + étoffer l'état de l'art | ✅ Appliqué | `main_position.tex` §2.2, §3.5 |

**Bilan chiffré :** 222 lignes modifiées dans `main_position.tex` ; 9 entrées ajoutées à `references.bib` (125 → 134) ; §3.6 passe de 0 à 6 commandes de citation ; la règle du verdict ordonné n'est plus énoncée qu'une fois dans le corps.

---

## P1-1 — §3.6 *Global Reasoning and Complete-Response Evaluation*

### Décision

La revue recommandait la suppression : la sous-section ne contenait **aucune citation** et redisait un périmètre déjà énoncé quatre fois ailleurs. **L'auteur a demandé de la conserver et d'y ajouter un état de l'art.** C'est le meilleur choix des deux, à condition que la littérature existe réellement — et elle existe : la limitation que la sous-section énonce a été nommée et mesurée par plusieurs travaux récents.

### Ce qui a changé

**Avant** — 12 lignes, 0 citation, une seule idée répétée sous trois formes :

> *"Claim-level factual support is necessary for many tasks but does not establish the logical validity, cross-claim coherence, completeness, or relevance of the complete response."*

**Après** — structure en trois modes de défaillance documentés, chacun rattaché à une limite explicite du cadre :

| Mode de défaillance | Littérature | Limite du cadre nommée explicitement |
|---|---|---|
| **Cadrage général** — « attribution myopia » | `yan_logicscore_2026` | La description vaut pour une trace d'affirmations autant que pour un score d'attribution |
| **1. Raisonnement invalide** entre affirmations acceptables | `arcuschin_cot_2025`, `pham_grace_2026` | *« Our claim trace localizes a violation to a claim and a contract field […] but still not a step of an inference. »* |
| **2. Incohérence entre affirmations** | `mundler_selfcontradictory_2024` | *« A truth contract compares every claim with $O_p$ and never compares claims with one another. »* |
| **3. Réponse exacte mais incomplète** | `liu_verifact_2025`, `jafari_recall_2026` | *« Claim-recovery coverage measures whether the evaluator found the claims a response made; it does not measure whether the response made the claims the task required. »* |

### Justification du choix des références

L'ancrage est `yan_logicscore_2026` (LogicScore), dont le résumé décrit littéralement le problème de la sous-section :

> *"Current evaluation methods for Attributed Question Answering (AQA) suffer from attribution myopia: they emphasize verification of isolated statements and their attributions but overlook the global logical integrity of long-form answers. Consequently, Large Language Models (LLMs) often produce factually grounded yet logically incoherent responses."*

C'est la formulation la plus proche du point que §3.6 défendait sans source. Les cinq autres références couvrent chacune un mode de défaillance distinct, ce qui évite de citer six travaux pour un même point.

### Gain

Trois problèmes de la revue sont traités d'un coup :
1. §3.6 cesse de suggérer une lacune bibliographique inexistante.
2. Le disclaimer de périmètre y devient un **argument sourcé** au lieu d'une quatrième répétition.
3. Chacun des trois modes énonce désormais *ce que le cadre ne fait pas et pourquoi*, en termes techniques vérifiables — ce qui répond aussi à l'objection « le périmètre est-il une limitation réelle ou une précaution rhétorique ? ».

### Nouvelle transition

La sous-section s'ouvre maintenant sur une articulation, absente avant :

> *"The paradigms above evaluate claims one at a time, and so does our rule. A separate body of work asks what that unit misses once the claims are put back together. It is the literature that bounds our scope, and we review it here for that reason."*

et se ferme par un renvoi vers §7, ce qui rattache la sous-section à l'agenda au lieu de la laisser en cul-de-sac.

---

## P1-2 — Figure 3 : propositions, sans modification du manuscrit

### Décision

**La Figure 3 et sa légende sont inchangées dans `main_position.tex`.** Trois alternatives ont été construites, compilées et rendues dans un document autonome.

**Livrable :** `notes/figure3_proposals/fig3_alternatives.tex` + `.pdf` (5 pages, compile proprement avec `pdflatex`).

### Constat quantitatif préalable (nouveau)

En recodant les 41 lignes des Tableaux B.1–B.3 pour construire les propositions, une donnée est apparue qui ne figure nulle part dans le manuscrit et qui change le diagnostic de la figure :

| Champ | Distribution réelle sur 41 ressources |
|---|---|
| Task oracle `O` | 15 types nommés · 15 *mixed* · 6 *none identifiable* — **varie réellement** |
| Permission scope `Γ` | 22 *inferred empty* · 10 *not separately repr.* · 8 *implicit frame* · 1 *partial* — **0 déclaration explicite** |
| Required status marking `μ` | 26 *not scored* · 15 *not separated* — **0/41, aucune valeur positive** |
| Contrôle du style | 34 *not controlled* · 6 *n.c. or N/A* · **1** *scored, not claim-controlled* (WritingBench) |

**Conséquence :** l'axe vertical de la Figure 3 encode une variable dont **une seule ressource sur 41** prend une valeur non par défaut. Un axe entier sépare donc WritingBench des quarante autres, pendant que le résultat annoncé — *aucune ressource ne représente séparément `O`, `Γ` et `μ`* — reste invisible et doit être affirmé en légende. C'est un argument plus fort que celui de la revue initiale (qui reprochait seulement le plan cartésien pour des données catégorielles).

### Les trois propositions

| | **A — matrice par profil** *(recommandée)* | **B — grille par ressource** | **C — entonnoir cumulé** |
|---|---|---|---|
| Forme | 5 profils × 4 champs du contrat | 41 marques × 4 champs | 4 étapes cumulatives |
| Message en < 20 s | deux colonnes sont vides | deux colonnes sont vides, sur 41 items | la littérature s'arrête à l'oracle |
| Résultat principal visible | **oui** | **oui** | **oui** |
| Avertissements nécessaires | **aucun** | **aucun** | 1 phrase (ordre non mesuré) |
| Place du style | 1 colonne sur 4 | 1 bloc sur 4 | dernière étape |
| Encombrement | demi-page pleine largeur | pleine largeur, dense | demi-page |

**Recommandation : A**, avec B en annexe si un relecteur conteste l'agrégation. A supprime les quatre phrases d'avertissement et l'encadré *Reading guide* de six lignes, parce qu'une grille catégorielle ne suggère aucune distance à désavouer.

### ⚠️ Point à trancher avant toute intégration

Les propositions A et B introduisent une distinction **déclaré** (■) / **inféré ou implicite** (□) / **absent** (·) qui **n'existe pas dans le codage actuel**. Le regroupement proposé (documenté en page 5 du PDF) est une interprétation des codes existants, pas une donnée du mapping :

| Code du mapping | Regroupement proposé |
|---|---|
| `O` : type nommé | ■ |
| `O` : mixed or task-dependent | □ |
| `O` : none identifiable | · |
| `Γ` : inferred empty / implicit frame / partial | □ (jamais ■) |
| `Γ` : not separately represented | · |
| `μ` : not scored / not separated | · |
| style : scored, not claim-controlled | □ |
| style : not controlled / N.A. | · |

**Ce regroupement doit être validé ou corrigé par les auteurs avant d'entrer dans le manuscrit.** Il n'a été appliqué que dans le document de propositions, jamais dans `main_position.tex`.

---

## P1-3 — §8.3 *Response-Level Interpretation*

### Décision

La revue recommandait de remplacer les paragraphes 2–3 par un simple renvoi. La consigne auteur — « préciser sans répéter » — est plus exigeante et plus juste : le renvoi seul aurait laissé la sous-section sans contenu propre. La sous-section a donc été **réécrite pour dire ce que la règle ne règle pas**, plutôt que pour la redire.

> **Note de numérotation.** Cette sous-section est désormais **§8.3** et non §8.2 : l'ajout en P0 de §8.2 *Scale and Recency Do Not Guarantee Knowledge Reliability* (AA-Omniscience) a décalé la numérotation. Le patch a été ancré sur le texte, pas sur le numéro.

### Ce qui a changé

**Supprimé — reproduction quasi verbatim de §2.6 (13 lignes) :**

> *"Under the ordered default content rule, a response is CONTRACT-VIOLATING whenever at least one reliably adjudicated claim receives H. Otherwise, it is INDETERMINATE when claim-recovery coverage falls below a predeclared threshold or a blocking truth-contract-specification, task-oracle, or adjudication failure prevents a reliable verdict. Otherwise, it is CONTRACT-COMPLIANT when every adjudicated claim receives SUP or LD."*

**Remplacé par un renvoi d'une ligne**, puis par quatre points nouveaux qui ne figurent nulle part ailleurs dans le manuscrit :

1. **`contract-compliant` est une garantie plus faible qu'elle n'en a l'air.** Point nouveau et important :
   > *"A response containing only licensed-divergence claims is contract-compliant, and every one of its claims may be false […] Read as a reliability score, a compliance rate would therefore mislead in exactly the tasks the framework was built for."*
   C'est un avertissement d'usage que le manuscrit ne donnait pas, alors qu'il découle directement de la définition de LD.

2. **`indeterminate` est un résultat, pas une valeur manquante.**
   > *"Benchmarks that discard indeterminate items, or fold them into either of the other two verdicts, silently convert a measurement failure into a claim about the model."*
   Ajoute que le taux d'`indeterminate` mesure aussi la qualité du benchmark, pas seulement celle du modèle.

3. **Les deux autres composantes** sont renvoyées à §3.5 pour leur justification, au lieu d'être redéfinies.

4. **La sévérité** reçoit une justification qu'elle n'avait pas :
   > *"a policy that let severity determine whether a violation occurred would make the label depend on the evaluator's estimate of harm rather than on the contract, and two evaluators with different risk models would then disagree about a fact of the matter."*
   Avant : *« Severity may weight a violation after labeling, but it does not determine whether the violation occurred »* — une assertion. Après : un argument.

### Gain mesuré

| Contenu | Avant P0+P1 | Après |
|---|---|---|
| Règle du verdict ordonné (corps) | 3× (§2.6, §8.2, Annexe A) | **1×** (§2.6) + 1× Annexe A |
| `reliable and creatively aligned` | 3× | **1×** (Annexe A seule) |
| Disclaimer de périmètre en §8.3 | énumération quadruple redite | 1 phrase + renvoi vers §3.6 |

---

## P1-4 — Paire minimale portée-vs-utilité et enrichissement de §3.5

### a) Déplacement vers §2.2

La démonstration la plus pédagogique du manuscrit était enterrée en Related Work. Elle est maintenant dans le paragraphe *Permission scope* de §2.2, c'est-à-dire là où le lecteur rencontre le concept pour la première fois :

> *"Permission scope records authorization, not value. The check therefore asks what the task allows, not what is worth saying: an ingenious fabricated medical fact still receives the hallucination label, whereas an unhelpful but in-frame fictional invention still receives the licensed-divergence label, with low usefulness. Section 3.5 situates this separation against creativity evaluation, which scores value on its own terms."*

La phrase d'ouverture ajoutée (*« records authorization, not value »*) est nouvelle : elle nomme la distinction avant de l'illustrer, au lieu de laisser l'exemple la porter seul.

§3.5 conserve un rappel d'une clause — *« an ingenious fabrication remains a hallucination and a dull in-frame invention remains licensed divergence »* — avec renvoi vers §2.2. C'est un renforcement, pas une répétition.

### b) Réécriture de §3.5

**Avant :** une phrase de littérature (hallucinations « intelligentes »), puis trois assertions non sourcées, puis un paragraphe de périmètre.

**Après :** trois blocs argumentés.

**Bloc 1 — la recherche sur la créativité sépare elle-même nouveauté et utilité.**

| Référence | Ce qu'elle apporte | Statut |
|---|---|---|
| `runco_standard_2012` | la définition standard : nouveau **et** utile/approprié | déjà au `.bib`, réutilisée |
| `diedrich_are_2015` | l'utilité ne prédit la créativité **que** dans les idées très nouvelles → nouveauté de premier ordre, utilité de second ordre | **déjà au `.bib`, citée uniquement en §1 auparavant** |
| `pichot_reflective_2024` | les deux composantes sont faiblement ou **négativement** corrélées ; les additionner en un score composite trahit la définition standard | **nouvelle** |
| `lyu_converge_2026` | les juges LLM convergent avec les humains sur la nouveauté et divergent sur les critères contextuels porteurs de valeur | déjà au `.bib`, réutilisée |

`diedrich_are_2015` est la trouvaille la plus utile du lot : elle était **déjà dans la bibliographie** et sa conclusion (utilité comme critère de second ordre, applicable seulement après la nouveauté) soutient directement l'ordonnancement du cadre — la portée d'abord, la valeur ensuite. Aucune nouvelle référence n'était nécessaire pour ce point.

**Bloc 2 — la même séparation apparaît côté factualité.** C'est un lien que le manuscrit ne faisait pas :

| Référence | Ce qu'elle apporte |
|---|---|
| `wu_balancing_2025` | l'*instruction tuning* augmente l'informativité mais peut réduire la véracité |
| `gong_factuality_2026` | le compromis factualité/informativité est traité comme un paramètre contrôlable, pas comme un objectif unique |

Utilité et support factuel se dissocient donc **empiriquement**, pas seulement conceptuellement — ce qui renforce la thèse mieux qu'une assertion.

**Bloc 3 — pourquoi aucune de ces littératures ne fait la décision du cadre :**

> *"Value is a property of the content that an evaluator scores after the fact; permission scope is a property of the task that must be fixed before the response is read."*

Les travaux sur les hallucinations « intelligentes » (`jiang_survey_2024`, `sui_confabulation_2024`, `yang_hicbench_2025`, `sui_critical_2025`, `argese_storyscore_2026`) sont conservés, mais **recadrés** : ils répondent à une autre question. *« Those proposals grade divergence by its worth; the truth contract asks first whether the task authorized it at all. »*

---

## Références ajoutées à `references.bib`

9 entrées, **toutes vérifiées individuellement** sur arXiv, alphaXiv ou Crossref (titre, liste complète et ordonnée des auteurs, date, identifiant). Aucune n'a été rédigée de mémoire.

| Clé | Référence | Section | Vérifié via |
|---|---|---|---|
| `yan_logicscore_2026` | Yan, Zhao, Wang, Chen, Guo, Li, Li, Pan — *LogicScore*, arXiv:2601.15050 | §3.6 | page abs alphaXiv |
| `mundler_selfcontradictory_2024` | Mündler, He, Jenko, Vechev — *Self-contradictory Hallucinations of LLMs*, arXiv:2305.15852 | §3.6 | page abs arXiv |
| `arcuschin_cot_2025` | Arcuschin, Janiak, Krzyzanowski, Rajamanoharan, Nanda, Conmy — *CoT Reasoning In The Wild Is Not Always Faithful*, arXiv:2503.08679 (ICML 2026) | §3.6 | page abs arXiv |
| `pham_grace_2026` | Pham, Le, Luu — *GRACE*, arXiv:2606.16151 | §3.6 | page abs alphaXiv |
| `liu_verifact_2025` | Liu, Zhang, Munir, Gu, Wang — *VeriFact*, arXiv:2505.09701 | §3.6 | page abs alphaXiv |
| `jafari_recall_2026` | Jafari, Allan, Iyyer — *Beyond Precision*, arXiv:2604.03141 | §3.6 | page abs arXiv |
| `pichot_reflective_2024` | Pichot, Forthmann, Bonetto, Arciszewski, Bonnardel, Jaubert, Pavani — *J. Creative Behavior* 58(3), 444–459 | §3.5 | **API Crossref**, DOI 10.1002/jocb.667 |
| `wu_balancing_2025` | Wu, Ni, Hooi, Zhang, Ash, Ng, Sachan, Leippold — arXiv:2502.11962 | §3.5 | page abs alphaXiv |
| `gong_factuality_2026` | Gong, Chen, Hirschberg, Zhao, He, Yu, Mckeown — *Factuality on Demand*, arXiv:2602.00848 | §3.5 | page abs alphaXiv |

### Candidat écarté

**Kern, Wu & Chao — *Assessing novelty, feasibility and value of creative ideas with an unsupervised approach using GPT-4*, British Journal of Psychology, DOI 10.1111/bjop.12720.**

Résultat pertinent (GPT-4 note la nouveauté à *r* = .62, la faisabilité à .59 et la **valeur à .33** — la valeur est de loin la dimension la plus difficile pour un juge automatique), ce qui aurait renforcé le bloc 1 de §3.5. **Écarté** : la métadonnée d'année est ambiguë entre les sources consultées (mise en ligne 2024, numéro 117(2) daté 2026) et la page éditeur n'a pas été accessible pour trancher (403). Compte tenu de la règle du projet interdisant les citations non vérifiées, l'entrée n'a pas été créée. **À réexaminer** si l'accès Wiley est disponible : le résultat vaut la vérification.

---

## Vérification

| Contrôle | Résultat |
|---|---|
| `make check` | ✅ 41 pages |
| Citations indéfinies | ✅ 0 |
| Références indéfinies | ✅ 0 (après 2 passes pour les 3 nouveaux labels) |
| `Overfull \hbox` | ✅ 0 |
| 9 nouvelles clés résolues dans `main_position.bbl` | ✅ 9/9 |
| Rendu §2.2, §3.5, §3.6, §8.3 inspecté dans le PDF | ✅ |
| `\citetodo` restants | ✅ 0 |
| Compilation `fig3_alternatives.tex` | ✅ 5 pages, aucune erreur |

**Warnings restants**, tous deux antérieurs à ce lot et non introduits par lui :
- `(hyperref) because \thepage is undefined` — message bénin de `hyperref`.
- `LaTeX Warning: Text page 11 contains only floats` — placement de la Figure 2, préexistant.

### Nouveaux labels LaTeX

`subsec:contract` (§2.2), `subsec:creativity` (§3.5), `subsec:global` (§3.6). Aucun label existant n'a été renommé ou supprimé.

### Sauvegardes

`/tmp/main_position.tex.bak-p1` et `/tmp/references.bib.bak-p1` (session courante uniquement — non durables).

---

## Effet sur les scores de la revue

| Dimension | Avant P1 | Après P1 | Cause |
|---|---|---|---|
| Positionnement du Related Work | 8 | **9** | §3.6 sourcée ; §3.5 argumentée au lieu d'assertée |
| Définitions des concepts | 6 | **7** | portée ≠ valeur traitée en §2.2, à la première rencontre |
| Redondance (§20) | 3 répétitions majeures | **1** | règle du verdict énoncée une fois dans le corps |
| Lisibilité du mapping | 6 | 6 *(inchangé)* | Figure 3 non modifiée — décision auteur |

---

## Reste à faire

**P1 non traités :** P1-5 (chaîne en 7 étapes → 2 phases), P1-6 (uniformiser `requested style-marking level`, Figure 1 comprise), P1-7 (étoffer §3.4 — IFEval et Wu et al. manquent toujours), P1-8 (collision sur « alignment »).

**Décision en attente :** validation du regroupement ■/□/· avant toute intégration d'une des propositions de Figure 3.

**Point signalé, hors périmètre P1.** En §2.2, l'exemple médical (*« a medical brainstorming task may permit possible diagnoses while excluding invented drug doses »*) suit toujours la définition abstraite de `Γ_p` au lieu de la précéder. La revue (§4-B2) recommandait l'inversion. Non appliqué ici pour ne pas élargir le périmètre — candidat P2 à coût nul.

---
---

# Lot P1 — seconde passe (P1-5 à P1-8) et clôture de P1-2

**Date :** 26 août 2026, seconde session.
**Fichiers touchés :** `main_position.tex`, `references.bib`.
**Build :** `make check` — 41 pages, 0 citation indéfinie, 0 référence indéfinie, 0 `Overfull \hbox`.

---

## P1-2 — CLÔTURÉ : la Figure 3 actuelle est conservée

**Décision auteur, après examen des trois propositions :** *« les figures proposées ne sont pas claires, on garde la figure actuelle. »*

Aucune modification n'a été apportée à la Figure 3 ni à sa légende. Le document `notes/figure3_proposals/fig3_alternatives.{tex,pdf}` est conservé comme trace de l'exploration, mais **il ne constitue plus une recommandation ouverte**. La question du regroupement ■/□/· signalée dans la première passe devient sans objet.

**Conséquences assumées** — les réserves de la revue sur la Figure 3 restent non traitées, et c'est un choix :

- le résultat principal (*aucune ressource ne représente séparément `O`, `Γ` et `μ`*) reste affirmé en légende plutôt que montré ;
- les quatre phrases d'avertissement et l'encadré *Reading guide* de six lignes restent nécessaires ;
- l'axe vertical continue d'encoder une variable dont une seule ressource sur 41 prend une valeur non par défaut.

La note de lisibilité du mapping reste donc à 6/10. Si un relecteur soulève la question, l'argument quantitatif est disponible dans le document de propositions et dans le journal de la première passe.

---

## P1-5 — Chaîne en sept étapes → deux phases (§2.1)

### Problème traité

La liste annonçait une séquence de sept étapes, immédiatement démentie par la phrase suivante :

> *"Steps 1–6 can fail, with Steps 5 and 6 applying only on the relevant UNKNOWN and in-scope branches."*

Le lecteur mémorisait sept étapes ordonnées, puis apprenait que deux étaient conditionnelles et six faillibles. L'unique point de bascule du cadre — celui qui porte toute la thèse — se trouvait noyé au rang d'« étapes 5 et 6 » dans une liste plate.

### Ce qui a changé

`enumerate` à sept items remplacé par un `description` à deux entrées nommées :

- **Preparation** — sélection du span, récupération, canonicalisation en `c* = (q*, m*)`.
- **Decision** — état de preuve contre `O_p` ; si `ENTAILED` ou `CONTRADICTED`, l'étiquette suit immédiatement ; si `UNKNOWN`, les deux vérifications décident.

La phrase d'avertissement disparaît : elle devient inutile dès que la forme reflète la logique.

### Ajout : une phrase qui n'existait nulle part

> *"The single branch is the whole of the proposal. Evidence settles two of the three cases on its own; only the third reaches the contract, and current practice resolves that third case by treating it as an error rather than by consulting what the task permits."*

Le manuscrit disait en §1 que deux états sur trois tranchent seuls, mais ne le reliait jamais à la structure de la procédure ni à ce que fait la pratique actuelle. Cette phrase fait les deux, à l'endroit où le lecteur rencontre la procédure.

### Traitement des échecs

Reformulé pour distinguer *où* l'échec se produit (les trois opérations de préparation, ou l'adjudication en phase de décision) et pour dire explicitement ce qui se passe alors — *« the span is left without a claim label rather than receiving a default one »*. L'ancienne formulation énumérait trois causes sans les rattacher aux phases.

---

## P1-7 — §3.4 étoffée *(item à plus fort enjeu)*

### Problème traité

§3.4 faisait **12 lignes et 1 citation** alors qu'elle porte l'objection principale que recevra le papier : *« pourquoi pas simplement une rubrique de suivi d'instructions ? »*. La meilleure réponse du manuscrit était en §1 ; le relecteur allait la chercher en §3.4 et y trouvait moins.

Le déséquilibre s'était aggravé lors de la première passe P1, qui a porté §3.5 à 55 lignes et §3.6 à 51 : la sous-section portant l'objection principale était devenue la plus courte de la section.

| Sous-section de §3 | Avant | Après |
|---|---|---|
| 3.3 Claim Extraction | 34 | 34 |
| **3.4 Instruction Following** | **12** | **51** |
| 3.5 Creativity | 55 | 55 |
| 3.6 Global Reasoning | 51 | 51 |

### Structure de la nouvelle sous-section

**¶1 — cadrage.** Nomme l'objection au lieu de l'attendre : *« a reader may reasonably ask why the truth contract is not simply a well-specified instruction-following rubric. »*

**¶2 — ce que la littérature mesure.** Quatre travaux, dont deux rapatriés de §1 où ils étaient les seuls à porter l'argument :

| Référence | Apport | Statut |
|---|---|---|
| `zhou_ifeval_2023` (IFEval) | les contraintes deviennent des exigences vérifiables automatiquement | **rapatriée de §1** |
| `ye_muldimif_2025` (MulDimIF) | décompose une contrainte selon plusieurs dimensions, pas seulement son type | **nouvelle** |
| `hao_faithqa_2025` | diagnostic des conditions de requête omises ou mal lues | déjà en §3.4 |
| `wu_dancing_2024` | suivi d'instructions et fidélité à la source peuvent diverger et exiger une réconciliation explicite | **rapatriée de §1** |

Conclusion du paragraphe : cette littérature fournit ce que le contrat **présuppose sans le fournir** — un moyen de lire les contraintes d'une tâche assez fiablement pour agir dessus.

**¶3 — deux propriétés qui portent l'argument.** C'est le cœur analytique, et il est neuf :

1. **Une contrainte est une exigence ; une portée est une autorisation.** *« A permission scope is not a requirement: it authorizes content without demanding it, and a response that adds nothing evidence-unknown violates no permission. »* Conséquence tirée honnêtement : une rubrique de suivi d'instructions exprime `μ_p` **plus naturellement** que `Γ_p`, puisque `μ_p` est bien une contrainte sur la présentation. Le manuscrit concède ici un point au lieu de le contourner.
2. **Juger au niveau contrainte ≠ juger la réponse entière.** `lee_mcjudgebench_2026` montre que les juges LLM sont habituellement évalués sur des verdicts globaux, et les évalue contre des étiquettes par contrainte. *« That distinction mirrors the one this paper draws between a claim label and a response-level verdict, and it arises for the same reason: an aggregate judgment hides which requirement produced it. »* Un parallèle structurel externe qui renforce §2.6 sans la répéter.

**¶4 — instanciation, pas concurrence.** Renvoie à §1 et énonce la contribution en une phrase : *« What the rule contributes is the claim that these three fields are the ones a hallucination judgment needs, and that the third case is decided by authorization rather than by evidence. »*

**¶5 — frontières.** Les deux limites de l'ancienne version sont conservées et complétées par la relation avec les contraintes de sécurité, qui bornent `Γ_p` **de l'extérieur**.

> **Note.** Ce dernier point traite au passage une ambiguïté signalée en §7 de la revue d'accessibilité : le manuscrit disait à deux endroits que la sécurité borne `Γ_p` sans dire si elle en fait partie ou s'applique après. La formulation *« bound `Γ_p` from outside »* tranche.

---

## P1-8 — Désambiguïsation de « alignment »

Le mot désignait trois choses. Le sens RLHF est désormais qualifié explicitement partout ; le sens du papier (`style-marking alignment`) reste seul non qualifié, ce qui est correct puisqu'il est défini dans le manuscrit.

| Avant | Après | Où |
|---|---|---|
| *"it is not a general alignment, creativity, usefulness […] measure"* | *"it is not a general measure of **model alignment**, creativity, usefulness […]"* | §1 |
| *"factuality, and general alignment"* | *"factuality, and **model alignment in the reinforcement-learning-from-human-feedback sense**"* | §2.5 |
| *"judges used in **alignment benchmarking**"* | *"judges used in **preference-alignment** benchmarking"* | §2.5 |
| *"**alignment strategies** which reduce hallucination"* | *"**preference-alignment strategies** which reduce hallucination"* | §8.1 |

**Non modifié, volontairement :** la cellule *prompt alignment* du Tableau B.1 — c'est le nom de la métrique propre de DefAn, pas une expression du papier.

---

## P1-6 — Uniformisation du vocabulaire stylistique

**Règle appliquée :** un concept, un terme. La variable formelle s'appelle désormais **`requested style-marking level`** partout.

| Terme | Avant | Après |
|---|---|---|
| `requested style-marking level` | 16 | **20** |
| `requested voice` | 3 | **0** |
| `requested communicative form` | 2 | **0** |
| `a requested style` (seul) | 1 | **0** |

### Les deux corrections qui comptent le plus

Toutes deux dans la **Figure 1**, c'est-à-dire à la première rencontre du lecteur avec le concept — c'était l'objet précis de la recommandation.

- **Bandeau de la figure :** *"Only Γ changes inside the truth contract; **voice** is separate."* → *"Only Γ changes inside the truth contract; **requested style-marking level** is separate."*
- **Légende :** *"**Requested voice** remains separate and never expands permission scope"* → *"**The requested style-marking level** remains separate and never expands permission scope"*

Le lien entre la figure et la définition de §2.5 est désormais lexical, et non plus à reconstruire par le lecteur.

### Corrigé à mon compte

`requested communicative form` figurait deux fois, dont **une dans le §8.3 que j'avais réécrit lors de la première passe P1**. L'erreur était de mon fait ; elle est corrigée.

### Occurrences de « voice » conservées — et pourquoi

Neuf occurrences subsistent, toutes au sens ordinaire du mot, et aucune ne désigne la variable :

| Ligne | Contexte | Raison |
|---|---|---|
| §1, Figure 1 | *"in a curious and imaginative voice"* | **texte de la consigne cité verbatim** dans le prompt de la figure |
| §1 | *"a strong authorial voice is heavily marked"* | définition du marquage stylistique |
| Figure 2 | *"engaging museum voice"* | glose de `σ_p = 1` |
| §2.5 ×3 | *"a light stylistic voice"*, *"a salient voice"* | définitions de l'échelle 0/1/2 |
| §7 | *"narrative voice"* | énumération de phénomènes stylistiques |

Les remplacer aurait appauvri la prose sans gain terminologique : le terme technique et le mot ordinaire ne sont plus en collision.

---

## Références ajoutées

2 entrées, vérifiées individuellement (titre, liste complète et ordonnée des auteurs, date, identifiant). `references.bib` : 134 → **136**.

| Clé | Référence | Section | Vérifié via |
|---|---|---|---|
| `ye_muldimif_2025` | Ye, Huang, Chen, Fu, Yang, Yang, Wu, Wang, Zhou, Yang, Gui, Zhang, Shi, Fan, Huang — *MulDimIF*, arXiv:2505.07591 | §3.4 | page abs alphaXiv (15 auteurs confirmés) |
| `lee_mcjudgebench_2026` | Lee, Koh, Tok, Batra, Clark — *MCJudgeBench*, arXiv:2605.03858 | §3.4 | page abs alphaXiv |

### Candidats écartés

Deux travaux pertinents ont été trouvés puis écartés faute de métadonnées vérifiables — la règle du projet interdisant les citations non vérifiées prime sur l'intérêt du contenu.

| Candidat | Intérêt | Motif d'exclusion |
|---|---|---|
| **ConInstruct** (arXiv:2511.14342) — détection et résolution de conflits dans les instructions | aurait soutenu la clause « when instructions conflict » de §2.2 | ni arXiv ni alphaXiv n'ont renvoyé la liste d'auteurs |
| **Who is In Charge? Dissecting Role Conflicts in Instruction Following** (arXiv:2510.01228) | montre que les modèles **n'obéissent pas** de façon fiable à la précédence système-sur-utilisateur, tout en suivant fortement les signaux sociaux — soutiendrait directement l'exigence de précédence de §2.2 | liste d'auteurs douteuse (un seul auteur retourné pour un papier attribué à UIUC) et dates contradictoires entre les sources (23 sept. 2025 vs 17 déc. 2025) |

**Le second mérite d'être repris** si l'accès aux métadonnées s'améliore : c'est la seule référence trouvée qui montre empiriquement que la précédence système-sur-utilisateur, que §2.2 pose comme une exigence, n'est pas respectée en pratique. C'est un argument *pour* rendre le contrat explicite.

---

## Vérification

| Contrôle | Résultat |
|---|---|
| `make check` | ✅ 41 pages |
| Citations indéfinies | ✅ 0 (2 passes nécessaires pour les 2 nouvelles clés) |
| Références indéfinies | ✅ 0 |
| `Overfull \hbox` | ✅ 0 |
| `fig:prompt-to-claim` toujours en page 2 | ✅ vérifié dans `build/main_position.aux` |
| Figure 1 rendue et inspectée | ✅ bandeau et légende corrects, bande « evidence state » de P0-3 intacte |
| §2.1 et §3.4 rendues et relues dans le PDF | ✅ |
| `\citetodo` restants | ✅ 0 |

**Warnings restants**, tous deux antérieurs et non introduits par ce lot : `(hyperref) \thepage is undefined` (bénin) et `Text page 11 contains only floats` (placement de la Figure 2).

**Sauvegardes :** `/tmp/mp.bak-p1b`, `/tmp/rb.bak-p1b` (session courante uniquement).

---

## État final du lot P1

| Item | Statut |
|---|---|
| P1-1 — sourcer §3.6 | ✅ appliqué (1ʳᵉ passe) |
| P1-2 — Figure 3 | ⛔ **clôturé sans modification** — décision auteur |
| P1-3 — §8.3 sans répétition | ✅ appliqué (1ʳᵉ passe) |
| P1-4 — paire minimale + §3.5 | ✅ appliqué (1ʳᵉ passe) |
| P1-5 — deux phases | ✅ appliqué |
| P1-6 — vocabulaire stylistique | ✅ appliqué |
| P1-7 — §3.4 étoffée | ✅ appliqué |
| P1-8 — « alignment » | ✅ appliqué |

**Le lot P1 est terminé**, à l'exception de P1-2 clos par décision auteur.

### Effet cumulé sur les scores de la revue

| Dimension | Revue initiale | Après P0+P1 | Cause |
|---|---|---|---|
| Cohérence terminologique | 7 | **9** | style unifié ; « alignment » désambiguïsé |
| Positionnement du Related Work | 8 | **9** | §3.4, §3.5, §3.6 sourcées et équilibrées |
| Compréhension du cadre | 7 | **8** | branchement unique rendu visible en §2.1 |
| Accessibilité du formalisme | 6 | **7** | liste plate remplacée par deux phases nommées |
| Lisibilité du mapping | 6 | 6 | Figure 3 inchangée — décision auteur |

### Reste à faire

**P2 uniquement** (14 items de finition : dénumérotation de l'équation 1, retrait de `σ̂(y,p)`, setup Rosetta Stone unifié entre Fig. 1 / §2.1 / Fig. 2, rubrique `Why this case is here` pour les cinq cas, Cas C et D à concrétiser, tableau récapitulatif en tête de §7, renvois croisés §8 ↔ §7, légendes de figures à raccourcir).

**Point signalé depuis la première passe, toujours ouvert :** en §2.2, l'exemple médical suit encore la définition abstraite de `Γ_p` au lieu de la précéder (revue §4-B2). Coût nul, candidat P2 évident.

---
---

# Lot P2 — lots A à G, exemple médical unifié, nouvel abstract

**Date :** 26 août 2026, troisième session.
**Fichiers touchés :** `main_position.tex` uniquement (aucune nouvelle référence).
**Build :** `make check` — **43 pages**, 0 citation indéfinie, 0 référence indéfinie, 0 `Overfull \hbox`.
**Sauvegarde :** `/tmp/mp.bak-p2`.

Les sept lots du plan sont appliqués, plus deux demandes ajoutées en cours de session : l'unification de l'exemple médical et la réécriture de l'abstract.

---

## Vue d'ensemble

| Lot | Objet | Statut |
|---|---|---|
| A | Exemple filé Rosetta Stone unifié | ✅ |
| B | Cas travaillés autonomes (+ option Cas C retenue) | ✅ |
| C | Formalisme résiduel retiré | ✅ |
| D1 | Exemple avant définition en §2.2 | ✅ |
| D2 | Relation `Γ_p` / sécurité harmonisée | ✅ |
| E | Tableau d'agenda + renvois croisés | ✅ |
| F | Boîte de la Figure 2 retirée, légendes resserrées | ✅ |
| G | Phrase de l'abstract reformulée | ✅ *(absorbée par la réécriture)* |
| — | **Exemple médical unique** *(demande ajoutée)* | ✅ |
| — | **Nouvel abstract** *(demande ajoutée)* | ✅ |

**Vérifications automatiques après application :**

| Contrôle | Attendu | Obtenu |
|---|---|---|
| `Wikipedia article on the Rosetta Stone` | 0 | **0** |
| `frozen Wikipedia excerpt` | 2 | **2** |
| Variantes médicales orphelines | 0 | **0** |
| `\begin{equation}` | 0 | **0** |
| `\widehat{\sigma}` | 0 | **0** |
| Rubriques `\textbf{Purpose.}` | 5 | **5** |
| Boîte `Response-level record` | 0 | **0** |
| Renvois `Priority~N` en §8.4 | ≥5 | **5** |

---

## Exemple médical unifié *(demande ajoutée)*

### Problème

Cinq apparitions médicales sans continuité de scénario : un « medical assistant » anonyme, un « medical brainstorming task », la maladie de Lyme, un « ingenious fabricated medical fact », et un « false drug dose ». Chacune faisait son point isolément ; aucune ne construisait sur la précédente.

### Décision

**Un seul scénario clinique traverse le papier** : un assistant à qui l'on demande ce que les symptômes d'un patient pourraient indiquer, avec la maladie de Lyme comme diagnostic candidat et la posologie comme contenu interdit.

| Emplacement | Avant | Après |
|---|---|---|
| §1 motivation | *« A medical assistant should not present an unverified diagnosis as established »* | *« A clinical assistant asked what a patient's symptoms might indicate should be able to raise early Lyme disease as a possibility, but must not present it as established »* |
| §2.2 `Γ_p` | *« a medical brainstorming task may permit possible diagnoses while excluding invented drug doses »* | le même assistant, *« now asked to list candidate explanations »* — diagnostic autorisé, posologie interdite |
| §2.2 valeur | *« an ingenious fabricated medical fact »* | *« a carefully reasoned but invented drug dose »* |
| §2.2 `μ_p` | Lyme, sans rattachement | *« In the clinical task above »* + `serology` au lieu de `testing` |
| **§6 Cas C** | tâche outil / formats supportés — **orphelin** | **le même cas clinique** |
| §8.3 sévérité | *« A false drug dose and an incorrect trivia date »* | *« An invented drug dose in the clinical task and an incorrect date on the museum label »* |

Le manuscrit compte désormais **quatre familles d'exemples** au lieu de quinze, chacune faisant un travail suivi :

1. **Rosetta Stone** — Figure 1, §2.1, Figure 2, Cas E, et la date fausse de la sévérité en §8.3
2. **Clinique / Lyme** — §1, §2.2 (`Γ_p`, valeur, `μ_p`), Cas C, §8.3
3. **Café Verdier** — Cas B et Cas D, désormais appariés
4. **XSum** — Cas A *(documenté, doit rester tel quel)*

L'exemple *« the winter that would not lift »* de §2.7 reste : c'est une ligne de panneau de musée, donc dans la famille Rosetta.

---

## Lot A — Exemple filé unifié

**Trois setups différents** pour un exemple annoncé comme filé. Vérifié et corrigé :

| Endroit | Avant | Après |
|---|---|---|
| Figure 1 | extrait figé, *« museum label »* | *(référence)* |
| §2.1 | **l'article Wikipédia entier**, *« engaging museum panel »* | extrait figé, *« museum label »*, avec renvoi explicite à la Figure 1 |
| Figure 2 | *« Wikipedia article »*, *« engaging museum panel for young visitors »* | *« frozen Wikipedia excerpt »*, *« museum label for young visitors »* |

**Annonce ajoutée** juste après la Figure 1, absente jusqu'ici :

> *« We reuse this museum-label example throughout the paper, and a clinical example alongside it wherever a high-stakes contrast is needed. »*

Elle fait double emploi : elle établit l'exemple filé **et** annonce le second, de sorte que le lecteur sait dès la page 2 qu'il n'aura que deux scénarios à retenir.

---

## Lot B — Cas travaillés autonomes

### B1. Cas B signalé comme multi-facteur dans son titre

*« Case B: a contextualization boundary… »* → **« Case B (multi-factor): a contextualization boundary… »**

L'aveu existait dans le corps du paragraphe ; il est maintenant visible pour qui parcourt les intitulés en gras.

### B2. Rubrique `Purpose.` ajoutée aux cinq cas

Les cas disaient ce qui est fixé, ce qui change et ce qui est prédit — jamais quelle propriété du cadre ils mettent à l'épreuve. Une ligne par cas :

| Cas | `Purpose.` |
|---|---|
| A | *the claim label depends on which oracle the task designates, not on the claim* |
| B | *the recovered claim itself depends on the discourse frame* |
| C | *permission alone is not enough: presentation is part of the contract* |
| D | *a permission scope has a boundary, drawn around content rather than around the frame* |
| E | *wording, which lies outside the truth contract, does not move the claim label* |

> **Doublon corrigé.** Le Cas B contenait déjà *« Its purpose is to show that identical strings need not express identical claims »*, qui faisait redite avec la nouvelle rubrique. Phrase d'origine supprimée.

### B3. Cas C rapatrié sur l'exemple clinique *(option du plan, retenue)*

L'exemple outil/documentation était orphelin et refaisait moins bien la paire minimale de §2.2. Le Cas C est désormais **l'instanciation en cas travaillé du `μ_p` de §2.2** :

> *« This is early Lyme disease »* → **H**, `marking-failure`
> *« this may be early Lyme disease, but serology is required »* → **LD**

Phrase de clôture ajoutée, qui verrouille ce que le cas isole :

> *« The proposition, the evidence state, and all three contract fields are identical across the pair; only the wording that signals epistemic status differs. »*

**Double gain :** l'exemple orphelin disparaît, et l'échec de marquage — seule lacune de l'exemple filé — est désormais illustré par une paire minimale concrète.

### B4. Cas D concrétisé et apparié au Cas B

Avant : *« The claim concerns either a fictional entity or a named real person presented as real history »* — aucune chaîne littérale, le lecteur devait inventer l'exemple.

Après, adossé au Café Verdier du Cas B :

> *« Café Verdier stood on the rue de Seine »* → **LD** (dans le cadre)
> *« Ernest Hemingway drank at Café Verdier »* → **H**, `out-of-scope`

Et la raison, désormais explicite : *« The declared frame licenses invention within the story; it does not license real-world attribution. »*

Les Cas B et D forment une paire au lieu de deux cas indépendants.

---

## Lot C — Formalisme résiduel retiré

| Objet | Avant | Après |
|---|---|---|
| **Équation (1)** | environnement `equation` numéroté, label `eq:truth-contract` **jamais référencé** | inline : *« For a task context $p$, it is the triple $\TC(p)=(O_p,\Gamma_p,\mu_p)$. »* |
| **`$\widehat{\sigma}(y,p)$`** | 3 occurrences | **0** — remplacé par *« the observed style-marking level, the degree of marking the response actually realizes »* |
| **`$\sigma_p\in\{0,1,2\}$` dans §2.5** | les trois niveaux définis par leurs valeurs numériques | les trois niveaux définis par leurs **noms** (*minimally marked*, *locally marked*, *sustained marked style*) |

L'indexation numérique n'est pas perdue : une phrase la réintroduit là où elle sert réellement, c'est-à-dire pour décrire un plan factoriel.

> *« Where a study needs to index the three values, we write $\sigma_p\in\{0,1,2\}$; Section 7 and Appendix A use that indexing to state factorial designs. »*

**À défendre en relecture :** `O_p`, `Γ_p`, `μ_p`, `q*`, `m*` restent et doivent rester. Sans eux les rubriques `Fixed / Changed` des cinq cas deviendraient de la prose ambiguë. Le formalisme retiré est celui qui ne travaillait pas ; celui qui travaille est intact.

---

## Lot D — Deux points de §2.2

**D1 — exemple avant définition.** Le paragraphe *Permission scope* s'ouvre désormais sur le cas clinique concret et **finit** par l'énumération des types de portée, au lieu de l'inverse. La charnière est explicite : *« Both are claims the evidence leaves unknown; only one is authorized. Γ_p records that difference. »*

**D2 — relation `Γ_p` / sécurité harmonisée.** Le manuscrit disait la même chose de quatre façons. Toutes alignées sur la formulation de §3.4, seule à trancher la question : les contraintes bornent `Γ_p` **de l'extérieur**.

| Ligne | Après |
|---|---|
| §2.2 | *« how applicable safety, legal, and domain constraints bound the permission scope **from outside** »* |
| §8.4 | *« remains bounded **from outside** by applicable safety, legal, and domain constraints »* |
| §3.4 | *(déjà)* *« bound `Γ_p` from outside »* |

---

## Lot E — §7 parcourable

**Tableau 1 ajouté** en tête de la section : 7 lignes × 3 colonnes — *Priority / Open question / What would weaken the position*. Le lecteur pressé s'arrête au tableau ; l'engagé lit les 28 blocs de prose, inchangés.

Le choix des colonnes est délibéré : la troisième expose ce que l'agenda a de plus solide — **sept critères de falsification réellement falsifiants**, dont celui de la Priorité 4, qui déclare la condition sous laquelle une contribution des auteurs eux-mêmes serait inutile.

**Cinq renvois croisés §8.4 → §7** ajoutés. Les sept limitations et les sept priorités se correspondaient déjà largement, mais aucune section ne pointait vers l'autre. La cohérence est désormais visible :

| Limitation | Renvoi |
|---|---|
| 1 — pas de conclusion sur le raisonnement global | *(Priority 4)* |
| 2 — contexte de tâche ambigu | *Priority 1 turns this into an annotation question* |
| 3 — oracle idéalisé | *(Priority 1)* |
| 4 — récupération et canonicalisation exigent du jugement | *(Priority 3)* |
| 6 — échelle stylistique non validée | *(Priorities 2 and 3)* |

---

## Lot F — Figures allégées

**Figure 2 — boîte `Response-level record` retirée.** Elle renvoyait à §2.6, non encore lue quand la figure apparaît page 11 : la figure demandait au lecteur d'accepter un objet non défini. Les deux autres boîtes portent des points nécessaires et restent.

**Légende de la Figure 2 : 18 → 8 lignes.** Réécrite pour ouvrir sur le message plutôt que sur la notation :

> *« One task context, one truth contract, four claims, three labels. »*

Les avertissements essentiels sont conservés (date contredite malgré la permission créative, style hors contrat, affirmations construites).

**Figure 3 — inchangée**, conformément à la décision P1-2.

---

## Nouvel abstract *(demande ajoutée)*

### Diagnostic de l'ancien

205 mots, une liste d'assertions. Il ouvrait sur une généralité (*« Large language models produce claims that a task's available information does not settle »*) et enchaînait onze phrases déclaratives sans respiration. Il consacrait 26 mots au verdict au niveau réponse et une vingtaine au style — soit près d'un quart de sa longueur à des éléments que le papier qualifie lui-même de périphériques.

### Le nouveau

**Quatre paragraphes, ~295 mots.** Le principe : ouvrir sur le cas concret que le papier a déjà, puis dérouler.

**¶1 — la scène, avant tout vocabulaire.** Aucun terme technique dans les quatre premières phrases :

> *« A model writing a museum label adds one sentence: a plausible reconstruction that the source neither confirms nor denies. Under a strict-grounding brief, that sentence is a hallucination. Under a brief inviting one clearly marked conjecture, it is what was asked for. The sentence, the source, and the evidence are identical; only the task differs. »*

**¶2 — la thèse et les trois champs.** Avec la précision qui désamorce le contresens le plus prévisible :

> *« The contract changes the evaluation label, not the truth of the proposition---a distinction current protocols leave implicit and therefore cannot act on. »*

**¶3 — le mécanisme en deux temps**, avec le branchement unique rendu saillant :

> *« Only the unknown case does, and there permission and marking separate a hallucination from licensed divergence---a label that records compliance, not truth. »*

**¶4 — périmètre, preuve, falsification.** L'aveu de portée arrive avant les résultats, ce qui le rend crédible plutôt que défensif : *« The rule is deliberately narrow »*. Le hedging du mapping est conservé mais reformulé pour éviter la quatrième répétition littérale (**Lot G**, absorbé ici) : *« We diagnose the designs we examined; we do not estimate how common the gap is. »* La dernière phrase est la condition de réfutation.

### Ce qui est conservé de l'ancien

Tout ce qui est vérifiable : les trois champs, les deux niveaux, les trois étiquettes, la clause *compliance, not truth*, les limites de périmètre, les quarante-et-une ressources, les cinq cas, la baseline et la condition de falsification. **Aucune affirmation nouvelle n'a été introduite.**

### Ce qui a changé de poids

Le verdict au niveau réponse passe de 26 mots à une clause (*« Claim labels compose into a structured response-level record rather than into a single score »*) et le style disparaît de l'abstract, où il n'avait pas sa place : c'est une variable **hors contrat**, et lui donner un cinquième de l'abstract contredisait le message.

---

## Vérification

| Contrôle | Résultat |
|---|---|
| `make check` | ✅ 43 pages |
| Citations indéfinies | ✅ 0 |
| Références indéfinies | ✅ 0 *(2 passes pour `tab:agenda`)* |
| `Overfull \hbox` | ✅ 0 |
| Figure 1 toujours page 2 | ✅ |
| Figure 2 page 11, rendue et inspectée | ✅ boîte retirée, setup aligné sur la Figure 1 |
| Tableau 1 (agenda) page 23, rendu et inspecté | ✅ |
| Page 1 (abstract) rendue et inspectée | ✅ tient sur la page avec le bloc titre |
| §2.2, §6 (cinq cas), §8.4 relues dans le PDF | ✅ |
| `make pdf` | ✅ |

**Warnings restants**, antérieurs et non introduits par ce lot : `(hyperref) \thepage is undefined`.

---

## État final

**Les lots P0, P1 et P2 sont terminés**, à l'exception de P1-2 (Figure 3), clos par décision auteur.

| Dimension | Revue initiale | Après P0+P1 | **Après P2** |
|---|---|---|---|
| Message central | 8 | 9 | **9** |
| Introduction | 5 | 8 | **9** |
| Définitions des concepts | 6 | 7 | **8** |
| Cohérence terminologique | 7 | 9 | **9** |
| Compréhension du cadre | 7 | 8 | **9** |
| Accessibilité du formalisme | 6 | 7 | **8** |
| Ordre des sections | 8 | 8 | **8** |
| Transitions | 7 | 8 | **8** |
| Figures et tableaux | 7 | 7 | **8** |
| Positionnement du Related Work | 8 | 9 | **9** |
| Lisibilité du mapping | 6 | 6 | **6** *(figée)* |
| Clarté des cas travaillés | 9 | 9 | **10** |
| Agenda de recherche | 9 | 9 | **10** |
| Anglais académique | 8 | 8 | **8** |
| Accessibilité au non-spécialiste | 6 | 8 | **9** |
| **Moyenne** | **7,1** | **8,0** | **8,5** |

**Verdict initial :** *MAJOR READABILITY REVISION*.
**Verdict actuel, sur les mêmes critères :** **NEARLY READY**.

### Ce qui reste ouvert, volontairement

- **Figure 3** conservée en l'état (P1-2). Le résultat principal reste affirmé en légende ; les quatre avertissements et le *Reading guide* restent nécessaires.
- **Méthodologie du mapping** non détaillée (P0-6) : procédure de recherche, critères d'inclusion et nombre de codeurs restent non documentés. C'est le point le plus attaquable en relecture, et il est assumé.

### Une piste à reprendre si l'occasion se présente

*Who is In Charge? Dissecting Role Conflicts in Instruction Following* (arXiv:2510.01228) — seul travail trouvé montrant empiriquement que la précédence système-sur-utilisateur, que §2.2 pose comme exigence, n'est pas respectée en pratique. Écarté faute de métadonnées vérifiables.
