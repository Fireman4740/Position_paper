
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
