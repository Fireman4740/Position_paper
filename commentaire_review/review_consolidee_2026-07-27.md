# Review consolidée — position paper + commentaires

**Date** : 27/07/2026 · **Base** : `main_position.tex` (1004 l., 27/07 16:12) vs `git show d7a3745:main_position_personal.tex` (« Last paper before review »).
**Sources** : `commentaires_overleaf_suivi.md` (73 fils), `statut_commentaires_2026-07-27.md`, `review_fond_2026-07-27.md`, `fil_rouge_prompt_claim.md`, + notes d'encadrant du 27/07.

Ce document répond à deux questions : **(1)** quels commentaires ont été traités et par quelle modification ; **(2)** où en est le papier par rapport aux notes d'encadrant, avec l'action précise qui reste.

---

# Partie 1 — État des 73 commentaires Overleaf

## Bilan chiffré

| Statut | Nombre | % |
|---|---|---|
| ✅ Traité | 45 | 62 % |
| ⚠️ Partiel | 15 | 21 % |
| ❌ Non traité | 12 | 16 % |
| 🚫 Rejeté (décision assumée) | 1 | 1 % |

⚠️ **Le fichier `commentaires_overleaf_suivi.md` est périmé** : il affiche encore 73 × « Statut : à traiter » et zéro champ « Action / réponse » rempli, alors que 60 fils sur 73 ont reçu au moins un début de traitement. Le tableau détaillé de `statut_commentaires_2026-07-27.md` le remplace ; ce document en donne la synthèse.

## Les trois modifications structurelles

Elles ne répondent à aucun commentaire isolé mais résolvent des grappes entières.

