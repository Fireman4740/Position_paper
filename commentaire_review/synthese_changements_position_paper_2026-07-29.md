# Synthèse consolidée des changements du position paper

**Date de consolidation :** 29 juillet 2026  
**Corpus analysé :** les neuf fichiers Markdown de `commentaire_review/`, soit le suivi brut des 74 fils Overleaf, les états de traitement, les décisions et reformulations, les notes de fond, le fil rouge prompt→claim, la revue consolidée du 27 juillet et la revue pré-soumission du 28 juillet.  
**Règle de consolidation :** en cas de conflit, la revue du 28 juillet prime sur les états plus anciens ; une modification déclarée « faite » le 27 juillet n'est donc pas considérée comme suffisante si la revue suivante demande de la reprendre.

## 1. Point de situation

Le dépôt contient actuellement deux versions :

- `main_position.tex`, désigné comme manuscrit actif dans le `README`, conserve l'architecture antérieure à la grande révision ;
- `main_position_revised.tex` contient la restructuration recommandée par la revue du 28 juillet : thèse resserrée, style sorti du truth contract, suppression de `κ` du noyau, mapping requalifié, agenda falsifiable et section de limites renforcée.

La première décision est donc éditoriale : **choisir le fichier canonique**. La voie la plus économique est de promouvoir `main_position_revised.tex` comme base, après vérification des éventuelles différences intentionnelles avec `main_position.tex`. Sinon, une grande partie des changements ci-dessous devra être reportée manuellement dans le manuscrit actif.

### Légende

- **P0 — obligatoire :** risque direct de rejet ou de non-conformité.
- **P1 — fortement recommandé :** amélioration substantielle de la solidité ou de la lisibilité.
- **P2 — finition :** forme, clarté locale ou confort de lecture.
- **Acquis dans la variante révisée :** présent dans `main_position_revised.tex`, mais à préserver lors du choix du fichier canonique.
- **Partiel :** amorcé, mais la preuve, la validation ou la finition manque.
- **Externe :** nécessite une action autre qu'une simple réécriture.

## 2. Priorités transversales

| Priorité | Changement consolidé | Statut |
|---|---|---|
| P0 | Choisir le manuscrit canonique et reporter toutes les révisions dans ce fichier unique. | À décider |
| P0 | Formuler la thèse comme une convention d'évaluation : l'absence de support est insuffisante pour conclure à l'hallucination. | Acquis dans la variante révisée |
| P0 | Distinguer explicitement la contribution de la factuality, de la faithfulness, de l'intent/task compliance et des approches « good hallucination ». | Acquis, à vérifier dans la version canonique |
| P0 | Séparer le truth contract de la spécification stylistique : `TC(p)=(O_p,Γ_p,μ_p)` et style comme variable de recovery/compliance. | Acquis dans la variante révisée |
| P0 | Renforcer méthodologiquement le mapping ou le maintenir partout comme mapping exploratoire, non représentatif. | Partiel |
| P0 | Faire recoder au moins 20–25 % du mapping par un second annotateur et documenter désaccords/adjudication. | Externe, non fait |
| P0 | Réparer les exemples afin qu'ils ne fassent varier qu'un facteur à la fois et ne contiennent aucune instruction contradictoire. | Acquis pour les unit tests ; exemples réels encore absents |
| P0 | Rendre les figures principales lisibles, non redondantes et cohérentes avec le formalisme final. | Acquis dans la variante révisée, à inspecter avec le gabarit officiel |
| P0 | Ajouter falsifiabilité, gouvernance, hiérarchie d'autorité et contraintes non contournables. | Acquis dans la variante révisée |
| P0 | Compiler et inspecter le PDF avec les fichiers officiels `clv2025.cls` et `compling.bst`. | Externe, à faire |
| P0 | Vérifier les métadonnées et le statut final des références 2025–2026. | Externe, à faire |
| P1 | Ajouter deux ou trois exemples documentés issus de ressources existantes, si les droits et l'espace le permettent. | Non fait |
| P1 | Publier le codebook et le mapping sous forme tabulaire lisible par machine, avec justification de chaque codage. | Partiel |
| P1 | Tester empiriquement la stabilité de l'extraction de claims sous transformations stylistiques ; d'ici là, la présenter comme hypothèse. | Externe, non fait |
| P1 | Réduire les répétitions et conserver la baisse de longueur de la variante révisée. | Acquis, à préserver |
| P2 | Effectuer une dernière passe US English, longueur des phrases, transitions et cohérence terminologique. | À vérifier |

## 3. Changements de fond et de structure, classés par section

### 3.1 Titre

**P0 — Resserer la portée de la position.**

- Éviter un titre ontologique du type « Hallucination Is Contract-Relative », qui peut laisser croire que la vérité elle-même change selon le prompt.
- Préférer un titre méthodologique centré sur l'évaluation et la distinction entre erreur non soutenue et divergence autorisée.
- Formulation cible déjà retenue dans la variante révisée :  
  *Hallucination Evaluation Should Be Contract-Aware: Separating Unsupported Error from Licensed Divergence*.

**Critère de clôture :** le titre, l'abstract, l'introduction et la conclusion défendent tous la même thèse étroite.

### 3.2 Abstract

#### Fond et structure

**P0 — Présenter quatre éléments dans cet ordre : problème, position, base argumentative, test de rejet.**

