# Revue éditoriale — lisibilité et accessibilité premier lecteur

**Manuscrit :** *Hallucination Is Relative: Evaluating LLM Divergence under Truth Contracts*
**Version évaluée :** `main_position.tex` (2 564 lignes, 43 pages compilées, md5 `6649a1b4…`)
**Date :** 27 août 2026
**Objet de la revue :** accessibilité pour un chercheur TAL compétent mais extérieur au cadre proposé et à l'intersection hallucination / créativité. **Pas** une évaluation de nouveauté scientifique.

> Les numéros de page renvoient au PDF compilé (43 p.). Les citations du manuscrit et les reformulations proposées sont en anglais.

---

## 1. Test de compréhension en première lecture

Lecture des deux premières pages uniquement (résumé + §1 jusqu'au milieu de « Our position »), sans revenir en arrière ni anticiper.

| # | Question | Verdict | Commentaire |
|---|---|---|---|
| 1 | Quel problème le papier identifie-t-il ? | **Immédiatement clair** | Le résumé s'ouvre sur le cas du cartel de musée. C'est le meilleur passage du manuscrit. |
| 2 | Pourquoi ce problème compte-t-il ? | **Immédiatement clair** | « current protocols leave implicit and therefore cannot act on » + enjeux à fort risque p. 1–2. |
| 3 | Qu'est-ce qui est insuffisant dans la pratique actuelle ? | **Clair après relecture** | Formulé en creux et sous couvert : « Current evaluation protocols do **not always** represent this distinction explicitly ». L'atténuation affaiblit le moteur de l'argument. |
| 4 | Que soutiennent exactement les auteurs ? | **Immédiatement clair** | « We argue that hallucination is relative to a task's truth contract. » |
| 5 | Quelle est la solution proposée ? | **Immédiatement clair** | Le triplet est donné p. 2. |
| 6 | Que contient le contrat de vérité ? | **Immédiatement clair** | Les trois champs sont nommés dans le résumé **et** p. 2. |
| 7 | Différence entre état de preuve et étiquette finale ? | **Clair après relecture** | Elle est *énoncée* p. 2 (« two distinct steps »), mais la raison d'avoir **deux** vocabulaires n'est pas argumentée avant la Figure 1 (p. 3) et §2.4 (p. 9). |
| 8 | Pourquoi la même revendication `UNKNOWN` reçoit-elle des étiquettes différentes ? | **Immédiatement clair** | Le résumé le fait en trois phrases ; c'est très réussi. |
| 9 | Qu'apporte le papier au-delà de la terminologie ? | **Clair seulement plus loin** | Le paragraphe « Contributions » est **p. 5**. Rien sur les deux premières pages. |
| 10 | Quelles preuves / analyses soutiennent la position ? | **Clair seulement plus loin** | Le résumé mentionne 41 ressources et 5 cas ; les pages 1–2 du corps n'en disent rien. On l'apprend p. 5. |

**Score d'accessibilité en première lecture : 7/10.**

Ce qui empêche un score plus élevé :

1. **Le deuxième paragraphe de l'introduction est un non-sequitur.** Le §1 dit que les LLM produisent des affirmations non étayées et que la recherche couvre taxonomies, benchmarks, détection et atténuation. Puis :

   > *Evaluation therefore requires two distinct levels: an evidence state relative to an adjudication standard, followed by a task-conditioned claim label.*

   Rien dans ce qui précède n'implique ce « therefore ». Le lecteur reçoit la **conclusion** du papier avant le contraste qui la motive (fiction / brainstorming / assistant clinique), lequel n'arrive que deux paragraphes plus bas. L'ordre est inversé.

2. **Deux termes non canoniques apparaissent avant les termes canoniques.** Dans cette même phrase, « adjudication standard » et « task-conditioned claim label » précèdent « task oracle » et « claim label » dans le corps du texte. Le premier vocabulaire que rencontre le lecteur n'est pas celui du papier.

3. **Une référence pendante.** P. 2, phrase isolée :

   > *We reuse this museum-label example throughout the paper, and a clinical example alongside it wherever a high-stakes contrast is needed.*

   « **this** museum-label example » n'a jamais été présenté dans le corps du texte — il est dans le résumé et dans la Figure 1 (p. 3). Le lecteur cherche un antécédent qui n'existe pas.

4. **Contributions et base probante trop tardives** (p. 5, après quatre paragraphes de cadrage). Questions 9 et 10 échouent au test des deux pages.

---

## 2. Reconstruction en langage simple

Résumé de l'argument, sans notation ni jargon :

1. Quand un modèle écrit quelque chose que la source ne confirme ni ne contredit, l'évaluation actuelle appelle cela une hallucination, quelle que soit la tâche.
2. Or certaines tâches demandent explicitement ce genre de contenu : une fiction invente, un brainstorming propose, un assistant clinique doit pouvoir évoquer une piste sans l'affirmer.
3. Les auteurs soutiennent donc qu'une hallucination n'est pas une propriété de la phrase seule, mais du rapport entre la phrase et ce que la tâche autorisait.
4. Ils proposent de rendre explicites trois choses que les tâches supposent sans les dire : quelle source fait autorité pour trancher, quel contenu non établi la réponse a le droit d'introduire, et sous quelle forme ce contenu doit être présenté.
5. L'évaluation se fait alors en deux temps : on regarde d'abord ce que la source dit de la revendication (elle l'implique, la contredit, ou reste muette) ; seul le troisième cas passe par les autorisations de la tâche.
6. La cartographie de 41 ressources d'évaluation sert à montrer qu'aucune ne rend ces trois éléments visibles séparément — autrement dit, que l'information nécessaire à cette décision n'est présente nulle part aujourd'hui.
7. Les cinq cas travaillés servent à montrer, à chaque fois, quel élément précis doit changer pour que l'étiquette change — et donc que les trois éléments ne sont pas redondants entre eux.
8. Le programme de recherche demande ensuite de vérifier que des annotateurs humains peuvent réellement identifier ces trois éléments, et qu'un système combinant simplement factualité et suivi d'instructions ne ferait pas aussi bien.

**Un chercheur TAL non spécialiste pourrait-il reconstruire ce résumé après une seule lecture ?**

> **Oui, mais avec effort.**

Les points 1 à 5 s'obtiennent sans difficulté : le résumé et la Figure 1 les portent très bien. Les points 6 et 7 demandent un effort réel :

- **Point 6 :** la §5 (Mapping Results) est majoritairement consacrée à une variable que le papier qualifie lui-même de secondaire (le niveau de marquage stylistique), et la Figure 3 admet en légende qu'elle **ne montre pas** le résultat central (« This broader result is established by the coding in Appendix B, **not by the geometry of this figure** »). Le lecteur doit donc reconstruire le résultat principal à partir des tableaux de l'annexe B.
- **Point 7 :** les cinq cas sont corrects mais deux d'entre eux (C et E) reprennent des exemples déjà donnés en §2.2 et Figure 2 ; leur valeur ajoutée n'est pas signalée.


---

## 3. Revue de l'introduction comme dispositif d'accueil

Progression attendue vs. progression réelle :

| Étape attendue | Présente ? | Où | Problème |
|---|---|---|---|
| 1. Problème concret et intuitif | Partiellement | Résumé p. 1 ; corps p. 2 | Le corps du texte ouvre sur une généralité de survey, pas sur le cas concret. Le meilleur exemple du papier est enfermé dans le résumé. |
| 2. Pourquoi cela compte | Oui | p. 1–2 | OK. |
| 3. Ce que capture la pratique actuelle | Oui | p. 2 | OK, bien cité. |
| 4. **Cependant**, pourquoi c'est insuffisant | Oui, mais **après** l'énoncé de la solution | p. 2 | Inversion : la thèse (¶2) précède sa motivation (¶3–5). |
| 5. Position des auteurs | Oui | p. 2, « Our position » | Bien signalée. |
| 6. Explication intuitive de la solution | Oui | p. 2 | OK. |
| 7. Exemple simple / Figure 1 | Oui | Fig. 1, p. 3 | Référencée p. 2, imprimée p. 3 : rupture de page. |
| 8. Portée de la proposition | Oui, **deux fois** | p. 4 (¶ « The framework evaluates… ») et p. 4 (¶ « Why a truth contract… ») | Redondance. |
| 9. Contributions | Oui | p. 5 | Trop tard. |
| 10. Feuille de route | Oui | p. 5 | Correcte mais purement énumérative. |

### Problèmes identifiés

**Matériel technique trop précoce.** Le paragraphe « Our position » (p. 2) introduit, en une page : `claim`, `p` (contexte de tâche), `evaluator`, trois états de preuve, trois étiquettes, le triplet `TC(p)=(O_p,Γ_p,μ_p)`, le marquage observé, et le `reason code`. Neuf objets nouveaux avant que le lecteur n'ait vu la Figure 1. Une partie peut attendre §2 : `evaluator`, `observed status marking` et `reason code` ne servent à rien pour comprendre la thèse.

**Terminologie avant motivation.** Voir §1 ci-dessus : « adjudication standard » / « task-conditioned claim label » p. 2.

**Équation avant intuition.** `TC(p)=(O_p,Γ_p,μ_p)` apparaît p. 2, avant la Figure 1 qui en donne l'intuition. La notation n'est jamais *manipulée* dans l'introduction ; elle y est purement décorative.

**Paragraphes qui détournent de la position centrale.** Le paragraphe « A secondary problem: claim recovery under marked style » (p. 4) occupe une page pleine dans l'introduction pour un problème que le papier qualifie explicitement de **secondaire** et qu'il place **hors** du contrat. Il introduit `style marking`, `foregrounding`, `claim-preserving style variation`, deux références de stylistique, et une double référence croisée (§2.3 + Annexe A). C'est le passage le plus coûteux de l'introduction pour le rendement argumentatif le plus faible.

**Répétition de la même motivation.** L'idée « le style n'entre pas dans l'étiquette » est énoncée quatre fois dans les seules pages 3–5 : barre inférieure de la Fig. 1, légende de la Fig. 1, ¶ « The framework evaluates… », ¶ « A secondary problem… » (dernière phrase).

**Transitions manquantes.** Aucune transition entre le ¶ « Current evaluation protocols… » et « Our position » — le lecteur passe du constat à la thèse sans phrase de charnière.

**Prominence de la contribution.** Ce point est en réalité **bien traité**. Les formules attendues sont présentes et repérables :

- *We argue that hallucination is relative to a task's truth contract.* (résumé)
- *We propose a claim-level evaluation rule…* (p. 2)
- *We write the contract as…* / *We reserve two terms for two different operations.* (§2.3)
- *We use `evaluation resource` as an umbrella term…* (§4.1)
- *In the framework developed below, these resources instantiate the task oracle.* (p. 2) — excellente phrase : elle marque la frontière entre travaux antérieurs et cadre proposé au moment exact où elle est utile.

À aucun endroit je n'ai eu à deviner ce qui venait des auteurs. C'est un vrai point fort du manuscrit.

**Introduction accessibility : acceptable** — proche de « difficult » à cause de l'inversion motivation/thèse et du paragraphe « secondary problem ». Trois corrections la feraient basculer en « strong » : déplacer le contraste motivant avant la thèse, réduire « A secondary problem » à deux phrases, remonter « Contributions ».

---

## 4. Audit « concept avant usage »

| Concept | 1re occurrence | 1re explication claire | Utilisé avant explication ? | Facile ? | Révision |
|---|---|---|---|---|---|
| hallucination (phénomène) | p. 1 | — (présupposé) | non | oui | — |
| hallucination (**étiquette** `H`) | p. 2 / p. 4 | §2.4, p. 9 | oui, léger | moyen | **Signaler explicitement les deux emplois** (voir A.1) |
| factuality | p. 2 | §3.2, p. 14 | oui (12 p.) | oui | acceptable (terme standard) |
| faithfulness | p. 4 | §3.2, p. 14 | oui (10 p.) | oui | acceptable |
| claim | p. 2 | p. 2 (défini sur place) | non | oui | — |
| response span | §2.1, p. 5 | **jamais** | oui | non | **À définir** (voir A.2) |
| task context `p` | p. 2 | p. 2 | non | oui | — |
| prompt | p. 2 | §2.2, p. 6 (distingué de `p`) | non | oui | — |
| evaluator | p. 2 | p. 2 | non | oui | uniformiser avec « annotator » (5 occurrences) |
| truth contract | p. 1 | §2.2, p. 6 | non (glose p. 2) | oui | — |
| task oracle | p. 1 | §2.2, p. 6 | oui, sous l'alias « adjudication standard » p. 2 | moyen | **Un seul nom** |
| permission scope | p. 1 | §2.2, p. 7 | non | **oui, excellent** | — (la paire clinique est le meilleur passage explicatif du papier) |
| required status marking | p. 1 | §2.2, p. 7 | non | oui | — |
| observed status marking | p. 3 | §2.2, p. 7 | non | oui | — |
| evidence state | p. 1 | p. 2 | non | oui | — |
| `ENTAILED` / `CONTRADICTED` | p. 2 | p. 2 | non | oui | — |
| `UNKNOWN` | Fig. 1, p. 3 | §2.4, p. 9 (portée restreinte) | oui | moyen | **Remonter la restriction de portée** (voir A.3) |
| supported (`SUP`) | p. 2 / p. 4 | p. 4 | non | **piège** | **Collision avec FEVER `SUPPORTS`** (voir C.1) |
| licensed divergence (`LD`) | p. 1 | p. 4 | Fig. 1 utilise `LD` p. 3, défini p. 4 | oui | définir `H`/`LD` avant la Figure 1 |
| claim extraction | §2.3, p. 8 | §2.3, p. 8 | non | oui | — |
| claim recovery | p. 4 | §2.3, p. 8 | oui | moyen | — |
| canonicalization | §2.1, p. 5 | §2.3, p. 8 | oui (glosée sur place) | moyen | acceptable |
| procedural failure | p. 4 | §2.7, p. 13 | **oui (9 p.)** | non | **Glose d'une ligne à la 1re occurrence** |
| usefulness | p. 2 (sens créativité) | §2.6, p. 12 (sens propre) | **oui** — employé au sens propre §2.2 p. 7 (« with low usefulness ») | non | **Définir avant §2.2** |
| severity | §2.4, p. 10 | §2.4, p. 10 | non | oui | déplacer le paragraphe (voir §19) |
| style / style-marking | **Fig. 1, p. 3** | §2.5, p. 10 | **oui (7 p.)** | non | **Le terme le plus mal amorti du papier** |
| instruction following | p. 4 | §3.4, p. 15 | non | oui | — |
| alignment (RLHF) | §2.5, p. 11 | §2.5, p. 11 | non | oui | désambiguïsation explicite : bon |
| reason code | p. 3 | p. 4 (valeurs), §2.4 (précédence) | non | oui | — |
| claim-recovery coverage | p. 4 | §2.6, p. 12 | **oui (8 p.)** | non | glose à la 1re occurrence |
| creative-task success | §2.6, p. 12 | §2.6, p. 12 | non | **non** | aucune grille n'est jamais donnée (voir D) |
| nominal task profile | §4.2, p. 19 | §4.2, p. 19 | non | oui | — |
| evaluation resource | §4.1, p. 18 | §4.1, p. 18 | non | oui | — |
| claim-preserving style variation | p. 4 | §2.3, p. 9 | non | oui | — |
| meta-claim | §2.4, p. 10 | §2.4, p. 10 | non | oui | — |
| content verdict / structured record | p. 4 | §2.6, p. 12 | oui | non | **8 dénominations, voir §5** |

### A. Concepts introduits mathématiquement avant d'être introduits intuitivement

- **A.1 — `TC(p)=(O_p,Γ_p,μ_p)`, p. 2.** Le triplet formel précède la Figure 1. La notation n'est ensuite jamais manipulée en tant qu'objet (4 occurrences dans tout le papier). Recommandation : dans l'introduction, écrire les trois champs en toutes lettres et réserver le triplet à la Figure 1 et à §2.2.
- **A.2 — `σ_p ∈ {0,1,2}`, Fig. 2 (p. 11) avant §2.5 (p. 10–11).** La Figure 2 affiche « `σ_p=1` *requested style-marking level* » ; le lecteur qui lit la figure avant le texte voisin (comportement normal) rencontre un indice numérique dont l'échelle n'est nulle part sur la figure.
- **A.3 — `\Hall` / `\LD` dans la légende de la Figure 1 (p. 3), définis p. 4.** Une page de décalage sur les deux abréviations les plus importantes du papier.
- **A.4 — `c^* = (q^*, m^*)`, §2.1 p. 5.** La paire n'est utilisée que 5 fois ; `q^*` (30 occurrences) et `m^*` (24) vivent leur vie séparément. La paire ne sert à rien (voir §9).

### B. Concepts techniquement corrects mais trop abstraits

- **`response span`.** Le cadre repose entièrement sur cette unité (« The evaluator selects a response span ») mais elle n'est jamais définie et la procédure de sélection n'est jamais décrite, alors même que §2.7 fait de « span-selection » un mode de défaillance. *Exemple concret manquant :* montrer, sur la réponse Rosetta de la Figure 2, pourquoi la segmentation retenue est en quatre spans et non en deux ou en six.
- **`creative-task success`.** Reçoit quatre valeurs (`PASS`/`FAIL`/`NOT ASSESSED`/score) et zéro grille. *Exemple concret manquant :* une phrase disant à quoi ressemblerait un `PASS` sur la tâche du cartel de musée.
- **`claim-recovery coverage`.** Défini comme une proportion dont le dénominateur exige « an independently adjudicated set of attributable commitments » — c'est-à-dire une quantité non observable en pratique. Le lecteur ne peut pas se représenter comment on la mesure. *Suggestion :* une phrase disant que dans un benchmark on l'estime sur un sous-échantillon doublement annoté.

### C. Distinctions insuffisamment nettes

- **C.1 — `supported` (étiquette) vs `ENTAILED` (état de preuve).** C'est la distinction la plus fragile du papier, pour une raison externe : un lecteur TAL arrive avec FEVER en tête, où `SUPPORTED` **est** un état de preuve. Le papier cite FEVER et le code en annexe B. Le risque de contresens est réel. *Recommandation :* ajouter une phrase explicite en §2.4 — « Note that `SUP` is a claim label, not an evidence state: benchmarks such as FEVER use `SUPPORTED` for what we call `ENTAILED`. » Alternative plus radicale : renommer l'étiquette `PERMITTED-AND-GROUNDED` ou simplement `GROUNDED`.
- **C.2 — `task oracle` vs `adjudication standard`.** Utilisés comme synonymes (81 vs 11 occurrences), le second arrivant en premier p. 2. Un seul nom.
- **C.3 — `permission scope` vs `usefulness`.** **Bien traitée.** Le passage §2.2 (« a carefully reasoned but invented drug dose still receives the hallucination label, whereas an unhelpful but in-frame fictional invention still receives the licensed-divergence label ») est exemplaire. Rien à corriger sur le fond ; seul problème, `usefulness` n'y est pas encore défini.
- **C.4 — `required status marking` vs `style`.** **Bien traitée sur le fond**, mais *sur-traitée* : la distinction est réaffirmée au moins huit fois (voir §20 et §22).
- **C.5 — `claim extraction` vs `claim recovery`.** **Bien traitée** — §2.3 réserve explicitement les deux termes. Modèle à suivre pour les autres paires.
- **C.6 — `factuality` vs `faithfulness`.** Distinction donnée §3.2 (p. 14) seulement, après 12 pages d'usage. Acceptable pour un lectorat CL, mais une glose d'une demi-phrase p. 2 coûterait cinq mots.
- **C.7 — `instruction following` vs `contract-aware labeling`.** **Excellemment traitée.** §3.4 pose la question que le lecteur se pose (« a reader may reasonably ask why the truth contract is not simply a well-specified instruction-following rubric ») et y répond par l'argument de l'instanciation plutôt que de la concurrence, plus le point fort sur permission ≠ contrainte (« a response that adds nothing evidence-unknown violates no permission »). C'est la meilleure sous-section du papier.
- **C.8 — sur/sous-décomposition.** Cinq formes de surface pour deux idées : `over-split`, `redundant decomposition`, `over-decomposition`, `redundantly over-split`, `atomicity errors` ; et `under-decomposition` (§2.3) apparaît une seule fois sans que son contraire ait été nommé ainsi. Voir §5.


---

## 5. Cohérence terminologique et audit des synonymes

**Constat général : la discipline terminologique du manuscrit est bonne**, nettement meilleure que la moyenne des papiers de position. Mesures :

- `task oracle` : 81 occurrences ; `reference evidence` : 0 ; `source of truth` : 0 ; `evidence source` : 0. **Aucune variation élégante sur l'oracle.** Excellent.
- `evidence-unknown` : 7 ; `unverifiable` : 0 ; `unresolved` : 0. **Aucune dérive sur l'état de preuve.** Excellent.
- `claim label` : 54 ; `evidence state` : 35, avec réservation explicite des deux vocabulaires en §2.4.

Il reste cinq cas à corriger.

| Concept | Termes actuellement utilisés | Terme canonique recommandé | Pourquoi |
|---|---|---|---|
| Le résultat structuré au niveau réponse | `structured response-level record` (1), `structured response-level verdict` (2), `structured response-level content verdict` (2), `response-level content verdict` (1), `structured verdict` (3), `structured record` (2), `response-level verdict` (3), `structured component record` (1), + « final category » (2) | **`response-level record`** pour l'objet complet à trois composantes, **`content verdict`** pour la seule composante de contenu | 8 formes de surface pour 2 objets emboîtés. Pire : trois d'entre elles (`structured response-level content verdict`, `response-level verdict`, `structured verdict`) sont ambiguës entre le tout et la partie. C'est le défaut terminologique le plus sérieux du manuscrit. |
| La norme d'arbitrage | `task oracle` (81), `adjudication standard` (11) | **`task oracle`** partout ; « the task's adjudication standard » une seule fois, en §2.2, comme glose définitionnelle | Le second apparaît **avant** le premier (p. 2) et donne au lecteur un vocabulaire fantôme. |
| Erreurs de décomposition | `over-split`, `over-decomposition`, `redundant decomposition`, `redundantly over-split`, `atomicity errors`, `merge distinct commitments`, `under-decomposition` | **`over-decomposition`** et **`under-decomposition`**, définis une fois en §2.3 | Cinq formes pour deux notions symétriques ; `under-decomposition` sort de nulle part en §2.3 alors que son contraire est nommé « merging » ailleurs. |
| L'objet proposé lui-même | `the framework` (11), `the rule` (13), `the proposed rule` (2), `our rule` (4), `the claim-labeling rule` (6), `the proposal` (3), `the proposed procedure` (1) | **`the truth-contract rule`** pour la règle d'étiquetage ; **`the framework`** pour l'ensemble règle + diagnostics | Le papier alterne sans que le lecteur sache si la portée change. §2.1 dit « The single branch is the whole of the proposal », ce qui suggère que `proposal` = `rule` ; §8.4 dit « The framework is a claim-centered evaluation procedure », ce qui suggère l'inverse. |
| Qui évalue | `evaluator` (36), `annotator` (5) | **`evaluator`**, défini p. 2 comme « a human annotator, an automated pipeline, or both » | Le papier définit correctement `evaluator` comme le terme englobant, puis emploie `annotator` en §2.3 (« Before claim verification, an **annotator** canonicalizes… ») pour la même opération. Un lecteur peut croire que la canonicalisation est réservée aux humains. |

**Ce que je ne recommande pas :** aucune variation stylistique. Dans un papier technique, la répétition terminologique est préférable à l'élégance. Le manuscrit l'a globalement compris ; il reste à l'appliquer aux cinq cas ci-dessus.

---

## 6. État de preuve vs. étiquette de revendication

**Test critique. Résultat : globalement réussi, avec un point aveugle.**

Le lecteur comprend-il que :

| Point | Verdict | Où il l'apprend |
|---|---|---|
| `ENTAILED`/`CONTRADICTED`/`UNKNOWN` sont des états de preuve | **Oui** | Résumé p. 1, confirmé p. 2 |
| `supported`/`hallucination`/`licensed divergence` sont des étiquettes finales | **Oui** | Résumé p. 1, confirmé p. 2 |
| Une revendication `UNKNOWN` n'est **pas** automatiquement `LD` | **Oui** | Résumé p. 1 : « permission and marking separate a hallucination from licensed divergence » ; Figure 1 p. 3 |
| `UNKNOWN` peut mener à `H` **ou** `LD` selon le contrat | **Oui, très clairement** | Figure 1 |

> **À quel moment exact un nouveau lecteur comprend-il pourquoi les deux vocabulaires sont nécessaires ?**
> Dès le résumé, p. 1, phrase : *« Labeling then takes two steps rather than one. The task oracle assigns an evidence state: entailed claims are supported and contradicted claims are hallucinations, neither case reaching the contract. Only the unknown case does. »*

C'est **exactement au bon endroit**. Ce n'est pas un problème de lisibilité et je ne le signale pas comme tel.

**Le point aveugle**, en revanche, est réel : la nécessité de **deux noms différents** dans les cas `ENTAILED` → `supported` et `CONTRADICTED` → `hallucination` n'est jamais justifiée. Dans deux cas sur trois, la correspondance est bijective et immédiate ; le lecteur peut légitimement se demander pourquoi on ne dit pas simplement « `ENTAILED` = supported, `CONTRADICTED` = hallucination, `UNKNOWN` = ça dépend ». La réponse existe dans le papier — la même étiquette `H` peut venir de trois codes de raison différents, donc l'étiquette n'est pas une simple renomination de l'état — mais elle n'est jamais formulée comme telle.

**Explication plus simple proposée** (à insérer en §2.4, juste après « We reserve `ENTAILED`, `CONTRADICTED`, and `UNKNOWN` for evidence states ») :

> *The two vocabularies are not redundant. An evidence state describes the relation between a claim and the task oracle; a claim label describes the standing of that claim under the task. Two of the three evidence states map onto a label one-to-one, but the hallucination label does not map back: it is reached from `CONTRADICTED`, and also from `UNKNOWN` by two different routes. That is why the label carries a reason code and the evidence state does not.*

Ajouté, ce paragraphe supprime la dernière hésitation possible sur ce point.

---

## 7. Test de compréhension du contrat de vérité

### Task oracle `O_p`
- *À quoi la réponse doit-elle répondre ?* → **Oui, en une phrase.** « the task-specific adjudication standard used to determine whether a claim is entailed, contradicted, or unknown ».
- *Est-il clair que l'oracle peut être plus qu'une base ou un document ?* → **Oui, très bien.** La liste (document, retrieval set, base, gold labels, état d'environnement/outil, procédure humaine, contraintes de monde fictionnel) est suivie de trois instanciations concrètes. Excellent passage.
- *Distingue-t-il ce que la tâche tient pour établi de ce que l'utilisateur souhaite ?* → **Oui, explicitement** : « The task oracle does not represent whatever the user would like to be true » + « An instruction to propose a hypothesis can therefore authorize the proposal without adding that hypothesis to the task oracle or making it true. » Rien à corriger.

### Permission scope `Γ_p`
- *Quel contenu non établi la réponse peut-elle introduire ?* → **Oui.**
- *Est-ce clairement séparé de l'utilité, de la créativité et du style ?* → **Oui, et c'est le meilleur passage explicatif du manuscrit** : la paire clinique (diagnostic candidat autorisé / posologie inventée interdite, toutes deux `UNKNOWN`) fait comprendre la notion en deux phrases. La phrase « Permission scope records authorization, not value » devrait être mise en évidence.
- Réserve mineure : `usefulness` y est employé avant définition (voir A/§4).

### Required status marking `μ_p`
- *Comment le contenu incertain autorisé doit-il être présenté ?* → **Oui.**
- *Les exemples sont-ils immédiatement compréhensibles ?* → **Oui.** « this may be early Lyme disease, but serology is required » vs « this is early Lyme disease » est parfaitement lisible.
- Réserve : le passage dit que le marqueur peut être « a local hedge, a hypothesis label, a section heading, or a task-level fictional frame », donc à quatre échelles textuelles différentes, sans que le lecteur sache comment un cadre au niveau tâche (« this is a short story ») se compare à une couverture locale. Le cas D y répond dix pages plus loin (le cadre ne licencie pas l'attribution réelle) mais ce n'est pas la même question. **Ajouter une phrase** : *A frame-level marking satisfies `μ_p` for every in-frame claim at once; a local hedge satisfies it only for the claim it modifies.*

### Style
- *Est-il clair que le style est hors du contrat ?* → **Oui — trop clair.** L'information est répétée huit fois (Fig. 1 barre, Fig. 1 légende, intro ×2, §2.2, §2.5 en entier, Fig. 2 légende, §2.6, cas E, §8.3, §8.4, conclusion).
- *Le lecteur distingue-t-il « Write poetically » de « Present this as a hypothesis » ?* → **Oui**, la formulation §2.5 est nette : « Required status marking concerns the epistemic or discourse status of an `UNKNOWN` claim. Style-marking level concerns rhetorical form. »
- **Le vrai problème n'est pas la clarté, c'est la proportion.** Mesure : le champ lexical du style représente 65 occurrences sur ~4 550 mots dans §2, **19 occurrences sur ~900 mots dans §5 (Mapping Results)**, et 21 sur ~1 730 dans §7. Dans la section qui porte le résultat empirique central, une variable déclarée secondaire et **hors contrat** occupe environ 2 % des mots et **la totalité de l'axe vertical de la Figure 3**. Voir §13, §15 et §22.


---

## 8. Cohérence de l'exemple fil rouge

Le manuscrit annonce (p. 2) : *« We reuse this museum-label example throughout the paper, and a clinical example alongside it wherever a high-stakes contrast is needed. »* — soit **deux** exemples annoncés. Il en utilise **cinq**.

| Exemple | Occurrences | Concept expliqué | Statut |
|---|---|---|---|
| **Rosetta Stone / cartel de musée** | 17 | tâche, réponse, revendication, oracle, `UNKNOWN`, `Γ`, `μ`, `H`, `LD`, `CONTRADICTED`, langage figuré | **Fil rouge principal.** Bon choix : neutre, vérifiable, se prête aux quatre étiquettes. |
| **Assistant clinique / Lyme** | 6 | `Γ` (paire autorisé/interdit), `μ` (paire couvert/affirmé), sévérité | **Annoncé, justifié.** Porte à lui seul les deux meilleures explications du papier. |
| **Café Verdier / Paris 1920** | 4 | cadre discursif, frontière de `Γ` (cas B, D) | **Non annoncé.** Troisième univers introduit p. 22, sans transition depuis les deux premiers. |
| **XSum** | 3 | changement d'oracle (cas A) | Justifié : c'est le seul cas ancré dans une distinction documentée. |
| **« the winter that would not lift »** | 1 | échec de claim recovery (§2.7) | Sixième contexte, une seule utilisation. |

### Diagnostic

**Le fil rouge fonctionne pour le noyau du cadre.** Rosetta + clinique couvrent : tâche, réponse, revendication, oracle, `UNKNOWN`, `Γ`, `μ`, `H`, `LD`. C'est déjà beaucoup et c'est bien fait.

**Trois problèmes de charge cognitive :**

1. **§2.1 « Framework Overview » utilise le cas ennuyeux.** La première démonstration complète de la procédure prend le span « The stone was found near Rosetta in 1799, and its decree appears in hieroglyphic, Demotic, and Greek » et conclut : *« If the task oracle entails both propositions, each canonical claim receives the supported label. »* Autrement dit, **le premier parcours intégral de la procédure n'exerce jamais la branche qui fait tout l'intérêt du papier.** Le lecteur suit six étapes pour arriver à un résultat que la pratique actuelle donne déjà. *Correction :* prendre dans §2.1 le span de reconstruction (`UNKNOWN` → `LD`), qui est déjà celui de la Figure 1.

2. **Café Verdier fait double emploi avec un usage possible de Rosetta.** Les cas B et D testent le cadre fictionnel et sa frontière. Rien n'empêche de les instancier sur Rosetta : une tâche « écris une courte fiction se déroulant autour de la découverte de la pierre » donnerait exactement la même paire in-frame / attribution réelle (« un scribe nommé Kamose », frontière : « Champollion buvait au Café Verdier » → « Champollion a déchiffré la pierre en 1799 » présenté comme historique). Le gain serait de supprimer un univers entier.

3. **Les cas C et E reprennent des exemples déjà donnés.** Le cas C reproduit *mot pour mot* la paire clinique de §2.2 ; le cas E reprend la revendication `q^*_2` de la Figure 2. Ce n'est pas nécessairement un défaut — c'est du renforcement — mais rien ne le signale, et le lecteur qui reconnaît l'exemple se demande ce qu'il est censé apprendre de neuf. *Correction :* une demi-phrase dans chaque cas — « Case C states as a controlled contrast the clinical pair already given in §2.2 » ; « Case E does the same for the claim `q^*_2` of Figure 2. »

**Exemple à promouvoir :** aucun nouveau n'est nécessaire. **Exemples redondants :** Café Verdier (fusionnable dans Rosetta), « the winter that would not lift » (pourrait devenir un span de la réponse Rosetta — une métaphore dans le cartel).

---

## 9. Formalisme et notation

Règle appliquée : *le formalisme n'est justifié que s'il lève une ambiguïté ou s'il est réutilisé plus loin.*

| Objet formel | Occ. | Réutilisé ? | Nécessaire ? | Coût lecteur | Recommandation |
|---|---|---|---|---|---|
| `O_p` | 35 | oui, partout | **oui** | faible | **Keep**, mais supprimer l'indice `p` (voir ci-dessous) |
| `Γ_p` | 38 | oui, partout | **oui** — aucun mot anglais n'existe pour « permission scope » de façon compacte | faible | **Keep**, sans indice |
| `μ_p` | 33 | oui, partout | **oui** | faible | **Keep**, sans indice |
| `q^*` | 30 | oui | **oui** — la séparation contenu/marquage est le cœur de la canonicalisation | moyen | **Keep** |
| `m^*` | 24 | oui | **oui** | moyen | **Keep** |
| `c^* = (q^*, m^*)` (la **paire**) | 5 | marginalement | **non** | moyen | **Remove.** Les deux composantes vivent séparément ; la paire n'est jamais manipulée en tant que telle. Dire « the normalized content `q^*` and the observed marking `m^*` » suffit. |
| `TC(p) = (O_p, Γ_p, μ_p)` | 4 (macro `\TC` : 6) | non | **non** | moyen | **Convert to prose** dans l'intro et §2.2 ; **Keep** uniquement dans la Figure 1, où le triplet sert visuellement à montrer que seul `Γ` change. |
| indice `p` sur `O`, `Γ`, `μ` | ~100 | — | **non** | **élevé** (bruit visuel constant) | **Simplify.** Le papier dit déjà « We drop the subscript `p` when the task context is clear », puis ne le fait jamais. Un seul contexte de tâche est actif à la fois, sauf Figure 1 (`p_1`/`p_2`) : n'y garder l'indice que là. Gain de lisibilité important pour zéro perte. |
| `σ_p ∈ {0,1,2}` | 6 | §7, Annexe A | **non** | moyen | **Simplify.** Le papier admet que l'échelle est « a working discretization rather than a validated universal scale » et que les frontières « require empirical validation ». Utiliser les trois noms (`minimally marked` / `locally marked` / `sustained marked style`) dans le corps ; réserver l'indice numérique à l'Annexe A où il sert à écrire un plan factoriel. |
| `𝒞^*(y_i, p_i)`, `c_j^*`, `y_0/y_1/y_2` | 2 / 1 / 3 | Annexe A | oui, localement | acceptable | **Keep** (annexe, c'est leur place) |
| `O_t` | 2 | §7 | marginal | faible | **Convert to prose** : « a time-indexed task oracle » suffit, la notation n'est jamais dépliée. |
| `100(c−i)/N` et `i/(i+p+a)` (§8.2) | 2 | non | **non** | moyen | **Remove** avec toute la §8.2 (voir §16, §23) — formules d'un benchmark tiers, jamais réutilisées, et le symbole `p` y désigne « partial answers », en collision directe avec `p` = contexte de tâche. |

### Collisions de symboles à corriger

- **`p`** désigne le contexte de tâche partout, **et** le nombre de « partial answers » en §8.2. Collision réelle.
- **`O`** désigne l'oracle, **et** apparaît comme en-tête de colonne dans les tableaux de l'annexe B où il est en fait une *catégorie de codage*, pas un oracle instancié. Mineur mais à surveiller.

### Notation encodant un arbre de décision déjà montré en figure

La règle `SUP`/`H`/`LD` de §2.4 est présentée sous forme de `\begin{description}` avec une `enumerate` imbriquée pour la précédence des codes de raison. Ce n'est pas de la notation mathématique à proprement parler, et **je recommande de la garder** : c'est la seule formulation normative complète, elle est réutilisée par les cas travaillés et par l'annexe. En revanche, la précédence des trois codes de raison gagnerait à être aussi un mini-tableau (3 lignes : condition → code), car la formulation « otherwise, if… otherwise, if… » exige de tenir trois négations en tête.

**Verdict global sur le formalisme.** Le papier n'est pas sur-formalisé — c'est notable et à porter à son crédit. Cinq objets font tout le travail (`O`, `Γ`, `μ`, `q^*`, `m^*`) et sont tous réutilisés massivement. Le coût réel vient de la **décoration** : l'indice `p` omniprésent, le triplet `TC(p)` jamais manipulé, la paire `c^*` jamais manipulée, et l'indice `σ_p` pour une échelle non validée. Retirer ces quatre éléments allégerait la page sans toucher à un seul argument.

---

## 10. Progression globale de lecture

| Section | Question du lecteur | Y répond clairement ? | Problème principal | Correction recommandée |
|---|---|---|---|---|
| **§1 Introduction** (p. 1–5) | « De quoi s'agit-il et pourquoi devrais-je lire ? » | Oui, avec effort | Thèse avant motivation ; « secondary problem » d'une page entière ; contributions p. 5 | Réordonner ¶2–5 ; comprimer « secondary problem » à 2 phrases ; remonter Contributions |
| **§2 Framework** (p. 5–14) | « Comment ça marche exactement ? » | Oui pour §2.1–2.4 ; **difficilement** pour §2.5–2.7 | §2.1 démontre la procédure sur le cas où elle ne sert à rien ; §2.5–2.7 empilent ~15 nouveaux vocabulaires catégoriels après que la règle est déjà close | Changer le span de §2.1 ; **déplacer §2.6 et §2.7 en annexe ou après les cas travaillés** |
| **§3 Related Work** (p. 14–18) | « En quoi est-ce différent de ce que je connais ? » | **Oui, très bien** | Aucun problème structurel. §3.4 et §3.6 sont excellentes | — |
| **§4 Methodology** (p. 18–19) | « Sur quoi repose l'analyse empirique ? » | Oui | **Aucun paragraphe d'ouverture de section** : `\section{Methodology}` est immédiatement suivi de `\subsection` | Fusionner §4 et §5 (voir ci-dessous) |
| **§5 Mapping Results** (p. 19–21) | « Que montre la cartographie ? » | **Non** | Même absence d'ouverture ; le contenu porte majoritairement sur le style, pas sur les trois champs ; la Figure 3 désavoue en légende le résultat principal | **Refonte** (voir §13 et §15) |
| **§6 Worked Cases** (p. 21–23) | « La règle fait-elle vraiment une différence ? » | Oui | Arrive 12 pages après la règle ; deux cas dupliquent §2 | Envisager de remonter §6 juste après §2 |
| **§7 Research Agenda** (p. 23–27) | « Que reste-t-il à prouver ? » | **Oui, excellent** | Format `Research problem / Why it matters / Study and measures / Falsification criterion` très efficace + Table 1 synoptique | — |
| **§8 Discussion** (p. 27–30) | « Que ne dois-je pas sur-interpréter ? » | Oui pour §8.1, §8.3, §8.4 ; **non pour §8.2** | §8.2 (AA-Omniscience) est une digression de 2 pages + figure sur une question que le papier ne pose pas | **Supprimer §8.2 et la Figure 4** |
| **§9 Conclusion** (p. 30) | « Que dois-je retenir ? » | Oui | Reprend fidèlement | Peut être raccourcie d'un tiers |

### Ordre révisé recommandé

Je ne recommande **pas** de déplacer §3 (Related Work) après §2 : placer le cadre avant l'état de l'art est un choix légitime pour un papier de position, et les phrases d'ouverture de §3 font parfaitement la liaison.

Trois mouvements sont en revanche justifiés par la compréhension, pas par le goût :

1. **Fusionner §4 et §5** en une seule section « Resource Mapping » (méthode en §5.1, résultats en §5.2). Aujourd'hui deux ruptures de section pour ~3 pages fragmentent la lecture, et aucune des deux n'a de paragraphe d'ouverture.
2. **Déplacer §2.6 (response-level verdict) et §2.7 (procedural failures)** après §6 (Worked Cases), ou en annexe. Motif : ce sont des *sorties* et des *modes de panne* du cadre, pas des éléments nécessaires pour comprendre la règle. Aujourd'hui, un lecteur qui vient de comprendre la règle en §2.4 doit absorber 4 pages supplémentaires (échelle de style, couverture, verdict ordonné à 3 valeurs, succès créatif à 4 valeurs, 4 types de défaillance) avant d'atteindre l'état de l'art. C'est le pic de charge du manuscrit (voir §24-B).
3. **Optionnel mais recommandé : remonter §6 (Worked Cases) juste après §2.** Le papier dit lui-même que ce sont « constructed specification checks », pas des résultats. Placés après la règle, ils la consolident au moment où le lecteur en a besoin ; placés après la cartographie, ils ressemblent à des résultats et arrivent trop tard.


---

## 11. Audit des transitions

Bilan : **les transitions sont, dans l'ensemble, un point fort du manuscrit.** Cinq sur sept sont bonnes. Deux sont absentes.

### ✔ Introduction → Framework — **forte**
> *The position stated above assigns three different roles to evidence, authorization, and presentation. Those roles are usable only if each is specified precisely enough for two evaluators to apply them to the same response. This section gives that specification.*

Modèle du genre : elle dit ce qui précède, pourquoi cela ne suffit pas, et ce que la section apporte. À conserver telle quelle.

### ~ Framework → Related Work — **acceptable**
Le §2.7 se termine sur un détail (« A response that does not realize the requested style-marking level is not a procedural failure ») sans regard vers l'avant. C'est l'ouverture de §3 qui rattrape le coup. Fonctionne, mais le lecteur passe une frontière de section sans y être préparé.

**Emplacement :** fin de §2.7 (p. 14)
**Problème :** aucune phrase de clôture pour la section la plus longue du papier ; aucune annonce de ce que §3 vient faire.
**Transition suggérée :**
> *The framework now defines the decision we want an evaluator to make, and the conditions under which it cannot be made at all. The next question is whether the evaluation resources the field already uses make the information that decision needs available.*

### ✘ Related Work → Methodology — **absente**
**Emplacement :** entre §3.7 (p. 18) et §4 (p. 18)
**Problème :** `\section{Methodology}` est immédiatement suivi de `\subsection{Resource Selection and Scope}`. Aucun paragraphe d'ouverture. Le lecteur ne sait pas pourquoi une cartographie est nécessaire maintenant, ni ce qu'elle est censée établir. La dernière phrase de §3.7 (« That gap motivates … the resource analysis reported below ») ne porte que sur la variation stylistique — c'est-à-dire sur la variable secondaire — et laisse croire que la cartographie porte sur le style.
**Transition suggérée** (à insérer après `\section{Methodology}`) :
> *Sections 3.1 to 3.7 argued that no single evaluation paradigm makes the task oracle, permission scope, and required status marking separately available. That argument was made paradigm by paradigm. This section and the next test it resource by resource: we code forty-one evaluation resources for whether their designs represent each of the three fields, and whether any holds a claim's wording fixed while they vary. The coding is descriptive, and Section 4.1 states precisely what it can and cannot support.*

### ✘ Methodology → Mapping Results — **absente**
**Emplacement :** entre §4.2 (p. 19) et §5 (p. 19)
**Problème :** même défaut. `\section{Mapping Results}` → `\subsection{Patterns in the Selected Sample}` → une phrase de renvoi à l'annexe. Le lecteur arrive dans les résultats sans qu'on lui rappelle la question à laquelle ils répondent.
**Transition suggérée :**
> *The coding just described answers one question: does any selected design make the three contract fields separately visible? We report the answer by task profile, then state the combination that no selected resource realizes.*

### ✔ Mapping → Worked Cases — **bonne**
> *These results identify a design gap but do not show how the proposed rule behaves at its boundaries. The case studies below make those predicted label changes explicit.*

Correcte et bien calibrée. Un seul reproche : « case studies » ici, « worked cases » dans le titre — uniformiser.

### ✔ Worked Cases → Research Agenda — **bonne**
> *Together, the cases isolate changes in the task oracle, discourse frame, required status marking, permission scope, and surface realization. Their predictions define tests for the annotation and benchmark studies below.*

### ✔ Research Agenda → Discussion — **bonne**
> *Together, these studies test the framework from annotation reliability to downstream action. Until such evidence is available, the implications of the position must remain limited to the distinctions stated below.*

Excellente : elle borne explicitement ce que la discussion a le droit d'affirmer.

### ~ Discussion → Conclusion — **acceptable**
La §8.4 se clôt sur « The framework is a claim-centered evaluation procedure … it is not a universal measure of truth, reasoning, creativity, usefulness, or safety. » C'est une bonne phrase de clôture de section mais elle ne prépare pas la conclusion. Suffisant en l'état.

### Transitions internes à §8 — **à corriger**
Le passage de §8.1 (ce qui est relatif) à §8.2 (échelle et récence) est un saut brutal : on quitte une discussion conceptuelle sur la relativité pour une analyse d'un leaderboard tiers. Si §8.2 est conservée (je recommande de la supprimer, cf. §23-P0.4), il lui faut une phrase liant explicitement le constat empirique à la thèse — par exemple : *« The bounds above say that some divergence is unavoidable; the snapshot below says it is not being removed by scale either. Both point to the same conclusion: the question is not how to eliminate evidence-unknown content, but how to decide when it was permitted. »*

---

## 12. Lisibilité de l'état de l'art

Le schéma attendu — *les travaux antérieurs mesurent X ; c'est utile pour notre cadre parce que Y ; mais cela laisse Z implicite* — est **appliqué avec constance**. C'est la partie la plus solide du manuscrit sur le plan de la lisibilité.

| Sous-section | X (ce qui est mesuré) | Y (utilité pour le cadre) | Z (ce qui reste implicite) | Verdict |
|---|---|---|---|---|
| §3.1 Hallucination Taxonomies | axes de classification (intrinsèque/extrinsèque, factualité/fidélité, conflits) | fournit la description du phénomène | ne fixe pas l'étiquette | ✔ complet |
| §3.2 Task Oracles | fidélité à la source vs factualité externe | **instancie `O_p`** — la correspondance est dite explicitement | ne décide pas d'`UNKNOWN` | ✔ complet et très efficace |
| §3.3 Claim Extraction | décomposition en unités vérifiables | fournit la machinerie de recovery | ne fait pas la distinction recovery/extraction | ✔ complet |
| §3.4 Instruction Following | contraintes vérifiables sur la sortie | « supplies what the truth contract presupposes but does not itself provide » | **permission ≠ contrainte** | ✔✔ **la meilleure sous-section du papier** |
| §3.5 Creativity | nouveauté / utilité / qualité, séparément | justifie de reporter la valeur à part | valeur ≠ autorisation | ✔ complet |
| §3.6 Global Reasoning | myopie d'attribution, cohérence, rappel | **borne la portée** | trois problèmes distincts non résolus par l'étiquetage | ✔ complet |
| §3.7 Claim-Preserving Style Variation | transfert de style, stylistique | motive le test de robustesse | personne ne teste la *recovery* sous variation de forme | ✔ complet mais court |

### Points forts à préserver

- **§3.4** anticipe l'objection la plus dangereuse pour le papier (« pourquoi pas juste une bonne grille de suivi d'instructions ? ») et y répond par un argument non défensif : la grille suffisamment détaillée *instancierait* la règle. Puis elle donne l'argument décisif : « A permission scope is not a requirement: it authorizes content without demanding it, and a response that adds nothing evidence-unknown violates no permission. » Cette phrase devrait être remontée dans l'introduction.
- **§3.6** est un modèle de sous-section de bornage : elle nomme la limite (« attribution myopia »), l'illustre par trois modes de défaillance distincts, et dit pour chacun ce que la trace de revendications ne fait pas. Elle prévient efficacement toute sur-lecture du cadre.
- Aucune sous-section ne dégénère en mini-survey. Toutes se terminent par une phrase de retour vers le cadre.

### Points à corriger

1. **§3.1 est la seule sous-section sans motivation d'ouverture.** Elle commence directement par « Hallucination surveys organize the phenomenon along several related but non-equivalent axes. » Les six autres commencent par une phrase de liaison (« If a descriptive taxonomy does not fix the claim label, the next question is… », « Claim extraction settles what is being evaluated, but not what the task allowed », « The previous paradigms ask what a task requires. Creativity research asks something the truth contract deliberately does not encode… »). Aligner §3.1 sur ce modèle.
2. **La distinction `factuality` / `faithfulness` arrive p. 14** alors qu'elle est utilisée depuis la p. 2. Une glose de cinq mots dans l'introduction résout le problème.
3. **§3.7 est déséquilibrée** par rapport aux six autres : une demi-page pour une variable que le papier place hors du contrat, contre une page et demie pour §3.4. Cohérent avec le diagnostic général sur la place du style.
4. **Le paragraphe d'ouverture de §3** énumère les quatre paradigmes en une seule phrase de 39 mots (« Factuality and source-faithfulness evaluation define relations…; claim-level evaluation supplies…; instruction-following evaluation represents…; and creativity research supplies… »). Le contenu est bon mais la forme force une relecture. Découper en quatre phrases courtes.


---

## 13. Lisibilité de la section cartographie / benchmarks

C'est **la section la plus problématique du manuscrit sur le plan de la lisibilité**, alors que sa méthode est solide et honnêtement bornée.

### Ce que le lecteur peut déterminer facilement

| Question | Verdict | Où |
|---|---|---|
| Qu'est-ce qu'une « evaluation resource » ? | ✔ Clair, avec deux exemples limites (FEVER, WritingBench) | §4.1 |
| Pourquoi ces ressources ont-elles été retenues ? | ✔ **Très bien argumenté** | §4.1 : « Purposive selection is the appropriate strategy here, because the question is whether a particular combination of evaluation fields is ever realized, not how often it occurs. » |
| Ce que la cartographie **ne peut pas** montrer | ✔✔ Exemplaire | §4.1, répété dans le résumé, la légende de la Fig. 3, §8.4-7 |
| Ce qui est codé | ✔ Sept questions explicites | §4.2 |
| Vocabulaire de codage | ✔ Fermé, publié, défini avant les tableaux | Annexe B |

Sur ces cinq points, le manuscrit est meilleur que la plupart des papiers de position. **Le raisonnement « une absence dans un échantillon choisi pour la couverture est informative précisément parce que l'échantillon a été construit pour rendre la combinaison facile à trouver » est excellent et devrait être plus visible** — il est aujourd'hui enfoui en fin de §4.1.

### Ce que le lecteur ne peut pas déterminer facilement

**13.1 — L'unité d'analyse est annoncée mais pas tenue.** §4.1 dit : « The unit of analysis in the purposive mapping is the evaluation resource. » Mais §5.1 rapporte des résultats par **profil** (« Among the twenty-two resources assigned to the strict grounding profile… »), et la Figure 3 groupe par **profil × traitement du style**. Le profil est pourtant défini en §4.2 comme une catégorie *descriptive introduite par les auteurs*, non revendiquée par les ressources d'origine. Le lecteur ne sait donc plus si le résultat porte sur des ressources ou sur des regroupements construits.

**13.2 — La section rapporte majoritairement la variable secondaire.** Mesure : 19 occurrences du champ lexical « style » sur ~900 mots dans §5. Les trois paragraphes de §5.1 mentionnent le traitement du style stylistique dans chacun ; les champs `Γ` et `μ` n'apparaissent que sous forme de codes bruts (« permission scope is coded as inferred empty », « required status marking is not separately scored »), sans qu'on explique jamais au lecteur ce que « inferred empty » ou « not separated » signifient concrètement pour une ressource donnée. Or c'est **cela**, le résultat central.

**13.3 — La Figure 3 désavoue le résultat qu'elle est censée porter.** Sa légende dit :
> *This broader result is established by the coding in Appendix B, **not by the geometry of this figure**.*

Une figure qui doit dire au lecteur de ne pas la lire pour le résultat principal ne fait pas son travail. Voir §15.

**13.4 — Le détail méthodologique n'interrompt pas l'argument, il le remplace.** §4.2 énumère sept questions de codage puis consacre un paragraphe entier à définir « nominal task profile », une catégorie qui, de l'aveu du papier, « never enter[s] the claim-labeling rule ». Ce paragraphe est plus long que l'exposé du résultat principal en §5.

**13.5 — Détails méthodologiques manquants.** Le lecteur ne trouve nulle part : la **procédure de recherche** (comment les 41 ressources ont-elles été trouvées ?), les **critères d'inclusion/exclusion** explicites, le **nombre de codeurs** ni la présence ou l'absence d'un double codage. §8.4-7 concède « the purposive mapping reports our own coding » — donc, semble-t-il, un seul codeur — mais cela n'est jamais dit franchement, et §7-Priorité 1 réclame par ailleurs de l'accord inter-annotateurs pour les champs du contrat. **Ce silence est le point le plus attaquable de la section pour un reviewer.**

**13.6 — Une formulation plus large que ce que l'échantillon supporte.** Le résumé écrit :
> *Across forty-one evaluation resources **we surveyed**, the three fields are never made separately visible at once…*

« surveyed » suggère une revue systématique, que le corps dément (« purposive », « not representative »). L'atténuation arrive deux phrases plus loin, mais un lecteur pressé n'aura lu que la première. **Correction : `we selected` ou `we purposively selected`.** Partout ailleurs dans le manuscrit le bornage est irréprochable ; c'est la seule occurrence où le résumé est plus large que le corps.

### Recommandations pour §4–§5

1. **Fusionner §4 et §5.** Une section « Resource Mapping » avec 5.1 Selection and coding / 5.2 What the coding shows.
2. **Réécrire §5.1 autour des trois champs du contrat, pas du style.** Structure proposée, trois paragraphes :
   - *Task oracle:* quelles ressources en spécifient un, de quel type, et lesquelles n'en ont aucun d'identifiable (les huit ressources créatives codées `none identifiable` sont un résultat en soi, jamais commenté aujourd'hui).
   - *Permission scope:* aucune ressource ne le représente séparément ; 22 le laissent `inferred empty` sans le déclarer, ce qui est **précisément** la thèse du papier — les tâches ont un contrat, elles ne le disent pas.
   - *Required status marking:* jamais noté séparément (`not scored` ou `not separated` sur 41/41).
   Le traitement du style vient ensuite, en un paragraphe, comme résultat secondaire.
3. **Ajouter deux phrases de méthode** : comment les ressources ont été trouvées, et par combien de codeurs elles ont été codées. Même une réponse minimale (« identified from the surveys cited in Section 3 and their citation neighbourhoods; coded by one author, with the full coding published in Appendix B for independent recoding ») ferme la brèche.
4. **Corriger `surveyed` → `selected` dans le résumé.**

---

## 14. Lisibilité des cas travaillés

Le manuscrit **a déjà** la structure `Purpose / Fixed / Changed / Predicted result`, et elle se rend correctement en PDF (chaque champ démarre sur sa propre ligne). C'est un vrai acquis par rapport à un exposé en prose continue. Trois problèmes subsistent.

### 14.1 — Le champ `Fixed` ne veut pas dire la même chose dans tous les cas

| Cas | Ce que `Fixed` retient | Ce que `Changed` fait bouger | Le lecteur voit-il tout de suite ce qui bouge ? |
|---|---|---|---|
| A | le span, la revendication canonique, `Γ = ∅` | l'oracle | ✔ oui |
| **B** | **seulement la chaîne de caractères** | cadre, oracle, `Γ`, **et la revendication elle-même** | ✘ non — c'est le seul cas où la revendication n'est pas fixe |
| C | oracle, `Γ`, `μ`, la proposition, l'état de preuve | le marquage observé | ✔ oui, cas le plus net du lot |
| **D** | le contexte de tâche fictionnel | **la revendication** (in-frame vs personne réelle) | ~ partiellement |
| E | oracle, `Γ`, `μ`, la revendication canonique | le niveau de style et la réalisation de surface | ✔ oui |

Dans les cas B et D, `Fixed` retient le contexte et `Changed` fait varier la revendication ; dans A, C, E c'est l'inverse. Le papier signale honnêtement le problème pour B (« This case is not a single-factor contrast ») mais pas pour D. **Correction :** ajouter une ligne `What the case isolates:` à chaque cas, ou réordonner en A → C → E (contrastes à un facteur, revendication fixe) puis B → D (contrastes où la revendication change), avec une phrase de bascule entre les deux groupes.

### 14.2 — Le cas B semble contredire §2.7

C'est le point de confusion le plus sérieux des cas travaillés. §2.7 pose :
> *Mere silence from a correctly instantiated bounded task oracle instead yields the `UNKNOWN` evidence state; that outcome is not by itself an adequacy failure.*

Et la Figure 1 fait exactement cela : l'extrait est muet → `UNKNOWN`.

Or le cas B écrit :
> *The historical task treats a register with no Verdier entry as exhaustive […] The historical task yields a real-world canonical claim that receives the hallucination label with reason code `CONTRADICTED`.*

Le lecteur qui a retenu §2.7 se demande immédiatement : *pourquoi le silence contredit-il ici et laisse-t-il `UNKNOWN` ailleurs ?* La réponse est dans la demi-proposition « treats … as exhaustive » — l'oracle déclare sa propre complétude, donc l'hypothèse du monde clos est levée explicitement — mais elle n'est jamais commentée. **Correction, une phrase :**
> *Because the register is declared exhaustive for the establishments of the period, its silence entails the negation rather than leaving the claim unknown; a bounded but non-exhaustive oracle would have yielded `UNKNOWN` instead, as in Figure 1.*

### 14.3 — Cinq cas en prose continue, sans vue d'ensemble

Le lecteur ne peut jamais voir les cinq contrastes simultanément. Toute l'information nécessaire existe déjà dans le texte. **Ajouter un tableau récapitulatif** en tête ou en fin de §6 :

| Cas | Champ qui varie | État de preuve | Étiquette prédite | Code de raison |
|---|---|---|---|---|
| A | `O` (document source → évidence externe) | `UNKNOWN` → `ENTAILED` | `H` → `SUP` | `out-of-scope` → — |
| B | cadre discursif (⇒ `O`, `Γ`, revendication) | `CONTRADICTED` / `UNKNOWN` | `H` / `LD` | `contradicted` / — |
| C | `m^*` seul | `UNKNOWN` (fixe) | `H` / `LD` | `marking-failure` / — |
| D | contenu de la revendication dans un `Γ` fixe | `UNKNOWN` (fixe) | `LD` / `H` | — / `out-of-scope` |
| E | réalisation de surface + `σ` | `ENTAILED` (fixe) | `SUP` (stable) | — |

Ce seul tableau ferait, pour les cas travaillés, ce que la Table 1 fait déjà très bien pour le programme de recherche.

### 14.4 — Distinction construit / empirique : **exemplaire**

Le papier est irréprochable sur ce point, et à plusieurs niveaux :
- ouverture de §6 : « They are not sampled model outputs and do not establish empirical superiority, annotation reliability, or empirical coverage » ;
- légende de la Figure 2 : « The precise temple-entrance placement and the incorrect date are constructed test claims » ;
- cas B : « The **constructed** string "Café Verdier existed in 1920s Paris." » ;
- résumé : « Five worked cases show which field must change to move a label » — sans prétention empirique.

**Rien à corriger.** C'est un modèle.


---

## 15. Figures et tableaux

Chaque objet est évalué comme si le lecteur le regardait **avant** le texte environnant.

### Figure 1 (p. 3) — « Same source and claim, different permissions »

| Critère | Verdict |
|---|---|
| 1. Message unique à retenir | ✔ « Même source, même phrase, même état de preuve — deux étiquettes, parce que les tâches n'autorisent pas la même chose. » |
| 2. Compréhensible en < 20 s | ✔ oui, la symétrie gauche/droite fait le travail |
| 3. Tous les termes déjà définis | **✘** `H` et `LD` sont utilisés dans les boîtes **et dans la légende** alors qu'ils ne sont définis qu'à la page suivante ; « requested style-marking level » (barre du bas + légende) n'est défini qu'à la p. 4 |
| 4. Ordre de lecture évident | ✔ oui, flux vertical avec bus de partage |
| 5. Duplique la prose ? | ~ partiellement (le paragraphe p. 4 « Figure 1 holds the response… » la re-décrit intégralement) |
| 6. Réduit la charge cognitive ? | ✔✔ **oui, massivement** |
| 7. Légende autonome | ✔ oui, sauf pour `H`/`LD` |
| 8. Le texte dit pourquoi elle compte | ✔ oui (p. 2 et p. 4) |

**Verdict : c'est la meilleure figure du papier et elle rend la thèse centrale compréhensible sans notation.** Elle satisfait les six critères attendus (tâche, revendication comparable, relation de preuve, ce que ferait la baseline, ce que le cadre vérifie en plus, pourquoi l'étiquette diffère). **Pas de révision majeure.** Quatre corrections mineures :

1. **Définir `H` et `LD` avant la figure**, ou les écrire en toutes lettres dans les boîtes et la légende (elles le sont déjà : « HALLUCINATION (H) », « LICENSED DIVERGENCE (LD) » — il suffit donc de faire de même dans la légende, qui utilise les sigles seuls).
2. **Assumer la différence de style entre les deux prompts.** Les deux tâches diffèrent en réalité de *deux* façons : la permission (`Γ`) **et** la voix demandée (« for a general audience » vs « for children, in a curious and imaginative voice »). La barre du bas affirme pourtant « Only `Γ` changes inside the truth contract », ce qui est exact mais que le lecteur perçoit comme une contradiction. Ajouter une phrase de légende : *The two prompts also request different style-marking levels. That difference is deliberate: it plays no part in either label, which is the point of keeping style outside the contract.*
3. **Le paragraphe de p. 4 qui re-décrit la figure peut être réduit de moitié.** La figure se suffit ; deux phrases suffisent à la commenter.
4. **Rapprocher figure et première référence** — aujourd'hui référencée p. 2, imprimée p. 3.

### Figure 2 (p. 11) — « From one prompt to four claim-label decisions »

| Critère | Verdict |
|---|---|
| 1. Message unique | ~ **deux messages concurrents** : (a) une réponse produit plusieurs revendications avec des étiquettes différentes ; (b) le langage figuré ne crée pas de revendication |
| 2. < 20 s | ✘ **non.** 4 pipelines × 6 rangées + 2 encarts latéraux + bus prompt→contrat = ~30 objets |
| 3. Termes définis | ✔ oui (sauf `σ_p=1`, dont l'échelle n'est pas sur la figure) |
| 4. Ordre de lecture | ✔ oui, les étiquettes de rangée à gauche (« task context », « response spans », « canonical claims », « evidence state », « claim label ») sont une très bonne idée |
| 5. Duplique la prose ? | non |
| 6. Réduit la charge ? | ~ oui pour un lecteur qui a lu §2.1–2.4 ; non pour un lecteur qui la regarde d'abord |
| 7. Légende autonome | ✔ oui, et honnête (mention des revendications construites) |
| 8. Le texte dit pourquoi elle compte | ✔ oui |

**Verdict : à conserver, mais elle porte une charge de plus qu'elle ne devrait.** Recommandations :
- **Retirer l'encart `σ_p=1`** de la ligne « truth contract and style input » : il place une variable hors contrat sur la même rangée que les trois champs du contrat, ce qui contredit visuellement le message du papier. Le déplacer sous la réponse, avec l'encart de vérification d'alignement stylistique déjà présent.
- **Retirer l'encart « No separate historical claim »** (le point sur le langage figuré) et en faire une figure ou un exemple séparé si l'on y tient. C'est un deuxième message.
- Ces deux retraits ramènent la figure à un seul message : *une réponse, un contrat, quatre revendications, trois étiquettes, et c'est l'oracle puis la permission qui font les séparations.*

### Figure 3 (p. 20–21) — « Selected resources by nominal task profile and treatment of requested style-marking level »

| Critère | Verdict |
|---|---|
| 1. Message unique | **✘ le message affiché n'est pas le message du papier** |
| 2. < 20 s | ✘ non — 6 boîtes, 3 bandes horizontales, un « reading guide » de 6 lignes, une légende de 11 lignes |
| 3. Termes définis | ~ « nominal task profile » l'est (§4.2), mais la figure est à ~2 pages de sa définition |
| 4. Ordre de lecture | ✘ non — la disposition **imite un nuage de points** alors que les deux axes sont catégoriels, ce que la figure doit ensuite désamorcer explicitement |
| 5. Duplique la prose ? | oui, partiellement §5.1 |
| 6. Réduit la charge ? | **✘ non — elle l'augmente** |
| 7. Légende autonome | ~ oui, mais elle contient plus de mises en garde que d'information |
| 8. Le texte dit pourquoi elle compte | ~ une phrase, « Figure 3 summarizes this pattern » |

**Verdict : révision majeure requise.** Trois raisons cumulatives :

1. **L'axe vertical porte la variable secondaire.** La thèse est que les trois champs du contrat ne sont jamais rendus visibles séparément. L'axe vertical de la figure porte le traitement du niveau de style demandé — une variable que le papier place explicitement **hors** du contrat.
2. **La figure décline sa propre responsabilité :** « This broader result is established by the coding in Appendix B, **not by the geometry of this figure**. »
3. **La forme trahit le contenu.** Positions, tailles, couleurs et distances n'encodent rien, et il faut six lignes de « reading guide » plus quatre phrases de légende pour le dire. Quand une figure a besoin de dix lignes pour expliquer ce qu'il ne faut *pas* y lire, la forme est mauvaise.

**Remplacement recommandé — une matrice de codage compacte.** Les données existent déjà intégralement dans l'annexe B :

| Profil (n) | `O` spécifié | `Γ` représenté séparément | `μ` noté séparément | Variation stylistique contrôlée |
|---|---|---|---|---|
| Strict grounding (22) | 22/22 | 0/22 | 0/22 | 0/22 |
| Intent evaluation (1) | 1/1 | 0/1 | 0/1 | 0/1 |
| Heterogeneous suites (4) | 4/4 | 0/4 | 0/4 | 0/4 |
| Declared-frame invention (9) | 3/9 | 0/9 | 0/9 | 0/9 |
| Constrained solution search (5) | 5/5 | 0/5 | 0/5 | 0/5 |
| **Total (41)** | **35/41** | **0/41** | **0/41** | **0/41** |

*(Les effectifs sont à recalculer sur le codage réel de l'annexe B ; la colonne `O` est indicative — huit ressources créatives y sont codées `none identifiable`.)*

Une telle table donne le résultat central en un coup d'œil, ne suggère aucune métrique fallacieuse, tient en un quart de page, et rend le « reading guide » inutile. La colonne « variation stylistique contrôlée » y garde sa place, comme quatrième colonne et non comme axe.

### Figure 4 (p. 27–28) — Instantané AA-Omniscience

| Critère | Verdict |
|---|---|
| 1. Message unique | ~ « ni l'échelle ni la récence ne garantissent une meilleure fiabilité factuelle » |
| 2. < 20 s | ✔ oui (deux nuages de points classiques) |
| 3. Termes définis | ✘ « Omniscience Index », « AA-Omniscience hallucination rate » sont définis dans le paragraphe précédent par des formules réutilisées nulle part ailleurs |
| 4–7 | corrects |
| 8. Le texte dit pourquoi elle compte | **✘ pas vraiment** — le lien avec le contrat de vérité n'est jamais établi |

**Verdict : à supprimer** (figure et §8.2 entière). Voir §16 et §23-P0.4. Ce sont deux pages consacrées à une question — *l'échelle résout-elle l'hallucination ?* — que le papier ne pose pas et à laquelle sa thèse ne répond pas. Les graphiques proviennent d'un leaderboard tiers, la méthodologie du grader a changé entre 2025 et 2026 (le papier le dit lui-même), et la sous-section doit consacrer un paragraphe entier à énumérer ce qu'elle n'établit pas.

### Table 1 (p. 23) — « The research agenda in one view »

| Critère | Verdict |
|---|---|
| 1–8 | **✔ sur tous les critères** |

Trois colonnes (*Priority / Open question / What would weaken the position*), sept lignes, lisible en 20 secondes, autonome, non redondante avec la prose qui suit. **C'est le meilleur objet visuel du manuscrit après la Figure 1.** Le format `question ouverte + condition de falsification` devrait servir de modèle aux deux tableaux recommandés plus haut (§6 et §5).

### Tables B.1–B.3 (annexe, p. 35–37) — Codage des ressources

Bien construites : vocabulaire fermé défini **avant** les tableaux, colonnes stables, ligne de profil en tête de bloc. Deux réserves : (i) la colonne « `Γ` / `μ` » fusionne deux champs du contrat dans une seule cellule alors que le papier insiste sur leur séparation — les séparer en deux colonnes ; (ii) la colonne « Requested style-marking treatment » a la même largeur que la colonne oracle alors qu'elle contient trois valeurs dont une revient 39 fois sur 41.

---

## 16. Portée et frontières

**Le manuscrit est excellent sur ce point — au point d'en faire trop.**

| Le cadre couvre-t-il… | Le lecteur peut-il le déterminer ? | Où |
|---|---|---|
| claim extraction | ✔ non, et c'est dit | §2.3 (extraction = méthodes existantes) |
| claim recovery | ✔ oui, c'est dans le cadre — mais non résolu | §2.3, §2.7 |
| claim verification | ✔ oui, mais l'oracle est idéalisé | §2.2, §2.3 |
| validité logique globale | ✔ non | dit 6 fois |
| cohérence inter-revendications | ✔ non | dit 6 fois |
| complétude | ✔ non | dit 5 fois |
| pertinence | ✔ non | dit 5 fois |
| utilité | ✔ non | §2.2, §2.6, §3.5 |
| sécurité | ✔ non, et les contraintes de sécurité bornent `Γ` de l'extérieur | §2.2, §3.4, §8.4-5 |
| qualité globale de la réponse | ✔ non | §2.6, §3.5, §8.3 |

La phrase clé demandée par le brief est présente **et bien formulée** :
> *A response may contain only supported and licensed-divergence claims yet combine them through an invalid inference, contradict itself, omit a necessary step, or remain irrelevant to the task.* (§7, Priorité 4)

Et la distinction niveau-revendication / niveau-réponse est explicite en §2.6, §3.6, §8.3 et §8.4.

**Aucun passage ne fait paraître le cadre plus large qu'il n'est.** Je n'ai trouvé aucune sur-extension.

**Le problème est inverse : le bornage est sur-dit.** Chiffres :
- « global logical validity, cross-claim coherence » : **6 occurrences** (§1, §2.6, §7, §8.3 ×2, §8.4, Annexe A)
- variantes de « X ne change jamais une étiquette » : **8 occurrences**
- trois traitements complets et séparés de la même frontière : §3.6 (sous-section entière, 1,5 p.), §8.3 (sous-section entière, 2 p.), §8.4-1 (première limitation)

Effet sur le lecteur : le papier prend un ton défensif, et la répétition finit par suggérer que les auteurs eux-mêmes doutent que la frontière tienne. **Recommandation : une seule formulation canonique de la portée, en §2.4 juste après la règle, et des renvois ailleurs.** §3.6 mérite d'être conservée en entier (elle apporte de la littérature, pas de la répétition) ; §8.3 peut être réduite de moitié ; §8.4-1 peut devenir un renvoi d'une ligne.


---

## 17. Lisibilité du programme de recherche

**C'est la section la mieux construite du manuscrit.** Le gabarit `Research problem / Why it matters / Study and measures / Falsification criterion` répond aux quatre questions attendues, systématiquement, pour les sept priorités.

| Priorité | 1. Problème non résolu | 2. Pourquoi cela compte pour le cadre | 3. Étude proposée | 4. Ce qui affaiblirait la position |
|---|---|---|---|---|
| 1. Annotation du contrat | ✔ | ✔ | ✔ codebook, pilote, accord par champ, coût | ✔ « persistent disagreement or disproportionate cost » |
| 2. Benchmark factoriel | ✔ | ✔ | ✔ plan factoriel, or indépendant, seuils préenregistrés | ✔ **la plus forte du lot** : une baseline combinée qui égale le cadre |
| 3. Recovery robuste au style | ✔ | ✔ | ✔ variantes appariées, précision par étage | ✔ « no consequential diagnostic gain » |
| 4. Verdict niveau réponse | ✔ | ✔ | ✔ | ✔ « the claim trace alone predicting … response-level correctness » |
| 5. Atténuation | ✔ | ✔ | ✔ cinq résultats distincts, comparaisons de Pareto | ✔✔ « A method that improves only by suppressing permitted divergence » |
| 6. Généralisation | ✔ | ✔ | ~ la moins concrète du lot | ✔ |
| 7. Temporel et agentique | ✔ | ✔ | ✔ | ✔ |

**Aucune priorité ne se lit comme un vœu générique de « future work ».** Chacune découle d'une limitation identifiée plus tôt, et §8.4 établit explicitement la correspondance limitation → priorité (« Priority 1 turns this into an annotation question », « (Priority 3) », etc.). C'est un dispositif rare et efficace.

### Couverture des thèmes demandés

| Thème | Couvert ? | Où |
|---|---|---|
| fiabilité d'annotation | ✔✔ | P1 |
| spécification de l'oracle | ✔✔ | P1 |
| annotation de la permission scope | ✔ | P1, P2 |
| robustesse de la claim recovery | ✔✔ | P3 |
| robustesse au style | ✔✔ | P2, P3 |
| agrégation au niveau réponse | ✔✔ | P4 |
| raisonnement et complétude | ✔ | P4 |
| atténuation sans suppression de la divergence licite | ✔✔ | P5 |
| systèmes agentiques / à outils | ✔ | P7 |

Couverture complète. Rien à ajouter.

### Trois réserves de forme

1. **Priorité 6 est nettement plus faible que les six autres.** « The annotation and contrast protocols should therefore be tested in high-stakes factual domains, education, journalism, scientific communication, brainstorming, and fiction » est une liste de domaines sans mesure associée, alors que P1–P5 nomment toutes des mesures précises. Soit lui donner une mesure (par ex. : accord inter-annotateurs par langue sur `μ`, puisque les conventions de couverture épistémique varient), soit la fusionner dans P1 comme extension.
2. **Le balisage LaTeX est inutilement lourd.** Chaque item utilise `\par\nobreak \noindent\textbf{…}\par \noindent … \par\smallskip` — soit quatre commandes par étiquette, quatre fois par priorité, sept fois. Une `description` ou une macro dédiée donnerait le même rendu avec un source lisible et un espacement garanti homogène.
3. **Le paragraphe transversal sur la baseline** (« Across Priorities 1–7, studies should compare contract-aware evaluation with a combined factuality and instruction-following baseline ») est le passage le plus important de la section — c'est lui qui rend la position falsifiable — et il est placé après la Table 1, en corps de texte, sans mise en évidence. **Le remonter avant la table, ou en faire une note de bas de table.**

---

## 18. Anglais académique — niveau phrase

Je ne relève que les phrases qui ralentissent matériellement la compréhension.

### 18.1 — Le non-sequitur de l'introduction (priorité maximale)

**Original :**
> *Evaluation therefore requires two distinct levels: an evidence state relative to an adjudication standard, followed by a task-conditioned claim label.*

**Problème :** « therefore » ne suit de rien ; deux termes non canoniques (`adjudication standard`, `task-conditioned claim label`) précèdent leurs équivalents canoniques ; la conclusion du papier est annoncée avant sa motivation.

**Version plus simple** (à placer **après** le paragraphe sur la fiction et l'assistant clinique) :
> *These tasks make a distinction that current evaluation does not draw. Whether the available information settles a claim is one question. Whether the task allowed the response to make that claim is another. We argue that a hallucination judgment needs both, and that current protocols answer only the first.*

### 18.2 — La liste négative de §2.5

**Original :**
> *This result remains separate from the task oracle, permission scope, claim labels, named-style identity, source faithfulness, creativity, factuality, and model alignment in the reinforcement-learning-from-human-feedback sense.*

**Problème :** huit termes dans une liste de séparations. Le lecteur apprend uniquement ce que la chose *n'est pas*, et la phrase se termine par une incise de dix mots.

**Version plus simple :**
> *Style-marking alignment reports one thing only: whether the response realized the style the task requested. It is not a claim label, not a creativity score, and not model alignment in the RLHF sense.*

### 18.3 — La règle de composition ordonnée de §2.6

**Original :**
> *The default composition rule is ordered. A response is `contract-violating` whenever at least one reliably adjudicated claim receives `H`. Otherwise, it is `indeterminate` when claim-recovery coverage falls below a predeclared threshold or a blocking truth-contract-specification, task-oracle, or adjudication failure prevents a reliable verdict. Otherwise, it is `contract-compliant` when every adjudicated claim receives `SUP` or `LD`.*

**Problème :** deux « Otherwise » enchaînés, une condition centrale de 34 mots avec une énumération imbriquée. Il faut relire pour reconstituer l'ordre.

**Version plus simple** (liste numérotée) :
> *The default rule applies three tests in order.
> 1. If any reliably adjudicated claim receives `H`, the response is `contract-violating`.
> 2. Otherwise, if claim recovery covered too little of the response, or a blocking procedural failure occurred, the response is `indeterminate`.
> 3. Otherwise, every adjudicated claim received `SUP` or `LD`, and the response is `contract-compliant`.*

### 18.4 — La phrase sur la sévérité en §8.3 (52 mots)

**Original :**
> *Severity may order violations for triage or mitigation, but a policy that let severity determine whether a violation occurred would make the label depend on the evaluator's estimate of harm rather than on the contract, and two evaluators with different risk models would then disagree about a fact of the matter.*

**Version plus simple :**
> *Severity may order violations for triage or mitigation. It must not decide whether a violation occurred. If it did, the label would depend on the evaluator's estimate of harm rather than on the contract, and two evaluators with different risk models would disagree about a matter of fact.*

### 18.5 — La phrase de clôture du résumé (50 mots, avec subjonctif inversé)

**Original :**
> *Five worked cases show which field must change to move a label, and the position is falsifiable: were a combined factuality and instruction-following baseline to match contract-aware annotation on claim-label agreement, reason-code accuracy, and error localization, the truth contract would add explicitness without adding discriminative power.*

**Problème :** l'inversion subjonctive (`were … to match`) est coûteuse pour un lecteur non anglophone, et la phrase porte deux idées.

**Version plus simple :**
> *Five worked cases show which field must change to move a label. The position is falsifiable: if a combined factuality and instruction-following baseline matched contract-aware annotation on claim-label agreement, reason-code accuracy, and error localization, the truth contract would add explicitness without adding discriminative power.*

### 18.6 — Le paragraphe d'ouverture de §3 (39 mots, quatre propositions)

**Original :**
> *Factuality and source-faithfulness evaluation define relations between claims and their sources; claim-level evaluation supplies a unit of analysis; instruction-following evaluation represents broader task constraints; and creativity research supplies separate criteria for novelty, usefulness, and response quality.*

**Version plus simple :**
> *Each neighboring tradition supplies one component of the decision. Factuality and source-faithfulness evaluation define relations between claims and sources. Claim-level evaluation supplies the unit. Instruction-following evaluation represents task constraints. Creativity research supplies separate criteria for novelty, usefulness, and quality.*

### 18.7 — Passif inutile en §2.2

**Original :**
> *Accordingly, the contract is indexed by the complete task context rather than the literal prompt alone.*

**Version plus simple :**
> *The contract therefore depends on the complete task context, not on the literal prompt alone.*

### 18.8 — Nominalisation lourde en §2.3

**Original :**
> *Evaluation should therefore assess both under-decomposition and over-decomposition against an independently adjudicated claim set.*

**Problème :** deux termes en `-decomposition` dont un (`under-decomposition`) n'a jamais été nommé auparavant — il apparaissait sous les noms `merge distinct commitments` et `atomicity errors`.

**Version plus simple :**
> *A recovery procedure can therefore fail in two directions: it can merge commitments that should have been separated, or split one commitment into several. Both should be measured against an independently adjudicated claim set.*

### Observations générales sur la langue

- **Voix active :** bien dominante. Le manuscrit dit « the evaluator records », « we reserve », « we purposively selected » plutôt que des passifs. Bon.
- **Sujets explicites :** presque toujours présents. Peu de « this » orphelins.
- **Vocabulaire :** sobre, pas de sophistication gratuite. Bon.
- **Longueur de phrase :** médiane raisonnable ; le problème est concentré sur une quinzaine de phrases de 40–55 mots, presque toutes dans §2.5, §2.6, §8.3 et l'annexe A — c'est-à-dire dans les passages qui portent les sorties secondaires, pas la règle centrale. C'est cohérent avec le diagnostic général : **le noyau de l'argument est bien écrit ; ce sont les couches périphériques qui alourdissent.**
- **Référence pronominale ambiguë :** un cas récurrent, l'usage de « it » pour désigner tantôt l'évaluateur, tantôt le cadre, tantôt la ressource, notamment en §2.1 (« It then canonicalizes each claim », où « It » = the evaluator, après une phrase dont le sujet était « The evaluator » — acceptable — mais aussi en §5.1 et §4.2 où l'antécédent est plus lointain).


---

## 19. Revue au niveau paragraphe

Schéma attendu : **phrase-thème → explication/preuve → conséquence/transition**.

Bilan : la majorité des paragraphes respectent ce schéma. §3 en particulier est exemplaire (chaque sous-section ouvre sur une phrase-thème qui relie au cadre). Six paragraphes posent problème.

### 19.1 — §2.4, paragraphe « Severity » (2 phrases, orphelin)

> *Severity measures the potential consequence of a hallucination-labeled claim after labeling. It does not determine the claim label.*

**Problème :** paragraphe de deux phrases inséré entre la discussion des codes de raison et celle des méta-revendications. Il n'a ni lien avec ce qui précède ni avec ce qui suit, et la notion réapparaît deux fois plus loin (§2.6, §8.3) sans que ce paragraphe soit rappelé.
**Correction :** le supprimer de §2.4 et l'intégrer au traitement complet de la sévérité en §8.3, qui est déjà bon.

### 19.2 — §2.4, phrase-pointeur isolée

> *What an evaluation should publish once the labels are assigned is stated in Section 2.6.*

**Problème :** un paragraphe d'une phrase qui ne fait qu'un renvoi. Il coupe le fil entre le paragraphe sur les méta-revendications et l'introduction de la Figure 2.
**Correction :** l'attacher en fin du paragraphe précédent, ou la supprimer (le renvoi existe déjà en §2.1).

### 19.3 — §2.5, dernier paragraphe (trois idées non reliées)

> *Requested style-marking level is available as contextual input during claim recovery, and its effect is tested rather than assumed. Every recovered claim must remain warranted by linguistic evidence in the produced response, and the observed level records the marking actually produced. Existing evaluators use claim decomposition, natural-language inference, or semantic similarity […], while model-based judges […] can prioritize style over factuality and safety […]. LLM judges of creativity likewise apply a narrower […] subset of the standards human raters use […]. Whether figurative realization changes which factual claims an evaluator recovers is therefore a testable hypothesis, not an established result.*

**Problème :** trois idées distinctes — (a) le niveau demandé est une entrée, pas une autorisation ; (b) état de l'art sur les évaluateurs et les juges LLM ; (c) l'hypothèse testable. Le « therefore » de la dernière phrase ne suit pas des citations qui précèdent.
**Correction — couper en deux, exactement ici :** garder (a) comme paragraphe court ; ouvrir un nouveau paragraphe à « Existing evaluators use… » et le conclure sur (c), en remplaçant « therefore » par une phrase-thème d'ouverture : *Whether these pipelines are sensitive to figurative realization is not known.*

### 19.4 — §2.2, paragraphe « Task oracle » (détails avant le point)

Le paragraphe s'ouvre sur la définition (bien), puis enchaîne sur la liste des types admissibles, puis sur trois exemples, puis sur une remarque sur l'hétérogénéité des surveys, puis conclut sur la nécessité d'une spécification concrète. La conclusion — qui est le point — arrive en cinquième position.
**Correction :** remonter « Reproducible evaluation therefore requires a concrete task-oracle specification or an explicit adjudication procedure » en deuxième position, juste après la définition.

### 19.5 — §2.7, paragraphe « Failures of the truth contract or task oracle » (densité excessive)

Quatre types de défaillance nommés en un seul paragraphe — `truth-contract specification failure`, `task-oracle specification failure`, `task-oracle adequacy failure`, `adjudication failure` — plus une clause de non-confusion (le silence ≠ inadéquation), plus la règle `indeterminate`, plus deux citations. Sept objets dans un paragraphe.
**Correction :** une `description` à quatre entrées, avec la clause « mere silence » sortie en remarque distincte. Le contenu est bon ; c'est la mise en forme qui le rend illisible.

### 19.6 — §5.1, paragraphe « Strict grounding resources » (détails avant le point)

> *Among the twenty-two resources assigned to the strict grounding profile in our coding, a task oracle is generally specified, requested style-marking level is not separately controlled, permission scope is coded as inferred empty, and required status marking is not separately scored.*

**Problème :** une phrase de 43 mots qui énumère quatre codages sans dire lequel importe. Le fait saillant — **22 ressources sur 22 laissent la permission scope implicite** — est en troisième position d'une liste plate.
**Correction :**
> *Twenty-two resources fall under the strict grounding profile. Every one of them specifies a task oracle. None of them represents a permission scope: our coding records it as inferred empty in all twenty-two cases, which is exactly the implicit contract this paper argues should be made explicit. None scores required status marking separately, and none controls requested style-marking level.*

### Paragraphes qui mélangent travaux antérieurs et contribution sans signalement

Je n'en ai trouvé **aucun**. Le manuscrit signale systématiquement la frontière (« In the framework developed below… », « our rule instead varies… », « These sources motivate contextualized claims and canonicalization; they do not validate the proposed categories of required status marking »). C'est un point fort réel.

---

## 20. Redondance et charge cognitive

### Répétitions utiles (à conserver)

- La thèse « le contrat change l'étiquette, pas la vérité » : résumé, §1, §2.4, §8.1, §9. **Cinq fois, mais c'est la thèse.** À conserver.
- La paire clinique de §2.2 reprise en cas C : renforcement légitime, à condition de le signaler.
- Le rappel du bornage de l'échantillon (purposive) dans le résumé, §4.1, la légende de la Fig. 3 et §8.4 : **prudence légitime**, ne pas réduire.

### Répétitions inutiles (à supprimer)

| Entre | Ce qui est répété | Occurrences | Recommandation |
|---|---|---|---|
| **Résumé ↔ Introduction** | l'exemple du cartel ; la procédure en deux temps ; les trois champs | 2× chacun | Acceptable — mais l'introduction pourrait *réutiliser* l'exemple du résumé au lieu de le paraphraser |
| **Introduction ↔ Framework** | la portée (« does not verify global logical validity… ») | §1 p. 4, §2.6, §2.3 | Garder **une seule** formulation canonique |
| **Introduction ↔ §2.5** | la définition du style marking | p. 4 et p. 10, quasi mot pour mot (« Style marking is a matter of degree, not the identity of a named style, and it is not by itself evidence of factual error. » / « Style marking is a matter of degree; it is not the identity of a named style, and it is not evidence of factual error. ») | **Doublon quasi littéral.** Supprimer l'occurrence de l'introduction |
| **Related Work ↔ Mapping** | rien de significatif | — | ✔ |
| **§2.2 ↔ Cas C** | la paire Lyme, mot pour mot | 2× | Conserver mais signaler explicitement |
| **Fig. 2 ↔ Cas E** | la revendication « decree in three scripts » | 2× | Idem |
| **§3.6 ↔ §8.3 ↔ §8.4-1** | validité logique / cohérence / complétude / pertinence hors périmètre | 3 traitements complets | **Garder §3.6 en entier ; réduire §8.3 de moitié ; §8.4-1 → un renvoi** |
| **§2.6 ↔ Annexe A** | la règle de composition ordonnée à trois valeurs | 2× **quasi mot pour mot** | **Redondance nette.** Garder la version §2.6 et faire de l'Annexe A un simple complément (catégorie finale unique + test de variation stylistique) |
| **§7 ↔ §8.4** | les sept limitations renvoient aux sept priorités | 2× | Acceptable — le mapping limitation → priorité est utile |
| **§8.3 ↔ §9** | ce que `contract-compliant` ne garantit pas | 2× | Réduire dans la conclusion |
| **Partout** | « X ne change jamais une étiquette » | **8×** | **Une fois en §2.4, renvois ailleurs** |

**Estimation du gain :** entre 2,5 et 3,5 pages sur 30 (hors annexes), sans retirer une seule idée.

### Sections trop denses en concepts nouveaux

- **§2.5 → §2.7 (p. 10–14).** En quatre pages, le lecteur reçoit : les trois niveaux de marquage stylistique, l'indice `σ_p`, la distinction demandé/observé, l'alignement stylistique à 3 valeurs, la couverture de claim recovery, le verdict de contenu à 3 valeurs avec règle ordonnée, le succès créatif à 4 valeurs, la sévérité, l'utilité, et quatre types de défaillance procédurale — **environ quinze nouveaux vocabulaires catégoriels, tous après que la règle centrale a été close en §2.4.** C'est le pic de charge du manuscrit.
- **§2.2 (p. 6–8)** est en revanche exemplairement dosée : trois champs, un exemple concret par champ, une paire minimale pour deux d'entre eux.

---

## 21. Journal de confusion du nouveau lecteur

Annotations que j'écrirais en marge, dans l'ordre de lecture.

| Page / §  | Annotation en marge | Nature |
|---|---|---|
| p. 2, §1 ¶2 | « **Pourquoi "therefore" ?** Rien de ce qui précède n'implique deux niveaux. » | non-sequitur |
| p. 2, §1 ¶2 | « "adjudication standard" — **est-ce le task oracle du résumé ?** » | terme non canonique avant le terme canonique |
| p. 2, §1 ¶3 | « "**this** museum-label example" — **quel exemple ?** Il n'a pas été donné ici. » | référence pendante |
| p. 2, « Our position » | « Neuf notions nouvelles en une page. **Ai-je besoin de "evaluator" et de "reason code" maintenant ?** » | densité prématurée |
| p. 3, Fig. 1 | « `H` et `LD` — **définis où ?** » (réponse : page suivante) | concept avant usage |
| p. 3, Fig. 1 | « Les deux prompts diffèrent **aussi par la voix demandée**, mais la barre dit "Only Γ changes". **Contradiction ?** » | friction visuelle |
| p. 3, Fig. 1 | « "requested style-marking level" — **jamais défini.** » | concept avant usage |
| p. 4 | « "claim-recovery coverage", "procedural failures" — **définis plus tard ?** » (oui, p. 12 et p. 13) | renvoi long |
| p. 4, « A secondary problem » | « **Pourquoi une page entière sur le style dans l'introduction**, si c'est secondaire et hors contrat ? » | proportion |
| p. 5, §2.1 | « L'exemple complet aboutit à deux `SUP`. **Où est la branche qui fait l'intérêt du papier ?** » | exemple mal choisi |
| p. 5, §2.1 | « "selects a response span" — **comment ?** » | concept jamais défini |
| p. 7, §2.2 `Γ` | « "with low usefulness" — **utilité définie où ?** » (p. 12) | concept avant usage |
| p. 7, §2.2 `μ` | « Un marquage au niveau tâche vaut-il pour **toutes** les revendications à la fois ? » | ambiguïté d'échelle |
| p. 9, §2.4 | « `SUP` = "supported". Mais dans FEVER, `SUPPORTED` est un **état de preuve**. **Est-ce la même chose ?** » | collision terminologique |
| p. 9, §2.4 | « "unknown means only that the task oracle neither entails nor contradicts" — **utile, mais pourquoi seulement maintenant ?** » | clarification tardive |
| p. 9, §2.4 | « Précédence des trois codes : `otherwise if… otherwise if…` — **relire** » | forme |
| p. 10, §2.4 | « Paragraphe "Severity", deux phrases. **Pourquoi ici ?** » | paragraphe orphelin |
| p. 10, §2.5 | « `σ_p ∈ {0,1,2}` — **ai-je besoin d'un indice numérique** pour trois noms ? » | formalisme décoratif |
| p. 11, Fig. 2 | « **Trente objets.** Quel est le message ? » | surcharge |
| p. 11, Fig. 2 | « `σ_p=1` est sur la **même rangée** que les champs du contrat, alors que le texte dit qu'il est dehors. » | contradiction visuelle |
| p. 12, §2.6 | « Trois "Otherwise" — **relire pour reconstituer l'ordre** » | forme |
| p. 12, §2.6 | « "creative-task success" : quatre valeurs, **aucune grille.** À quoi ressemble un `PASS` ? » | notion sous-spécifiée |
| p. 12, §2.6 | « "structured response-level content verdict" — **est-ce le tout ou la partie ?** » | dénomination instable |
| p. 13, §2.7 | « **Quatre types de défaillance** en un paragraphe. » | densité |
| p. 14, §3 ¶1 | « Quatre paradigmes en une phrase de 39 mots. » | forme |
| p. 15, §3.4 | « **Excellent.** C'est l'objection que j'avais en tête et elle est traitée. » | (positif) |
| p. 17, §3.6 | « **Excellent.** Je sais maintenant ce que le cadre ne fait pas. » | (positif) |
| p. 18, §4 | « **Pourquoi une cartographie maintenant ?** » | transition absente |
| p. 19, §5 | « **Encore une section sans ouverture.** » | transition absente |
| p. 19, §5.1 | « 43 mots, quatre codages. **Lequel est le résultat ?** » | point enfoui |
| p. 20, Fig. 3 | « Un nuage de points **dont les axes n'encodent rien.** » | forme trompeuse |
| p. 21, Fig. 3 légende | « "**not by the geometry of this figure**" — alors **pourquoi cette figure ?** » | figure qui se désavoue |
| p. 22, Cas B | « "Café Verdier" — **troisième univers d'exemple**, non annoncé. » | fil rouge rompu |
| p. 22, Cas B | « Le silence donne `CONTRADICTED` ici, mais `UNKNOWN` en Fig. 1. **Pourquoi ?** » | **contradiction apparente avec §2.7** |
| p. 22, Cas D | « `Fixed` retient le contexte, `Changed` fait bouger la revendication — **l'inverse des cas A/C/E.** » | gabarit instable |
| p. 23, Table 1 | « **Excellent.** Tout le programme en un coup d'œil. » | (positif) |
| p. 27, §8.2 | « **Pourquoi cette section est-elle là ?** Le papier ne demande pas si l'échelle résout l'hallucination. » | digression |
| p. 27, §8.2 | « "Omniscience Index" `100(c−i)/N` — et `p` désigne ici **"partial answers"**, alors que `p` est le contexte de tâche depuis 25 pages. » | collision de symboles |
| p. 28, Fig. 4 | « **Est-ce un résultat ou un emprunt ?** » (réponse : emprunt à un leaderboard tiers) | statut probant |
| p. 28, §8.3 | « **Déjà lu** en §2.6 et §3.6. » | redondance |
| p. 30, §8.4 | « Sept limitations, dont trois déjà énoncées trois fois. » | redondance |


---

## 22. Contrôle de régression

Vérification des régressions typiques après plusieurs cycles de simplification.

| Régression potentielle | Statut |
|---|---|
| Formalisme réintroduit sans nécessité | ⚠️ **partiel** — voir R1 |
| Style replié dans le contrat de vérité | ✔ **non** — la séparation est tenue partout |
| Utilité confondue avec divergence licite | ✔ **non** — §2.2 et §3.5 sont nets |
| État de preuve et étiquette fusionnés | ✔ **non** — les deux vocabulaires sont réservés explicitement en §2.4 |
| Défaillances procédurales traitées comme des étiquettes | ✔ **non** — §2.7 est explicite : « It is recorded in place of a claim label, and the affected span is left unlabeled » |
| Cartographie présentée comme représentative | ✔ **non** — bornage exemplaire, sauf un mot dans le résumé (R3) |
| Exemples construits présentés comme empiriques | ✔ **non** — signalé quatre fois |
| Affirmations plus fortes que leurs preuves | ⚠️ **un cas** — R3 |
| Synonymes réintroduits | ⚠️ **oui** — R2 |
| Portée élargie de la revendication à la réponse complète | ✔ **non** — au contraire, sur-bornée |
| Analyse stylistique secondaire devenue aussi proéminente que l'argument central | 🔴 **OUI** — R4 |

### R1 — **RÉGRESSION** : formalisme décoratif réintroduit

L'indice `p` sur `O`, `Γ` et `μ` apparaît ~100 fois alors que §2.2 annonce explicitement « We drop the subscript `p` when the task context is clear » et ne le fait jamais. S'y ajoutent le triplet `TC(p)` (4 usages, jamais manipulé), la paire `c^*=(q^*,m^*)` (5 usages, jamais manipulée) et l'indice `σ_p∈{0,1,2}` pour une échelle que le papier reconnaît non validée.

**Pourquoi c'est un problème de lisibilité :** un papier de position doit convaincre par la clarté de sa distinction, pas par l'apparence de formalité. Ici, quatre objets notationnels ne portent aucun travail et coûtent au lecteur une charge visuelle constante — d'autant que le papier affirme lui-même vouloir s'en passer.

### R2 — **RÉGRESSION** : synonymes réintroduits pour un même concept

Huit dénominations pour le résultat au niveau réponse (§5 de cette revue) ; cinq formes pour les erreurs de décomposition ; deux noms pour l'oracle (`task oracle` / `adjudication standard`), le second apparaissant en premier.

**Pourquoi c'est un problème :** le papier fait un travail terminologique remarquable sur les concepts qu'il *défend* (oracle, états de preuve, étiquettes) et le relâche exactement sur les concepts *périphériques*. Le lecteur en déduit implicitement — à tort — que ces derniers sont moins bien définis.

### R3 — **RÉGRESSION mineure** : une affirmation du résumé plus forte que sa preuve

> *Across forty-one evaluation resources **we surveyed**…*

« surveyed » suggère une revue systématique ; le corps dit partout « purposive », « not representative », « does not estimate prevalence ». L'atténuation vient deux phrases plus loin, mais l'affirmation initiale a déjà été lue. C'est **le seul endroit** du manuscrit où le bornage n'est pas tenu, ce qui rend la correction d'autant plus facile (`we selected`).

### R4 — **RÉGRESSION** : l'analyse stylistique secondaire est devenue aussi proéminente que l'argument central

C'est la régression la plus lourde. Mesures :

- **§1 (Introduction) :** un paragraphe pleine page (« A secondary problem: claim recovery under marked style ») consacré à une variable hors contrat, sur cinq paragraphes de cadrage.
- **§2 (Framework) :** §2.5 est une sous-section entière (2 pages) sur le style, plus longue que §2.2 qui définit les **trois champs du contrat**.
- **§5 (Mapping Results) :** 19 occurrences du champ lexical « style » sur ~900 mots (~2 %), et surtout **l'axe vertical de la Figure 3 est le traitement du style**, alors que le résultat central concerne les trois champs du contrat. La légende de la figure doit alors préciser que le résultat central est établi ailleurs.
- **§7 (Research Agenda) :** le style figure dans les priorités 2, 3 et 6 ; il a sa propre priorité (3).
- **Annexe A :** le « claim-preserving style variation test » occupe la moitié de l'annexe.

**Pourquoi c'est un problème de compréhension, pas seulement de proportion :** le papier affirme que le style est *hors du contrat* et *ne change jamais une étiquette*. Or il lui consacre une part de son espace comparable à celle du contrat lui-même. Un lecteur qui juge l'importance à la place occupée — c'est-à-dire tout lecteur — en conclut que le style fait partie de la thèse. Le manuscrit passe ensuite huit fois à corriger cette impression, ce qui coûte encore de la place. **Le remède n'est pas d'ajouter des dénégations, c'est de réduire la place.**

Correction recommandée, par ordre de rendement :
1. Refonder la Figure 3 sur les trois champs du contrat (§15) — c'est le geste décisif.
2. Réécrire §5.1 autour de `O`, `Γ`, `μ`, avec le style en quatrième position (§13).
3. Réduire « A secondary problem » dans l'introduction à deux phrases.
4. Réduire §2.5 : garder la définition, les trois niveaux et la règle d'alignement ; déplacer l'indice `σ`, la discussion des juges LLM et la sensibilité de la recovery vers §7-P3 ou l'Annexe A.

---

## 23. Corrections prioritaires

### P0 — À corriger avant soumission

| # | Emplacement | Problème | Correction concrète | Bénéfice lecteur |
|---|---|---|---|---|
| **P0.1** | Figure 3 + §5.1 (p. 19–21) | La figure porte la variable secondaire sur son axe vertical et déclare en légende ne pas établir le résultat central. §5.1 rapporte majoritairement le style. | Remplacer la Figure 3 par la matrice de codage `profil × {O, Γ, μ, variation stylistique contrôlée}` proposée en §15 ; réécrire §5.1 en trois paragraphes `O` / `Γ` / `μ`, style en quatrième. | Le résultat empirique central devient lisible en 20 secondes au lieu d'exiger un aller-retour vers l'annexe B. |
| **P0.2** | §1, ¶2 (p. 2) | Non-sequitur : la thèse est annoncée avant sa motivation, avec deux termes non canoniques. | Déplacer ce paragraphe **après** les paragraphes sur la fiction et l'assistant clinique, et le réécrire selon §18.1. | Le lecteur reçoit le contraste motivant avant la conclusion ; il rencontre `task oracle` et `claim label` comme premiers termes. |
| **P0.3** | Cas B, §6 (p. 22) | Le silence de l'oracle produit `CONTRADICTED` ici et `UNKNOWN` en Figure 1 et §2.7 ; le lecteur y voit une contradiction. | Ajouter la phrase proposée en §14.2 sur le registre déclaré exhaustif. | Supprime la seule apparente incohérence interne du cadre. |
| **P0.4** | §8.2 + Figure 4 (p. 27–28) | Deux pages et une figure sur une question que le papier ne pose pas ; vocabulaire jetable (`Omniscience Index`), collision de symbole sur `p`, source tierce dont la méthodologie a changé. | Supprimer §8.2 et la Figure 4. Conserver au plus deux phrases en §8.1 : *scale and recency are not sufficient proxies for factual reliability*, avec la citation. | Retire le plus gros bloc hors-sujet du manuscrit et referme la brèche « est-ce un résultat ou un emprunt ? ». |
| **P0.5** | Partout (§2.6, §8.3, Annexe A) | 8 dénominations pour le résultat au niveau réponse, dont trois ambiguës entre le tout et la partie. | Fixer **`response-level record`** (le tout, trois composantes) et **`content verdict`** (la composante de contenu) ; passer tout le manuscrit à ces deux termes. | Supprime la principale ambiguïté terminologique restante. |
| **P0.6** | §2.4 (p. 9) | `SUP` = « supported » entre en collision avec `SUPPORTED` de FEVER, qui est un **état de preuve** — et FEVER est cité et codé dans le papier. | Ajouter la note explicite proposée en §4-C.1, ou renommer l'étiquette. | Neutralise le contresens le plus probable pour un lecteur CL. |
| **P0.7** | §1 (p. 4) | Le paragraphe « A secondary problem » occupe une page entière de l'introduction pour une variable hors contrat. | Le réduire à deux phrases : le style peut perturber la *recovery*, c'est une hypothèse testable, §2.5 et l'Annexe A la formalisent. | Recentre l'introduction sur la thèse ; libère de la place pour remonter « Contributions ». |
| **P0.8** | Entre §3 et §4, et entre §4 et §5 (p. 18, 19) | Deux sections consécutives sans aucun paragraphe d'ouverture ; le lecteur ne sait pas pourquoi la cartographie arrive. | Fusionner §4 et §5 en une section « Resource Mapping » et lui donner le paragraphe d'ouverture proposé en §11. | Rétablit la continuité au seul endroit du papier où elle est rompue. |

### P1 — Vivement recommandé

| # | Emplacement | Problème | Correction | Bénéfice |
|---|---|---|---|---|
| **P1.1** | §2.1 (p. 5) | Le premier parcours complet de la procédure aboutit à deux `SUP` : la branche qui fait l'intérêt du papier n'est jamais exercée. | Utiliser le span de reconstruction (`UNKNOWN` → `LD`), déjà celui de la Figure 1. | Le lecteur voit la procédure faire son travail dès la première démonstration. |
| **P1.2** | §6 (p. 21–23) | Cinq cas en prose, jamais visibles simultanément. | Ajouter le tableau récapitulatif proposé en §14.3. | Les cinq contrastes deviennent comparables d'un coup d'œil. |
| **P1.3** | §2.6–§2.7 (p. 12–14) | Pic de charge : ~15 vocabulaires catégoriels après la clôture de la règle. | Déplacer §2.6 et §2.7 après §6, ou en annexe, avec un renvoi d'une phrase en §2.4. | Le lecteur atteint §3 avec la règle en tête, pas avec quinze catégories secondaires. |
| **P1.4** | Partout | Indice `p`, triplet `TC(p)`, paire `c^*`, indice `σ_p` : formalisme non manipulé. | Supprimer l'indice `p` hors Figure 1 ; réserver `TC(p)` à la Figure 1 ; supprimer la paire `c^*` ; utiliser les noms des trois niveaux de style et réserver `σ` à l'Annexe A. | Allège chaque page sans toucher un seul argument. |
| **P1.5** | §5 / §4.1 | Ni procédure de recherche, ni critères d'inclusion, ni nombre de codeurs. | Deux phrases : comment les 41 ressources ont été identifiées, et par combien de codeurs. | Ferme la brèche méthodologique la plus attaquable. |
| **P1.6** | Résumé | « forty-one evaluation resources we **surveyed** » | → « we **purposively selected** » | Aligne le résumé sur le bornage du corps. |
| **P1.7** | §1 (p. 5) | « Contributions » arrive en p. 5, après quatre paragraphes de cadrage. | Le remonter juste après « Our position ». | Répond aux questions 9 et 10 du test des deux pages. |
| **P1.8** | Figure 2 (p. 11) | Deux messages concurrents et ~30 objets ; `σ_p` sur la rangée du contrat. | Retirer l'encart `σ_p` de cette rangée et l'encart « No separate historical claim ». | Ramène la figure à un message unique. |

### P2 — Finitions

| # | Emplacement | Correction |
|---|---|---|
| P2.1 | Figure 1, légende | Écrire `HALLUCINATION (H)` / `LICENSED DIVERGENCE (LD)` en toutes lettres, comme dans les boîtes. |
| P2.2 | Figure 1, légende | Ajouter la phrase assumant que les deux prompts diffèrent aussi par le style demandé, et que c'est délibéré (§15). |
| P2.3 | §1 (p. 2) | Supprimer ou reformuler « We reuse **this** museum-label example… » : l'antécédent n'existe pas dans le corps. |
| P2.4 | §2.4 | Supprimer le paragraphe orphelin « Severity » (2 phrases) et la phrase-pointeur isolée vers §2.6. |
| P2.5 | §2.4 | Remonter la restriction de portée d'`UNKNOWN` (« not a statement about all possible knowledge ») à sa première occurrence, p. 2. |
| P2.6 | §2.6 | Réécrire la règle de composition en liste numérotée (§18.3). |
| P2.7 | §2.7 | Mettre les quatre types de défaillance en `description`, et sortir la clause « mere silence » en remarque distincte. |
| P2.8 | §2.5 | Découper le dernier paragraphe en deux à « Existing evaluators use… » (§19.3) ; remplacer la liste négative à huit termes par la version courte (§18.2). |
| P2.9 | §3.1 | Ajouter une phrase de liaison en ouverture, sur le modèle des six autres sous-sections. |
| P2.10 | Transversal | Uniformiser `evaluator` / `annotator`, `worked cases` / `case studies`, et les cinq formes des erreurs de décomposition (§5). |


---

## 24. Verdict final d'accessibilité

| Dimension | Score /10 |
| --- | ---: |
| Message central | **8** |
| Introduction | **6** |
| Définitions des concepts | **7** |
| Cohérence terminologique | **6** |
| Compréhension du cadre | **7** |
| Accessibilité du formalisme | **6** |
| Ordre des sections | **6** |
| Transitions | **7** |
| Figures et tableaux | **5** |
| Positionnement de l'état de l'art | **9** |
| Lisibilité de la cartographie | **4** |
| Clarté des cas travaillés | **6** |
| Programme de recherche | **9** |
| Anglais académique | **7** |
| Accessibilité au lecteur TAL non spécialiste | **6** |

**Moyenne : 6,6/10.** Les deux extrêmes sont significatifs : l'état de l'art et le programme de recherche (9) sont d'un niveau que peu de papiers de position atteignent ; la cartographie (4) et les figures (5) sont en retrait sur un manuscrit dont le reste est soigné.

---

### A. Un chercheur TAL compétent hors de cette niche peut-il comprendre le papier en une lecture attentive ?

> **Mostly.**

Il comprendra la thèse, les trois champs du contrat et la procédure d'étiquetage sans difficulté : le résumé et la Figure 1 sont d'une efficacité rare, et l'état de l'art lui dit exactement en quoi la proposition diffère de ce qu'il connaît. Il achoppera sur trois choses. D'abord, la section empirique : la Figure 3 ne montre pas le résultat qu'elle annonce et §5.1 rapporte surtout une variable que le papier déclare secondaire, si bien que le lecteur doit reconstruire le résultat central depuis l'annexe B. Ensuite, le bloc §2.5–§2.7, qui empile une quinzaine de vocabulaires catégoriels après que la règle est déjà close, et dont peu servent à comprendre la thèse. Enfin, la disproportion accordée au style, que le papier passe ensuite huit fois à corriger par des dénégations. Aucun de ces obstacles ne touche à la validité de l'argument ; tous coûtent de l'attention au moment où le lecteur devrait être en train d'être convaincu.

### B. Où se situe le pic de charge cognitive ?

**§2.5 → §2.7, pages 10 à 14.**

En quatre pages, après que §2.4 a **déjà clos la règle centrale**, le lecteur reçoit : les trois niveaux de marquage stylistique et leur indice `σ_p∈{0,1,2}` ; la distinction niveau demandé / niveau observé ; l'alignement stylistique à trois valeurs (`match`/`mismatch`/`not applicable`) ; la couverture de claim recovery et son dénominateur non observable ; le verdict de contenu à trois valeurs avec une règle ordonnée à deux « Otherwise » enchaînés ; le succès créatif à quatre valeurs sans grille ; la sévérité ; l'utilité ; et quatre types de défaillance procédurale dans un seul paragraphe. Soit une quinzaine de vocabulaires catégoriels nouveaux, **dont aucun n'est nécessaire pour comprendre la position du papier**.

La cause est structurelle : §2 essaie d'être à la fois l'exposé de la thèse et la spécification opérationnelle complète. La correction est P1.3 — déplacer §2.6 et §2.7 après les cas travaillés ou en annexe.

### C. Les trois changements qui amélioreraient le plus la lisibilité

1. **Refonder la Figure 3 et §5.1 sur les trois champs du contrat** (P0.1). Aujourd'hui la section qui porte la preuve empirique met en avant une variable hors contrat et sa figure décline en légende toute responsabilité sur le résultat central. C'est le seul endroit où le lecteur ne peut pas obtenir l'information par une lecture attentive.
2. **Réduire, ne pas ajouter** (P0.4, P0.7, P1.3, P1.4, et §20). Supprimer §8.2 et la Figure 4, réduire « A secondary problem », déplacer §2.6–§2.7, retirer le formalisme décoratif, remplacer les huit dénégations sur le style par une seule formulation canonique. Gain estimé : 3 à 4 pages sans retirer une idée, et disparition du ton défensif.
3. **Réparer l'ouverture** (P0.2, P1.7, P2.3). Motivation avant thèse, `task oracle` avant `adjudication standard`, contributions remontées, référence pendante supprimée. Quatre corrections locales qui font passer le test des deux pages de 7/10 à 9/10.

### D. Un concept devrait-il être supprimé plutôt que mieux expliqué ?

**Oui — deux.**

1. **`creative-task success` comme troisième composante du résultat au niveau réponse.** Elle reçoit quatre valeurs (`PASS`/`FAIL`/`NOT ASSESSED`/score), aucune grille, et le papier dit lui-même que la grille doit être spécifique à la tâche. Une composante formellement nommée dont le contenu est entièrement délégué n'apporte rien qu'une phrase n'apporterait : *task-specific creativity criteria are reported separately and never enter a claim label.* Elle fait passer le résultat de deux composantes (contenu + alignement stylistique) à trois, dont une vide.
2. **Les catégories finales de l'Annexe A** — « reliable and creatively aligned » et « reliable but creatively misaligned ». Deux noms nouveaux introduits en annexe, utilisés nulle part ailleurs dans le manuscrit, pour un cas d'usage hypothétique (« when a single final category is required »). À supprimer.

**Deux concepts à conserver malgré leur coût :** `procedural failure` (il empêche que les défaillances de l'évaluateur deviennent des étiquettes du modèle — c'est un vrai apport) et la distinction `claim extraction` / `claim recovery` (elle est ce qui rend le cadre implémentable).

### E. Une notation devrait-elle être supprimée au profit de prose ou d'une figure ?

**Oui — quatre éléments.**

1. **L'indice `p`** sur `O`, `Γ`, `μ` (~100 occurrences). Un seul contexte de tâche est actif à la fois. Le conserver uniquement dans la Figure 1, où `p_1`/`p_2` sont contrastés. Le papier annonce déjà cette suppression sans l'appliquer.
2. **Le triplet `TC(p)=(O_p,Γ_p,μ_p)`** (4 occurrences, jamais manipulé). En prose dans l'introduction et §2.2 ; conservé dans la Figure 1, où il sert visuellement à montrer que seul `Γ` change.
3. **La paire `c^*=(q^*,m^*)`** (5 occurrences, jamais manipulée). `q^*` et `m^*` fonctionnent parfaitement seuls.
4. **`100(c−i)/N` et `i/(i+p+a)`** en §8.2 — à supprimer avec la sous-section. Elles introduisent en outre une collision sur le symbole `p`.

**À conserver absolument :** `O`, `Γ`, `μ`, `q^*`, `m^*`. Ces cinq objets lèvent de vraies ambiguïtés, sont réutilisés massivement (24 à 38 occurrences chacun) et rendent les cas travaillés vérifiables. Le papier n'est **pas** sur-formalisé sur le fond ; il est encombré de décoration.

### F. Le papier utilise-t-il un terme stable pour chaque concept majeur ?

> **Non** — mais il en est plus près que la plupart des manuscrits comparables.

Aucune dérive sur les concepts défendus : `task oracle` 81 occurrences contre 0 pour `reference evidence`, `source of truth` et `evidence source` ; `evidence-unknown` sans aucune variante en `unverifiable` ou `unresolved` ; les deux vocabulaires état/étiquette réservés explicitement.

Inconsistances restantes :

1. **Le résultat au niveau réponse : 8 formes** — `structured response-level record`, `structured response-level verdict`, `structured response-level content verdict`, `response-level content verdict`, `structured verdict`, `structured record`, `response-level verdict`, `structured component record`. Trois d'entre elles sont ambiguës entre le tout et la partie.
2. **L'oracle : 2 formes** — `task oracle` (81) et `adjudication standard` (11), le second apparaissant en premier, p. 2.
3. **Les erreurs de décomposition : 5 formes** — `over-split`, `redundant decomposition`, `over-decomposition`, `redundantly over-split`, `atomicity errors`, plus `under-decomposition` sans contraire nommé.
4. **L'objet proposé : 7 formes** — `the framework`, `the rule`, `the proposed rule`, `our rule`, `the claim-labeling rule`, `the proposal`, `the proposed procedure`, sans qu'on sache si la portée change.
5. **L'agent évaluateur : 2 formes** — `evaluator` (36, correctement défini comme englobant) et `annotator` (5, employé pour la même opération en §2.3).

### G. Le parcours du lecteur est-il satisfait ?

| Étape | Verdict | Si échec : où corriger |
|---|---|---|
| Je comprends le problème | ✔ **Oui** | — (résumé, excellent) |
| Je comprends pourquoi l'évaluation existante est insuffisante | ~ **Partiellement** | §1 ¶2–5 (p. 2) : la thèse précède la motivation, et l'insuffisance est formulée en atténué (« do not **always** represent »). → **P0.2** |
| Je comprends la position des auteurs | ✔ **Oui** | — |
| Je comprends le contrat de vérité | ✔ **Oui** | — (§2.2 est le meilleur passage explicatif du papier) |
| Je comprends comment une revendication reçoit une étiquette | ✔ **Oui** | — (Figure 1 + §2.4 ; réserve mineure sur la collision `SUP`/FEVER → **P0.6**) |
| Je comprends en quoi cela diffère des travaux antérieurs | ✔ **Oui, remarquablement** | — (§3.4 et §3.6) |
| Je comprends quelles preuves soutiennent la position | ✘ **Non** | §5 + Figure 3 (p. 19–21) : la figure porte la variable secondaire et désavoue le résultat central ; §5.1 enfouit le fait saillant (`Γ` implicite dans 41/41) dans une énumération de 43 mots ; ni procédure de recherche ni nombre de codeurs. → **P0.1**, **P0.8**, **P1.5** |
| Je comprends ce qui reste à tester | ✔ **Oui, excellemment** | — (§7 et Table 1) |

**Sept étapes sur huit sont franchies. La huitième — les preuves — est celle qui échoue, et c'est la seule qui exige une refonte plutôt qu'une correction locale.**

---

## Décision finale

> ### MAJOR READABILITY REVISION
> *L'idée scientifique est compréhensible, mais le papier demande encore trop d'efforts au lecteur.*

**Justification.** L'argument est solide, la terminologie du noyau est disciplinée, l'état de l'art et le programme de recherche sont d'excellente facture, et le bornage de portée est irréprochable — quasiment tous les critères de rigueur du brief sont satisfaits. Ce n'est donc pas un problème de fond.

Mais la lisibilité échoue à un endroit qui compte : **la section qui porte la preuve empirique ne rend pas son résultat lisible**, et sa figure principale déclare explicitement en légende ne pas l'établir. À cela s'ajoutent un pic de charge de quatre pages (§2.5–§2.7) placé juste après la clôture de la règle, une digression de deux pages plus une figure (§8.2), une introduction dont l'ordre motivation/thèse est inversé, et une disproportion persistante accordée à une variable que le papier déclare lui-même hors sujet.

Ce n'est pas « un petit nombre de corrections ciblées » : la Figure 3 est à refaire, §5.1 à réécrire, §4–§5 à fusionner, §8.2 à supprimer, §2.6–§2.7 à déplacer. En revanche — et c'est la bonne nouvelle — **presque toutes ces corrections sont soustractives.** Aucune n'exige de nouvelle recherche, de nouvelle donnée ni de nouvel argument. Le matériau nécessaire à la refonte de la Figure 3 est déjà intégralement dans l'annexe B. Un cycle de révision centré sur les huit items P0, mené comme un travail de coupe plutôt que d'ajout, devrait porter le manuscrit à **NEARLY READY**, et probablement gagner trois à quatre pages au passage.

Un rappel du critère qui guide ce verdict : *un papier de position n'est pas clair parce que chaque définition figure quelque part dans le manuscrit. Il est clair quand le lecteur reçoit chaque idée au moment où elle devient nécessaire, comprend pourquoi elle compte, et peut retenir l'argument central sans revenir en arrière.* Le manuscrit satisfait la première condition partout. Il satisfait la deuxième et la troisième dans §1–§3 et §7, et échoue dans §5 et §8.2.

---

*Revue produite le 27 août 2026 sur `main_position.tex` (2 564 lignes, 43 pages compilées). Les mesures quantitatives citées (occurrences terminologiques, longueurs de phrases, densité lexicale par section, positions de première occurrence) ont été calculées directement sur le source LaTeX et le PDF compilé.*
