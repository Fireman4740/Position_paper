# Modifications appliquées et décisions prises — 27/07/2026

Exécution du plan d'action de `review_consolidee_2026-07-27.md`, **puis** de quatre vagues de consignes complémentaires. Le manuscrit compile sans erreur ni citation non résolue (**30 pages**, `make pdf` OK). Sauvegardes : `/tmp/main_position.BAK.tex`, `/tmp/references.BAK.bib`.

**Chiffres** : `main_position.tex` 1004 → 1172 lignes · `references.bib` 103 → 112 entrées · 3 figures → 4 · 6 priorités d'agenda → 7 · les 40 ressources numérotées.

> **Ce document couvre trois vagues.** La **partie A** (§1-3 ci-dessous) est le plan d'action initial. La **partie B** est la refonte de la notation `K_p`/`κ_p`. La **partie C** est le traitement des 7 points « substantiels non faits » et des arbitrages #8/#4/#45/#53.

---

## 1. Nouvelles références ajoutées à `references.bib`

Neuf entrées, toutes vérifiées (titre, auteurs, année, venue) sur ACL Anthology / arXiv / NeurIPS Proceedings avant insertion. Aucune n'était déjà présente.

| Clé | Référence | Venue |
|---|---|---|
| `wei_longform_2024` | Wei et al., *Long-form factuality in large language models* (SAFE, LongFact) | NeurIPS 2024 — arXiv:2403.18802 |
| `song_veriscore_2024` | Song, Kim & Iyyer, *VeriScore* | Findings EMNLP 2024 — arXiv:2406.19276 |
| `metropolitansky_claimify_2025` | Metropolitansky & Larson, *Towards Effective Extraction and Evaluation of Factual Claims* (Claimify) | ACL 2025 — arXiv:2502.10855 |
| `gunjal_molecular_2024` | Gunjal & Durrett, *Molecular Facts* | Findings EMNLP 2024 — arXiv:2406.20079 |
| `wanner_closer_2024` | Wanner, Ebner, Jiang, Dredze & Van Durme, *A Closer Look at Claim Decomposition* (DecompScore) | \*SEM 2024, p. 153-175 — arXiv:2403.11903 |
| `jiang_core_2025` | Jiang et al., *Core: Robust Factual Precision with Informative Sub-Claim Identification* | Findings ACL 2025 — arXiv:2407.03572 |
| `hu_decomposition_2024` | Hu, Long & Wang, *Decomposition Dilemmas* | arXiv:2411.02400 |
| `kamoi_wice_2023` | Kamoi, Goyal, Rodriguez & Durrett, *WiCE* | EMNLP 2023 — arXiv:2303.01432 |
| `choi_decontextualization_2021` | Choi, Palomaki, Lamm, Kwiatkowski, Das & Collins, *Decontextualization: Making Sentences Stand-Alone* | TACL 9, p. 447-461 — arXiv:2102.05169 |

**Corrections d'attribution faites au passage.** Votre SOTA attribuait SAFE à « Wei et al. 2024 », clé qui existait déjà dans la bib — mais `wei_measuring_2024` est **SimpleQA** (Wei, Karina, Chung et al., arXiv:2411.04368), pas SAFE. La nouvelle clé `wei_longform_2024` évite la collision. Par ailleurs `rajendhran_verifastscore_2025` (VeriFastScore) était déjà présente et non citée : elle reste disponible si vous voulez couvrir le versant coût/latence de la vérification.

**Non retenues, volontairement** : RARR (Gao et al.), QAGS, QuestEval, ClaimDecomp, Newman et al., DnDScore, D-FActScore, RoSE/ACU, Factcheck-Bench, AVeriTeC, ClaimBuster, Check-COVID. Raison : la sous-section fait 5 paragraphes dans un position paper, pas une revue ; ces travaux sont pertinents pour un chapitre de thèse ou un papier méthodologique sur l'extraction, pas pour l'argument ici. Elles sont listées dans votre SOTA et restent mobilisables.

---

## 2. Modifications du manuscrit, par rang du plan

### Rang 1 — Pipeline à deux étages (l'objection la plus dangereuse)

**Où** : nouveau `\paragraph{Where each component acts}` en §2.3, avant le bloc « Style belongs in the contract ».

**Ce qui a été écrit** : les trois composantes ne sont pas redondantes parce qu'elles agissent à deux étages distincts du même pipeline. La récupération vient d'abord (interpréter `s` dans `p` → `𝒞(s,p)` → claims canoniques), la labellisation ensuite (comparer à `O_p`, tester `K_p`). En italique dans le texte : *« σ_p acts at the recovery stage; O_p and K_p act at the labeling stage. »* Puis la phrase qui désamorce l'objection : lire l'absence de σ_p dans la règle comme preuve que le style est étranger au contrat, c'est prendre un pipeline à deux étages pour un pipeline à un étage.

**Renforcé par trois autres endroits** :
- `fig:decision` reçoit deux accolades verticales à gauche : « recovery stage — governed by σ_p » et « labeling stage — governed by O_p and K_p » ;
- `fig:prompt-to-claim` porte les mêmes annotations à droite ;
- §3.3 (nouvelle) montre que la littérature sur l'extraction établit **indépendamment** que la récupération est un étage à part entière avec ses propres métriques et ses propres modes d'échec.

C'est ce dernier point qui transforme l'argument : il ne repose plus sur une phrase de transition ni sur l'anecdote des juges LLM, il repose sur un domaine constitué.