1. L'évaluation fondée sur le support est nécessaire mais insuffisante dans les tâches autorisant hypothèses, contre-factuels ou fiction.
2. La position porte sur le verdict d'évaluation, pas sur une vérité relative.
3. Le mapping est exploratoire et les cas sont des tests contrastifs, pas une validation expérimentale.
4. La proposition doit être rejetée si elle n'améliore ni l'accord ni la stabilité diagnostique par rapport à une combinaison plus simple factuality + task compliance.

**P0 — Respecter la contrainte de 150–250 mots.**  
La revue signalait 258 mots ; la variante révisée en contient environ 217.

**P0 — Affaiblir les affirmations sur le mapping.**

- Remplacer « shows » par « suggests » ou « illustrates within the selected sample ».
- Ne pas employer « widely used » sans critère de sélection opérationnel.
- Dire explicitement « exploratory, single-coder mapping » tant que le recodage indépendant n'est pas réalisé.

**P1 — Conserver la trichotomie comme apport concret**, mais en toutes lettres dans l'abstract : supported, hallucination, licensed divergence. Les macros peuvent rester dans le corps.

#### Formulation cible à préserver

> Unsupportedness is not sufficient for a hallucination verdict.

> The proposal should be rejected if it does not improve agreement or diagnostic stability over simpler combinations of factuality and instruction-compliance judgments.

### 3.3 Introduction

#### Fond et structure

**P0 — Définir avant d'utiliser.**

Introduire en langage courant, avec un exemple bref :

- claim ;
- response span ;
- prompt `x` ;
- task context `p` ;
- truth contract ;
- reference evidence/oracle `O_p` ;
- permission scope `Γ_p` ;
- required epistemic presentation/marking `μ_p` ;
- supported, hallucination et licensed divergence.

La distinction recommandée est : `x` désigne le prompt visible ; `p` désigne le contexte de tâche complet, incluant instructions système, contraintes du domaine, historique, preuves attachées et ordre d'autorité.

**P0 — Poser la thèse principale avant le formalisme.**

- Phrase centrale : l'absence de support ne suffit pas à déterminer le verdict.
- Clarifier que le papier ajoute une règle de décision claim-level.
- Dire explicitement que le papier ne propose ni une nouvelle source de vérité, ni un score global d'alignement, ni une métrique de créativité.

**P0 — Répondre à l'alternative la plus forte.**

Ajouter ou conserver un paragraphe répondant à :

> Why not score factuality and task compliance separately?

La réponse doit expliquer la valeur ajoutée de la décomposition opérationnelle : source admissible, permission de quitter l'évidence, portée de cette permission, présentation épistémique et localisation des erreurs dans le pipeline.

**P0 — Qualifier correctement les preuves.**

- Mapping = instrument diagnostique/scoping.
- Cas = unit tests construits de la règle.
- Aucun des deux ne démontre seul un échec généralisé des évaluateurs existants.

**P1 — Annoncer la structure du papier.**

Le paragraphe de plan doit aussi annoncer la fonction argumentative de chaque partie : définir, comparer, diagnostiquer, tester, rendre falsifiable, discuter les limites.

**P1 — Ajouter un critère de réfutation dès l'introduction.**

Préciser ce qui affaiblirait la position : champs impossibles à annoter fiablement, absence de gain d'accord, ou performance équivalente d'un modèle factuality + compliance plus simple.

#### Clarté et forme

- Remplacer l'ancien exemple contestable « the winter that would not lift asserts nothing checkable » par un span non propositionnel sans ambiguïté, ou signaler explicitement le désaccord possible.
- Éviter d'interrompre l'argument principal avec une définition très longue de `p` ; garder la glose courte ici et déplacer les détails en section 2.
- Corriger le comma splice de l'ouverture.
- Raccourcir l'explication de la Figure 1 si elle répète sa légende.

### 3.4 Section 2 — Cadre : *A Contract-Aware Claim Verdict*

#### Architecture générale

**P0 — Conserver l'ordre pédagogique suivant :**

1. exemple mixte guidé ;
2. truth contract et spécification de tâche ;
3. unité de recovery et record canonique ;
4. couverture, état de preuve et verdict ;
5. qualité et agrégation séparées.

Le glossaire doit précéder la première figure qui emploie les symboles.

#### Truth contract, style et formalisation

**P0 — Séparer le noyau de labellisation du style.**

Structure préférée :

```text
TC(p) = (O_p, Γ_p, μ_p)
TS(p) = (TC(p), σ_p)
```

- `TC` gouverne le verdict claim-level.
- `σ_p` est une condition de génération et une variable de recovery/compliance.
- Le style peut perturber l'extraction ou le matching sans autoriser un contenu non soutenu.

Cette décision répond simultanément aux commentaires sur `σ`, la faithfulness, le style SOTA et l'excès de formalisme.

**P0 — Supprimer `κ_p` du noyau.**

- Ne pas le présenter comme champ opératoire.
- S'il est conservé pour le mapping, le définir comme code descriptif nominal ou heuristique d'annexe, sans caractère métrique ni rôle dans la règle.
- La variante révisée le remplace par des profils nominaux ; cette solution est la plus claire.

**P0 — Définir `O_p` comme source admissible plus règle d'adjudication.**

`O_p` doit préciser :

- sources admissibles et autorité ;
- borne temporelle ;
- hypothèse de complétude ;
- exigences de retrieval ;
- règle de résolution des conflits.

