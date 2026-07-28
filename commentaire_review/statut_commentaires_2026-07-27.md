# Statut des 73 commentaires Overleaf — vérifié contre le texte

- **Méthode** : diff ligne à ligne entre `git show HEAD:main_position_personal.tex` (commit `d7a3745` « Last paper before review », 24/07 13:59) et `main_position.tex` actuel (27/07 16:12). 216 lignes modifiées.
- **Base commentaires** : `commentaires_overleaf_suivi.md` (73 fils actifs ; le n° 19 n'existe pas dans l'export).
- **Légende** : ✅ traité · ⚠️ partiel · ❌ non traité · 🚫 rejeté volontairement

## Bilan

| Statut | Nombre | % |
|---|---|---|
| ✅ Traité | 45 | 62 % |
| ⚠️ Partiel | 15 | 21 % |
| ❌ Non traité | 12 | 16 % |
| 🚫 Rejeté (décision assumée) | 1 | 1 % |

**Important** : le fichier `commentaires_overleaf_suivi.md` affiche encore *73 fois* « Statut : à traiter » et zéro champ « Action / réponse » rempli. Il ne reflète plus l'état réel du papier — 60 commentaires sur 73 ont reçu au moins un début de traitement. Ce tableau-ci le remplace.

## Les trois changements structurels majeurs

Ils ne correspondent à aucun commentaire isolé mais résolvent des grappes entières :

1. **Déplacement de « Related Evaluation Paradigms »** — était §2 (avant le framework), devient §3 (après). C'était la cause racine du plus gros cluster de commentaires : la section liée utilisait `O_p`, `K_p`, `σ_p` avant que §Truth Contracts ne les définisse. Résout mécaniquement une partie de #25, #29, #30, #31, #40 et la note d'encadrant « restructure pour remonter les def TC(p) ».
2. **Réécriture complète de l'abstract** — toute la notation (`TC(p)`, `O_p`, `σ_p`, `K_p`, `κ`, `SUP`/`Hall`/`LD`) a été retirée ; l'abstract est désormais 100 % en prose et se termine sur l'apport plutôt que sur un manque. Résout #1, #6, #9, #10 d'un coup, et va au-delà de la proposition A4 qui gardait la notation.
3. **Nouveau paragraphe « Faithfulness and alignment » (§3.2)** — 4 phrases + 3 références neuves (`wu_dancing_2024`, `lou_instruction_2023`, `feuer_style_2025`). C'est la réponse à l'objection bloquante de Pierre-Yves sur σ.

---

## Tableau détaillé

### 🔴 Points bloquants (les 6 arbitrages)

| # | Auteur | Demande | Statut | Ce qui a été fait |
|---|---|---|---|---|
| 6 | PY + elod | Abstract : préférer `main_old`, insister sur l'apport | ✅ | Abstract entièrement réécrit (l. 68-76). Ouverture non formelle, zéro notation, clôture sur l'agenda de recherche : « so that reducing hallucination does not come at the cost of suppressing the invention that many tasks require ». |
| 7 | elod | « An entailed claim receives supported (SUP) » incompréhensible | ✅ | Devenu « An entailed claim is labeled \SUP\ (supported) » (l. 105), déplacé dans l'intro. |
| 8 | Martino | Supprimer SUP / Hall / LD | 🚫 | Décision A5 : conservées. Le comptage d'occurrences contredit l'argument « barely reused » (des dizaines d'usages, y compris en TikZ et tableaux où l'espace est contraint). **À répondre explicitement à Martino.** |
| 10, 22, 45 | Martino, elod, PY | Notation `K_p` vs `κ_p` incohérente / confusable | ✅ (10, 22) ⚠️ (45) | `κ` disparaît de l'abstract ; l. 224-226 ajoutent trois phrases distinguant `κ_p` et `ρ_p` ; l. 575 précise `K_p=(κ_p,Γ_p,ρ_p)`. La **confusion visuelle** κ/K signalée par PY (#45) reste : aucun renommage. |
| 44 | PY | κ=1 entre-t-il en collision avec ρ ? | ✅ | Option 2 appliquée l. 224-226 : « The phrase ``explicitly marked'' in the $\kappa_p=1$ case describes a typical pairing in practice, not a presentation requirement folded into the permission level: the marking itself is $\rho_p$'s role. » |
| 43, 48, 49, 55 | PY | Pourquoi σ dans le contrat s'il n'autorise rien ? | ✅ (48, 49, 55) ⚠️ (43) | Nouveau bloc l. 260-266 (« Style belongs in the contract for the same reason evidence and permission do… deux modes d'échec ») + nouveau §3.2 « Faithfulness and alignment » l. 584-588. Preuve empirique ajoutée : `feuer_style_2025` (les juges LLM pénalisent le ton sarcastique plus qu'une erreur factuelle). **Reste #43** : §2.2 énumère toujours *Truth contract → O_p → K_p* sans paragraphe σ ; σ n'arrive qu'en §2.3. |
| 67 | elod | fig:profiles est-elle nécessaire ? | ✅ | Conservée (décision A6). La prose redondante qui la précédait est réduite à un renvoi d'une ligne (l. 660). |