### Rang 2 — Figure fil rouge et bascule sur l'exemple Lyon

**`figures/fig_prompt_to_claim.tex` est intégré** via `\input{}` en tête de §2.1, et les 5 styles TikZ manquants (`oracle`, `slot`, `span`, `claim`, `stage`) ont été ajoutés au préambule. C'est désormais la **Figure 2**, page 5.

**§2.1 « Overview » entièrement réécrite** sur le fil rouge Lyon. La lecture suit les quatre spans : figure d'admissions entailée → `SUP` ; ordre du masque rendu par métaphore → `SUP` + `SV` ; fermeture des écoles hedgée, hors preuve mais dans `Γ_p` → `LD` ; directeur nommé accusé sans marquage, hors `Γ_p` **et** non marqué → `Hall`. Clôture : *« One prompt, one contract, one response, four different labels. »*

**`fig:decision`, encadré « Running example »** : photosynthèse → Lyon, avec le span `s_3` (écoles) qui est celui qui produit `LD` — précisément ce que l'exemple photosynthèse ne pouvait pas faire (`κ_p=0 ⟹ Γ_p=∅ ⟹ LD` inatteignable).

**Ajustements esthétiques faits sur la figure** : la flèche `O_p` traversait la figure en diagonale et entrait en collision avec les annotations de droite ; elle est maintenant routée par la marge droite et arrive au niveau de la bande « evidence state », doublée d'une étiquette orange « compared with O_p ». Les deux annotations de pipeline ont été réalignées sur leurs bandes respectives.

### Rang 3 — Sous-section SOTA extraction de claims

**Nouveau §3.2 « Claim extraction and the recovery stage »** (`\label{sec:extraction}`), 5 paragraphes, placé entre les taxonomies d'hallucination et les paradigmes adjacents.

Structure : (i) le framework présuppose une fonction de récupération, et cette présupposition n'est pas gratuite ; (ii) le paradigme *decompose-then-verify* — FActScore, SAFE ; (iii) le rejet de l'hypothèse de vérifiabilité universelle — VeriScore, Claimify ; (iv) le débat sur la granularité — molecular facts, WiCE, DecompScore, Decomposition Dilemmas, Core ; (v) trois conséquences.

**L'argument le plus important est en (iii) et en (v.3)** :

- *(iii)* une tâche avec `κ_p>0` est **exactement** une tâche dont les réponses sont censées contenir du contenu non vérifiable contre `O_p`. Un extracteur qui suppose la vérifiabilité universelle classe donc mal le contenu licencié **dès la récupération**, avant tout label. Cela relie directement la littérature d'extraction à `κ_p` au lieu de la juxtaposer.
- *(v.3)* les travaux sur la décontextualisation demandent *ce qu'il faut ajouter* pour qu'une unité soit interprétable ; `σ_p` demande *ce que la tâche a demandé à l'unité de ressembler* au départ. Aucun benchmark d'extraction connu ne fait varier le niveau de style requis à claims constants — d'où le fait que le test de stabilité soit énoncé comme une exigence sur les évaluateurs et non comme un résultat mesuré.

**Effet défensif** : l'objection « vous démontrez vous-mêmes en §2.4 que l'extraction est sensible au style, donc votre unité d'analyse est instable » est retournée. Oui, la récupération est faillible ; c'est un fait établi par la littérature, c'est la raison d'être de la priorité 3 de l'agenda, et c'est ce qui prouve que la récupération est un étage distinct.

### Rang 4 — `κ_p` assumé comme résumé ordinal de `Γ_p`

**Où** : §2.2, après l'échelle `κ_p`.

Quatre phrases : `κ_p` **est** un résumé ordinal grossier de `Γ_p` (portée vide aux deux extrêmes récupérable depuis la portée seule) ; il est conservé parce qu'une valeur à trois niveaux s'assigne à un benchmark entier, ce qui rend possible la comparaison inter-ressources quand la spécification de portée est indisponible — comme dans le mapping du §4 ; **la décision est portée par `Γ_p` et `ρ_p`, pas par `κ_p`**.

Effet collatéral : réduit le poids conceptuel de `κ`, ce qui désamorce #44 (collision κ=1/ρ) et rend #45 (confusion visuelle κ/K) moins coûteuse.

### Rang 5 — Limite du mapping reformulée

**Où** : §4.1, remplacement des deux phrases l. 628-629.

Avant : « coded in a single pass by one author, so the inferred task profiles are interpretive annotations rather than measurements… would be required before treating it as a validated resource ».

Après : « The mapping is a purposive expert coding designed to test whether prominent evaluation resources represent the contract's variables at all. It is a scoping instrument, not a prevalence estimate: it establishes that the variables are separable and that widely used resources leave several of them implicit, and it does not establish how frequently that occurs across the field. Releasing it as a validated dataset would require a public codebook and independent recoding… »

Même contenu informationnel, posture inverse : description d'un choix de méthode au lieu d'un aveu de faiblesse. **Arbitrage de #64 : la limite reste, l'auto-dévalorisation part.**

### Rang 6 — Risque de mesure sur `unknown`

**Où** : §2.5, juste après la définition de `E(c*,O_p)`.