1. **« Related Evaluation Paradigms » déplacée de §2 à §3** (désormais l. 561, après le framework). C'était la cause racine du plus gros cluster : la section liée utilisait `O_p`, `K_p`, `σ_p` avant que §Truth Contracts ne les définisse. Résout mécaniquement une partie de #25, #29, #30, #31, #40 — et la note « restructurer pour remonter les def TC(p) ». Effet secondaire : `tab:symbols` (l. 187) remonte d'environ 4 pages et précède maintenant tout usage formel (#38).
2. **Abstract entièrement réécrit** (l. 68-76). Toute la notation (`TC(p)`, `O_p`, `σ_p`, `K_p`, `κ`, `SUP`/`Hall`/`LD`) retirée ; 100 % prose ; clôture sur l'apport (« so that reducing hallucination does not come at the cost of suppressing the invention that many tasks require ») et non sur un manque. Résout #1, #6, #9, #10 d'un coup.
3. **Nouveau §3.2 « Faithfulness and alignment »** (l. 584-588), 4 phrases + 3 références neuves (`wu_dancing_2024`, `lou_instruction_2023`, `feuer_style_2025`). Réponse à l'objection bloquante de Pierre-Yves sur σ (#43, #48, #49, #55).

## Points bloquants — les 6 arbitrages

| # | Auteur | Demande | Statut | Modification faite |
|---|---|---|---|---|
| 6 | PY + elod | Abstract : préférer `main_old`, insister sur l'apport | ✅ | Réécriture complète l. 68-76 (voir ci-dessus). |
| 7 | elod | « An entailed claim receives supported (SUP) » incompréhensible | ✅ | → « An entailed claim is labeled \SUP\ (supported) » (l. 105), déplacé dans l'intro. |
| 8 | Martino | Supprimer SUP / Hall / LD | 🚫 | Conservées (décision A5). Le comptage d'occurrences contredit « barely reused » : des dizaines d'usages, dont TikZ et tableaux à espace contraint. **À répondre explicitement à Martino.** |
| 10, 22, 45 | Martino, elod, PY | `K_p` vs `κ_p` incohérent / confusable | ✅ (10, 22) ⚠️ (45) | `κ` disparaît de l'abstract ; l. 224-226 ajoutent trois phrases distinguant `κ_p` et `ρ_p` ; l. 207 pose `K_p=(κ_p,Γ_p,ρ_p)`. **La confusion visuelle κ/K (#45) reste** : aucun renommage. |
| 44 | PY | κ=1 entre-t-il en collision avec ρ ? | ✅ | Option 2 appliquée l. 226 : « The phrase ``explicitly marked'' in the $\kappa_p=1$ case describes a typical pairing in practice, not a presentation requirement folded into the permission level: the marking itself is $\rho_p$'s role. » |
| 43, 48, 49, 55 | PY | Pourquoi σ dans le contrat s'il n'autorise rien ? | ✅ (48,49,55) ⚠️ (43) | Nouveau bloc l. 260-266 (deux modes d'échec) + §3.2 l. 584-588 + preuve empirique `feuer_style_2025` (l. 265 : les juges LLM pénalisent le ton sarcastique plus qu'une erreur factuelle). **Reste #43** : §2.2 (l. 202-234) énumère `TC(p) → O_p → K_p` sans paragraphe σ ; σ n'arrive qu'en §2.3 (l. 236). |
| 67 | elod | `fig:profiles` est-elle nécessaire ? | ✅ | Conservée (décision A6) ; la prose redondante qui la précédait est réduite à un renvoi d'une ligne. |

## Structuration et pédagogie

| # | Demande | Statut | Modification faite |
|---|---|---|---|
| 1 | Définir `claim` avec un exemple | ⚠️ | Reformulation ✅ ; exemple présent en §2.1. Mais `claim` n'est toujours pas **défini** à sa première occurrence (abstract/intro). |
| 2, 3 | Qu'est-ce que `p` ? | ✅ | L. 104 : « The task context $p$ includes applicable system instructions, such as a fixed register, the user's request, domain constraints… not only the literal prompt string. » |
| 13 | Définir « truth contract » en langage courant | ⚠️ | La glose existe — mais dans l'abstract (l. 72 : « what evidence the task is answerable to, what style it invites, and what kind of invention it permits »), pas au point d'ancrage du commentaire (§Our position). |
| 15 | Quelles instructions ? | ✅ | Détaillées l. 104. |
| 16 | Reformuler la phrase sur `O_p` | ✅ | Supprimée, remplacée par un renvoi avant (l. 103, « define in full in \S\ref{sec:framework} ») : la double définition disparaît. |
| 17, 35, 57 | Définir les acronymes plus tôt | ✅ | `\SUP` ajouté l. 105 avec `\Hall` et `\LD` : les trois sont définis en §1, gloses formelles en §2.5. |
| 25 | Beaucoup de notions non introduites | ⚠️ | `reference evidence` et `content-permission policy` introduits l. 103. **Restent non introduits** l. 156 : *epistemic presentation*, *scope*, *σ_p-conditioned claim typing*. |
| 27 | Paragraphe de plan en fin d'intro | ❌ | L'intro se termine toujours sur « Contributions » (l. 159-164), sans annonce section par section. |
| 29 | `O_p` reste mystérieux, exemples dès le début | ⚠️ | Exemples en §2.2 l. 214 (source document, retrieval set, database, gold labels, declared fictional-frame constraints) et dans les figures. **Rien dans l'intro.** Recoupe la note « bien définir O_p comme la source de l'oracle ». |
| 38 | Tableau des symboles bien avant | ✅ | Obtenu par le déplacement de Related Work : `tab:symbols` l. 187 précède tout usage formel. |
| 39, 42 | Dire « prompt », pas « task context » | ⚠️ | Harmonisé sur « task context » (décision A1). **Résidu** : l. 205 dit encore « For prompt $p$, the truth contract is » cinq lignes avant l. 210 « Here, $p$ denotes the relevant task context rather than only the literal user-prompt string ». C'est exactement l'incohérence de #42. |
| 40 | §3.4-3.5 trop denses | ⚠️ | Voie « glossaire » : §2.1 (walkthrough + `tab:symbols`) précède les parties formelles. Les §2.4-2.5 n'ont pas été allégées. |
| 41 | `\textbf{...}` titre → `\paragraph{...}` | ❌ | 35 occurrences de `\textbf{` en début de ligne, dont §2.2 (l. 204, 213, 217) et les 6 points du Research Agenda (l. 763-797). Passe mécanique non faite. |
| 18, 20, 21 | Refonte `fig:flip` : prompt en haut, réponse après, oracle visible | ✅ | Redessinée (l. 116-150). Flux vertical **prompt → TC(p) avec O_p et κ_p explicites → response span → verdict**, séparateur pointillé. Le nœud central devient « **Response span:** … », ce qui répond à #18. |
| 52 | Définir `s` plus tôt ; pourquoi `s` ? | ⚠️ | `s` est dans `tab:symbols` remonté et `fig:flip` affiche « Response span ». Pas défini avant la figure 1 ; renommage non fait. |
| 53 | Le prompt s'écrit `P` majuscule | ❌ | Inchangé. |
| 61 | Le prompt n'est pas un input de `fig:decision` ? | ❌ | `fig:decision` démarre toujours sur « model response ($y$) » (l. 348) ; le prompt n'apparaît qu'au nœud 2. **C'est la note « refaire la figure principale pour prompt → claim ».** Un encadré « Running example » (l. 471) a été ajouté, ce qui aide sans corriger le flux. |
| 62 | Préciser en légende que ce n'est pas l'évaluation complète | ⚠️ | La légende dit « Response-level aggregation remains a separate step ». Elle ne dit pas que l'alignement et le respect du style manquent. |
| 63 | Pourquoi en annexe ? description trop longue | ⚠️ | Toujours 3 phrases (l. 622-630) + une redite. Aucune justification du choix de l'annexe. |
| 64 | Retirer l'auto-dévalorisation (annotation mono-auteur) | ❌ | L. 628-629 intactes. **Tension réelle** : PY veut retirer, un relecteur CL exigera la limite. Voir Partie 3 §E. |
| 65 | Tableau/figure cluster avec chaque dataset | ❌ | `fig:profiles` reste conceptuelle ; les 40 ressources restent en listes d'annexe. |
| 68 | Worked Cases : vrais exemples | ⚠️ | Phrase d'honnêteté l. 723 (« Case A uses a documented summarization pattern; Cases B--E are constructed contrasts »). B-E restent des expériences de pensée. |
| 69 | Research Agenda arrive comme un cheveu sur la soupe | ⚠️ | Cadrage ajouté l. 761 (« six connected priorities that form a validation sequence: annotation, benchmark construction, pipeline diagnosis, aggregation, mitigation, and generalization ») + limites annoncées plus tôt (l. 251, 339, 658). Rattachement point par point non fait. |
| 70 | Objection : annotation très complexe | ⚠️ | Le point 1 (l. 763-768) mentionne fiabilité et désaccord d'annotateurs, sans traiter le coût/faisabilité. |
| 71 | Conclusion à revoir | ✅ | Réécrite : « In this position paper, we argued that… », position présentée comme argument. |

## Clarifications locales

**Traitées (✅)** — #12 (l. 88 « not only whether a statement is supported, but also whether the task permits departing from that support ») · #14 (phrase inutile supprimée) · #23 (l. 154 « full list in Appendix~\ref{app:mapping} ») · #24 (l. 155 « purposive and author-coded… not a prevalence estimate ») · #26 (l. 157 « the labeling rule defined in \S\ref{sec:framework} ») · #28 (l. 568) · #30 (l. 207 + l. 575 : `K_p` spécifie « what may be invented, where, and how it must be signaled ») · #31 (l. 581) · #32 (l. 595 « from purely unwanted, defective ones ») · #33 (l. 596) · #34 (l. 597, rattaché à `U(c*,p)`) · #36/#37 (cause identifiée : `\SV` n'était jamais glosé → l. 175 « an \SV\ (\emph{stylistic variation}) flag ») · #46 (l. 232-233 : brainstorming médical pour `Γ_p`, Lyme hedgé pour `ρ_p`) · #50 (l. 264-266 étayé par `feuer_style_2025`) · #54 (l. 273) · #56 (l. 221-222 : *permission scope* et *required epistemic presentation* en italique) · #58 (l. 321 « relative to $O_p$ ») · #59 (l. 326) · #60 (l. 333-339, `\paragraph` complet avec règles d'agrégation candidates) · #66 (l. 644) · #72 (l. 842, mot pour mot) · #73 (l. 848 « In our purposive sample of forty evaluation resources »).

**Non traitées (❌)** — #4 (renommer `K_p` en « creativity-permission » ; commentaire tronqué dans l'export, **à confirmer avec elod** ; argument contre : `κ_p=1` = spéculation marquée, ce n'est pas de la créativité) · #5 (« the evaluator » n'est jamais glosé) · #11 (l. 80 inchangée) · #47 (aucune citation CLEF/TREC/SemEval ; `simpletext_task2_2026` est dans `references.bib` et **0 fois cité** dans le `.tex`) · #51 (pas de demande d'action ; à clore comme remarque) · #74 (ressources non numérotées ; **le compte est juste : 40 lignes exactement, 13+13+14**).

---

# Partie 2 — Notes d'encadrant du 27/07 : état et action

Onze consignes. Statut vérifié dans le `.tex`, pas déclaratif.

## N1. Ajouter le SOTA extraction de claim

**État : ❌ absent.** Le papier cite `min_factscore_2023` et `bayat_factbench_2024` en passant (l. 270, 336) et mentionne la décomposition de claims comme source de fragilité l. 657, mais l'extraction de claims n'est jamais traitée comme un domaine avec ses résultats et ses limites.

**Pourquoi ce n'est pas une lacune bibliographique** : tout le framework repose sur l'hypothèse implicite qu'on sait décomposer une réponse en claims vérifiables. Si l'extraction est peu fiable — et le papier l'affirme lui-même en §2.3 pour les textes non littéraux — alors `𝒞(s,p)` est une fonction bruitée et tous les labels en aval héritent de ce bruit. Un relecteur peut **retourner §2.3 contre le papier** : *vous démontrez vous-mêmes que l'extraction est sensible au style, donc votre unité d'analyse est instable.*

**Action** : sous-section courte en §3 qui (i) situe l'état de l'art extraction/décomposition, (ii) reconnaît que sa fiabilité borne celle du framework, (iii) présente ce fait comme motivation du point 3 de l'agenda — pas comme une faiblesse.

## N2. Restructurer pour remonter les définitions de TC(p)

**État : ✅ fait, et bien fait.** Related Work est passée en §3 ; `tab:symbols` remonte à l. 187 ; §2.1 « Overview: from a response span to a label » précède les parties formelles. C'est la modification la plus rentable du cycle.

**Reste** : le résidu #39/#42 l. 205 (« For prompt $p$ ») et les notions non introduites l. 156.

## N3. Bon prompt pour la thèse principale + N11. Prompt d'exemple filé dans la figure

**État : ⚠️ conçu, pas intégré.** Le prompt fil rouge est spécifié dans `fil_rouge_prompt_claim.md` et la figure existe (`figures/fig_prompt_to_claim.tex`, compile), mais **`main_position.tex` ne l'inclut nulle part** — aucun `\input{figures/...}` dans le fichier ; seules `fig:flip`, `fig:decision` et `fig:profiles` sont présentes.

**Raison structurelle du besoin** : l'exemple photosynthèse (`σ_p=2, κ_p=0`) **ne peut pas produire de LD**, puisque `κ_p=0 ⟹ Γ_p=∅ ⟹ L(c*,K_p)=0`. Le papier est donc obligé de recourir à un second exemple (Verdier) pour illustrer LD, et les deux ne se composent pas. D'où l'absence de fil rouge unique.

**Prompt retenu** (panneau de musée, grippe de 1918 à Lyon, `O_p` = extrait d'archive cité) : `σ_p=2`, `κ_p=1`, `Γ_p` et `ρ_p` visibles, 6 spans → 4 types de span et 4 issues (`SUP`, `SUP+SV`, `LD`, `Hall`) sous **un seul contrat**. Le span `s_4` (« Dr. Chapuis hid the true toll ») est le plus utile : `Hall` par deux voies indépendantes (hors `Γ_p` *et* asserté sans marquage), ce qui justifie d'avoir séparé `Γ_p` de `ρ_p` — réponse indirecte à #44.

**Action** : insérer la figure en §1 (après « Our position ») ou §2.1 ; remplacer le walkthrough photosynthèse par le walkthrough Lyon ; ajouter une carte Lyon dans `tab:contracts` ; remplacer l'encadré « Running example » de `fig:decision` (l. 471). Légende : dire que l'extrait d'archive et le nom « Chapuis » sont fabriqués, comme le papier le fait déjà pour Verdier.

## N4. Refaire la figure principale pour prompt → claim

**État : ❌.** `fig:decision` démarre toujours sur « model response ($y$) » (l. 348) : le prompt n'est pas un input. C'est #61 mot pour mot.

**Structure cible** (7 bandes, une colonne par claim, gouttière de gauche nommant l'étape et sa notation) :

```
task input        Prompt p ──────────────────── O_p (extrait d'archive, cité)
truth contract    σ_p=2 │ κ_p=1 │ Γ_p │ ρ_p
response y        [réponse complète, spans surlignés]
span typing       s_1 claim-only │ s_2 mixed │ s_3 claim-only │ s_4 claim-only
canonical claims  c_1* │ c_2* │ c_3* │ c_4*
evidence state    entailed │ entailed │ unknown │ unknown
contract label    SUP │ SUP+SV │ LD │ Hall
```

Trois bénéfices au-delà de l'illustration : **la figure devient le glossaire** (chaque symbole apparaît à l'étape où il agit — réponse la plus économique à N2 et N8 : plutôt que déplacer des paragraphes, on donne au lecteur une carte) ; **le prompt redevient un input** (#61) et `O_p` est montré comme source citable (#29, N10) ; **les deux étages du pipeline deviennent visibles** (N7).

**Ne pas fusionner les trois figures.** `fig:flip` = un libellé, deux contrats, deux verdicts (relativité au contrat) → garder telle quelle. `fig:prompt-to-claim` = un contrat, une réponse, quatre labels (couverture du framework). `fig:decision` = l'algorithme abstrait. Ordre de lecture : prompt-to-claim en §1, flip juste après, decision en §2.5.

## N5. Mettre plus de faithfulness et d'alignement

**État : ⚠️ amorcé.** §3.2 existe (l. 584-588) avec `wu_dancing_2024` (le trade-off instruction-following ↔ grounding pendant le fine-tuning) et `lou_instruction_2023`. C'est 4 phrases.

**Action** : étoffer, et surtout **relier explicitement au pipeline à deux étages** (N7) — sinon §3.2 se lit comme une défense de σ_p par l'anecdote (« les juges LLM se trompent ») plutôt que par l'architecture. Compléter aussi la légende de `fig:decision` (#62) en disant que l'alignement et le respect du style n'y sont pas scorés.

## N6. Ouverture sur les agents IA / task agents

**État : ❌ absent.** Le papier évoque le multi-tour (l. 768, 828) mais jamais les agents ni l'usage d'outils. Seule trace : la ligne ToolQA du tableau d'annexe (l. 954).

**Pourquoi c'est rentable** : c'est là que le cadre devient le plus intéressant *et* le plus tendu.

- `O_p` cesse d'être fixé au départ : il est constitué en cours de trajectoire par les récupérations et les appels d'outils, donc le contrat est évalué contre une preuve qui n'existait pas au moment du prompt.
- Une tâche agentique se décompose en sous-tâches ayant chacune son propre `TC`, avec conflits possibles entre le contrat de l'utilisateur et celui d'un sous-agent.
- `ρ_p` devient central : ce qu'un agent rapporte comme établi vs. conjecturé conditionne les actions en aval, donc le coût d'une violation de présentation n'est plus seulement épistémique.

**Action** : un paragraphe en Discussion ou un point 7 dans l'agenda. Court, actuel, et répond d'avance à « pourquoi ce cadre compte au-delà du QA ».

## N7. Lier σ et faithfulness ; SOTA pour σ et le style

**État : ⚠️ à moitié.** Le lien σ ↔ faithfulness est écrit l. 586 : « satisfying a style request can compete with staying grounded in $O_p$, and the competition is a property of training and evaluation pipelines, not of the task definition itself. » Le SOTA style existe et est correct : `chen_menli_2023`, `aynetdinov_semscore_2024`, `lai_multidimensional_2023`, `pauli_mind_2025`, `feuer_style_2025` (l. 265) + §3.4 « Style-preserving evaluation » (l. 599-602, `pavlick_empirical_2016`, `rao_dear_2018`, `briakou_evaluating_2021`).

**Ce qui manque est ailleurs, et c'est le point le plus dangereux du papier.** La règle de décision est :

```
V(c*|p) = SUP   si E(c*, O_p) = entailed
          LD    si E(c*, O_p) = unknown ∧ L(c*, K_p)=1 ∧ M(c*, s, K_p)=1
          Hall  sinon
```

`E` dépend de `O_p`, `L` et `M` dépendent de `K_p`. **`σ_p` n'apparaît nulle part.** Un relecteur formaliste lira : le contrat est annoncé comme un triplet `(O_p, σ_p, K_p)`, mais la seule fonction que le papier définit vraiment n'en utilise que deux composantes → σ_p n'appartient pas au contrat.

Le papier **a** la réponse, enfouie dans une phrase de transition (l. 257) : « The diagnostic role of $\sigma_p$ is upstream of factual verification. » σ_p n'agit pas sur `V` mais sur `𝒞(s,p)`, la récupération des claims, en amont. Bonne réponse — elle transforme l'objection en choix de conception — mais jamais posée comme telle.

**Action, la plus rentable de toute la liste** :
1. Rendre l'argument σ_p explicite dans la notation, ou ajouter une phrase encadrée : *« σ_p enters the pipeline at the claim-recovery stage; K_p and O_p enter at the labeling stage. The three components are therefore not redundant: they act at different points of the same pipeline. »*
2. Ajouter le pipeline à deux étages dans `fig:decision` : bande « recovery (σ_p) » / bande « labeling (O_p, K_p) ».
3. Relier §3.2 à cette structure.

## N8. Bien définir les choses avant le reste ; définir les notions de l'intro ; ajouter de l'état de l'art

**État : ⚠️.** Le gros du travail est fait via N2. **Restent** :

- `claim` non défini à sa première occurrence (#1) ;
- l. 156 introduit *epistemic presentation*, *scope*, *σ_p-conditioned claim typing* sans les avoir présentés (#25) ;
- `s` non défini avant la figure 1 (#52) ;
- « the evaluator » jamais glosé — humain ? système ? les deux ? (#5) ;
- pas de paragraphe de plan en fin d'intro (#27) — ce qui aggrave le fait que **Related Work arrive après ~15 pages de framework** : le déplacement était juste, mais le lecteur attend longtemps avant de savoir en quoi cela diffère des taxonomies existantes. Trois lignes de positionnement en fin d'intro compensent et résolvent #27 en même temps.

## N9. Définir *usefulness* avec le SOTA

**État : ⚠️ traitement minimal.** `U(c*,p)` est posé l. 326 (« reported as a separate task-dependent score over \LD\ claims; it is related to, but narrower than, general response-to-prompt alignment, which this paper does not score »), repris l. 597 et l. 793 (`acar_creativity_2019`, `marco_reader_2025`). Mais `U` n'est **jamais défini** : ni domaine, ni échelle, ni protocole, ni ancrage dans la littérature d'évaluation de l'utilité/qualité.

**Action** : quelques phrases situant `U` par rapport aux mesures existantes (utilité de tâche, jugement humain de qualité, appropriateness en évaluation de créativité), et dire explicitement ce que `U` n'est pas — il ne convertit jamais `LD` en `Hall` (déjà dit l. 327, à garder).

**Point connexe non résolu** — `unknown` porte trop de charge. `E(c*,O_p)=unknown` agrège trois situations distinctes : indétermination réelle (l'archive est muette), échec de récupération (la preuve existe mais n'a pas été trouvée), claim hors du domaine couvert par `O_p`. Sous contrat permissif, les trois produisent **LD**. Conséquence exploitable contre le framework : *un vérifieur qui sous-récupère produit mécaniquement plus de LD, donc paraît meilleur.* Incitatif pervers structurel, pas accidentel. Le papier note l. 304 que `unknown` n'est pas un énoncé sur toute connaissance possible, mais ne traite pas le risque de mesure. Deux phrases en §2.5 ou en Discussion suffisent, et cela alimente le point 3 de l'agenda.

## N10. Bien définir `O_p` comme la source de l'oracle

**État : ⚠️.** La définition est bonne et complète en §2.2 l. 213-215 : « $O_p$ is the reference information against which a claim is evaluated, such as a source document, retrieval set, database, gold labels, a specified external source, or declared fictional-frame constraints », suivie de la mise en garde « ``world knowledge'' is only a shorthand; reproducible evaluation requires a concrete evidence source or an explicit adjudication procedure ».

**Ce qui manque, c'est le placement** : dans l'intro, `O_p` n'est qu'un symbole glosé « reference evidence » (l. 103), avec renvoi à §2. C'est #29 : le lecteur rencontre `O_p` dans `fig:flip` avant d'avoir vu une seule source concrète.

**Action** : un exemple d'`O_p` dès l'intro. La figure fil rouge (N3/N4) le règle en même temps, puisqu'elle **cite** l'extrait d'archive dans un encadré au lieu de nommer un symbole.

---

# Partie 3 — Objections de fond qui viendraient en plus

Lecture en position de relecteur *Computational Linguistics* n'ayant pas suivi les échanges. Le papier est en bon état ; ce qui suit porte sur la solidité de la thèse.

**A. σ_p absent de la règle de décision** → voir N7. L'objection la plus dangereuse.

**B. `κ_p` est-il dérivable de `Γ_p` ?** Même méthode d'attaque. Dans la règle, la permission est portée par `L(c*,K_p)` (appartenance à `Γ_p`) et par `M` (test de `ρ_p`) : **`κ_p` n'intervient pas directement.** Le papier dit lui-même l. 231 qu'une tâche factuelle-seulement a une portée vide (`κ_p=0 ⟺ Γ_p=∅`), et `κ_p=2` correspond à `Γ_p` = le cadre déclaré. Un relecteur demandera si `κ_p` n'est pas une simple statistique résumée de `Γ_p`, conservée pour la commodité du tableau de mapping. Pas fatal — un ordinal grossier a une vraie valeur descriptive pour coder 40 ressources — mais **à assumer plutôt qu'à laisser découvrir** : *« κ_p is a coarse ordinal summary of Γ_p, retained because it supports cross-resource comparison; Γ_p and ρ_p carry the decision. »* Bonus : désamorce #44 et #45 en réduisant le poids conceptuel de κ.

**C. `unknown` porte trop de charge** → voir N9.

**D. L'agrégation différée coûte cher au « so what »**. Le papier définit les labels au niveau claim et laisse `R(y|p)` ouvert (l. 333-339, agenda point 4, Discussion). Honnête, mais tout consommateur réel d'une métrique d'hallucination a besoin d'un nombre par réponse ; un relecteur dira que la contribution s'arrête une marche avant l'utilisabilité. **Suggestion peu coûteuse** : ne pas résoudre l'agrégation, mais en *exhiber une* sur le fil rouge — « sous la règle du pire cas, cette réponse est Hall ; sous la règle proportionnelle, 3 claims sur 4 acceptables » — en précisant que le choix reste ouvert.

**E. La base empirique est plus fragile que le cadre conceptuel**. Le mapping des 40 ressources est purposif, codé en une passe par un seul auteur, sans codebook public ni recodage indépendant. Le papier le dit (l. 628-629) et PY demande de retirer la phrase (#64). **Recommandation : ne pas la retirer.** Un relecteur CL qui découvre seul que l'annotation est mono-auteur réagira bien plus mal que face à une limite déclarée. Le problème n'est pas l'aveu, c'est son **ton** : « interpretive annotations rather than measurements » se lit comme une excuse. Reformulation qui préserve l'honnêteté et supprime l'auto-dévalorisation :

> *The mapping is a purposive expert coding designed to test whether prominent resources represent the contract's variables. It is a scoping instrument, not a prevalence estimate; releasing it as a validated dataset would require a public codebook and independent recoding.*

Même contenu informationnel, posture inverse : on décrit un choix de méthode, on ne s'excuse pas d'une faiblesse.

**F. SOTA extraction de claims** → voir N1.

**G. Ce que les figures ne font pas** → voir N4.

**H. Ouverture agents** → voir N6.

**I. Points mineurs mais visibles**

- **`\emph{Outco}` × 5** dans Worked Cases (l. 729, 735, 742, 748, 754). C'est `\emph{Outcome:}` tronqué. **Défaut antérieur à la review** (déjà dans `d7a3745`), donc aucun relecteur ne l'a signalé — et il est visible dans le PDF compilé. Correction immédiate.
- **L'abstract ne mentionne plus SUP / Hall / LD** alors que la trichotomie est la contribution la plus concrète. Une clause suffit : « …a three-way claim-level label — supported, hallucination, or licensed divergence — rather than a binary one. »
- **`simpletext_task2_2026`** est dans `references.bib` et jamais cité dans le `.tex` — alors que c'est précisément la référence CLEF réclamée en #47.
- **Worked Cases B-E** restent des constructions ; Case A (XSum) est la seule ancrée dans une ressource documentée.
- **`σ_p=2` avec `κ_p=1`** place le fil rouge Lyon dans une cellule que `fig:profiles` ne marque pas comme « TARGET GAP » (qui est `σ_p=2, κ_p=0`). Cohérent — le fil rouge illustre le framework, il n'a pas à incarner le manque empirique — mais une phrase est nécessaire pour éviter la confusion.

---

# Plan d'action priorisé

| Rang | Action | Couvre | Coût |
|---|---|---|---|
| 1 | Rendre explicite le pipeline à deux étages (σ_p en récupération, O_p/K_p en labellisation) | N7, §A, #43, #48-49-55 | 1 paragraphe + 1 bande de figure |
| 2 | Insérer `fig:prompt-to-claim` + basculer le fil rouge sur Lyon | N3, N4, N10, N8, #21, #29, #61 | 1 j (figure déjà écrite) |
| 3 | Sous-section SOTA extraction de claims | N1, §F | ½ j + recherche biblio |
| 4 | Assumer `κ_p` comme résumé ordinal de `Γ_p` | §B, #44, #45 | 2 phrases |
| 5 | Reformuler la limite du mapping sans s'excuser | §E, #64 | 2 phrases |
| 6 | Traiter le risque de mesure sur `unknown` | §C, N9 | 2 phrases |
| 7 | Ouverture agents (paragraphe Discussion ou point 7 de l'agenda) | N6, §H | 1 paragraphe |
| 8 | Définir `usefulness` avec le SOTA | N9 | ½ j |
| 9 | Étoffer faithfulness/alignement et relier au pipeline | N5, #62 | ½ j |
| 10 | **Mécanique** : `Outco` × 5 · citer `simpletext_task2_2026` · clause labels dans l'abstract · `\textbf` → `\paragraph` (35 occ.) · numéroter les 40 ressources · corriger « For prompt $p$ » l. 205 · gloser « the evaluator » · paragraphe de plan en fin d'intro | #41, #74, #39/42, #5, #27, #47, #11 | < 2 h |

**Décisions à prendre avant d'agir** — #4 (renommage `K_p`, confirmer avec elod, commentaire tronqué dans l'export) · #8 (rédiger la réponse de rejet à Martino) · #53 (`p` vs `P`) · #45 (renommer `κ_p` ou assumer, cf. rang 4).
