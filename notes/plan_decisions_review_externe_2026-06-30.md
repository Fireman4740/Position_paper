# Plan de décision & modification — d'après la review externe (2026-06-30)

Réponse à la review externe « Weak Reject → potentiel Weak Accept ». Ce document **triage** la review (endossé / à nuancer / à écarter), **complète** ce qu'elle a manqué, et donne un **plan de modification priorisé**. Il tient compte de l'état *actuel* de `main_position_personal.tex` (pilote déjà coupé, annexes empiriques retirées, notation κ=0/1/2 et σ low/high déjà harmonisée au tour précédent).

---

## 0. Verdict sur la review

Review de très bonne qualité, plus incisive que la précédente sur deux points **structurels réels** que j'ai vérifiés dans le `.tex` courant. Une réserve de calibrage : le verdict « Weak Reject » est calé sur un standard *conférence*. Pour la catégorie **Position Papers** de CL (pas d'expériences requises, « rigorous reasoning + persuasive evidence »), les défauts identifiés sont **corrigeables sans nouvelle expérience** ⇒ on est en **révision majeure**, pas en rejet de l'idée. Le cœur (`κ` = licence d'invention comme composante irréductible) reste publiable.

Réconciliation avec l'état courant : plusieurs critiques de la review (pilote présenté comme preuve empirique, « preliminary observations » non documentées, 28 p.) portent sur une version **antérieure** à la coupe du tour dernier. Le pilote est déjà réduit à un paragraphe qualitatif sans chiffres, et les annexes B–C sont supprimées. Ces points sont donc **déjà en grande partie traités** (voir §3).

---

## 1. Vérifications factuelles (faites)

| Claim de la review | Vérifié ? | Localisation courante |
|---|---|---|
| Tree : `unverifiable` est un verdict terminal qui bloque le chemin de Cas C | ✅ **Vrai** | Fig. arbre, test 3 → `unverifiable` (l.367–373, 390) |
| Table 3 : le Cas B n'oppose pas le *même* claim | ✅ **Vrai** | tab:worked, ligne B (« κ=2 applies to the invented café, not this claim ») |
| Macros de draft encore présentes | ✅ **Vrai** | l.49–51 (`\TODO`, `\citetodo`, `\claimtodo`) |
| Jiang et al. 2024 (survey hallucination×créativité) non cité | ✅ **Vrai** (PDF présent dans `sources/`, absent du `.bib`) | — |
| WritingBench mal daté | ✅ **Vrai** | `wu_writingbench_2024`, `year={2024}` → devrait être **2025** (arXiv 2503.05244) |
| CreativityPrism : titre « Holistic **Benchmark** » vs « Holistic **Evaluation Framework** » | ⚠️ mineur | `hou_creativityprism_2025` (url 2510.20091) |
| Surclaims « cannot be closed / must get wrong / establish / none » | ✅ **Vrai** | l.180, 181, 269, 540/571, 650, 704 |
| 88 clés citées / 498 entrées `.bib` | ✅ **Vrai** | ~410 non citées (inoffensif au rendu, à nettoyer pour le dépôt) |

---

## 2. MUST-FIX — endossés (avant soumission)

### M1 — Corriger l'arbre de décision : `unverifiable` = état d'évidence, pas verdict *(le point n°1 de la review — j'endosse pleinement)*
C'est le défaut le plus grave et le mieux vu. Le fix rend Cas C **cohérent** — et, bonus que la review ne souligne pas, il fait de Cas C **la vitrine** de l'irréductibilité de `κ` (indécidable→`PD` sous κ=1) au lieu d'une contradiction. **Blast radius plus large que dans la review** : à répercuter sur (a) Fig. arbre, (b) sa caption, (c) le texte « Decision rule » (l.343–346), (d) le claim-level labeling « four leaves / three branches » (l.512–514), (e) **Appendix A** (règle formelle, l.790–805), (f) Table 3 ligne C.
*Flux corrigé recommandé (modèle à 3 couches — voir M-add ci-dessous)* : après « entailed by O ? no », router **unsupported ET unverifiable** vers le même sous-arbre `κ` → stance → utilité :
- κ=0 & asserté → `H` (ou abstention requise) ;
- κ=1 & marqué hypothèse → candidat `PD` ; κ=1 & asserté comme fait → `H` ;
- κ=2 & dans le scope fictionnel/idéation → candidat `PD` ; hors scope → `H` ;
- candidat `PD` qui passe le seuil d'utilité → `PD`, sinon divergence licenciée mais improductive.