### 🟠 Structuration et pédagogie

| # | Auteur | Demande | Statut | Ce qui a été fait |
|---|---|---|---|---|
| 1 | elod | Reformuler + définir `claim` avec un exemple | ⚠️ | Reformulation ✅ (abstract). L'exemple de claim existe (§2.1, photosynthèse → deux claims contextualisées) mais `claim` n'est toujours pas **défini** à sa première occurrence dans l'abstract/l'intro. |
| 2, 3 | Martino, elod | Qu'est-ce que `p` ? | ✅ | L. 104 : « The task context $p$ includes applicable system instructions, such as a fixed register, the user's request, domain constraints… not only the literal prompt string. » |
| 13 | PY | Définir « truth contract » en termes courants | ⚠️ | La glose en langage courant existe désormais — mais dans l'abstract (l. 72 : « what evidence the task is answerable to, what style it invites, and what kind of invention it permits »), pas au point d'ancrage du commentaire (§Our position). |
| 15 | elod | Quelles sont ces instructions ? | ✅ | Détaillées l. 104 avec exemples entre virgules. |
| 16 | elod | Reformuler la phrase sur `O_p` | ✅ | Supprimée ; remplacée par un renvoi avant (« define in full in \S\ref{sec:framework} »), ce qui élimine la double définition. |
| 17, 35, 57 | Martino, elod | Définir les acronymes plus tôt | ✅ | `\SUP` ajouté l. 105 en parallèle de `\Hall` et `\LD` ; les trois sont maintenant définis en §1, les gloses formelles restant en §2.5. |
| 25 | elod | Beaucoup de notions non introduites | ⚠️ | `reference evidence` et `content-permission policy` sont désormais introduits l. 103. **Restent non introduits** à cet endroit (l. 156) : *epistemic presentation*, *scope*, *σ_p-conditioned claim typing*. |
| 27 | Martino | Paragraphe de plan en fin d'intro | ❌ | L'intro se termine toujours sur « Contributions » (3 apports), sans annonce section par section. |
| 29 | elod | `O_p` reste mystérieux, exemples concrets dès le début | ⚠️ | Exemples présents en §2.2 (l. 214 : source document, retrieval set, database, gold labels…) et dans les deux figures. Rien dans l'intro. **Recoupe directement la note d'encadrant « bien définir O_p comme la source de l'oracle ».** |
| 38 | elod | Mettre le tableau des symboles bien avant | ✅ | Non par déplacement du tableau, mais par déplacement de la section Related Work : `tab:symbols` remonte d'environ 4 pages et précède désormais tout usage formel. |
| 39, 42 | elod | Dire « prompt », pas « task context » | ⚠️ | Harmonisé presque partout sur « task context » (décision A1). **Résidu** : l. 205 dit encore « For prompt $p$, the truth contract is », cinq lignes avant l. 210 « Here, $p$ denotes the relevant task context rather than only the literal user-prompt string ». C'est exactement l'incohérence pointée en #42. |
| 40 | PY | §3.4-3.5 trop denses, simplifier ou glossaire | ⚠️ | Voie « glossaire » retenue : §2.1 (walkthrough informel + `tab:symbols`) précède maintenant les parties formelles. Les §2.4-2.5 elles-mêmes n'ont pas été allégées. |
| 41 | PY | `\textbf{...}` comme titre → `\paragraph{...}` | ❌ | 3 occurrences en §2.2 (l. 204, 213, 217) et 6 en §Research Agenda (l. 763-797). Passe mécanique non faite. |
| 18, 20, 21 | PY, elod | Refonte fig:flip : prompt en haut, réponse après, oracle visible | ✅ | Figure entièrement redessinée. Flux vertical **prompt (haut) → TC(p) avec O_p et κ_p explicites → response span (milieu) → verdict (bas)**, séparateur vertical pointillé entre les deux branches. Le nœud central passe de « claim extracted from a model response » à « **Response span:** … », ce qui répond au point #18 (on n'énonçait jamais qu'on évalue la réponse du LLM). |
| 52 | PY | Définir `s` plus tôt ; pourquoi `s` et pas `A`/`R` ? | ⚠️ | `s` figure dans `tab:symbols` désormais remonté, et fig:flip affiche « Response span ». `s` n'est toujours pas défini avant la figure 1. Renommage non fait. |
| 53 | PY | Le prompt s'écrit plutôt `P` majuscule | ❌ | Inchangé (`p` minuscule). |
| 61 | elod | Le prompt n'est pas un input de fig:decision ? | ❌ | fig:decision démarre toujours sur « model response ($y$) » ; le prompt n'apparaît que dans le nœud 2 (« read the truth contract »). **C'est précisément la note d'encadrant « refaire la figure principale pour prompt → claim ».** Un encadré « Running example » a été ajouté en bas de figure, ce qui aide sans corriger le flux. |
| 62 | elod | Préciser en légende que ce n'est pas l'évaluation complète | ⚠️ | La légende dit « Response-level aggregation remains a separate step ». Elle ne dit pas que l'alignement et le respect du style manquent, ce qui était la demande. |
| 63 | PY + elod | Pourquoi en annexe ? description trop longue | ⚠️ | Toujours 3 phrases (l. 622-630) + une redite l. 630 qui répète l. 622. Aucune justification du choix de l'annexe. |
| 64 | PY | Retirer l'auto-dévalorisation (annotation mono-auteur) | ❌ | L. 628-629 intactes : « coded in a single pass by one author, so the inferred task profiles are interpretive annotations rather than measurements… ». **Tension réelle** : PY veut retirer, mais c'est une déclaration de limite méthodologique qu'un relecteur CL exigera. Voir la note de review. |
| 65 | PY | Tableau/figure cluster avec chaque dataset | ❌ | `fig:profiles` reste purement conceptuelle (aucune ressource placée dans les cases) ; les 40 ressources restent en annexe sous forme de listes. Aucune vue synthétique. |
| 68 | PY | Worked Cases : vrais exemples plutôt que constructions | ⚠️ | Une phrase d'honnêteté ajoutée l. 723 (« Case A uses a documented summarization pattern; Cases B--E are constructed contrasts »). Le fond est inchangé : B-E restent des expériences de pensée. |
| 69 | PY | Research Agenda arrive comme un cheveu sur la soupe | ⚠️ | Phrase de cadrage ajoutée l. 761 (« six connected priorities that form a validation sequence »), et quelques limites sont désormais annoncées plus tôt (l. 251, 339, 658). Le rattachement point par point n'est pas fait. |
| 70 | PY | Objection : une telle annotation est très complexe | ⚠️ | Le point 1 mentionne fiabilité et désaccord d'annotateurs, sans traiter frontalement l'objection de coût/faisabilité. |
| 71 | PY | Conclusion à revoir | ✅ | Réécrite : ouverture « In this position paper, we argued that… », position présentée comme un argument et non un fait acquis. Étoffée d'une phrase. |