Quatre phrases : `unknown` agrège indétermination réelle, échec de récupération et hors-domaine ; sous contrat permissif les trois routent vers `LD` ; **un pipeline qui sous-récupère produit donc plus de `LD` et paraît plus favorable aux tâches permissives qu'il ne l'est** — problème d'incitation, pas erreur d'annotation ; publier `LD` sans publier la couverture de récupération sur `O_p` ne suffit pas, et séparer les trois sources relève de la priorité 3 de l'agenda.

### Rang 7 — Ouverture agents

**Où** : nouveau point **7** de l'agenda, « Contracts in agentic and tool-using settings ». La phrase de cadrage passe de « six connected priorities » à « seven ».

Trois conséquences développées : (i) `O_p` cesse d'être fixé au départ — l'agent le constitue par récupération et appels d'outils, donc l'évaluation doit enregistrer **quand** `O_p` a été fixé autant que son contenu ; (ii) une tâche se décompose en sous-tâches à contrats propres qui peuvent entrer en conflit — une étape de planification peut légitimement opérer à `κ=2` tandis que l'étape qui rapporte à l'utilisateur doit opérer à `κ=0`, donc une divergence licite là où elle est produite devient une violation là où elle est exposée ; (iii) `ρ_p` acquiert des conséquences non épistémiques — ce qu'un composant rapporte comme établi plutôt que conjecturé détermine l'action d'un composant aval. Clôture sur `zhuang_toolqa_2023` (déjà dans la bib, jusqu'ici seulement en annexe) : les benchmarks d'usage d'outils évaluent le succès de tâche et ne séparent pas ces champs.

### Rang 8 — `usefulness` défini avec le SOTA

**Où** : §2.5, `U(c*,p)` devient un `\paragraph{Usefulness is a separate score}`.

Ce qui est dit : `U` répond à une question que la règle de labellisation refuse délibérément de poser — *étant donné que le contrat a autorisé cette divergence, cette divergence valait-elle quelque chose ?* **Nous ne proposons pas de nouvel instrument de mesure** ; les instruments existent et sont spécifiques à la tâche : jugements d'*appropriateness* en évaluation de créativité, où la nouveauté est scorée conjointement avec l'adéquation et non seule (`acar_creativity_2019`, `franceschelli_creativity_2024`), et jugements de qualité côté lecteur pour le texte narratif et explicatif généré (`marco_reader_2025`, `chakrabarty_art_2024`). Ce que le contrat ajoute, c'est **l'ordre** : la permission d'abord, l'utilité ensuite, sur les claims que la permission a déjà admis. `U` est donc plus étroit que l'alignement réponse↔prompt (non scoré ici) et plus étroit que la qualité de réponse (qui mélange utilité, couverture et conformité stylistique). Clôture : « an uninteresting authorized invention is a weak answer, not a hallucination ».

### Rang 9 — Faithfulness / alignement étoffé et relié au pipeline

**Où** : §3.3 « Faithfulness and alignment », +6 phrases.

L'ajout explique pourquoi la tension est réelle et non terminologique : la *faithfulness* est une propriété de l'étage de **labellisation** (un claim récupéré est-il entailé par le contexte fourni ?) ; l'instruction-following, style compris, est une propriété de la **génération que l'étage de récupération doit lire**. Un modèle qui satisfait une demande de style change la forme de surface sur laquelle la récupération opère ; une récupération non robuste au style produit alors des unités différentes, et la faithfulness mesurée sur ces unités change **sans qu'aucun engagement du modèle n'ait changé**. Conclusion : les trade-offs rapportés entre les deux objectifs sont en partie une propriété de la mesure et pas seulement de l'entraînement, et séparer les étages est ce qui rend les deux lectures distinguables.

### Rang D (bonus) — Agrégation exhibée sur le fil rouge

**Où** : §6.1 Discussion, après le paragraphe sur `R(y|p)`.

La figure produit un `SUP`, un `SUP+SV`, un `LD` et un `Hall`. Sous règle du pire cas : échec. Sous règle proportionnelle : trois claims sur quatre conformes, réponse largement acceptable avec un défaut identifié. Sous règle pondérée par sévérité : dépend du poids d'une attribution fabriquée à un individu nommé. **Nous n'arbitrons pas** ; nous notons que les labels au niveau claim sont identiques dans les trois cas, que le nombre rapporté ne l'est pas, et qu'une évaluation qui ne publie que le nombre laisse son lecteur incapable de reconstituer laquelle des trois questions a reçu une réponse.

Effet : répond au « so what » sans prétendre résoudre l'agrégation.

### Rang 10 — Mécaniques