Séparer les preuves de référence des critères de qualité ou de créativité. Dans un cadre fictionnel, les contraintes du story world peuvent appartenir à `O_p`, tandis que la déclaration « ceci est une fiction » relève du marking `μ_p`.

**P0 — Empêcher qu'un échec de retrieval devienne artificiellement `LD`.**

- Distinguer indétermination réelle, source non couverte, retrieval failure et conflit de sources.
- Prévoir `UNRESOLVED` lorsque l'adjudication n'est pas adéquate.
- Documenter des reason codes pour l'ancien état `UNKNOWN`.

**P0 — Corriger la signature de la règle.**

Le verdict doit recevoir le claim canonique et le span qui porte son statut :

```text
V(c_i*, s_i | p)
```

Le test de présentation ne peut pas être calculé à partir de `c_i*` seul.

**P1 — Numéroter uniquement les équations centrales.**

Au minimum :

1. truth contract / task specification ;
2. adéquation et état de preuve ;
3. règle de verdict ;
4. critère de stabilité stylistique.

#### Unité d'analyse et granularité des claims

**P0 — Donner une décision opérationnelle après le SOTA.**

Unité recommandée :

> a minimally decontextualized proposition that preserves modality, attribution, negation, temporal scope, referents and discourse frame; full atomicity is not required.

Ajouter :

- règles de sélection des spans ;
- possibilité un span → plusieurs claims ;
- possibilité plusieurs spans → un claim ;
- conservation de la provenance et du statut épistémique dans le record canonique ;
- fenêtre de contexte autorisée pour l'interprétation ;
- procédure d'arbitrage des présuppositions, implicatures et dépendances discursives.

**P1 — Ne pas réduire la stylistic variation à un verdict central.**

`SV` peut rester un diagnostic optionnel. Un flag binaire ne couvre pas à lui seul métaphore, registre, voix, syntaxe, phonologie et organisation discursive.

#### Usefulness, qualité et agrégation

**P0 — Maintenir l'ordre : permission d'abord, utilité ensuite.**

- `LD` signifie autorisé, pas vrai, utile, original ou sûr.
- La usefulness peut être évaluée au niveau claim, idée, passage, plan, processus ou artefact selon la tâche.
- Ne pas imposer `U(c*,p)` comme unité universelle.

**P1 — Proposer des familles d'agrégation transparentes sans imposer une métrique universelle.**

Présenter au moins :

- règle du pire cas ;
- proportion de claims acceptables ;
- agrégation pondérée par gravité.

Pour chacune, préciser la question à laquelle elle répond et conserver les labels claim-level sous-jacents.

### 3.5 Section 3 — *Related Evaluation Paradigms*

#### Fond et structure

**P0 — Ajouter une comparaison directe avec les approches les plus proches.**

Comparer au minimum :

- factuality ;
- source faithfulness ;
- claim recovery/decomposition ;
- intent/task compliance ;
- value-based ou « good hallucination » ;
- truth-contract framework.

Axes recommandés :

- source de preuve explicite ;
- permission de quitter l'évidence ;
- portée de la permission ;
- présentation épistémique ;
- style-conditioned recovery ;
- type de sortie/diagnostic.

**P0 — Borner les claims d'absence.**

Remplacer les formulations de type « existing methods do not » par :

> Across the surveys and resources examined in our purposive mapping, we did not identify a protocol that independently varies all of these variables.

**P0 — Consolider le SOTA d'extraction de claims.**

Le SOTA ajouté doit :

- couvrir decomposition-then-verify, verifiability, decontextualization, granularité et sensibilité des scores ;
- expliquer que la fiabilité du recovery borne la fiabilité du framework ;
- relier les choix de granularité au protocole d'annotation proposé ;
- éviter « no benchmark » sans trace de recherche reproductible ;
- présenter les erreurs sous style marqué comme hypothèse à tester, pas comme résultat déjà démontré.

**P0 — Relier faithfulness, alignment et style au pipeline à deux étages.**

- Source faithfulness = relation entre claim récupéré et preuve.
- Instruction following/style = propriété de la génération et de sa lecture par le recovery.
- Un style demandé peut modifier la surface sans modifier l'engagement factuel.
- La possibilité d'un artefact de mesure doit être formulée comme hypothèse.

**P1 — Développer la différence avec l'intent-aware evaluation.**

Une phrase n'est pas suffisante compte tenu du risque de nouveauté. Ajouter un contraste concret de labels et d'unités, ou un exemple où deux réponses ont une couverture de contraintes comparable mais un diagnostic preuve/permission différent.

#### Forme et clarté

- Remplacer « will misclassify » par « may omit or mishandle » pour les extracteurs.
- Remplacer « This concern is not hypothetical » par une formulation qui distingue preuve indirecte et test contrôlé manquant.
- Éviter les longues listes de taxonomies ; préférer le tableau comparatif et une synthèse analytique.
- Utiliser « source faithfulness » et « instruction compliance » pour éviter l'ambiguïté du mot *faithfulness*.

### 3.6 Section 4 — *A Diagnostic Mapping of Evaluation Resources*

#### Fond et structure

**P0 — Assumer une seule des deux stratégies suivantes.**

**Option A — Renforcer la preuve :**

- date et bases de recherche ;
- requêtes ;
- snowballing ;
- critères d'inclusion/exclusion ;
- définition d'une « resource » ;
- catégories cibles ;
- nombre de codeurs ;
- codebook ;
- sous-échantillon recodé ;
- accord et tableau de désaccord ;
- sensibilité à des codages alternatifs.

