# Review complète fond + forme — `main_position_personal.tex` — 2026-07-03

Fichier audité : `main_position_personal.tex` (948 lignes, PDF 25 p., build du jour : 0 erreur, 89/89 citations résolues, 0 référence pendante après le renommage du label `sec:truth-contracts`, 11 Overfull hbox). Cette review combine la passe **fond** (paper-review) et la passe **forme** (prose-hygiene), après application par l'auteur de la migration terminologique « contrat ». Objectif déclaré : un papier rigoureux dans un anglais académique simple.

---

# Partie 0 — État des lieux : ce qui a été appliqué, ce qui ne l'a pas été

**Appliqué, et bien appliqué.** La migration terminologique est faite à ~90 % et elle est propre : « regime » = 0 occurrence, « latitude » = 0, titre en « Truth-Contract-Aware », macros `\TR`→TC et `\PD`→LD, colonne « Contract » dans Table 2, captions des figures migrées, `sec:truth-contracts` sans référence cassée. Surtout, le changement sémantique recommandé (T2-A) est adopté au bon endroit : LD = deux portes vérifiables (license-pass, stance-pass), l'utilité devient un score gradué (encadré l.341–343, arbre avec sortie « LD (low use) », l.516, agenda l.737). Les deux phrases de garde sont posées : « relative = verdict, not truth » (l.189) et le renvoi instruction-following pour σ (l.307). « Productive divergence » survit en une mention-pont correcte (l.332). L'Annexe B est partiellement renommée (« style-emphasis levels », l.825, Table B, axes de la Figure B).

**Non appliqué.** (i) Les **deux must-fix de contenu** : l'arithmétique de l'Annexe B (l.825) et le non-sequitur « property of the verifier » (l.559 et l.828) sont inchangés. (ii) La **phase langue** (hit-list de vocabulaire, phrases denses) : « conflates » — l'exemple emblématique de l'encadrant — est toujours l.188, et la quasi-totalité de la hit-list est intacte. (iii) Divers mécaniques : `\jyear{2025}`, `κ_agree`, caption Table 1, coin (low, 2), redondance intro/§3.3.

**Introduit par la migration** (le neuf) : cinq incohérences de propagation, détaillées en Partie 2 §1 — la plus grave étant que **l'Annexe A contredit désormais la Figure 1 et le §2** sur la définition même de LD.

---

# Partie 1 — Review fond

## Overall verdict

Le papier a fait un grand pas et un petit faux pas. Le lexique du contrat est en place et il travaille : les termes s'auto-définissent, la définition de H (« unlicensed divergence — a breach of the truth contract », l.325) fait la pédagogie que « TR-violation » ne faisait pas, et le passage de LD à deux portes vérifiables rend le verdict décidable — l'objection « votre verdict dépend d'un jugement subjectif » est morte. Mais la migration s'est arrêtée à 90 %, et les 10 % restants sont maintenant le point le plus dangereux du manuscrit : l'Annexe A définit encore LD avec l'utilité comme troisième porte et une catégorie « neither » que le corps a supprimée (l.812–813), l'abstract et la thèse définissent LD avec « the task rewards » / « novel and task-useful » (l.141, 187), et §5 parle encore de « three conditions » (l.733). Un reviewer qui lit l'appendice après la Figure 1 conclura que les auteurs ne savent pas laquelle de leurs deux définitions est la bonne — c'est pire qu'un ancien vocabulaire cohérent. S'y ajoutent les deux must-fix de l'Annexe B, toujours dus, et la passe d'anglais simple, toujours due. Tout est local ; une journée disciplinée suffit.