| Correction | Statut |
|---|---|
| `\emph{Outco}` × 5 → `\emph{Outcome:}` | ✅ 0 occurrence restante |
| `simpletext_task2_2026` cité (#47) | ✅ §2.3, comme point de calibration existant pour valider les frontières de `σ_p` (simplification de texte à audience cible spécifiée) |
| Abstract : clause sur les trois labels | ✅ « A claim is then labeled in three ways rather than two---supported, hallucination, or licensed divergence---so that permitted invention is no longer scored as error. » En prose, sans notation. |
| `For prompt $p$` → `For a task context $p$` (#39/#42) | ✅ l'incohérence à 5 lignes d'intervalle a disparu |
| Paragraphe de plan en fin d'intro (#27) | ✅ `\paragraph{Plan of the paper}`, avec en son cœur le positionnement Related Work réclamé : « existing taxonomies classify *where* a mismatch originates, whereas the contract asks *whether the task authorized* the departure » |
| Glose de « the evaluator » (#5) | ✅ §2.6 : « whoever or whatever applies the rule---a human annotator, an automated pipeline, or a combination---since the definitions constrain the procedure and not its implementation » |
| Légende de `fig:decision` (#62) | ✅ dit maintenant explicitement que la figure ne montre ni le scoring de conformité stylistique, ni `U`, ni l'alignement réponse↔prompt |
| `\textbf{}` → `\paragraph{}` (#41) | ⚠️ partiel — voir décision D4 |

---

## 3. Décisions prises

**D1 — Placement de `fig:prompt-to-claim` : §2.1, pas §1.** La note `fil_rouge` proposait §1 après « Our position ». Écarté : `\SV`, `\Gamma_p` et `\rho_p` n'ont aucune existence à ce point du texte, et la figure les utilise tous. En tête de §2.1 elle reste la première chose que le lecteur voit du framework, elle joue son rôle de glossaire, et `fig:flip` garde sa place en §1 où elle porte l'argument de relativité. Ordre de lecture obtenu : flip (relativité) → prompt-to-claim (couverture) → decision (algorithme).

**D2 — Pas de carte Lyon dans `tab:contracts`.** Le tableau fait déjà 4 cartes sur une pleine page ; une cinquième risquait le débordement, et le contenu serait redondant avec la figure. À la place, une phrase indique que les quatre cartes font varier une composante à la fois et que le fil rouge occupe la combinaison restante, `σ_p=2` avec `κ_p=1`. Bénéfice secondaire : la réserve du fil rouge sur la confusion possible avec la cellule « TARGET GAP » de `fig:profiles` (`σ_p=2, κ_p=0`) est traitée par la même phrase.

**D3 — L'exemple photosynthèse est conservé dans `tab:contracts`.** Il y couvre la cellule `σ_p=2, κ_p=0`, qui est précisément le manque empirique que `fig:profiles` désigne. Le remplacer aurait supprimé une donnée de l'argument. Il n'est plus le fil rouge, il est devenu un cas parmi d'autres — ce qui est son rôle correct.

**D4 — `\textbf` → `\paragraph` : appliqué en §2.2 seulement.** Les trois en-têtes de §2.2 (`Truth contract`, `Reference evidence (O_p)`, `Content-permission policy (K_p)`) sont convertis. Les six points numérotés du Research Agenda (`\textbf{1. …}` … `\textbf{7. …}`) sont **conservés en gras** : ils fonctionnent comme une liste numérotée, pas comme des titres de sous-parties, et `\paragraph{1. …}` produirait une numérotation visuellement concurrente de celle des sections. Les `\textbf` restants sont des emphases inline dans les tableaux, hors périmètre de #41. **À confirmer avec PY.**

**D5 — SOTA extraction : 9 références, pas 25.** Voir §1. Le critère retenu : une référence entre si elle porte l'un des quatre arguments (decompose-then-verify, rejet de la vérifiabilité universelle, débat de granularité, modes d'échec). Les travaux QA-based et les jeux de données de vérification bout-en-bout n'en portent aucun **dans ce papier**.

**D6 — La limite méthodologique du mapping reste (#64).** Arbitrage explicite contre la demande de Pierre-Yves : un relecteur CL qui découvre seul que l'annotation est mono-auteur réagit plus mal que face à une limite déclarée. Ce qui a été retiré, c'est le ton, pas le contenu. **À expliquer à PY.**

**D7 — La règle de décision n'est pas modifiée.** `V(c*|p)` reste fonction de `E`, `Γ_p` et `ρ_p`. σ_p n'y est **pas** ajouté. C'est un choix de conception, désormais assumé et argumenté (rang 1) plutôt que subi : ajouter σ_p à la règle aurait mélangé les deux étages et détruit l'argument même que la nouvelle §3.2 vient étayer.

---
---

# PARTIE B — Refonte de la notation `K_p` / `κ_p`

**Option retenue : aplatir le contrat.** Les alternatives écartées étaient `K_p → Π_p` (~31 edits, cosmétique), `K_p → 𝒦_p` (typographique seul, même lettre à l'oral) et `κ_p → λ_p` (~95 edits dont les 40 lignes d'annexe).

## B.1 Le constat qui a orienté le choix

En comptant les occurrences j'ai trouvé une incohérence indépendante du problème visuel : la règle écrivait `L(c*, K_p)` et `M(c*, s, K_p)`, donc les deux fonctions recevaient `K_p` **entier**, alors que le texte disait que `L` teste `Γ_p` et `M` teste `ρ_p`. `κ_p` était passé à des fonctions qui ne l'utilisent pas. C'est exactement le §B de la note de review (« κ_p est-il dérivable de Γ_p ? »), sous une forme que n'importe quel relecteur formaliste repère en lisant la définition.

Les trois options cosmétiques laissaient cette incohérence intacte. L'aplatissement la supprime par construction.

## B.2 Ce qui change

```
AVANT   TC(p) = (O_p, σ_p, K_p),  K_p = (κ_p, Γ_p, ρ_p)
        L(c*, K_p)        M(c*, s, K_p)

APRÈS   TC(p) = (O_p, σ_p, Γ_p, ρ_p)
        κ_p := résumé ordinal de Γ_p   (dérivé, pas un champ)
        L(c*, Γ_p)        M(c*, s, ρ_p)
```

**`K_p` a disparu du papier** : 0 occurrence dans `main_position.tex` et dans les deux figures. La collision visuelle κ/K (#45) n'existe plus, sans avoir renommé κ.

**§2.2 restructurée en deux paragraphes** :

- `\paragraph{Permission fields (Γ_p and ρ_p)}` — les deux champs qui spécifient ce qu'une réponse peut faire quand `O_p` n'entraîne pas un claim, avec les exemples (brainstorming médical, Lyme, cadre fictionnel) rapatriés à leur suite.
- `\paragraph{Permission level (κ_p), a derived summary}` — nouveau. `κ_p` y est défini comme résumé ordinal de `Γ_p`, avec la phrase décisive : *« $\kappa_p$ is not a fourth field of the contract, and the labeling rule of §2 never consults it. »* Justification conservée : une valeur à trois niveaux s'assigne à une ressource dont la spécification de portée est indisponible, ce qui est la condition de possibilité du mapping du §4. Et l'argument méta : *« Stating this openly matters, because a summary that is presented as a component invites the objection that the contract carries a redundant variable. »*

**Signatures corrigées**, avec une phrase qui rend la correction lisible : *« Each function receives exactly the field it tests, which is why $\kappa_p$ appears in neither. »*

**Terme collectif introduit** : « the permission fields » pour désigner `Γ_p` et `ρ_p` ensemble, défini à sa première occurrence. Il remplace « content-permission policy » partout où le symbole `K_p` disparaissait — 13 reformulations en prose, harmonisées pour éviter de faire coexister deux termes pour le même objet.

**Propagé dans** : abstract, intro, `tab:symbols` (deux lignes désormais : les champs, puis `κ_p` avec la mention « not consulted by the labeling rule »), `fig:decision` (nœud du contrat, nœud de permission, accolade « labeling stage », légende), `fig:prompt-to-claim` (gouttière et annotations), §3, §4, Worked Cases, Discussion, annexe A (test de stabilité) et annexe B.

## B.3 Coût réel et effet secondaire

31 remplacements de symbole + 13 reformulations de prose + la restructuration de §2.2. Les 95 occurrences de `κ` et les 40 lignes d'annexe **n'ont pas bougé** : `κ` garde son nom et son échelle, ce qui évite de faire réapprendre l'échelle aux encadrants.

Effet secondaire non prévu mais bienvenu : le contrat est passé d'un triplet contenant un triplet à un quadruplet plat. La phrase de glose de l'abstract (« what evidence, what style, what invention ») reste valide parce que `Γ_p` et `ρ_p` répondent tous deux à « what invention ».

---
---

# PARTIE C — Points substantiels et arbitrages

## C.1 #74 — Numérotation des 40 ressources

Les trois tableaux d'annexe portent une numérotation continue `1.~` à `40.~`. Le compte est confirmé : 40 lignes exactement.

**Les plages tombent contiguës par profil**, ce qui n'était pas acquis et rend #65 réalisable :

| Plage | Ressources | Codage |
|---|---|---|
| **#1–24** | FEVER … RealTime QA | σ=0, κ=0 |
| **#25–26** | FaithQA, HIC-Bench | σ=0 dominant, κ partiel 0–1 / 0–2 |
| **#27–35** | CreativityPrism … Hallucinating Narratives | κ=2, σ « 1 ou 2 » ou non contrôlé |
| **#36–40** | MacGyver, EscapeBench, CreativEval, NeoCoder, Math Creativity | σ=0, κ partiel 1 |

## C.2 #65 — `fig:profiles` devient empirique

La figure ne montre plus neuf profils illustratifs : elle place les 40 ressources dans les cases que leur codage implique, via des badges renvoyant à la numérotation de l'annexe.

**Le résultat est plus fort que prévu : six cases sur neuf sont vides.**

- σ=0, κ=0 → **24 ressources (#1–24)**
- σ=0, κ=1 → **5 ressources (#36–40)**
- κ=2, σ=1 *et* σ=2 → **9 ressources (#27–35)**, un badge unique à cheval sur les deux cases, parce que ces protocoles ne séparent pas σ=1 de σ=2
- **les six autres cases → « no resource in sample »**, dont la case encadrée σ=2/κ=0

Deux ressources (#25–26) reçoivent un encadré latéral : leur codage partiel est à cheval sur deux niveaux de permission.

**Pourquoi ça change l'argument.** Le « TARGET GAP » n'est plus une case désignée par le texte, c'est une case observablement vide dans une figure qui remplit les autres. La légende le dit sans détour : *« no sampled resource asks for strongly marked language while holding the response to a factual-only contract, which is exactly the combination under which a style-sensitive verifier would fail. »* Le paragraphe d'introduction ajoute que 34 des 40 ressources tiennent dans les deux cases de la colonne de gauche.

Précaution conservée : « occupancy in a purposive sample, not prevalence in the field ».

## C.3 #68 — Worked Cases ancrés

Chaque cas reçoit une ligne `\emph{Setting:}` qui le rattache à un type de ressource documenté du mapping, avec les numéros.

- **A** — inchangé, déjà ancré sur XSum.
- **B** — contraste entre QA factuel (PopQA #3, TriviaQA #5, κ=0) et génération d'histoires (LitBench #28, Short Story #29, κ=2), avec la remarque que *aucune ressource échantillonnée n'évalue un même libellé sous les deux*.
- **C** — QA ancré sur documentation produit, le type de tâche que DelucionQA (#15) évalue, en notant que cette ressource score le support contre le manuel et ne score pas séparément la présentation d'une réponse indéterminée — ce que la colonne `ρ` de l'annexe enregistre déjà comme « not scored ».
- **D** — évaluation d'écriture créative façon LitBench / WritingBench / Art-or-Artifice (#28, #30, #31), en précisant que la frontière de portée sondée est précisément celle que ces protocoles laissent implicite, et que la personne est inventée parce qu'attribuer une conduite fabriquée à un individu réel n'a pas sa place dans un exemple publié.
- **E** — `\emph{Setting:} none available.` Ce cas exige une ressource demandant σ=2 sous κ=0, et `fig:profiles` montre cette case vide. Les ressources créatives atteignant σ=2 (#27–35) sont toutes à κ=2, et toutes les ressources codées κ=0 (#1–24) supposent une formulation neutre.

**L'aveu devient une démonstration.** Le paragraphe d'ouverture des Worked Cases pose que *le degré auquel un cas peut être ancré est lui-même informatif* : A–D s'ancrent, E ne peut pas, et la raison est visible dans la figure. « A constructed example is the only kind available there, which is the point rather than an evasion. »

## C.4 #70 — Coût de l'annotation traité frontalement

Bloc ajouté à la priorité 1 de l'agenda, ouvert sans détour : *« The obvious objection to this priority is cost, and it deserves a direct answer rather than a footnote… if the framework required that everywhere it would not be adopted anywhere. »*

Trois bornes au coût :

1. **Le contrat est une propriété de la tâche, pas de la réponse.** `O_p`, `σ_p`, `Γ_p`, `ρ_p` s'annotent une fois par prompt et s'amortissent sur toutes les réponses et tous les modèles évalués dessus ; seul le label au niveau claim passe à l'échelle du nombre de réponses.
2. **La plupart des ressources sont déjà mono-valuées sur trois champs sur quatre**, comme le mapping le montre : un benchmark codé κ=0 de bout en bout demande une déclaration au niveau ressource, pas une annotation par item.
3. **L'objet coûteux est celui que le domaine paie déjà** — l'adjudication au niveau claim, que les pipelines *decompose-then-verify* exigent que le contrat soit enregistré ou non (`min_factscore_2023`, `metropolitansky_claimify_2025`).

Ce qui reste réellement coûteux est le benchmark diagnostique de la priorité 2, et c'est assumé : coût délibéré, portant sur un petit instrument et non sur toute évaluation.

## C.5 #1, #52, #25 — Définitions

Nouveau paragraphe d'ouverture de « Our position », **avant** la Figure 1 :

- **`claim`** (#1) : « a truth-conditional commitment attributed to the response: something the response puts forward as being the case, and which can therefore be checked against evidence », avec le contraste qui rend la notion opératoire — une phrase peut porter plusieurs claims, un seul ou aucun ; « the winter that would not lift » n'affirme rien de vérifiable, une seule proposition peut engager sur une date, un lieu et une quantité à la fois.
- **`s`** (#52) : « A *response span* $s$ is the stretch of text a claim is read off, and it is the unit an evaluator works with, because a response mixes spans that carry claims, spans that carry only style, and spans that carry neither. » Défini avant la Figure 1, qui affiche « Response span ».
- Clôture : « Claims, not sentences and not responses, are what receives a label here. »
- **`epistemic presentation`** (#25) glosé sur place dans la définition du contrat : « the marking---a hedge, a hypothesis marker, a declared fictional frame---that signals the status of what is asserted ».
- **`σ_p-conditioned claim typing`** (#25) : le jargon est supprimé de « Evidence and scope » et remplacé par sa paraphrase — « the requested style level, holding the claims fixed, to test whether a marked realization changes which claims an evaluator reads off a span ».

## C.6 #53 — `p` vs `P`, tranché par la convention du domaine

**Vérification faite avant de décider.** La convention dominante en formalisation LLM / alignement / RLHF est **`x` pour le prompt, `y` pour la réponse** : π_θ(y|x), r(x,y), triplets (x, y_w, y_l). Elle est stable sur toute la littérature d'alignement. Les papiers d'extraction de claims (FActScore, VeriScore, Claimify) sont en prose et n'imposent pas de symbole pour le prompt.

**Le `P` majuscule proposé n'est donc pas la convention**, et il entre en collision avec la notation des probabilités.

**Décision : adopter la convention, et nommer explicitement l'écart.** Le papier utilisait déjà `y` pour la réponse — `x` en est le partenaire canonique. Ajouté dans « Our position » :

> *We follow the standard convention in which a model maps a prompt $x$ to a response $y$, and we keep both symbols with their usual meaning. The contract, however, is not indexed on $x$. It is indexed on the task context $p$, which contains $x$ together with the applicable system instructions, the domain constraints, and any attached evidence. Two identical prompts issued under different system instructions carry different contracts, which is why $p$ rather than $x$ is the right index, and why we introduce a separate symbol instead of overloading $x$.*

**Bénéfice au-delà de #53** : cela règle #39/#42 à la racine. Il y a maintenant **deux symboles pour deux objets distincts** — `x` le prompt, `p` le contexte de tâche — au lieu d'un seul symbole `p` dont le texte devait répéter qu'il ne signifiait pas « prompt ». `tab:symbols` porte les deux lignes.

## C.7 Arbitrages de la partie 4

**#8 (Martino) — statut corrigé : ✅ traité, pas 🚫 rejeté.** La demande portait sur l'**abstract**, pas sur le corps du texte. L'abstract réécrit contient désormais les trois labels **en toutes lettres** — « supported, hallucination, or licensed divergence » — et **zéro macro** `\SUP` / `\Hall` / `\LD`. Vérifié : 0 occurrence de macro entre `\begin{abstract}` et `\end{abstract}`. Rien n'est supprimé du corps. Aucune réponse de rejet à rédiger.

**#4 — clos, sans action.** Commentaire jugé non pertinent, retiré de la liste des décisions ouvertes.

**#45 — clos par la partie B.** `K_p` n'existe plus, donc la confusion visuelle κ/K n'a plus d'objet. `κ_p` n'a pas été renommé et n'avait pas à l'être.

---

---
---

# PARTIE D — Correction de la hiérarchie κ / (Γ, μ) et renommage de ρ

## D.1 Un bug introduit par l'aplatissement

En aplatissant le contrat (partie B), §2.2 a été réécrite pour poser que `κ_p` n'est pas un champ. **La bande de slots de `fig:prompt-to-claim` n'a pas été reprise** : elle affichait toujours `σ_p | κ_p | Γ_p | ρ_p` comme quatre pairs sur une même ligne. La figure contredisait le texte, ce qui explique que la relation entre les paramètres soit restée illisible.

## D.2 κ_p résume la **paire** (Γ_p, μ_p), pas Γ_p seul

Correction de fond, et correction d'une erreur de la partie B. Deux éléments l'imposent :

- **La glose de κ=1 est « limited *and explicitly marked* divergence ».** Le marquage relève de μ, pas de Γ. La version précédente rustinait ce chevauchement (« ``explicitly marked'' describes a typical pairing in practice, not a presentation requirement folded into the level »), ce qui était faible.
- **Dans le mapping, κ est codé précisément quand Γ et μ ne sont pas séparables.** Toutes les ressources créatives portant un code κ portent aussi « μ: not separated ». κ est le résumé qu'on assigne quand on ne peut pas décomposer.

§2.2 réécrite en conséquence, avec l'échelle explicitée champ par champ :

- `κ=0` — portée vide, donc aucune exigence de marquage ne se pose ;
- `κ=1` — portée étroite bornée par le sujet, et le contenu introduit doit porter un marquage explicite ;
- `κ=2` — portée coextensive à un cadre déclaré, et la déclaration du cadre est elle-même ce qui satisfait l'exigence de marquage.

Puis la justification du résumé conjoint : *« $\kappa_p$ summarizes both fields because the two co-vary in practice: a task that widens what may be invented also changes what counts as adequately signaling it, and a declared fictional frame licenses content and marks it in one move. »* Et la phrase qui dissout #44 par construction au lieu de le rustiner : *« the level records that a marking requirement exists, whereas $\mu_p$ states which marking discharges it. »*

Ajout de ce que la compression coûte, ce qui justifie que la règle ne consulte pas κ : *« It is a compression of two fields into one number, so it loses exactly what the rule needs: which topics are in scope, and which marking counts. »*

**La rustine #44 est supprimée** : elle n'a plus d'objet.

## D.3 `ρ_p` → `μ_p`

Motif : le glyphe ρ ressemble à `p`, et `ρ_p` doublait la confusion avec le prompt. **90 occurrences** substituées dans le `.tex` et **5** dans la figure. Vérifié au préalable que `\rho` ne servait à rien d'autre et que `\mu` n'était pas déjà utilisé (les 5 correspondances étaient des `\multicolumn`).

Le champ garde son nom anglais, **required epistemic presentation**, avec le mnémonique posé une fois à la définition : *« We write $\mu$ for the marking the field requires, and use ``marking'' as the short name for it throughout. »*

**Conséquence non demandée mais nécessaire : `M` → `D`.** Garder `M(c*, s, μ_p)` aurait recréé le problème K/κ qu'on venait d'éliminer, **en pire** : K_p et κ_p n'apparaissaient jamais dans la même formule, alors que M et μ s'y seraient trouvés à trois caractères d'écart. `L` et `M` étant des noms arbitraires, remplacer `M` par une autre lettre libre ne coûte rien conceptuellement. La règle devient `L=1, D=1`. 3 occurrences.

## D.4 La figure reflète enfin la hiérarchie

Bande 2 restructurée : **trois slots** pour les champs réellement dans le contrat (`σ_p` *requested style*, `Γ_p` *permission scope*, `μ_p` *required marking* — `O_p` étant déjà montré en bande 1), chacun avec son rôle en italique.

`κ_p` est sorti de la ligne et placé dans un **encadré pointillé subordonné**, portant la mention `derived, not a field`, avec deux flèches pointillées venant de `Γ_p` et de `μ_p` — la dérivation est visible au lieu d'être affirmée. Légende complétée : *« The dashed box records the derived summary $\kappa_p$, which condenses the two permission fields into one ordinal level for cross-resource comparison and is never consulted when a claim is labeled. »*

Corrigé aussi : la figure disait encore « Prompt $p$ » alors que la partie C.6 a fait de `x` le prompt et de `p` le contexte de tâche. Devenu « Prompt $x$ ».

`tab:symbols` : `κ_p` y est désormais décrit comme « ordinal summary of $(\Gamma_p,\mu_p)$ ».

## D.5 État final de la notation

```
TC(p) = (O_p, σ_p, Γ_p, μ_p)          contexte de tâche p ⊇ prompt x

O_p   reference evidence
σ_p   requested style level
Γ_p   permission scope              ┐ permission fields
μ_p   required epistemic presentation ┘  (marking)

κ_p   résumé ordinal de (Γ_p, μ_p)  — dérivé, jamais consulté par la règle

L(c*, Γ_p)      test de portée
D(c*, s, μ_p)   test de marquage
```

Vérifié : `\rho` 0 occurrence, `K_p` 0 occurrence, `M(c` 0 occurrence. Aucune collision lettre latine / lettre grecque homographe ne subsiste dans le papier.

---
---

# PARTIE E — Passe d'hygiène de prose

Audit `prose-hygiene` sur `main_position.tex`.

**Le vocabulaire est propre** — zéro `delve`, `pivotal`, `robust`, `crucial`, `underscore`, `leverage`, `serves as`, `stands as`. Le défaut est ailleurs : dans la **cadence** de la prose ajoutée pendant ces sessions.

## E.1 Terminologie — 2 dérives corrigées

- `adjudicators` (l.328) → `annotators` : même rôle, deux mots.
- `decision rule` (l.175) → `labeling rule` : même objet, 10 occurrences contre 1.

Aucun terme non défini.

## E.2 Tells corrigés

| Tell | Trouvés | Traitement |
|---|---|---|
| Triplets « Three X. First… Second… Third… » | 3 blocs, dont 2 à 40 lignes d'écart | dissous en prose enchaînée |
| « X rather than Y » en effet de manche | 6 | reformulés ; 3 contrastes techniques réels conservés |
| Em-dashes cadencés | 6 sur 11 | supprimés ; 5 appositifs légitimes conservés |
| Significance-padding | 3 | supprimés ou reformulés |

Exemples :

- *« A constructed example is the only kind available there, which is the point rather than an evasion. »* → *« Where the sample is empty, a constructed example is the only kind available. »* La formule défensive affaiblissait un argument par ailleurs solide.
- *« …it deserves a direct answer rather than a footnote »* → *« We take the objection seriously: a scheme too expensive to apply would not be applied. »*
- *« …a framework that could be applied everywhere at no cost would probably not be measuring anything. »* (chute aphoristique) → *« We accept that cost, and note that it falls on one instrument rather than on every evaluation that uses the framework. »*
- Abstract : `three ways rather than two---supported, hallucination, or licensed divergence---so that…` → deux-points simple, sans dashes.
- La définition du contrat (l.119), phrase de trois lignes à dashes imbriqués, éclatée en trois phrases.

Les `First/Second/Third` subsistants (Contributions, Evidence and scope, Scope and validation priorities) sont antérieurs et réellement énumératifs — conservés.

**Non audité** : §2.4 et la Discussion dans leurs parties antérieures à ces sessions. La passe a porté sur la prose récente.

---

# Ce qui reste ouvert

**Décisions qui vous appartiennent**

- **D4** — les sept points de l'agenda restent en `\textbf{1. …}` plutôt qu'en `\paragraph{}` (#41). Ils fonctionnent comme une liste numérotée, pas comme des titres. **À confirmer avec PY.**
- **D6** — la limite méthodologique du mapping est conservée contre l'avis de PY (#64), seul le ton a changé. **À lui expliquer.**

**Finition graphique**

`fig:prompt-to-claim` est un brouillon fonctionnel : elle compile, la mise en page tient, aucun débordement. Les deux barres verticales bleues marquant les étages sont peu visibles à la résolution d'impression, et le libellé du claim `c_3*` se coupe de façon inélégante. Une passe esthétique reste utile avant soumission. `fig:profiles` a été inspectée sur le PDF rendu et ne présente pas ce défaut.

**Non traité, et assumé comme tel**

- La suggestion du fil rouge de rejouer les cas C et D sur `s_3`/`s_4` du fil rouge Lyon n'a pas été appliquée : elle aurait unifié les exemples mais réduit la couverture des cas. Les cas sont désormais ancrés autrement (C.3).
- Les 15 travaux du SOTA d'extraction non retenus (RARR, QAGS, QuestEval, ClaimDecomp, Newman, DnDScore, D-FActScore, RoSE/ACU, Factcheck-Bench, AVeriTeC, ClaimBuster, Check-COVID…) restent mobilisables pour un chapitre de thèse.

---

# Vérifications effectuées

- `make pdf` — compilation propre, **0 erreur LaTeX**, **0 citation non résolue**, **0 référence croisée non résolue**, aucun *overfull hbox* significatif. **30 pages.**
- Les 9 nouvelles clés BibTeX sont toutes citées dans le `.tex` ; les 12 clés vérifiées résolvent dans le `.bbl`.
- Métadonnées des 9 références confirmées sur ACL Anthology, arXiv et NeurIPS Proceedings — pas depuis le SOTA fourni. Collision `wei_measuring_2024` (= SimpleQA) vs SAFE détectée et évitée.
- `K_p` : **0 occurrence** dans le `.tex` et les figures. `content-permission policy` / `permission policy` : 0 occurrence résiduelle. `$K=(\kappa,\Gamma,\rho)$` : supprimé.
- Macros `\SUP` / `\Hall` / `\LD` dans l'abstract : **0**.
- `Outco` : 0. `For prompt $p$` : 0. « six connected priorities » : 0.
- Ressources numérotées : **40 exactement**, plages contiguës vérifiées ressource par ressource contre les codages σ/κ.
- Figures 2 et 4 inspectées sur le PDF rendu (pages 5 et 15).