**Option B — Déclasser l'ambition :**

- appeler la section *Diagnostic Mapping* ;
- parler d'illustration/scoping ;
- supprimer toute conclusion de prévalence ;
- employer « suggests within the selected sample » ;
- ne pas présenter le mapping comme la preuve principale d'un angle mort généralisé.

La variante révisée suit surtout l'option B. Le second codage reste néanmoins la meilleure action externe avant soumission.

**P0 — Corriger l'unité et les catégories.**

- Distinguer benchmark, dataset, task et metric.
- Séparer text generation et executable-solution tasks.
- Distinguer style explicitement neutre, style non contrôlé et style non rapporté.
- Marquer chaque champ comme explicite ou inféré.
- Ajouter type de ressource, unité de sortie, rationale et source précise.

**P0 — Corriger les claims produits par la figure de mapping.**

- Ne pas annoncer un nombre de cellules vides si la règle de comptage n'est pas reproductible.
- Ne pas dire qu'un évaluateur « would fail » ; dire que la condition « could reveal » un échec.
- Ne pas parler de contradiction entre familles de benchmarks ; parler de régions différentes d'un espace de couverture.

**P1 — Rendre le mapping réutilisable.**

- CSV ou format machine-readable ;
- codebook public ;
- extraits/pages justifiant chaque codage ;
- journal d'adjudication ;
- statement de disponibilité.

#### Transition et informations sur le sample

Le paragraphe placé entre la section 4 et la sous-section 4.1 doit dire immédiatement :

- que l'unité codée est la ressource ;
- pourquoi ces quarante ressources ont été sélectionnées ;
- que l'objectif est diagnostique ;
- que le sample n'est pas une estimation de prévalence.

### 3.7 Section 5 — *Contrastive Unit Tests of the Rule*

#### Fond et structure

**P0 — Présenter les cas comme des tests de la règle, pas comme des observations empiriques.**

Le renommage *Contrastive Unit Tests of the Rule* est préférable à *Worked Cases*.

**P0 — Construire de vraies paires minimales.**

Pour chaque cas :

- garder `O_p`, `Γ_p` et `μ_p` constants sauf le champ explicitement testé ;
- indiquer les champs fixes et le champ modifié ;
- donner le label attendu ;
- préciser ce qui falsifierait l'attente.

**P0 — Réparer le cas de présentation.**

Comparer, sous un même contrat, une assertion catégorique et une formulation hedgée. Ne pas passer simultanément d'un QA grounded à un contrat de génération d'hypothèse.

**P0 — Corriger le running example.**

Utiliser une consigne non contradictoire :

> Do not contradict the archive extract. Distinguish statements supported by the extract from plausible reconstructions, and mark every reconstruction explicitly as conjecture.

**P1 — Ajouter deux ou trois exemples documentés.**

La variante révisée conserve des unit tests construits. Ajouter quelques items provenant de protocoles existants renforcerait le papier, à condition de vérifier précisément les sources et les droits.

**P1 — Ajouter un tableau récapitulatif.**

Colonnes :

- fixed fields ;
- changed field(s) ;
- expected verdict ;
- reason ;
- falsifier.

#### Forme et clarté

- Éviter les expériences de pensée qui changent à la fois frame, preuve et permission.
- Signaler « constructed example » dans la figure/table, pas seulement dans la prose.
- Pour tout individu nommé dans un exemple construit, rendre le caractère fictif impossible à manquer.

### 3.8 Section 6 — *Research Agenda*

#### Fond et structure

**P0 — Transformer la liste de future work en roadmap falsifiable.**

Chaque item doit contenir :

- question de recherche ;
- unité d'analyse ;
- données/annotations ;
- baseline ;
- métrique ;
- résultat favorable ;
- résultat qui affaiblit la position.

**P0 — Prioriser trois études centrales.**

1. **Annotation feasibility** — les champs sont-ils annotables de manière fiable et utile ?
2. **Factorial benchmark** — permission, présentation et style changent-ils les gold labels comme prévu à preuve constante ?
3. **Stage diagnosis** — les erreurs viennent-elles du recovery, du matching de preuve ou de la règle finale ?

**P1 — Présenter comme extensions :**

- agrégation ;
- mitigation conservant `LD` ;
- généralisation inter-domaines et multilingue ;
- agents et tool use.

**P1 — Traiter le coût frontalement.**

- annotation du contrat amortie au niveau prompt/ressource ;
- annotation claim-level déjà présente dans les pipelines de factualité ;
- version minimale du protocole ;
- adjudication concentrée sur les désaccords ;
- temps d'annotation comme métrique.

**P1 — Ajouter les agents avec une portée prudente.**

Expliquer :

- oracle qui évolue avec les appels d'outils ;
- contrats de sous-tâches ;
- conflits de hiérarchie ;
- effet des affirmations non marquées sur les actions aval ;
- baseline de task success ;
- caractère encore spéculatif de l'extension.

**P1 — Ajouter quatre pistes explicitement issues des objections.**

- autorité et gouvernance du contrat ;
- ablation/minimalité des champs ;
- compréhension humaine du marking ;
- adversarial contract laundering.

#### Transition

Chaque priorité doit être motivée plus tôt dans le papier. La section agenda ne doit introduire aucun problème pour la première fois.