### M2 — Réécrire Table 3 + les worked verdicts (surtout Cas B) *(point n°2 — j'endosse)*
La caption promet « même claim, statut qui bascule » ; la ligne B ne le fait pas. **Adopter la restructuration en 4 cas** proposée par le reviewer (elle sépare proprement les 4 mécanismes) :
- **A** — décalage d'oracle (event year) ;
- **B** — décalage de `κ` : *café inventé* → `H` sous prompt historique factuel / `PD` sous prompt fictionnel (vrai flip du même claim) ;
- **C** — décalage stance/licence : cause possible → `H` si assertée sous κ=0 / `PD` si hedgée sous κ=1 ;
- **D** — frontière de scope : fausse citation d'une personne réelle → `H` même en fiction si présentée comme fait.
Reformuler §4 en conséquence. Et **assumer** que les claim-strings sont *schématiques* (« schematic verdict tests ») OU en ancrer au moins un sur un item réel (cf. mon point ajouté A1).

### M3 — Désamorcer l'audit : illustration, pas preuve *(point n°3 — j'endosse, cf. ma review précédente)*
Adopter l'**Option B** du reviewer (adoucir), la moins coûteuse et défendable pour un position paper :
- retitrer Table 2 : « Illustrative audit of representative evaluation resources » ;
- l.540/571 : « none / uniform fact across all forty » → « in this illustrative sample we found no protocol where σ or κ is an explicit variable conditioning the hallucination verdict » ;
- supprimer la phrase « little room for coder disagreement » (l.552), intenable (WritingBench, MacGyver, EscapeBench sont des cas limites) ;
- l'intro : « We substantiate this gap by auditing… » → « We support this position with an *illustrative* audit… not a complete survey ».
- (Option A « audit reproductible avec protocole + second codeur » = fortement mieux mais coûteux ; **ne pas inventer un accord inter-codeurs** — règle anti-fabrication.)

### M4 — Related work : ajouter Jiang et al. 2024 + muscler FaithQA/HIC-Bench *(points n°4/6 — j'endosse)*
- Ajouter l'entrée `.bib` Jiang 2024 (PDF déjà dans `sources/`) + 2 phrases de différenciation (l'unité d'analyse : *régime de vérité au niveau prompt*, pas la valeur potentielle du contenu halluciné).
- Créer une courte sous-section « Closest alternatives and why they are insufficient » traitant FaithQA et HIC-Bench comme **rivaux centraux** (différence de *portée*, pas simple absence), pas en note de passage.

### M5 — Adoucir les surclaims *(points n°7/8 — j'endosse)*
Remplacer : l.180 « cannot be closed » → « better detectors alone do not address the missing *authorization* variable » ; l.181/650 « Theoretical work shows LLMs cannot avoid hallucination / Formal arguments support this floor » → « recent arguments *suggest* unsupported generations persist under broad task distributions » (+ déplacer en discussion) ; l.269 « establish that the gap is structural » → « suggest the gap is not merely anecdotal » ; l.704 « must get wrong » → « cannot justify the appropriate verdict without an implicit assumption about the task contract ».