**Recommendation** : Major revision (en l'état) — à une journée d'édits locaux d'une soumission défendable ; aucune nouvelle expérience requise.
**Confidence** : High (build, citations et labels vérifiés mécaniquement ; chaque constat ancré ligne à ligne dans la version du jour).

## Detailed critique

### 1. Contribution clarity — STRONG

La thèse tient en une phrase, l'abstract la donne, et deux ajouts la renforcent : la phrase anti-relativisme (l.189) ferme la lecture philosophique hostile du titre, et le verdict à deux portes (l.330–331, encadré l.341–343) rend la distinction H/LD non seulement opérationnelle mais *décidable* — les portes se vérifient, l'utilité se score. Les trois contributions restent étiquetées (l.272–275). Seule ombre : la définition de LD donnée dans la thèse (l.187, « novel and task-useful ») n'est pas celle que le cadre formalise trente lignes plus bas (deux portes, utilité séparée) — voir issue critique 2.

**What a stronger version would do** : aligner l.141 et l.187 sur la définition à deux portes ; la contribution y gagne en netteté puisque le verdict devient entièrement checkable.

### 2. Novelty and positioning — ADEQUATE

Inchangé : FaithQA « has neither $O$ nor $\kappa$ » (l.167), HIC-Bench « cannot flip with the contract » (l.168), Jiang et al. différencié par l'unité d'analyse (l.651), « What the contract is not » (l.171–176) et le cas κ=1 (l.429–439) restent les meilleures pièces. Le renommage aide la nouveauté perçue : « licensed divergence » annonce le critère dans le nom, là où « productive divergence » laissait croire que la valeur du contenu décidait — précisément l'erreur de HIC-Bench. Le point faible résiduel demeure : les worked verdicts sont « schematic verdict tests » (l.667) et Case A n'est toujours pas ancré sur un item XSum publié.

**What a stronger version would do** : ancrer Case A sur une annotation réelle de Maynez et al. — toujours l'upgrade le moins cher du papier.

### 3. Argument structure and logic — ADEQUATE (un point WEAK localisé, toujours inchangé)

La chaîne paradoxe → cadre → audit → verdicts → agenda → limites est sans trou dans le corps. Le point WEAK est identique aux deux reviews précédentes : l.559 (« any such movement is therefore a property of the verifier, not of the output's truth-status ») et l.828 (même inférence) affirment une lecture que les données ne départagent pas — une consigne `very_creative` peut élever le κ effectif que le modèle infère et produire de vraies propositions non supportées, confound que le cadre lui-même prédit. B.3 (l.944) compte toujours quatre caveats ; le cinquième manque. C'est la troisième review qui le signale ; c'est l'unique pièce empirique du papier.

**What a stronger version would do** : la disjonction en trois phrases (brittleness du vérifieur **ou** fuite du κ effectif ; les séparer exige le label LD manquant — l'instrument que ce papier spécifie) + le 5ᵉ caveat. Le texte proposé est dans `plan_modification_reformulation_2026-07-02.md`, §2 C2.

### 4. Claim calibration — STRONG (deux exceptions connues, une nouvelle tension)

Les hedges tiennent partout (« illustrative », « only as motivation », « not measurements », « a proposed instrument », cinq limites). Les exceptions restent l.559/l.828 (dimension 3). Tension nouvelle : l'abstract promet « licensed divergence (LD) is divergence the contract permits **and the task rewards** » (l.141) — sous la nouvelle sémantique, le verdict LD ne requiert plus la récompense de la tâche ; l'abstract sur-spécifie donc la définition. Même chose l.187. Ce n'est pas un overclaim empirique, c'est une définition désalignée, mais un lecteur attentif le lira comme une imprécision.

**What a stronger version would do** : reformuler l.141 : « Licensed divergence (LD) is a departure the contract permits, presented as the contract requires; its usefulness is scored separately. »

### 5. Framework coherence — WEAK (temporairement : propagation inachevée)

Le cœur est cohérent et amélioré : arbre à trois couches avec test 5 en score (l.377, 383, 409, 414–416), labeling l.515–516 aligné, agenda l.731–738 aligné (« recorded alongside rather than used as a third gate »), Case D donne sa borne. Mais quatre contradictions de propagation restent dans le texte : (i) **Annexe A, l.812–813** : LD y exige encore « improves usefulness or appropriateness » et une catégorie « neither : licensed divergence that adds nothing useful » — c'est l'ancienne sémantique, en contradiction frontale avec la Figure 1 qu'elle prétend refléter (l.816 renvoie à l'arbre) ; (ii) **l.733** : « The three conditions of the labeling rule » — il n'y en a plus que deux plus un score ; (iii) **l.141 et l.187** (cf. dimension 4) ; (iv) **Case D, l.695–696** : le texte nomme la porte *stance* (« fails the presented-as-the-contract-requires condition ») mais décrit un échec de *scope* (« steps outside the declared frame », « a license reaches only the content inside its declared scope ») — choisir la porte scope, ou écrire qu'il échoue aux deux. Chaque fix est une édition locale ; ensemble ils conditionnent la note de cette dimension, qui repasse STRONG une fois faits.

**What a stronger version would do** : une passe de propagation dédiée (30–60 min) sur Annexe A, l.733, l.141, l.187, Case D, puis relecture croisée Figure 1 ↔ Annexe A ↔ §2.

### 6. Related work coverage — STRONG

Inchangé et conforme : tous les fils exigés sont présents au bon endroit, les spot-checks des reviews précédentes restent valides (Maynez, Searle/Stalnaker, FaithQA, HIC-Bench, parry/lingard — ce dernier désormais correctement rattaché à la mention-pont l.332). Restes : dédupliquer `pavlick_empirical_2016`/`osyvokon_pavlick_formality_2016` (l.728) ; stabiliser `yona_metacognition_2026` (l.438, load-bearing pour κ=1) avant soumission.

**What a stronger version would do** : ces deux points ; rien d'autre.

### 7. Writing quality — WEAK (la moitié du chemin est faite)

La charge terminologique — le problème n°1 de l'encadrant — est réellement résolue : les termes s'auto-définissent et une seule métaphore court dans tout le papier. Mais la **phase langue n'a pas été appliquée** : « conflates » est toujours l.188 (et l.283, 512, 751, 944), la hit-list est intacte (détail en Partie 2 §3), et les phrases denses sont inchangées — l.299–300 (la définition de σ, ~90 mots, six propositions), l.140 (abstract), l.185, l.312, l.331, l.542, l.555, l.769. Le critère de l'encadrant (lecture confortable à la première passe) n'est pas encore atteint ; ce qui manque est mécanique et listé.

**What a stronger version would do** : appliquer la Partie 2 §3 (substitutions + cassage des huit phrases) puis faire relire abstract + §1 + définitions §2 par l'encadrant comme test de sortie.

## Critical issues (must fix before submission)

1. **Annexe A contredit la Figure 1 sur la définition de LD** (l.812–813 vs l.330–331, 341–343, 377–416). L'appendice garde l'utilité comme troisième porte et la catégorie « neither » ; le corps les a supprimées. *Fix minimal* : réécrire l'item \PD{} de l'Annexe A (« if the departure is licensed and presented as the contract requires; its usefulness is then scored separately ») et supprimer l'item « neither », en renvoyant au score. 15 minutes ; c'est la contradiction la plus visible du manuscrit.
2. **Définition de LD désalignée dans l'abstract et la thèse** (l.141 « and the task rewards » ; l.187 « novel and task-useful »). *Fix minimal* : reformulations données en dimension 4 ; cohérence avec l.330–331.
3. **Arithmétique de l'Annexe B irréconciliable** (l.825) — inchangée depuis deux reviews : 1 389 n'est pas un multiple de 27 (facteur sujets absent), 12 469 ≠ 1 389×9 = 12 501, rôle des 5 températures non spécifié. *Fix minimal* : plan exact ou retrait des comptes précis.
4. **Non-sequitur « property of the verifier »** (l.559, l.828) + 4 caveats au lieu de 5 (l.944) — inchangé depuis deux reviews. *Fix minimal* : disjonction + 5ᵉ caveat (texte prêt dans le plan du 2026-07-02).
5. **Passe d'anglais simple non faite** (dimension 7 ; détail Partie 2 §3). Le retour de l'encadrant reste non traité sur ce volet ; c'est un risque de rejet par défaut à CL.

## Minor issues

- `\jyear{2025}` (l.5) → 2026.
- `κ_agree = 0.756` (l.944) → « inter-judge agreement (Cohen's kappa) of 0.756 », sans symbole (collision avec la licence κ).
- Caption Table 1 (l.203) : « within each card... different verdicts » faux pour les deux cartes à une ligne ; marquer « insuff. LD » comme verdict output-level.
- Coin (σ low, κ=2), l.488 : « uncommon; of limited interest » frotte toujours avec SemDis/Verbal Creativity (σ = « -- », tâches AUT littérales) dans Table 2.
- Redondance FaithQA/HIC-Bench : intro l.166–169 ≈ §3.3 l.648–651 ; réduire l'intro à deux phrases + renvoi.
- Case A toujours schématique (l.670–676).
- Hygiène `.bib` : 4 entrées à warnings non citées ; ~400 entrées non citées à élaguer pour le dépôt.
- Dédupliquer Pavlick/Osyvokon (l.728) ; stabiliser `yona_metacognition_2026`.
- Overfull hbox ×11.
- README et `active-paper-context.md` : titre et vocabulaire encore « truth-regime » ; aligner.
- Logistique CL : fichier texte séparé (titre, auteurs, abstract, contact), catégorie « Position Paper », checklist soumission.

## What works

La migration elle-même est un travail sérieux : zéro résidu « regime »/« latitude », labels et macros propres, build sain, et le changement sémantique de LD appliqué là où il compte (arbre, encadré, labeling, agenda, discussion). Le papier est conceptuellement *meilleur* qu'avant la migration : H et LD sont maintenant des verdicts durs et checkables, l'utilité est un score assumé comme évaluateur-dépendant, et la nomenclature porte la thèse au lieu de la freiner. Le socle antérieur est intact : arbre exécutable, quatre worked verdicts dont une borne, double rôle de σ, calibration disciplinée, related work exacte.

## Severity key

| Rating | Meaning |
|--------|---------|
| FATAL | Paper cannot be accepted as-is |
| WEAK | Likely grounds for rejection; fixable but non-trivial |
| ADEQUATE | Passes the bar; room for improvement |
| STRONG | A genuine asset to the paper |

---

# Partie 2 — Rapport prose-hygiene (forme)

## §1 Terminologie — discipline et dérives

**Bloquant (contradictions internes)** — déjà listées en issues critiques 1–2 : Annexe A (l.812–813), « three conditions » (l.733), définitions LD (l.141, 187), Case D porte stance vs scope (l.695–696).

**[SYNONYM-DRIFT] concept « oracle »**
Formes trouvées : « content oracle » (canonique, l.140, 185, 293, 364) ; « truth oracle » ×2 (dont l.548 « form license and the truth oracle pull against each other »). Unifier sur « content oracle » (ou « oracle » nu après première mention).

**[SYNONYM-DRIFT] concept « form license »**
Formes trouvées : « form license » (canonique, ×28) ; « stylistic freedom » (l.175 « high stylistic freedom ») ; « poetic license » (Table 1, l.222 — idiome dans un exemple, tolérable, mais « the form license does not cover it » serait plus cohérent). Fix : l.175 → « a high form license » ; trancher l.222.

**[SYNONYM-DRIFT] composé « contract-aware »**
Formes trouvées : « truth-contract-aware » ×2 (abstract l.144, titre) ; « \TR-aware » (imprime « TC-aware ») ×5 (l.275, 727, 747, 756) ; « contract-aware » ×6 (l.269, 522, 560, 746...). Règle proposée : forme longue au titre et à la première occurrence de l'abstract ; « contract-aware » partout ailleurs ; éliminer « TC-aware ».

**[SYNONYM-DRIFT] verbe du contrat**
Formes trouvées : « license(s)/licensed » (canonique) ; « authorize(s)/authorized » ×10 (l.142, 163, 188, 190...) ; « permit(s) » ×6 (l.141, 311, 329...). L'encadrant demande un mot unique par concept : unifier sur « license » quand c'est le contrat qui agit ; garder « permit » uniquement en glose non technique ; supprimer « authorize ».

**[DRIFT résiduel] « creativity level »** ×2 (l.828 « creativity level next », caption Fig. B l.939) alors que l'axe a été renommé « style-emphasis level » (l.825, Table B, axes). Finir le renommage.

**[UNDEFINED] `scope(κ)`**
Utilisé formellement dans l'arbre (l.375) et l'Annexe A (l.811–812) sans définition formelle ; la seule glose est « the declared fictional frame » (l.734). Fix : une clause à la première occurrence (l.330 ou l.342) : « in scope: inside the declared frame or the topic the license covers ».

**[OK — distinctions réelles à conserver]** « stylistic variation » (SV, ×8) est un concept distinct (changement de forme sans proposition nouvelle), pas une dérive de « form license » ; garder. `\TRs` (« TCs ») ×1 : correct. F/A/H/LD : définis au premier usage, niveaux d'analyse annoncés (l.285), tenus partout.

## §2 AI-sounding phrasing

RAS confirmé sur la version du jour : 0 occurrence de delve/underscore/showcase/tapestry/pivotal/crucial/leverage/realm/landscape figuré/testament/« it is worth noting ». Les « not only X but » (l.647) portent un vrai contraste. Pas de tell de formatage (pas de Markdown résiduel, emphase sobre). La prose lit comme de l'écriture délibérée — le problème n'est pas l'artificialité, c'est la densité (§3).

## §3 Anglais académique simple — la passe restante

### 3a. Substitutions de vocabulaire (lignes de la version du jour)

| l. | Actuel | Proposé |
|----|--------|---------|
| 155 | « A paradox sits underneath this effort. » | « This effort hides a paradox. » |
| 166 | « Even the closest recent steps stop short of the contract. » | « Even the closest recent work does not model the contract. » |
| 168, 650 | « reads that label off the output's… scores » | « derives that label from the output's… scores » |
| 176 | « The irreducible component is κ » | « κ is the one component nothing else can replace » |
| 188, 283, 512, 751, 944 | « conflates / conflated / conflating » | « confuses / confused / confusing » (l.751 : « risk treating figurative language as unsupported claims ») |
| 268, 667 | « leave underdetermined » | « cannot decide » |
| 290, 777 | « underdetermine it » | « may not fix it fully » |
| 306 | « load-bearing for measurement » | « critical for measurement » |
| 333 | « A contrast pins the category down. » | « A contrast makes the category concrete. » |
| 431 | « The two come apart at κ=1. » | « The two differ at κ=1. » |
| 503 | « the load-bearing tension is the dashed cell » | « the important tension is in the dashed cell » |
| 548 | « not an incidental hole » | « not an accident » |
| 554 | « the instructive near-miss » | « the most instructive case » |
| 559, 751 | « brittleness » | « fragility » |
| 647 | « a non-assertoric or inventive move » | « a hedged or inventive move » |
| 657 | « compounds the picture rather than resolving it » | « adds to the problem rather than solving it » |
| 786 | « by accident of protocol » | « depending on which protocol happens to be used » |

Ne pas toucher (termes de l'art) : faithfulness, grounding, entailment, hedge, atomic claims, NLI, foregrounding (glosé l.300), pretended assertion.

### 3b. Phrases à casser (une idée par phrase, SVO)

l.140 (abstract, 3 propositions en une) ; l.185 (thèse) ; l.299–300 (définition σ, ~90 mots — version cassée prête dans le plan du 2026-07-02, §4.3, à adapter au mot « form license ») ; l.312 (Stalnaker/Searle, 60+ mots) ; l.331 (nouvelle, mais 50+ mots avec double incise) ; l.542 ; l.555 ; l.769.

### 3c. Abstract

L'abstract actuel est l'ancien, migré mot à mot ; il hérite de la phrase-fleuve l.140 et de la définition désalignée l.141. La version en phrases courtes proposée dans `plan_modification_reformulation_2026-07-02.md` §5 reste valable telle quelle, à une correction près (supprimer « and the task rewards », remplacer par « presented as the contract requires; usefulness is scored separately »).

## §4 Synthèse des comptes

| Catégorie | Constats |
|---|---|
| Contradictions internes (bloquant) | 4 (Annexe A ; « three conditions » ; définitions LD l.141/187 ; Case D) |
| Synonym drift | 5 concepts (oracle ; form license ; contract-aware ; verbe du contrat ; creativity level) |
| Terme non défini | 1 (`scope(κ)`) |
| AI-tells | 0 |
| Substitutions vocabulaire | 17 lignes touchées (~24 occurrences) |
| Phrases à casser | 8 |

**Top 5 des fixes au meilleur ratio impact/effort** : (1) Annexe A alignée sur la Figure 1 ; (2) disjonction Annexe B + 5ᵉ caveat ; (3) définitions LD (l.141, 187) ; (4) substitution « conflates » ×5 + les 4 drifts de synonymes ; (5) cassage de l.299–300 et de l.140.

---

# Partie 3 — Ordre de travail

1. Propagation LD (issues critiques 1–2 + « three conditions » + Case D) — 1 h, aucune décision nouvelle.
2. Annexe B : arithmétique + disjonction + 5ᵉ caveat — 1 h (texte prêt).
3. Passe langue : substitutions §3a, phrases §3b, abstract §3c — ½ journée.
4. Drifts de synonymes §1 + `scope(κ)` + « creativity level » ×2 — 1 h.
5. Mécanique : `\jyear`, `κ_agree`, caption Table 1, coin (low,2), redondance intro/§3.3, bib, Overfull — 1 h.
6. `make pdf`, relecture-échantillon par l'encadrant (abstract + §1 + §2), README/notes alignés, logistique CL, soumission.