### 3.9 Section 7 — Discussion

#### Fond et structure

**P0 — Organiser autour de trois fonctions : implications, limites, falsifiabilité/gouvernance.**

- Qui fixe le contrat ?
- Quelle instruction a priorité ?
- Quelles règles système, légales, de sûreté ou de domaine sont non contournables ?
- Comment empêcher qu'une consigne « fiction/brainstorming » ne serve à blanchir de la désinformation ?
- Dans quelles conditions le framework doit-il être rejeté ?

**P0 — Conserver l'ouverture agentique comme extension, pas comme preuve du cœur.**

**P1 — Réduire les répétitions.**

Ne pas redéfinir les labels, l'agrégation et la séparation style/qualité déjà expliqués en section 2 et dans l'agenda.

**P1 — Réduire le paragraphe sur l'inévitabilité.**

Les arguments théoriques d'inévitabilité sont périphériques et dépendants d'hypothèses fortes. Deux phrases prudentes suffisent.

### 3.10 Conclusion

#### Fond et structure

**P0 — Revenir à la position défendue, pas à une définition présentée comme acquise.**

Commencer par :

> In this position article, we argued that...

Rappeler :

- unsupportedness n'est pas suffisant ;
- permission et marking sont distincts de la vérité et de l'utilité ;
- le mapping est exploratoire ;
- la validation décisive reste comparative et falsifiable.

**P1 — Finir sur une action concrète.**

> The immediate test is to compare contract-aware and contract-blind evaluators on matched prompts that independently vary evidence, permission, presentation, and style.

#### Forme et clarté

- Éviter de répéter le tuple complet si le paragraphe reste compréhensible sans notation.
- Éviter une nouvelle liste exhaustive d'agenda.
- Rappeler la taille de l'échantillon seulement si le mapping est mentionné.

### 3.11 Annexes

#### Annexe A — diagnostics et agrégation

**P1 — Formaliser la stabilité correctement.**

- Remplacer l'égalité littérale des ensembles de claims par une relation de matching ou bijection sémantique.
- Préserver proposition, modalité, attribution, négation et temporalité.
- Numéroter le critère si le texte y renvoie.

**P1 — Donner au moins deux agrégations candidates**, avec leur interprétation, sans en déclarer une universelle.

#### Annexe B — mapping

**P0 — Ajouter un codebook compact.**

**P1 — Distinguer dans chaque ligne :**

- resource type ;
- output unit ;
- source/evidence ;
- style control ;
- permission profile ;
- explicit vs inferred ;
- coding rationale ;
- source location ;
- coder notes.

Conserver une version PDF compacte et déplacer le détail complet dans un supplément machine-readable.

### 3.12 Références et conformité de soumission

**P0 — Vérifier avant soumission :**

- statut final de SimpleText Track 2026 ;
- statut et métadonnées de Lamba et al. (2026) ;
- statut preprint/proceedings des travaux 2025–2026 ;
- forme bibliographique finale de Feuer et al. ;
- métadonnées des références claim-extraction depuis ACL Anthology ou la venue finale ;
- présence d'une source primaire pour usefulness/appropriateness ;
- distinction entre preuve directe et citation voisine.

**P0 — Compiler avec le package officiel**, puis vérifier :

- première page ;
- placement des floats ;
- lisibilité des figures ;
- ordre des tableaux ;
- références croisées ;
- citations ;
- overfull boxes ;
- conformité du style bibliographique.

**P0 — Préparer 5–10 mots-clés pour le portail.**

Proposition issue de la revue :

> large language models; hallucination; factuality; faithfulness; claim extraction; computational creativity; evaluation methodology; epistemic calibration; agentic AI

## 4. Modifications de forme et de clarté, classées par section

### Abstract

- Écrire entièrement en prose, sans notation mathématique.
- Utiliser des catégories grammaticalement parallèles : *supported claim, hallucination, licensed divergence*.
- Éviter « same claim » si seuls les mots de surface sont identiques ; écrire *identical surface wording under different task contexts*.
- Dire « This position article argues... » pour rendre le genre explicite.

### Introduction

- Corriger :  
  *These errors limit the use of LLMs in high-stakes settings, therefore...*  
  en deux phrases ou avec *Accordingly*.
- Remplacer :  
  *Claims, not sentences and not responses, are what receives a label here.*  
  par :  
  *The framework assigns labels to claims, not to complete sentences or responses.*
- Remplacer les formulations non idiomatiques comme *what evidence the task is answerable to* par *which evidence governs the answer*.
- Introduire les acronymes au premier usage utile et développer `SV`.
- Définir « evaluator » comme humain, pipeline automatique ou combinaison des deux.
- Utiliser systématiquement `x` pour le prompt, `p` pour le task context et `y` pour la réponse.

### Section 2

- Utiliser `\paragraph{...}` pour les véritables titres de paragraphes ; garder le gras pour une liste visuelle seulement si ce choix est assumé.
- Dire *The fields act at two different stages and are therefore not interchangeable* plutôt que « three components » lorsqu'il y a plusieurs champs.
- Remplacer :  
  *A sentence may carry several claims, one, or none*  
  par :  
  *A sentence may express several claims, a single claim, or no truth-conditional claim.*
- Éviter les gloses longues dans les figures ; déplacer les définitions détaillées dans le texte ou le glossaire.
- Préciser partout « supported relative to `O_p` ».
- Ne jamais laisser croire que `LD` implique créativité, valeur ou sécurité.