### 🟡 Clarifications locales

| # | Auteur | Demande | Statut | Ce qui a été fait |
|---|---|---|---|---|
| 4 | elod | Renommer `K_p` en « creativity-permission » | ❌ | Inchangé (« content-permission policy »). Le commentaire est mal capturé dans l'export (« creativity-êrmission ») — **à confirmer avec elod avant d'agir**. Argument contre : `κ_p=1` (spéculation marquée) n'est pas de la créativité. |
| 5 | Martino | « The evaluator » : c'est l'utilisateur ? | ❌ | La phrase visée a disparu avec la réécriture de l'abstract, mais « the evaluator » apparaît toujours l. 172, 276, 292 sans jamais être glosé (humain ? système ? les deux ?). |
| 11 | PY | Suggestion « commonly called hallucinations » | ❌ | L. 80 inchangée. |
| 12 | elod | Reformuler avec « in addition to » | ✅ | L. 88 : « The relevant question is therefore not only whether a statement is supported, but also whether the task permits departing from that support. » |
| 14 | PY | Nitpick : phrase pas très utile | ✅ | Phrase « rather than an independent legal agreement » supprimée. |
| 23 | elod | Préciser « listed in Appendix B » | ✅ | L. 154 : « (full list in Appendix~\ref{app:mapping}) ». |
| 24 | elod | Reformuler | ✅ | L. 155 : « This mapping is purposive and author-coded: it identifies a pattern within our sample, not a prevalence estimate for the broader literature. » |
| 26 | elod | C'est quoi « the rule » ? | ✅ | L. 157 : « the labeling rule defined in \S\ref{sec:framework} ». |
| 28 | elod | Ça ressemble au kappa, non ? | ✅ | L. 568 : « …a taxonomy of where a mismatch originates rather than of how much evidence-unknown content a task permits, which is the question $\kappa_p$ answers. » |
| 30 | elod | `K` définit la présentation ? incompréhensible | ✅ | L. 575 : « $K_p=(\kappa_p,\Gamma_p,\rho_p)$ jointly specifies what may be invented, where, and how it must be signaled. » |
| 31 | elod | Embrouille par rapport à `O_p` | ✅ | L. 581 : « Faithfulness and factuality each fix a particular choice of $O_p$… and ask whether a claim is entailed by it. » |
| 32 | elod | « definitive » incompris | ✅ | L. 595 : « …from purely unwanted, defective ones ». |
| 33 | elod | « Our distinction does not rest on value » pas claire | ✅ | L. 596 : « …does not rest on the value or ingenuity of a divergence, only on whether the task's content-permission policy authorizes it. » |
| 34 | elod | Détailler « low usefulness » | ✅ | L. 597 : rattaché au score `U(c*,p)` défini en §2. |
| 36, 37 | PY, elod | `SV` : ? / ?? | ✅ | Cause identifiée : `\SV` n'était **jamais** glosé. L. 175 : « an \SV\ (\emph{stylistic variation}) flag ». |
| 46 | elod | Exemple pour `Γ_p` | ✅ | L. 232-233 : brainstorming médical (diagnostics dans la portée, doses inventées hors portée) pour `Γ_p`, et exemple Lyme hedgé pour `ρ_p`. |
| 47 | elod | Citer CLEF, TREC, SemEval | ❌ | Aucune citation ajoutée l. 251. `references.bib` contient `simpletext_task2_2026` (CLEF 2026 SimpleText Task 2) — **présente mais jamais citée dans le .tex**. Aucune clé TREC ni SemEval. |
| 50 | elod | « Pas très claire » | ✅ | Passage réécrit et étayé (l. 264-266) avec `feuer_style_2025`. |
| 51 | elod | Découpage utile pour K/Γ, moins pour le style | ❌ | Pas de demande d'action explicite ; aucun changement. À clore comme « remarque, pas de modification ». |
| 54 | PY | À justifier | ✅ | L. 273 : renvoi à la paire historical-QA / fiction de fig:flip. |
| 56 | PY | Réintroduire les gloses anglaises pour Γ et ρ | ✅ | L. 221-222 : *permission scope* et *required epistemic presentation* en italique. |
| 58 | elod | « wrt O_p » plutôt qu'« external world » | ✅ | L. 321 : « not proof that the claim is true relative to $O_p$ ». |
| 59 | elod | Détailler ; alignement réponse/prompt non abordé | ✅ | L. 326 : « …related to, but narrower than, general response-to-prompt alignment, which this paper does not score. » (traitement minimal ; la note d'encadrant « définir usefulness avec le SOTA » va plus loin et reste ouverte) |
| 60 | elod | Détailler `R(y|p)` | ✅ | Devenu un `\paragraph` complet (l. 333-339) avec règles d'agrégation candidates et renvoi à fig:decision replacé après la définition. |
| 66 | elod | « the five » : tu réfères à quoi ? | ✅ | L. 644 : « A separate set of five constrained creative-problem-solving resources… ». |
| 72 | Martino | Commencer par « in this position paper, we argued that… » | ✅ | L. 842, mot pour mot. |
| 73 | Martino | Rappeler la taille de l'échantillon | ✅ | L. 848 : « In our purposive sample of forty evaluation resources ». |
| 74 | elod | Numéroter les ressources pour voir qu'il y en a 40 | ❌ | Aucune numérotation. Vérification faite de mon côté : **le compte est juste, 40 lignes-ressources exactement** (13 + 13 + 14). |

---

## Ce qui reste à faire, par ordre de coût

**Mécanique (< 1 h)** — #41 (`\textbf` → `\paragraph`, 9 occurrences) · #74 (numéroter les 40 ressources) · #39/#42 (corriger « For prompt $p$ » l. 205) · #11 · #73 déjà fait.

**Court (1-3 h)** — #27 (paragraphe de plan) · #5 (gloser « the evaluator ») · #29 (exemple d'`O_p` dans l'intro) · #62 (compléter la légende) · #63 (raccourcir la description d'annexe) · #47 (citer `simpletext_task2_2026`, chercher TREC/SemEval) · #25 (introduire *scope* et *epistemic presentation* avant l. 156).

**Décisions à prendre** — #4 (renommage `K_p`, confirmer avec elod) · #8 (rédiger la réponse de rejet à Martino) · #53 (`p` vs `P`) · #64 (arbitrer honnêteté méthodologique vs conseil de PY) · #45 (renommer `κ_p` ou assumer).

**Substantiel** — #61 + note encadrants (refonte fig:decision en prompt → claim) · #65 (figure cluster des 40 ressources) · #68 (vrais exemples en Worked Cases) · #69/#70 (rattacher l'agenda) · #43 (paragraphe σ dans §2.2).

---

## Bug à corriger en priorité

`\emph{Outco}` apparaît **5 fois** dans §Worked Cases (l. 729, 735, 742, 748, 754). C'est manifestement `\emph{Outcome:}` tronqué. Le défaut est **antérieur à la review** (déjà présent dans le commit `d7a3745`), donc aucun relecteur ne l'a signalé — et il est visible dans le PDF compilé. Correction : remplacer les 5 occurrences par `\emph{Outcome:}`.
