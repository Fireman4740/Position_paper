# Revue des commentaires Overleaf et roadmap de révision

Basé sur `commentaires_overleaf_suivi.md` (73 fils actifs, commentaire 19 retiré). Chaque numéro renvoie au même « Commentaire N » dans ce fichier pour retrouver la citation exacte et le contexte complet.

## 1. Synthèse

Trois relecteurs, trois angles différents. **elod.egyed-zsigmond** produit le plus gros volume de commentaires (~35) : presque tous sont des demandes de clarification locale — « reformuler », « pas clair », « c'est quoi κ ? » — et convergent vers un même diagnostic : trop de symboles sont utilisés avant d'être définis. **Pierre-Yves Genest** fait moins de commentaires mais les plus substantiels : il conteste directement des choix de conception (le rôle de σ dans le contrat, la pertinence de mettre le mapping en annexe, la formulation dévalorisante sur l'annotation mono-auteur) et propose une maquette de figure alternative. **Martino Lovisetto**, lecteur plus extérieur, cible surtout la cohérence de notation (κ vs K_p, symboles définis trop tard) et la lisibilité générale.

Deux points où les relecteurs ne sont pas alignés, et qui demandent un arbitrage de ta part avant de retoucher le texte :
- **Abstract** (#6) : Pierre-Yves préfère la version de `main_old` (plus argumentative, moins chargée en notation) à la version actuelle. elod est d'accord avec lui. Tu as toi-même déjà collé l'ancien abstract dans le fichier de suivi — signe que l'arbitrage est en cours.
- **Abréviations SUP/Hall/LD** : Martino (#8) suggère de les supprimer entièrement et d'écrire les labels en toutes lettres ; elod (#7, #35, #57) part du principe qu'on les garde et demande juste de les définir plus tôt. Ce sont deux directions incompatibles.

Le reste des commentaires se regroupe en un petit nombre de familles récurrentes plutôt qu'en 73 problèmes indépendants — voir le tri ci-dessous.

## 2. Tri par thème et priorité

🔴 **Bloquant — décisions de fond, à trancher avant d'éditer**

| Sujet | Commentaires | Description |
|---|---|---|
| Notation `p` / `K_p` / `κ_p` / `κ` incohérente | #10, #22, #39, #42, #45, #53 | Signalé indépendamment par les 3 relecteurs. `p` est appelé tantôt « prompt », tantôt « task context » ; `K_p` (majuscule) et `κ` (kappa) sont utilisés l'un pour l'autre et visuellement confondables. |
| Rôle de σ dans le contrat de vérité | #43, #48, #49, #51, #55 | Objection soutenue de Pierre-Yves (3 messages à la suite) : si σ n'autorise aucun contenu et que seul le σ observé compte pour évaluer Hall/LD, pourquoi inclure le σ *requis* dans le contrat ? La justification actuelle ne répond pas à la question selon lui. → voir §4, une section faithfulness/alignment ↔ style pourrait fournir une justification empirique plutôt que purement conceptuelle. |
| κ=1 vs ρ : chevauchement possible | #44 | Question de fond sur une possible collision entre le niveau de permission κ=1 (divergence limitée et marquée) et l'exigence de présentation ρ. |
| Abstract : version actuelle vs `main_old` | #6 | Voir synthèse ci-dessus. |
| Garder ou supprimer SUP/Hall/LD | #7, #8, #35, #57 | Voir synthèse ci-dessus. |
| Figure « conceptual task-design space » (fig:profiles) : nécessaire ? | #67 | elod doute de son utilité. |

🟠 **Important — structuration et pédagogie**

| Sujet | Commentaires | Description |
|---|---|---|
| Définir les symboles avant leur premier usage | #1, #2, #3, #9, #13, #17, #25, #29, #35, #36, #37, #38, #40, #52, #57 | Le plus gros cluster. Pierre-Yves (#40) pose le diagnostic global : §3.4–3.5 sont trop denses en notation mathématique, soit à simplifier, soit à accompagner d'un glossaire clair. Concrètement : avancer le tableau des symboles, définir `claim`, `p`, `s` (response span), `O_p`, `κ`, `SUP` dès l'abstract/l'intro plutôt qu'en §3. |
| Ajouter un paragraphe de plan en fin d'intro | #27 | Martino : un court paragraphe annonçant le contenu de chaque section aiderait beaucoup le lecteur. |
| Refonte des figures fig:flip / fig:decision | #18, #20, #21, #61, #62 | Ajouter le prompt comme input explicite, réordonner prompt → réponse → jugement, rendre l'oracle O_p visible, préciser en légende que la figure ne couvre pas l'évaluation complète de la réponse. Pierre-Yves a fourni une maquette (lien Claude artifact dans #20) à reprendre comme base. |
| Tableau/figure de synthèse des 40 ressources codées | #65 | Pierre-Yves : une vue synthétique par cluster (σ, κ) manque actuellement. |
| Worked Cases : exemples réels vs expériences de pensée | #68 | Pierre-Yves apprécie la section mais peine à suivre les cas B–E construits ; suggère de remplacer au moins certains par des exemples réels documentés. |
| Research Agenda déconnecté du reste | #69, #70 | Chaque point du plan de recherche devrait être annoncé comme limite plus tôt dans le papier plutôt que d'apparaître de novo en fin de texte. |
| Conclusion à retravailler | #71 | Nuancer l'ouverture (présenter la définition comme une proposition, pas un fait établi) et l'étoffer — c'est la critique la plus substantielle sur cette section. |
| Section mapping (§4) : annexe et auto-dévalorisation | #63, #64 | Raccourcir la description de l'annexe dans le corps du texte (elod) ; retirer la phrase qui minimise la valeur du travail à cause de l'annotation mono-auteur (Pierre-Yves : « ne dévalorise pas ton travail »). |

🟡 **Moyen — clarifications locales**

| Sujet | Commentaires |
|---|---|
| Exemples concrets à ajouter (O_p, Γ_p) | #29, #46 |
| Reformulations ponctuelles signalées peu claires | #5, #7, #12, #14, #15, #16, #24, #26, #28, #30, #31, #32, #33, #34, #54, #58, #59, #60, #66 |
| Citer CLEF/TREC/SemEval | #47 (vérifier `references.bib`, sinon recherche de littérature) |
| `\textbf{...}` utilisé comme titre de paragraphe → `\paragraph{...}` | #41, et occurrence similaire en #70 — passe mécanique sur tout le document |
| Gloss anglais à réintroduire à côté de Γ et ρ | #56 |
| Réponse déjà connue à intégrer dans le texte | #50 — tu as toi-même répondu « abordé dans l'état de l'art mais ça reste un problème ouvert » ; il suffit de l'écrire clairement à cet endroit |

⚪ **Mineur — rédaction et mécanique**

`#11, #23, #66 (référent « the five » ambigu), #72 (ouverture de la conclusion), #73 (rappeler la taille de l'échantillon), #74 (numéroter les 40 ressources dans les tableaux annexes)`

🔍 **À vérifier directement dans Overleaf**

- **#21**, second message d'elod : tronqué dans l'export (« Ecrire peut-être un texte plus longue, le découper en claims... »). Le sens général se devine (texte plus long, découpé en claims pour introduire les définitions) mais la fin manque.
- **#4** : texte du commentaire mal capturé (« creativity-êrmission ») — probablement un souci d'encodage à la capture. Le renommage visé n'est pas clair ; à confirmer avec elod avant d'agir.

## 3. Roadmap de révision

**Phase 0 — Avant de commencer (5 min)**
Relire #21 et #4 directement dans Overleaf pour lever l'ambiguïté.

**Phase 1 — Décisions de fond**
Trancher, dans cet ordre, les 6 points listés en 🔴 : convention de notation unique pour p/K_p/κ_p ; paragraphe de justification de σ répondant frontalement à l'objection de Pierre-Yves ; clarification κ=1 vs ρ ; version de l'abstract ; sort des abréviations SUP/Hall/LD ; utilité de fig:profiles. Ces décisions conditionnent une bonne partie du reste — les prendre en premier évite de retravailler deux fois le même passage.

**Phase 2 — Restructuration et pédagogie**
Avancer le tableau des symboles / glossaire avant §3.4, définir claim/p/s/O_p/κ/SUP dès leur première apparition, ajouter le paragraphe de plan en fin d'intro (#27), ajouter les exemples manquants pour O_p et Γ_p, passe mécanique `\textbf` → `\paragraph`.

**Phase 3 — Figures**
Refondre fig:flip et fig:decision à partir de la maquette de Pierre-Yves (#20) ; ajouter la figure/tableau de synthèse des 40 ressources (#65).

**Phase 4 — Contenu des sections**
Worked Cases (exemples réels), Research Agenda (relier chaque point à une limite annoncée plus tôt), section mapping §4 (raccourcir + retirer l'auto-dévalorisation + numéroter les ressources), conclusion (nuancer + étoffer + reprendre les suggestions de Martino).

**Phase 4bis — Nouveau contenu (recherche de littérature requise)**
Voir détail en §4. En résumé : état de l'art sur l'extraction de claims, section (ou sous-section) faithfulness/alignment ↔ style/σ avec sa littérature, définition de *usefulness* ancrée dans le SOTA, définition de O_p comme source de l'oracle, ouverture sur les agents IA/task agents. À traiter après les phases 1–4 : cette phase ajoute du contenu, elle doit s'appuyer sur une structure déjà stabilisée plutôt que d'être écrite puis déplacée.

**Phase 5 — Reformulations locales et citations**
Traiter la liste 🟡/⚪ section par section en suivant l'ordre du document ; ajouter les citations CLEF/TREC/SemEval (vérifier si déjà présentes dans `references.bib` avant de lancer une recherche).

**Phase 6 — Relecture finale**
Repasser sur tout le document pour vérifier la cohérence de la notation choisie en phase 1, puis `make check` / `make pdf`, et relancer un audit de citations si de nouvelles références ont été ajoutées.

## 4. Notes de la réunion avec les encadrants (à intégrer)

Ces notes recoupent en partie les commentaires Overleaf ci-dessus, mais apportent aussi du contenu réellement nouveau (état de l'art à chercher, nouvelle sous-section, nouvelle figure) plutôt que des corrections de texte existant. Plusieurs notes sont coupées en fin de ligne — je les signale plutôt que de deviner la suite.

**Confirme des points déjà identifiés**
- « restructure pour remonter les def TC(p) » → confirme directement le plus gros chantier de la Phase 2 (cluster « définir les symboles avant leur premier usage »).
- « Faire gaffe à bien définir les choses avant le reste, bien définir les notions de l'intro » → même diagnostic que les commentaires Overleaf, formulé indépendamment par les encadrants à l'oral. Renforce la priorité de la Phase 2.
- « Bien définir O_p comme la source de l'oracle et [...] » → confirme #29 (l'oracle O reste mystérieux, exemples concrets nécessaires dès l'intro).
- « Définir usefulness avec le SOTA car pas [...] » → confirme et prolonge #59 (usefulness sous-développé) : la piste ici est de l'ancrer dans la littérature existante plutôt que de le définir seul.

**Contenu nouveau à écrire (recherche de littérature nécessaire)**
- État de l'art sur l'extraction de claims (« Ajouter SOTA extraction de claim pour [...] » — la fin de la note est coupée, à préciser ce que ce SOTA doit motiver ou appuyer avant de lancer la recherche).
- Section ou sous-section sur faithfulness et alignement, avec son lien au style et à σ (« Mettre une section sur faithfulness et alignement et le lien avec le style et sigma » + « faire le lien entre le sigma et la faithfulness et [ajouter] le SOTA pour le sigma et style »). C'est potentiellement la meilleure réponse à l'objection bloquante de Pierre-Yves sur l'utilité de σ (#43, #48, #49) : si la littérature faithfulness/alignment montre déjà un lien entre forme stylistique et erreurs factuelles, cela justifie empiriquement d'inclure σ dans le contrat plutôt que de s'appuyer sur une justification purement conceptuelle.
- État de l'art additionnel, de façon générale (« ajouter peut-être de l'état de l'art ») — trop vague pour être actionnable tel quel ; à préciser (quelle section, quel manque précis) avant de lancer une recherche.

**Nouvelle ouverture / discussion**
- Ajouter une ouverture sur les agents IA (« Agentic AI ») et les task agents, probablement en Discussion ou Research Agenda, pour positionner le framework par rapport à l'évaluation d'agents plutôt que de simples réponses ponctuelles.

**Figure**
- Refaire la figure principale pour montrer explicitement la chaîne prompt → claim. À distinguer de la refonte déjà prévue en Phase 3 pour fig:flip/fig:decision : ici l'angle est spécifiquement le passage du prompt à la claim, pas seulement la réorganisation des nœuds existants — à voir si c'est la même figure retravaillée ou une figure additionnelle.

**À clarifier avant de traiter**
- « fait un bon prompt pour thèse principale [...] » — sens peu clair : s'agit-il de calibrer l'introduction/l'abstract pour qu'il serve de bon point d'entrée vers la thèse principale ? À confirmer avant d'agir.
- Notes coupées en fin de ligne : « SOTA extraction de claim pour », « Définir usefulness avec le SOTA car pas », « O_p comme la source de l'oracle et ». La suite manque — à compléter avant de les traiter comme actionnables.