### Section 3

- Remplacer les claims catégoriques par des formulations bornées au corpus examiné.
- Remplacer *will misclassify* par *may omit or mishandle*.
- Remplacer *This concern is not hypothetical* par une phrase reconnaissant l'absence de test contrôlé direct.
- Présenter l'hypothèse de mesure comme hypothèse, non comme conclusion des travaux de training.
- Préférer une synthèse comparative à une accumulation de références.

### Section 4

- Utiliser *mapping*, *scoping exercise* ou *coverage map*, pas *evidence* si la méthode reste mono-codeur.
- Remplacer *would fail/misfire* par *could reveal a failure/misclassification*.
- Remplacer *apparent contradiction* par *different regions of the proposed design space*.
- Ne pas écrire qu'un exemple construit est « the only kind available » ; dire qu'il spécifie le comportement attendu dans une cellule absente du sample.
- Ajouter une phrase introductive entre la section et la sous-section 4.1 pour présenter l'échantillon et l'unité de codage.

### Section 5

- Afficher pour chaque test les champs fixes et variables.
- Utiliser une table compacte, puis développer seulement deux ou trois cas.
- Indiquer clairement *constructed unit test*.
- Éviter les noms réels dans une attribution fabriquée.

### Section 6

- Donner la raison d'être de chaque item avant sa méthode.
- Employer une structure homogène : question → expérience minimale → résultat décisif.
- Éviter les points d'agenda disproportionnés ; raccourcir l'ouverture agents si elle dépasse le cœur de validation.

### Discussion

- Couper les redites avec le cadre et l'agenda.
- Employer un ton prudent sur l'inévitabilité et la généralisation aux agents.
- Remplacer les formulations globales sur les benchmarks d'agents par une affirmation bornée à la ou aux ressources citées.

### Conclusion

- Employer *article* plutôt que *paper* dans la prose courante.
- Éviter une conclusion chargée en symboles.
- Terminer par une action/test unique plutôt que par une nouvelle liste.

### Passe linguistique globale

- US English : *favor*, *behavior*, *labeling*.
- Hyphénation cohérente : *claim-level*, *response-level*, *task-specific*, *evidence-unknown/evidence-unsettled*, *contract-aware*.
- Éviter *This* sans nom lorsque plusieurs antécédents sont possibles.
- Scinder les phrases de plus de 30 mots lorsqu'elles mêlent constat de littérature et inférence du manuscrit.
- Réduire les formulations absolues : *no work*, *none*, *existing benchmarks do not*.
- Préférer une affirmation précise à une formule défensive ou aphoristique.

## 5. Traitement explicite des notes ajoutées par l'auteur

| Note | Section cible | Action consolidée | Statut |
|---|---|---|---|
| Ajouter le SOTA extraction de claim | §3 | Conserver la sous-section dédiée ; relier granularité, recovery, erreurs et agenda ; donner une unité recommandée. | Acquis, à vérifier |
| Restructurer pour remonter les définitions de `TC(p)` | §1–2 | Définir en prose dans l'intro, puis formaliser avant les usages ; glossaire avant figure. | Acquis dans la variante révisée |
| Faire un bon prompt pour la thèse principale | §1–2 / Figure 2 | Garder un prompt unique non contradictoire qui expose preuve, permission et marking. | Acquis, prompt à relire |
| Refaire la figure principale prompt→claim | §2 / Figure 2 | Deux panneaux lisibles : contexte/contrat puis chemins span→claim→preuve→verdict. | Acquis dans la variante révisée |
| Mettre plus de faithfulness et alignment | §3 | Comparaison directe ; distinguer source faithfulness, instruction compliance et alignment global. | Acquis partiellement |
| Ajouter une ouverture Agent AI / task agents | §6–7 | Extension avec oracle évolutif, contrats de sous-tâches, conflits et conséquences aval. | Acquis |
| Relier `σ` et faithfulness ; blinder le SOTA style | §2–3 | Style hors de `TC`, variable de recovery/compliance ; hypothèse de stabilité à tester. | Acquis conceptuellement ; test externe manquant |
| Définir avant d'utiliser | §1–2 | Claim, span, `x`, `p`, `O`, `Γ`, `μ`, labels et rôle de l'évaluateur avant formalisme dense. | Acquis |
| Ajouter de l'état de l'art | §3 | Ajouts ciblés uniquement : extraction, intent, usefulness et style ; éviter une revue encyclopédique. | Acquis, métadonnées à vérifier |
| Définir usefulness avec le SOTA | §2.5 / §3 | Permission d'abord, utilité ensuite ; unité d'évaluation variable selon la tâche. | Acquis |
| Définir `O_p` comme source de l'oracle | §2.2 | Sources admissibles + autorité + temps + complétude + retrieval + résolution de conflits. | Acquis dans la variante révisée |
| Ajouter des transitions entre parties | Fin/début de chaque section | Dire la fonction de la section suivante et le statut de la preuve. | Acquis, passe finale nécessaire |
| Ajouter un paragraphe présentant la structure | Fin §1 | Plan argumentatif section par section. | Acquis |
| Réduire le formalisme non indispensable | §2 + annexes | `κ` hors du noyau, `SV` en diagnostic, équations centrales seulement, fusion/suppression des figures redondantes. | Acquis dans la variante révisée |
| Expliquer unités et granularité du claim | §2.3 + §3 SOTA | Span vs claim vs record canonique ; règles de canonicalisation et arbitrage. | Bien avancé |
| Petite introduction entre §4 et §4.1 | §4 | But diagnostique, unité « resource », sample purposif, non-prévalence. | Acquis |
| Ajouter les informations sur les samples | §4.1 + Annexe B | Date, sources, requêtes, critères, codebook, codeurs, justification, accord. | Partiel ; second codeur absent |
| Expliquer davantage l'agenda | §6 | RQ, méthode, baseline, métrique et falsifier par item. | Acquis dans la variante révisée |
| Dire pourquoi chaque item de recherche existe | Sections antérieures + §6 | Chaque item doit être motivé par une limite déjà exposée. | Acquis, à relire |
| Détailler les phrases trop condensées | Global | Priorité aux passages style, mapping, artefacts de mesure et agents. | Passe finale |