### M6 — Hygiène `.bib` + préambule *(point n°11 — j'endosse)*
- `wu_writingbench_2024` : `year={2025}` (arXiv 2503.05244) ; option : renommer la clé `…_2025` (met à jour l'affichage de la Table 2).
- `hou_creativityprism_2025` : mettre le titre à jour si on cite la version arXiv courante (mineur).
- Supprimer les macros `\TODO`, `\citetodo`, `\claimtodo` (l.49–51 ; aucun usage vivant).
- Vérifier `\jvol`, `\jnum`, `\jyear` (placeholders template).
- Nettoyage des ~410 entrées non citées : optionnel (inoffensif au rendu).

---

## 3. À nuancer / déjà (partiellement) fait

- **« Preliminary observations à supprimer/réduire » (§6)** : **déjà fait** au tour précédent — réduites à un paragraphe qualitatif « An indicative observation » sans chiffres, cadré mesure + renvoi futur travail. Reste éventuellement à retirer *une* phrase de plus. Les annexes empiriques B–C sont **supprimées**.
- **« 28 pages / déplacer l'audit en appendix » (§9)** : le doc fait maintenant 35 p. (incl. grosse biblio de 88 réfs). Compacter Table 2 (main = 4 familles ; complet = appendix) reste une **bonne idée** mais non bloquante.
- **σ notation / κ 0-1-2** : déjà harmonisé (hors périmètre de cette review).
- **« PD sous-opérationnalisé » (§7)** : déjà concédé + esquissé dans l'agenda (license-pass/stance-pass/usefulness). Ajout utile : un encadré « PD is not a binary ground-truth label ». Mineur.

---

## 4. Où je complète / critique le reviewer

- **[A-add] Le fix de l'arbre est le *cœur*, pas un détail de figure.** Le reviewer sous-estime le blast radius (M1) : Appendix A + prose §2 + Table 3 doivent bouger *ensemble*, sinon nouvelle incohérence.
- **[B-add] Adopter explicitement le modèle 3 couches** (evidence state / license state / verdict) comme **structure de §2**. Il règle *trois* problèmes d'un coup : `unverifiable` (M1), `benign noise` (voir C-add), et « usefulness comme test binaire ». C'est une amélioration constructive au-delà du patch.
- **[C-add] `benign noise`** : le reviewer a raison — une inexactitude truth-conditional mineure n'est pas « neither », c'est un `H` de faible sévérité. La renommer `low-impact H` dans la couche de scoring (et la sortir de la branche « neither » du tree). À traiter *dans* M1.
- **[D-add] σ : ne pas « réinventer », *surfacer*.** Le reviewer propose de faire de σ une variable d'*interprétation/extraction de claim* (plutôt que pure nuisance de mesure) — bonne idée, **et** c'est déjà dans l'arbre (test 1 : « c carry truth-conditional content **under (σ,O)** ? »). Le fix est donc de *rendre explicite en prose* que σ décide **quelles chaînes de surface deviennent des claims truth-conditional** (métaphore vs claim factuel), ce qui est en amont du verdict et **irréductible**. Cela réconcilie ma modif précédente (« σ n'affecte pas F/A ») avec la review : σ ne change pas le verdict une fois les claims extraits, mais il conditionne l'extraction elle-même. ⇒ répond à l'objection « le vrai régime est (O,κ) ».
- **[E-add] Cas C corrigé = argument de vente.** Une fois l'arbre réparé, Cas C *démontre* l'irréductibilité de `κ` au lieu de la contredire — à mettre en avant comme pièce maîtresse de la nouveauté.
- **[F-add] Calibrage du verdict.** « Weak Reject » = grille conférence. En catégorie Position Paper CL, les 3 « fatals » sont des corrections de cohérence/cadrage, pas des manques d'expérience ⇒ *major revision*. À ne pas surinterpréter comme « l'idée ne passe pas ».
- **[G-add, désaccord léger] Titre « Hallucination Is Relative ».** Le reviewer craint un malentendu ontologique. Je **garderais** le titre (fort, adapté à un position paper) et j'ajouterais *une* phrase tôt : « relative » = le *verdict évaluatif*, pas la vérité métaphysique d'une proposition. Pas besoin de changer le titre.

---

## 5. Tableau de décision

| # | Item | Avis reviewer | Mon avis | Effort | Statut vs draft courant |
|---|------|---------------|----------|--------|--------------------------|
| M1 | Arbre : `unverifiable` non terminal | Fatal | **Endossé — priorité 1** | moyen (multi-emplacements) | à faire |
| M2 | Table 3 / Cas B (4 cas) | Fatal | **Endossé** | moyen | à faire |
| M3 | Audit = illustration | Fatal | **Endossé (Option B)** | faible | à faire |
| M4 | Jiang 2024 + closest work | Major | **Endossé** | faible/moyen | à faire |
| M5 | Adoucir surclaims | Major/mineur | **Endossé** | faible | à faire |
| M6 | Bib WritingBench + macros | Mineur | **Endossé** | faible | à faire |
| C-add | `benign noise` → low-impact H | (implicite) | **Ajout — dans M1** | faible | à faire |
| D-add | σ = condition d'interprétation | Major | **Endossé, mais surfacer (déjà en test 1)** | faible | à faire |
| §3 | Preliminary obs. / annexes | À supprimer | **Déjà fait** | — | ✅ fait |
| §9 | Compacter Table 2 | Recommandé | Optionnel | moyen | différable |

---

## 6. Séquence de modification recommandée

1. **M1** (arbre + Appendix A + prose §2 + Table 3 ligne C + `benign noise`) — la clé de voûte ; tout le reste en dépend.
2. **M2** (Table 3 en 4 cas + §4) — enchaîne directement sur M1.
3. **D-add** (surfacer le rôle de σ à l'extraction de claim, en prose).
4. **M3** (adoucir l'audit) + **M5** (surclaims).
5. **M4** (Jiang + sous-section closest work).
6. **M6** (bib WritingBench, macros, jvol/jnum/jyear).
7. Rebuild `make pdf` + relire l'abstract/contributions pour cohérence.
8. (Optionnel) **§9** compacter Table 2 ; encadré « PD is not a binary label ».

---

## 7. Sous-ensemble applicable tout de suite (sans décision de fond)

Je peux exécuter immédiatement, sans arbitrage : **M5** (adoucir surclaims), **M6** (fix `year` WritingBench, suppression macros draft), **M4-bib** (ajouter l'entrée Jiang + une phrase de différenciation), et **G-add** (phrase de clarification « relative = verdict »). Les items **M1, M2, D-add** touchent la conception (plusieurs options de flux d'arbre) et méritent ton feu vert sur la forme exacte avant que je réécrive figure + Appendix A + Table 3 de façon cohérente.