## 6. Arbitrages à conserver ou décider

1. **Fichier canonique — à décider immédiatement.**  
   Recommandation : partir de `main_position_revised.tex`, puis le promouvoir explicitement après contrôle.

2. **Mapping — méthode contre ambition.**  
   La variante révisée a correctement réduit l'ambition. Un second codage reste souhaitable si le mapping conserve un rôle central.

3. **Exemples réels — à décider selon temps et droits.**  
   Les unit tests construits sont défendables s'ils sont présentés comme tels ; deux ou trois cas documentés renforceraient néanmoins la preuve.

4. **Limite mono-codeur — à conserver.**  
   Ne pas supprimer l'information. Retirer le ton auto-dévalorisant, pas la limite méthodologique.

5. **Prompt et task context.**  
   Conserver `x` pour le prompt et `p` pour le contexte complet. Ne pas adopter `P` majuscule.

6. **Acronymes.**  
   Dans l'abstract, écrire les labels en toutes lettres. Dans le corps et les figures, conserver `SUP`, `H`, `LD` si le gain d'espace est réel et si chaque terme est glosé tôt.

7. **Style.**  
   Conserver la décision de sortir `σ` du truth contract. Le style reste essentiel au protocole expérimental de recovery, sans devenir une condition de vérité ou de permission.

8. **Agenda en gras ou `\paragraph`.**  
   Utiliser `\paragraph` pour les titres sémantiques ; une liste numérotée peut rester en gras si la hiérarchie visuelle est cohérente et assumée.

## 7. Ordre d'exécution recommandé

### Phase 1 — Stabiliser le manuscrit

1. Choisir le fichier canonique.
2. Vérifier que la thèse, le titre et le formalisme correspondent à la variante révisée.
3. Rejouer les contrôles de références et de renvois.

### Phase 2 — Fermer les risques probatoires

1. Faire recoder un sous-échantillon du mapping.
2. Finaliser le codebook, les justifications et le CSV.
3. Ajouter des cas documentés si possible.
4. Vérifier toutes les références récentes.

### Phase 3 — Fermer les risques éditoriaux et visuels

1. Compiler avec le package officiel.
2. Inspecter les figures, tableaux, floats et annexes.
3. Préparer mots-clés et métadonnées du portail.

### Phase 4 — Passe finale de clarté

1. US English et terminologie.
2. Phrases longues et claims trop catégoriques.
3. Transitions et suppression des répétitions.
4. Vérification ligne à ligne des réponses aux commentaires.

## 8. Réponse consolidée possible aux relecteurs

> We narrowed the article's central claim from an ontological statement about hallucination to a testable evaluation convention: unsupportedness is necessary but not sufficient for a hallucination verdict. We separated the truth contract from style-conditioned recovery, removed the non-operative ordinal permission variable from the core rule, added an unresolved procedural state for inadequate evidence adjudication, and clarified claim granularity and canonicalization. We also reframed the resource mapping as an exploratory diagnostic exercise, converted the examples into contrastive unit tests, added direct comparisons with factuality, faithfulness, intent and value-based evaluation, and reorganized the research agenda around explicit baselines and falsifiers. Remaining external validation concerns are the independent recoding of the mapping, the addition of documented benchmark cases, final verification of recent references and compilation with the official journal package.

## 9. Changelog de cette synthèse

- Dédupliqué les 74 fils Overleaf et les notes d'encadrants.
- Séparé changements de fond/structure et changements de forme.
- Classé les actions par section du papier et par priorité.
- Distingué modifications acquises, partielles, externes et encore à décider.
- Pris la revue du 28 juillet comme état le plus récent.
- Signalé le décalage entre `main_position.tex` et `main_position_revised.tex`.

## 10. Statut de compilation

Cette tâche crée uniquement un document de synthèse Markdown et ne modifie pas le manuscrit LaTeX. Aucune compilation supplémentaire n'est donc requise pour cette synthèse. L'audit existant rapporte une compilation de contrôle réussie de la variante révisée, mais la compilation finale avec le package officiel de *Computational Linguistics* reste à effectuer.

## 11. Couverture des fils Overleaf

Le suivi exporté contient les commentaires 1 à 74, à l'exception du numéro 19 qui n'existe pas dans l'export. Le tableau suivant vérifie que chaque grappe est couverte par la synthèse.

| Commentaire(s) | Sujet | Traitement consolidé |
|---|---|---|
| 1 | Reformuler et définir *claim* avec exemple | §3.3 et §3.4 : définition précoce, unité contextualisée et exemple. |
| 2–3 | Définir `p` | §3.3 : `x` = prompt, `p` = contexte de tâche complet. |
| 4 | Renommer l'ancienne permission policy | Clos par la suppression de `K_p` et la définition directe de `Γ_p`/`μ_p`. |
| 5 | Identifier « the evaluator » | §4, Introduction : humain, pipeline automatique ou combinaison. |
| 6 | Revoir l'abstract et insister sur l'apport | §3.2 : abstract resserré, bénéfice et falsifiabilité. |
| 7 | Reformuler la phrase sur `SUP` | §4, Abstract/Introduction : catégories parallèles et libellés explicites. |
| 8 | Supprimer ou garder les abréviations | Arbitrage §6 : noms complets dans l'abstract, macros conservées dans le corps si utiles. |
| 9–10 | Confusion `K_p`/`κ` | §3.4 : `K_p` supprimé ; `κ` retiré du noyau. |
| 11 | Ajouter « commonly called hallucinations » | Passe de forme de l'introduction ; à retenir seulement si la phrase reste naturelle et non redondante. |
| 12 | « Not only support, but also permission » | Thèse centrale des §2–3. |
| 13–16 | Définir truth contract, instructions et `O_p` | §3.3–3.4 : définitions en langage courant puis formalisme ; `O_p` inclut l'adjudication. |
| 17 | Définir les acronymes hors abstract | §3.3 et arbitrage §6 : gloses précoces dans le corps. |
| 18 | Dire explicitement que l'objet est la réponse du LLM | §3.3–3.4 : `y` est la réponse, spans récupérés depuis cette réponse. |
| 20–21 | Refaire la figure avec prompt, oracle, réponse et claims | §3.4 et §3.7 : Figure 2 en deux panneaux et prompt non contradictoire. |
| 22 | Distinguer `K_p` et `κ_p` | Résolu structurellement par leur retrait du noyau. |
| 23–24 | Identifier les 40 ressources et reformuler la portée du mapping | §3.6 : sample explicite, annexe, portée diagnostique. |
| 25–26 | Introduire les notions et nommer la règle | §3.3–3.4 : ordre des définitions et labeling rule numérotée. |
| 27 | Ajouter le plan du papier | §3.3 : paragraphe de plan argumentatif. |
| 28 | Distinguer taxonomies de source et permission | §3.5 : contraste direct entre paradigmes. |
| 29–31 | Clarifier `O_p`, permission, factuality et faithfulness | §3.4–3.5 : source admissible, scope/marking et relations de preuve. |
| 32–34 | Clarifier value, usefulness et « defective » | §3.4–3.5 : permission séparée de la valeur ; usefulness multi-niveau. |
| 35–38 | Introduire `SUP`, `SV` et le glossaire plus tôt | §3.4 : glossaire avant figure et `SV` diagnostic. |
| 39–42 | Prompt vs task context ; formalisme dense ; titres `\textbf` | §3.3–3.4 et §4 : `x/p` séparés, formalisme réduit, `\paragraph` pour les titres. |
| 43–50 | Rôle de `σ`, collision de notation, exemples de `Γ`, SOTA style | §3.4–3.5 : style hors `TC`, recovery-stage, permission explicite et preuve bornée. |
| 51 | Granularité moins utile pour le style | Traité comme remarque conceptuelle : le claim reste l'unité de vérité, le style un diagnostic de recovery/compliance. |
| 52–57 | Définir span, prompt, canonical claim et labels | §3.3–3.4 : définitions précoces et canonicalisation conservant le statut. |
| 58 | Définir la vérité relativement à `O_p` | §3.4 : toujours écrire « supported relative to `O_p` ». |
| 59 | Détailler usefulness et alignement | §3.4–3.5 : usefulness séparée, alignment global hors du score central. |
| 60 | Détailler l'agrégation `R(y|p)` | §3.4 et Annexe A : familles d'agrégation transparentes. |
| 61–62 | Prompt comme input et portée limitée de la figure | §3.4 : tâche + réponse comme entrées ; légende indiquant ce que le verdict ne score pas. |
| 63–64 | Place de l'annexe et limite mono-codeur | §3.6 et Annexes : description raccourcie, limite conservée sans auto-dévalorisation. |
| 65–67 | Figure empirique des ressources et nécessité de la grille | §3.6 : coverage map utile seulement avec codage explicite, incertitude et méthode défendable. |
| 68 | Remplacer les expériences de pensée par des exemples compréhensibles | §3.7 : unit tests minimaux ; exemples réels recommandés. |
| 69–70 | Agenda mal introduit et annotation coûteuse | §3.8 : motivation en amont, études falsifiables, coût traité frontalement. |
| 71–72 | Revoir et développer la conclusion | §3.10 : revenir à l'argument et au test immédiat. |
| 73–74 | Rappeler et rendre visible le sample de 40 ressources | §3.6, Annexes et Conclusion : taille, numérotation et fichier machine-readable. |

## 12. Fichiers sources analysés

- `commentaires_overleaf_suivi.md`
- `fil_rouge_prompt_claim.md`
- `modifications_et_decisions_2026-07-27.md`
- `propositions_decisions_reformulations.md`
- `review_consolidee_2026-07-27.md`
- `review_fond_2026-07-27.md`
- `review_position_paper_CL_2026-07-28.md`
- `revue_commentaires_roadmap.md`
- `statut_commentaires_2026-07-27.md`
