# Revue de l'abstract et des sections 3 à la fin

Revue du 15 septembre 2026. Manuscrit : truth_contract_position_paper.tex.

Cette revue porte sur la clarté, la progression, le vocabulaire et la cohérence interne de l'abstract, des sections 3 à 8, des légendes et des annexes A à C. L'introduction et la section 2 servent de référence terminologique ; aucune modification n'y est proposée. Aucun passage du manuscrit n'a été modifié.

Le prompt de coaching initial sert de guide : fidélité scientifique, structure, clarté, concision. Les anciennes demandes et décisions citées dans les pièces jointes ne remplacent pas la version actuelle du papier. Les recommandations ci-dessous ne sont pas des décisions scientifiques approuvées. Les publications citées et les chiffres des benchmarks n'ont pas fait l'objet d'une vérification externe : les remarques concernent leur présentation et leur rôle dans l'argument.

## 1. Ce que tes corrections demandent

1. Expliquer avec des mots courants avant d'introduire le nom technique ou la notation. Exemple validé : identifier les claims, puis nommer cette étape « claim extraction ».
2. Réutiliser un terme pour une notion. Éviter de passer de « claim content » à « commitment », « proposition », « canonical record » et « truth-conditional content » sans nécessité.
3. Dire précisément ce que la tâche permet d'ajouter ou de modifier, plutôt que multiplier les expressions abstraites autour de « departures ».
4. Définir les symboles avant leur emploi : notamment q*, E, le marquage demandé et le marquage observé.
5. Donner une fonction à chaque paragraphe : question, explication, exemple, puis conséquence. Un rappel doit préparer une étape nouvelle.
6. Conserver le musée comme exemple principal, en disant ce qui change à chaque utilisation.
7. Séparer les preuves, la permission, la présentation et le style ; séparer aussi chaque claim de la réponse complète.
8. Garder un oracle général, spécialisé par domaine, dont la spécification est indépendante du prompt. Le cas textuel peut utiliser l'extrait du musée ; le concept général peut inclure des tests ou du code.
9. Simplifier sans changer les règles actuelles : une contradiction peut recevoir LD si elle est permise et correctement présentée ; la convention actuelle peut aussi classer H un fait établi explicitement exclu par une exigence d'invention.
10. Distinguer illustration et validation. Les cas construits, le codage descriptif et les études proposées n'ont pas le même statut qu'une expérience réalisée.

Les expressions demandées comme « For departures », « as shorthand » et « forbids departures » révèlent une préférence générale pour les verbes concrets : vérifier, permettre, ajouter, modifier, présenter. Cela ne signifie pas supprimer les termes scientifiques nécessaires ni renommer « licensed divergence ».

## 2. Diagnostic et trois priorités

Le plan global est utilisable. La difficulté vient surtout des passages qui parlent en langage de protocole avant de donner leur idée principale. Les sections 4 et 6 sont les plus denses ; la section 5 peut servir de modèle grâce à ses exemples.

1. **Harmoniser la suite avec les définitions actuelles.** Corriger les restrictions textuelles restantes, la confusion permission/nombre d'ajouts, les rappels incomplets de H et les renvois devenus obsolètes.
2. **Rendre la progression visible.** Travaux existants → observations du codage → exemples → études nécessaires → conséquences et limites → conclusion.
3. **Réduire le coût de lecture.** Employer les termes déjà définis, expliquer les catégories avant leurs nombres et déplacer les détails de protocole au bon endroit.

## 3. Cohérence à traiter avant la simple reformulation

### C1. Une ancienne restriction de l'oracle reste explicite dans une légende

Repère : annexe B, « nontextual entries do not instantiate our restricted O », [ligne 2018](</Users/mathiscarlesso/Documents/Cesi/Alteca/Thèse/Position_paper/réécriture_papier/truth_contract_position_paper.tex:2018>). Passage connexe en 3.1, [ligne 951](</Users/mathiscarlesso/Documents/Cesi/Alteca/Thèse/Position_paper/réécriture_papier/truth_contract_position_paper.tex:951>).

**Problème.** La légende exclut les oracles non textuels alors que la définition actuelle les admet. Le passage de 3.1 peut aussi se lire comme une condition générale, alors qu'il présente des évaluations textuelles particulières.

**Action : CLARIFIER.** Corriger la légende et présenter 3.1 comme une application au texte. Maintenir la condition utile : le dispositif doit effectivement vérifier le contenu évalué, avec une procédure précisée.

### C2. Le critère de codage de la permission est plus étroit que la définition actuelle

Repère : annexe B, « unless the protocol uses it to authorize evidence-unknown content », [ligne 1990](</Users/mathiscarlesso/Documents/Cesi/Alteca/Thèse/Position_paper/réécriture_papier/truth_contract_position_paper.tex:1990>).

**Problème.** Cette condition ne couvre explicitement que unknown. Le cadre actuel comprend aussi les contradictions autorisées et les exclusions explicites de faits établis. Le lecteur ne sait donc pas si la cartographie a recherché ces autres cas.

**Action : CLARIFIER, puis vérifier le codage.** Indiquer le périmètre réellement examiné. Ne pas élargir seulement la phrase et laisser entendre que les 41 ressources ont déjà été réexaminées. C'est une question méthodologique, pas une correction automatique de vocabulaire.

### C3. Les cas C et D attribuent encore le nombre d'ajouts au permission scope

Repères : « The permission scope allows one plausible placement », [ligne 1468](</Users/mathiscarlesso/Documents/Cesi/Alteca/Thèse/Position_paper/réécriture_papier/truth_contract_position_paper.tex:1468>) ; « whose permission scope allows one marked historical reconstruction », [ligne 1485](</Users/mathiscarlesso/Documents/Cesi/Alteca/Thèse/Position_paper/réécriture_papier/truth_contract_position_paper.tex:1485>).

**Problème.** La section 2 distingue le contenu autorisé, sa présentation et la limite portant sur le nombre de reconstructions. Ces phrases les regroupent.

**Action : CLARIFIER.** Attribuer le sujet autorisé à la permission, le signalement comme hypothèse au required status marking, et le nombre demandé à la consigne sur la réponse entière. Les labels des exemples restent les mêmes.

### C4. La discussion résume H de manière incomplète

Repère : « The proposed H convention covers unknown or contradicted departures… », [ligne 1687](</Users/mathiscarlesso/Documents/Cesi/Alteca/Thèse/Position_paper/réécriture_papier/truth_contract_position_paper.tex:1687>).

**Problème.** Ce rappel ne reprend pas le fait établi explicitement interdit par une exigence d'invention. Il ne dit pas littéralement que ce cas est impossible, mais ressemble à une définition complète plus étroite que celle de 2.4.

**Action : CLARIFIER.** Reprendre fidèlement le périmètre actuel en une phrase, puis discuter la difficulté terminologique. Ne pas supprimer le cas pour simplifier.

### C5. Le déplacement de l'échelle de style a laissé une notation anticipée et un renvoi périmé

Repères : sigma dans la figure des cas, [ligne 1411](</Users/mathiscarlesso/Documents/Cesi/Alteca/Thèse/Position_paper/réécriture_papier/truth_contract_position_paper.tex:1411>), puis dans le cas E, [ligne 1511](</Users/mathiscarlesso/Documents/Cesi/Alteca/Thèse/Position_paper/réécriture_papier/truth_contract_position_paper.tex:1511>) ; définition de l'échelle en priorité 3, [ligne 1613](</Users/mathiscarlesso/Documents/Cesi/Alteca/Thèse/Position_paper/réécriture_papier/truth_contract_position_paper.tex:1613>) ; renvoi à la section de style en annexe A, [ligne 1793](</Users/mathiscarlesso/Documents/Cesi/Alteca/Thèse/Position_paper/réécriture_papier/truth_contract_position_paper.tex:1793>).

**Problème.** Le lecteur rencontre sigma avant sa définition. L'annexe renvoie encore à la section 2.5 pour une échelle désormais détaillée dans l'agenda.

**Action : CLARIFIER.** En section 5, parler simplement du style demandé et de la formulation ; réserver sigma à l'endroit où l'échelle est définie. Corriger le renvoi de l'annexe vers cet endroit.

### C6. L'annexe C contient encore une instruction de restauration des fichiers

Repère : « The two external graphics and the bibliography must be restored… », [ligne 2144](</Users/mathiscarlesso/Documents/Cesi/Alteca/Thèse/Position_paper/réécriture_papier/truth_contract_position_paper.tex:2144>).

**Constat vérifié localement.** Les deux PNG nommés dans le LaTeX et references.bib sont présents. Leur présence ne prouve ni leur exactitude ni leur correspondance à la source.

**Action : SUPPRIMER ou ACTUALISER la note de travail.** Ne pas conserver une demande de restauration comme contenu scientifique. Une éventuelle vérification de provenance est un autre travail.

## 4. Retours par section

### Abstract

**Fonction.** Faire comprendre le problème, la proposition, ce qui est présenté et ce qui reste à tester, sans dépendre des définitions du corps.

**Progression recommandée.** Même claim et mêmes preuves, attentes différentes → truth contract → décisions par claim → cartographie et cas illustratifs → validation nécessaire.

- **CONSERVER — ouverture, [ligne 89](</Users/mathiscarlesso/Documents/Cesi/Alteca/Thèse/Position_paper/réécriture_papier/truth_contract_position_paper.tex:89>).** Le contraste résumé factuel/hypothèse est concret et donne immédiatement la raison du papier.
- **CLARIFIER — « evidence standard », [ligne 92](</Users/mathiscarlesso/Documents/Cesi/Alteca/Thèse/Position_paper/réécriture_papier/truth_contract_position_paper.tex:92>).** Préférer la référence et la méthode utilisée pour vérifier les claims. « Standard » peut masquer la composante procédurale de l'oracle.
- **SIMPLIFIER — « permission and adequate marking for unknown or contradicted content », [ligne 95](</Users/mathiscarlesso/Documents/Cesi/Alteca/Thèse/Position_paper/réécriture_papier/truth_contract_position_paper.tex:95>).** Expliquer directement que le contenu non établi ou contredit peut être autorisé s'il est présenté comme la tâche le demande. Employer le nom LD après cette explication. Ne pas confondre permission et vérité.
- **RACCOURCIR — « A claim trace records… recovery coverage », [ligne 97](</Users/mathiscarlesso/Documents/Cesi/Alteca/Thèse/Position_paper/réécriture_papier/truth_contract_position_paper.tex:97>).** Le lecteur reçoit plusieurs concepts d'infrastructure d'un coup. Garder l'idée d'un résultat conservé pour chaque claim ; laisser les détails de coverage et des échecs au corps.
- **SIMPLIFIER — fin, [ligne 103](</Users/mathiscarlesso/Documents/Cesi/Alteca/Thèse/Position_paper/réécriture_papier/truth_contract_position_paper.tex:103>).** « Claim-preserving style variation » et « explicit contract representation » peuvent être exprimés par la stabilité de l'évaluation quand seul le style change, et l'utilité pratique du contrat.
- **CONSERVER — « descriptive » et « constructed », [ligne 100](</Users/mathiscarlesso/Documents/Cesi/Alteca/Thèse/Position_paper/réécriture_papier/truth_contract_position_paper.tex:100>).** Ces mots indiquent correctement le statut du travail. Il n'est pas nécessaire d'énumérer tous les cas particuliers des labels dans l'abstract, mais son résumé ne doit pas exclure ceux de la section 2.

### Section 3 — Related Work

**Question.** Que prennent déjà en charge les travaux existants, et quelle séparation le contrat rend-il explicite ?

**Progression recommandée.** Ce que vérifie chaque famille de travaux → ce qu'elle apporte à notre cadre → le point qui reste à examiner. Chaque sous-section peut garder cette structure sans répéter la définition complète du contrat.

- **SIMPLIFIER — 3.1, [ligne 941](</Users/mathiscarlesso/Documents/Cesi/Alteca/Thèse/Position_paper/réécriture_papier/truth_contract_position_paper.tex:941>).** « Taxonomies », « instantiate O », « adjudication procedure » : conserver le nom des familles scientifiques, puis dire ce qu'elles vérifient et avec quelles preuves. Le rappel sur la permission doit tenir en une conséquence courte. Voir aussi C1.
- **SIMPLIFIER — 3.2, [ligne 959](</Users/mathiscarlesso/Documents/Cesi/Alteca/Thèse/Position_paper/réécriture_papier/truth_contract_position_paper.tex:959>).** « Granularity », « upstream », « isolated strings as propositions », « downstream evaluation » s'accumulent. Décrire les opérations : découper la réponse, retrouver le sens, puis vérifier. Garder les sources et la réserve finale sur la séparation entre contenu et marquage.
- **CONSERVER, PUIS RECENTRER — 3.3, [ligne 984](</Users/mathiscarlesso/Documents/Cesi/Alteca/Thèse/Position_paper/réécriture_papier/truth_contract_position_paper.tex:984>).** La différence may/must est claire. La reconnaître ne suffit cependant pas à situer les travaux cités : donner à ce rappel une fonction comparative. Garder absolument [ligne 991](</Users/mathiscarlesso/Documents/Cesi/Alteca/Thèse/Position_paper/réécriture_papier/truth_contract_position_paper.tex:991>), qui reconnaît qu'une grille de suivi d'instructions suffisamment détaillée peut produire les mêmes labels. « Comparably informed baseline » doit signifier concrètement une méthode ayant accès aux mêmes informations pertinentes.
- **FUSIONNER LES RAPPELS — 3.4 et 3.5, [ligne 1008](</Users/mathiscarlesso/Documents/Cesi/Alteca/Thèse/Position_paper/réécriture_papier/truth_contract_position_paper.tex:1008>) et [ligne 1026](</Users/mathiscarlesso/Documents/Cesi/Alteca/Thèse/Position_paper/réécriture_papier/truth_contract_position_paper.tex:1026>).** L'idée « utile ne signifie pas autorisé » revient deux fois. La développer en 3.4 ; en 3.5, montrer ce que les travaux sur hallucination et créativité étudient spécifiquement. Ne pas fusionner les deux domaines scientifiques par simple souci de brièveté.
- **SIMPLIFIER — 3.5, [ligne 1017](</Users/mathiscarlesso/Documents/Cesi/Alteca/Thèse/Position_paper/réécriture_papier/truth_contract_position_paper.tex:1017>).** « Divergent generation », « convergent evaluation », « confabulation », « archival gap-filling » et « story-world commitments » introduisent trop de notions voisines. Garder les distinctions propres aux sources, mais les expliquer comme production d'idées, évaluation de ces idées, ou contenu d'un récit. Ne pas traiter ces termes comme des synonymes.
- **RACCOURCIR — 3.6, [ligne 1044](</Users/mathiscarlesso/Documents/Cesi/Alteca/Thèse/Position_paper/réécriture_papier/truth_contract_position_paper.tex:1044>).** Le raisonnement sur deux claims contradictoires tous deux entailed est pertinent, mais interrompt le positionnement bibliographique. Rattacher son détail à l'annexe des diagnostics ; garder ici le rôle des travaux sur cohérence et complétude.
- **SIMPLIFIER — 3.7, [ligne 1068](</Users/mathiscarlesso/Documents/Cesi/Alteca/Thèse/Position_paper/réécriture_papier/truth_contract_position_paper.tex:1068>).** Reprendre « mêmes claims, même statut, formulation différente ». Garder la limite « dans les ressources sélectionnées » ; éviter une seconde phrase défensive équivalente sur l'ensemble de la littérature.

### Section 4 — Resource Mapping

**Question.** Comment les ressources sélectionnées représentent-elles les informations du contrat ?

**Progression recommandée.** Ce qui a été examiné et pourquoi → comment chaque ressource a été décrite → observations principales → limites précises → lien avec les études proposées.

- **EXPLIQUER — 4.1, [ligne 1083](</Users/mathiscarlesso/Documents/Cesi/Alteca/Thèse/Position_paper/réécriture_papier/truth_contract_position_paper.tex:1083>).** La définition d'evaluation resource est utile. Expliquer ensuite « purposive sample » comme une sélection visant des types de tâches pertinents, sans laisser supposer une représentativité statistique.
- **CLARIFIER — méthode de sélection, [ligne 1089](</Users/mathiscarlesso/Documents/Cesi/Alteca/Thèse/Position_paper/réécriture_papier/truth_contract_position_paper.tex:1089>).** Le texte déclare qu'elle n'est pas documentée. C'est une information manquante réelle. Aucune reformulation ne rendra la sélection reproductible sans retrouver la procédure effectivement utilisée.
- **RÉORGANISER — 4.2, [ligne 1099](</Users/mathiscarlesso/Documents/Cesi/Alteca/Thèse/Position_paper/réécriture_papier/truth_contract_position_paper.tex:1099>).** Sept champs dans une phrase demandent trop de mémorisation. Les présenter en trois groupes : champs du contrat ; caractéristiques de la tâche et qualité ; traitement du style. Expliquer « coding » comme l'attribution des catégories à chaque ressource.
- **CLARIFIER — catégories, [ligne 1103](</Users/mathiscarlesso/Documents/Cesi/Alteca/Thèse/Position_paper/réécriture_papier/truth_contract_position_paper.tex:1103>) et [ligne 1106](</Users/mathiscarlesso/Documents/Cesi/Alteca/Thèse/Position_paper/réécriture_papier/truth_contract_position_paper.tex:1106>).** « Nominal profiles » signifie ici des catégories de tâches, sans classement. « Closed vocabulary » renvoie à une liste de catégories fixée pour le codage. Les nommer après ces explications.
- **RÉORGANISER — 4.3, [ligne 1118](</Users/mathiscarlesso/Documents/Cesi/Alteca/Thèse/Position_paper/réécriture_papier/truth_contract_position_paper.tex:1118>).** Le lecteur découvre d'abord huit nombres et le vocabulaire « inherited », « supplied », « original ». Commencer par ce que le codage permet de dire, puis donner le détail. Une note d'audit peut conserver l'historique ; le corps doit expliquer le statut scientifique actuel.
- **CONSERVER LA RÉSERVE — [ligne 1124](</Users/mathiscarlesso/Documents/Cesi/Alteca/Thèse/Position_paper/réécriture_papier/truth_contract_position_paper.tex:1124>).** La vérification des lignes 37 à 41 est nécessaire. Identifier précisément ce qui reste à vérifier, sans présenter les 35 codes comme autant d'oracles indépendamment validés.
- **DÉFINIR AVANT LES NOMBRES — permission et marquage, [ligne 1136](</Users/mathiscarlesso/Documents/Cesi/Alteca/Thèse/Position_paper/réécriture_papier/truth_contract_position_paper.tex:1136>) et [ligne 1146](</Users/mathiscarlesso/Documents/Cesi/Alteca/Thèse/Position_paper/réécriture_papier/truth_contract_position_paper.tex:1146>).** Expliquer « inferred empty », « implicit frame », « partial », « not scored » et « not separated » avant les totaux. L'absence d'un champ séparé ne signifie pas que la ressource ignore cette contrainte.
- **CLARIFIER LA FIGURE — 4.4, [ligne 1163](</Users/mathiscarlesso/Documents/Cesi/Alteca/Thèse/Position_paper/réécriture_papier/truth_contract_position_paper.tex:1163>) et [ligne 1190](</Users/mathiscarlesso/Documents/Cesi/Alteca/Thèse/Position_paper/réécriture_papier/truth_contract_position_paper.tex:1190>).** Le dessin comporte un axe vertical fléché et plusieurs hauteurs, mais la légende affirme qu'aucune position n'exprime un ordre ou une mesure. Le dispositif peut inviter une lecture que le texte interdit ensuite. Recommander un regroupement catégoriel ou un petit tableau. Il s'agit d'un constat sur les indications du code et de la légende, sans audit visuel du PDF.
- **RECENTRER — [ligne 1280](</Users/mathiscarlesso/Documents/Cesi/Alteca/Thèse/Position_paper/réécriture_papier/truth_contract_position_paper.tex:1280>).** La figure porte sur le style, alors que la section annonce les trois champs du contrat. Dire clairement quel résultat elle illustre ; s'appuyer sur les tableaux pour les observations sur permission et marquage. Préserver « selected resources » et la nature descriptive du résultat.

### Section 5 — Worked Cases

**Question.** Que se passe-t-il quand on change une condition précise de l'évaluation ?

**Progression recommandée.** Situation concrète → élément modifié → label attendu → explication. Les rubriques Fixed/Changed peuvent rester comme résumé inspectable.

- **CONSERVER — ouverture, [ligne 1295](</Users/mathiscarlesso/Documents/Cesi/Alteca/Thèse/Position_paper/réécriture_papier/truth_contract_position_paper.tex:1295>).** Elle distingue déjà cas construits et résultats expérimentaux. Préserver cette prudence ; « label attendu selon la règle » est plus clair que « test » quand aucun évaluateur n'est effectivement exécuté.
- **CLARIFIER — cas A, [ligne 1433](</Users/mathiscarlesso/Documents/Cesi/Alteca/Thèse/Position_paper/réécriture_papier/truth_contract_position_paper.tex:1433>).** « Absent from the source » ne suffit pas à conclure unknown : une information non formulée peut être impliquée par le texte. Dire que la source ne l'établit ni ne la contredit, tandis que l'autre référence l'établit. Le cas gagnerait en accessibilité avec un claim concret déjà documenté ; ne pas inventer un exemple XSum attribué à l'étude.
- **CLARIFIER — cas B, [ligne 1446](</Users/mathiscarlesso/Documents/Cesi/Alteca/Thèse/Position_paper/réécriture_papier/truth_contract_position_paper.tex:1446>).** Le titre est très abstrait. Le contraste résumé historique/récit fictif est plus parlant. Préciser ce que le q* évalué conserve lorsque le cadre change : le même emplacement, ou une proposition sur un récit ? Le maintien de unknown doit être expliqué par le contenu réellement comparé à l'oracle. Garder la mention du changement de plusieurs facteurs.
- **HARMONISER — cas C et D, [ligne 1468](</Users/mathiscarlesso/Documents/Cesi/Alteca/Thèse/Position_paper/réécriture_papier/truth_contract_position_paper.tex:1468>) et [ligne 1485](</Users/mathiscarlesso/Documents/Cesi/Alteca/Thèse/Position_paper/réécriture_papier/truth_contract_position_paper.tex:1485>).** Appliquer C3. Employer « presented as a possibility » plutôt que « conjectural observed marking » ou « wording that signals epistemic status ». Préserver la différence entre permission et signalement.
- **SIMPLIFIER — cas E, [ligne 1502](</Users/mathiscarlesso/Documents/Cesi/Alteca/Thèse/Position_paper/réécriture_papier/truth_contract_position_paper.tex:1502>).** Remplacer « surface realization » par la formulation et « truth-conditional content and epistemic status » par le contenu du claim et sa présentation. Garder la vérification indépendante de l'équivalence. Le résultat attendu relève de la règle ; son obtention par un évaluateur reste à tester.
- **CORRIGER L'ORDRE DES CONCEPTS — cas E et sa figure.** Voir C5. Le texte dit aussi que le style demandé et la formulation changent ensemble : ne pas reformuler ce cas comme si seule la réponse changeait.
- **RACCOURCIR — transition vers l'agenda, [ligne 1525](</Users/mathiscarlesso/Documents/Cesi/Alteca/Thèse/Position_paper/réécriture_papier/truth_contract_position_paper.tex:1525>).** « Predicted transitions and invariances become the annotation and benchmark hypotheses » peut devenir l'idée simple qu'il reste à vérifier si les évaluateurs retrouvent ces claims et ces labels. La liste des cinq facteurs est déjà dans la figure.

### Section 6 — Research Agenda

**Question.** Que faut-il encore vérifier avant de pouvoir appliquer le cadre avec confiance ?

**Progression recommandée.** Les humains peuvent-ils l'appliquer ? Les évaluateurs retrouvent-ils les bons éléments ? La méthode apporte-t-elle une aide utile ? Dans quels autres contextes ?

- **CONSERVER ET ALIGNER — ouverture, [ligne 1535](</Users/mathiscarlesso/Documents/Cesi/Alteca/Thèse/Position_paper/réécriture_papier/truth_contract_position_paper.tex:1535>).** Les trois questions sont une bonne entrée. Les sept priorités peuvent rester, mais leur regroupement doit être identifiable dans la prose et le tableau ; éviter d'annoncer trois axes puis de les abandonner.
- **SIMPLIFIER SANS PERDRE LA JUSTIFICATION — [ligne 1541](</Users/mathiscarlesso/Documents/Cesi/Alteca/Thèse/Position_paper/réécriture_papier/truth_contract_position_paper.tex:1541>).** Expliquer « baseline » comme la méthode de comparaison et « gold judgment » comme le jugement de référence. Garder l'argument anti-circularité : une évaluation dont les réponses attendues sont uniquement produites par la règle teste son application, pas son intérêt.
- **DÉFINIR — priorité 1, [ligne 1586](</Users/mathiscarlesso/Documents/Cesi/Alteca/Thèse/Position_paper/réécriture_papier/truth_contract_position_paper.tex:1586>).** Expliquer codebook, adjudication rate et operational definitions par un guide d'annotation, la fréquence des désaccords nécessitant une décision, et la précision des définitions pour annoter. Ne pas confondre accord initial et accord obtenu après arbitrage.
- **SIMPLIFIER — priorité 2, [ligne 1597](</Users/mathiscarlesso/Documents/Cesi/Alteca/Thèse/Position_paper/réécriture_papier/truth_contract_position_paper.tex:1597>).** Introduire les comparaisons où une condition change avant le terme factorial benchmark. Dire si plusieurs facteurs seront aussi croisés. Préserver les distinctions entre marquage demandé et observé, et entre changement d'un facteur et changement de sens.
- **ALLÉGER — priorité 3, [ligne 1619](</Users/mathiscarlesso/Documents/Cesi/Alteca/Thèse/Position_paper/réécriture_papier/truth_contract_position_paper.tex:1619>).** « Matched realizations », « adjudication », « under-decomposition » et « downstream label errors » peuvent être expliqués par mêmes claims reformulés, équivalence vérifiée, claims fusionnés à tort et erreurs de label qui en résultent. Garder l'échelle provisoire comme proposition à valider.
- **CLARIFIER — priorité 4, [ligne 1632](</Users/mathiscarlesso/Documents/Cesi/Alteca/Thèse/Position_paper/réécriture_papier/truth_contract_position_paper.tex:1632>).** Dire d'abord que l'on compare les claims récupérés à une liste établie indépendamment. Puis expliquer que changer la façon de résumer les labels peut changer le classement des réponses. C'est la fonction de la sensitivity analysis, à nommer après.
- **SIMPLIFIER — priorité 5, [ligne 1650](</Users/mathiscarlesso/Documents/Cesi/Alteca/Thèse/Position_paper/réécriture_papier/truth_contract_position_paper.tex:1650>).** Le message est excellent : moins d'erreurs peut simplement signifier moins de contenu proposé. Présenter ce risque avant la liste des méthodes. « One scalar » peut devenir « one overall score ».
- **RACCOURCIR — priorité 6, [ligne 1662](</Users/mathiscarlesso/Documents/Cesi/Alteca/Thèse/Position_paper/réécriture_papier/truth_contract_position_paper.tex:1662>).** Garder les domaines, langues et genres et la mesure des désaccords. Ne pas répéter tout le protocole des priorités 1 et 3.
- **EXPLIQUER — priorité 7, [ligne 1670](</Users/mathiscarlesso/Documents/Cesi/Alteca/Thèse/Position_paper/réécriture_papier/truth_contract_position_paper.tex:1670>).** « Consume earlier claims » et « time-indexed contracts » peuvent être décrits par une action qui utilise une affirmation précédente et un contrat enregistré à chaque étape. Préserver le caractère futur de cette extension.
- **CONSERVER LA FONCTION DES « Critical test ».** Ces phrases expliquent ce qui pourrait mettre en difficulté la proposition : elles soutiennent sa solidité. Les rendre concrètes plutôt que les supprimer. La priorité 2 teste actuellement le rejet des contradictions autorisées ; le cas des faits établis explicitement exclus pourrait aussi être annoncé comme question d'acceptabilité, sans prétendre qu'il a été testé.

### Section 7 — Discussion

**Question.** Que permettent d'interpréter ces décisions, et quelles conclusions ne peut-on pas en tirer ?

**Progression recommandée.** Portée des labels → utilité des traces → limites de la méthode et des éléments présentés.

- **CONSERVER ET HARMONISER — 7.1, [ligne 1684](</Users/mathiscarlesso/Documents/Cesi/Alteca/Thèse/Position_paper/réécriture_papier/truth_contract_position_paper.tex:1684>).** La distinction entre permission et vérité est centrale. Corriger le rappel incomplet signalé en C4. « Empirical scrutiny » et « umbrella term » peuvent être expliqués par la nécessité de vérifier si les annotateurs comprennent et acceptent ce choix de label.
- **RACCOURCIR — résultats théoriques, [ligne 1694](</Users/mathiscarlesso/Documents/Cesi/Alteca/Thèse/Position_paper/réécriture_papier/truth_contract_position_paper.tex:1694>).** Leur fonction est de contextualiser la fiabilité, pas de redémontrer le contrat. Garder les conditions et citations ; reporter les explications détaillées qui ne font pas avancer cette distinction.
- **FUSIONNER LES RÉSERVES — instantané AA-Omniscience, [ligne 1703](</Users/mathiscarlesso/Documents/Cesi/Alteca/Thèse/Position_paper/réécriture_papier/truth_contract_position_paper.tex:1703>).** Dire une fois ce qu'il illustre et pourquoi il ne valide pas le contrat. Les limites techniques détaillées peuvent rester en annexe C.
- **CLARIFIER — 7.2, [ligne 1713](</Users/mathiscarlesso/Documents/Cesi/Alteca/Thèse/Position_paper/réécriture_papier/truth_contract_position_paper.tex:1713>).** « Under a candidate aggregation policy, a compliant content verdict concerns the evaluated claims under a coverage policy » empile les termes et répète policy. Expliquer en premier qu'un bilan favorable porte seulement sur les claims effectivement vérifiés. Rappeler que la règle globale est une option étudiée en annexe.
- **SIMPLIFIER — [ligne 1722](</Users/mathiscarlesso/Documents/Cesi/Alteca/Thèse/Position_paper/réécriture_papier/truth_contract_position_paper.tex:1722>).** « A severity-weighted score may support triage » : dire que donner plus de poids aux erreurs graves peut aider à décider quoi examiner d'abord.
- **RECENTRER — 7.3, [ligne 1727](</Users/mathiscarlesso/Documents/Cesi/Alteca/Thèse/Position_paper/réécriture_papier/truth_contract_position_paper.tex:1727>).** Conserver les trois limites : interprétation des claims ; contraintes de la réponse entière ; limites de la cartographie et de la validation. Remplacer les listes de termes abstraits par leur conséquence pratique et renvoyer aux sections qui en donnent déjà le détail. La séparation entre contenu et statut reste un point ouvert réel.

### Section 8 — Conclusion

**Question.** Quelle position retenir et quelle étape vient ensuite ?

**Progression recommandée.** Besoin du contrat → distinction obtenue → vérification empirique à mener.

- **CONSERVER — première phrase, [ligne 1749](</Users/mathiscarlesso/Documents/Cesi/Alteca/Thèse/Position_paper/réécriture_papier/truth_contract_position_paper.tex:1749>).** Elle formule directement la position.
- **SIMPLIFIER — [ligne 1751](</Users/mathiscarlesso/Documents/Cesi/Alteca/Thèse/Position_paper/réécriture_papier/truth_contract_position_paper.tex:1751>).** Reprendre ce que la tâche permet d'ajouter ou de modifier et comment le présenter. Éviter « permitted divergence » lorsqu'il suffit de dire contenu autorisé ; conserver le terme défini « licensed divergence » quand il désigne le label.
- **RACCOURCIR — [ligne 1755](</Users/mathiscarlesso/Documents/Cesi/Alteca/Thèse/Position_paper/réécriture_papier/truth_contract_position_paper.tex:1755>).** L'inventaire 41 ressources/5 cas/agrégation ouverte/agendas répète l'abstract. Garder une contribution concrète et la validation nécessaire.
- **SIMPLIFIER — dernière phrase, [ligne 1759](</Users/mathiscarlesso/Documents/Cesi/Alteca/Thèse/Position_paper/réécriture_papier/truth_contract_position_paper.tex:1759>).** « Reliable grounding », « transparent divergence » et « comparably informed evaluation procedures » donnent une fin plus abstraite que l'ouverture. Terminer sur vérifier les faits, identifier les ajouts autorisés et tester l'utilité de cette séparation, sans créer de promesse de performance.

### Annexe A — Diagnostics et résultats de l'évaluation

Les détails techniques sont à leur place dans une annexe, mais leur vocabulaire doit rester relié à celui du corps.

- **CLARIFIER — [ligne 1771](</Users/mathiscarlesso/Documents/Cesi/Alteca/Thèse/Position_paper/réécriture_papier/truth_contract_position_paper.tex:1771>) et [ligne 1823](</Users/mathiscarlesso/Documents/Cesi/Alteca/Thèse/Position_paper/réécriture_papier/truth_contract_position_paper.tex:1823>).** Canonicalization apparaît comme une étape à côté de claim recovery. Expliquer si elle désigne la mise en forme de q* au sein de la récupération, ou une opération séparée. La section 2 ne doit pas sembler avoir omis une quatrième étape.
- **CONSERVER — règle d'agrégation candidate, [ligne 1781](</Users/mathiscarlesso/Documents/Cesi/Alteca/Thèse/Position_paper/réécriture_papier/truth_contract_position_paper.tex:1781>).** Sa priorité est explicite : H vérifié, puis évaluation incomplète, puis bilan favorable. Garder le mot candidate et expliquer la couverture requise avant d'interpréter ces résultats comme des propriétés de la réponse entière.
- **CORRIGER LE RENVOI — [ligne 1793](</Users/mathiscarlesso/Documents/Cesi/Alteca/Thèse/Position_paper/réécriture_papier/truth_contract_position_paper.tex:1793>).** Voir C5. Ne pas faire passer l'échelle provisoire pour une mesure validée.
- **CLARIFIER — [ligne 1816](</Users/mathiscarlesso/Documents/Cesi/Alteca/Thèse/Position_paper/réécriture_papier/truth_contract_position_paper.tex:1816>) et [ligne 1835](</Users/mathiscarlesso/Documents/Cesi/Alteca/Thèse/Position_paper/réécriture_papier/truth_contract_position_paper.tex:1835>).** La formulation « task context must determine the three contract fields » peut réintroduire l'idée que le prompt détermine l'oracle. Aligner la phrase avec la spécification de l'oracle par le protocole, puis les conditions de permission et de présentation.
- **GÉNÉRALISER LES EXEMPLES D'ÉCHEC — [ligne 1837](</Users/mathiscarlesso/Documents/Cesi/Alteca/Thèse/Position_paper/réécriture_papier/truth_contract_position_paper.tex:1837>).** Les problèmes de sources décrivent le cas textuel. Les présenter comme tels ou faire place aux contrôles exécutables déjà admis. Ne pas inventer un protocole d'erreur complet pour les autres domaines.
- **SIMPLIFIER — [ligne 1846](</Users/mathiscarlesso/Documents/Cesi/Alteca/Thèse/Position_paper/réécriture_papier/truth_contract_position_paper.tex:1846>).** Reprendre la formulation concrète de 2.3 : les preuves disponibles ne tranchent pas. Garder la différence entre unknown et un contrôle impossible.
- **CLARIFIER — [ligne 1862](</Users/mathiscarlesso/Documents/Cesi/Alteca/Thèse/Position_paper/réécriture_papier/truth_contract_position_paper.tex:1862>).** Un désaccord entre deux annotateurs appelle d'abord la procédure prévue pour le résoudre. Le passage classe directement le cas comme échec ; préciser que cette issue concerne l'ambiguïté non résolue.
- **RÉORGANISER — test formel, [ligne 1878](</Users/mathiscarlesso/Documents/Cesi/Alteca/Thèse/Position_paper/réécriture_papier/truth_contract_position_paper.tex:1878>).** Expliquer les versions comparées, leur équivalence indépendante et les conditions fixes avant les ensembles mathématiques. Définir y comme réponse, p comme contexte et c* comme couple contenu/statut au moment où ils sont nécessaires.
- **CLARIFIER — [ligne 1903](</Users/mathiscarlesso/Documents/Cesi/Alteca/Thèse/Position_paper/réécriture_papier/truth_contract_position_paper.tex:1903>).** La sensibilité à une règle d'agrégation choisie différemment n'est pas automatiquement une erreur de l'évaluateur. La distinguer des véritables erreurs listées à côté.

### Annexe B — Catégories et tableaux de la cartographie

- **CONSERVER — explication des types d'oracles, [ligne 1949](</Users/mathiscarlesso/Documents/Cesi/Alteca/Thèse/Position_paper/réécriture_papier/truth_contract_position_paper.tex:1949>).** Les exemples concrets rendent les catégories compréhensibles. Harmoniser seulement les passages périmés signalés en C1.
- **DÉFINIR — [ligne 1977](</Users/mathiscarlesso/Documents/Cesi/Alteca/Thèse/Position_paper/réécriture_papier/truth_contract_position_paper.tex:1977>) et [ligne 1982](</Users/mathiscarlesso/Documents/Cesi/Alteca/Thèse/Position_paper/réécriture_papier/truth_contract_position_paper.tex:1982>).** Plusieurs codes sont listés sans critère de décision suffisamment explicite : « implicit frame », « partial », « task-specific », « subtask-specific », « mixed ». Dire comment choisir entre eux et distinguer absence d'information, information implicite et information évaluée ailleurs.
- **CLARIFIER — [ligne 1993](</Users/mathiscarlesso/Documents/Cesi/Alteca/Thèse/Position_paper/réécriture_papier/truth_contract_position_paper.tex:1993>).** « Not scored » est défini comme non évalué séparément, ce qui peut aussi décrire « not separated ». Il faut des critères qui les distinguent pour qu'un autre annotateur puisse reproduire le codage. Ne pas renommer les catégories sans revoir les lignes concernées.
- **VÉRIFIER LE PÉRIMÈTRE — [ligne 1990](</Users/mathiscarlesso/Documents/Cesi/Alteca/Thèse/Position_paper/réécriture_papier/truth_contract_position_paper.tex:1990>).** Voir C2 : ne pas faire porter aux tableaux une conclusion sur toutes les formes actuelles de permission si le codage n'en cherchait qu'une partie.
- **CONSERVER LA TRAÇABILITÉ.** Les lignes des ressources doivent rester reliées à leurs citations et aux sources du codage. Simplifier leurs intitulés ne doit pas supprimer les limites ni transformer l'interprétation des auteurs en fait vérifié.

### Annexe C — Instantané AA-Omniscience

- **ACTUALISER — [ligne 2144](</Users/mathiscarlesso/Documents/Cesi/Alteca/Thèse/Position_paper/réécriture_papier/truth_contract_position_paper.tex:2144>).** Voir C6 pour la note de restauration obsolète.
- **DÉFINIR AVANT LA FORMULE — [ligne 2149](</Users/mathiscarlesso/Documents/Cesi/Alteca/Thèse/Position_paper/réécriture_papier/truth_contract_position_paper.tex:2149>).** Donner le sens des catégories avant n_c, n_w, n_u et n_a ; garder l'équation et préciser que ce taux appartient au benchmark, pas au système H du papier.
- **CONSERVER — [ligne 2164](</Users/mathiscarlesso/Documents/Cesi/Alteca/Thèse/Position_paper/réécriture_papier/truth_contract_position_paper.tex:2164>).** Le panneau par date montre l'Omniscience Index, pas le taux d'hallucination. Cette précision est essentielle pour éviter une lecture erronée.
- **RACCOURCIR LES RÉPÉTITIONS — [ligne 2177](</Users/mathiscarlesso/Documents/Cesi/Alteca/Thèse/Position_paper/réécriture_papier/truth_contract_position_paper.tex:2177>), [ligne 2185](</Users/mathiscarlesso/Documents/Cesi/Alteca/Thèse/Position_paper/réécriture_papier/truth_contract_position_paper.tex:2185>) et [ligne 2195](</Users/mathiscarlesso/Documents/Cesi/Alteca/Thèse/Position_paper/réécriture_papier/truth_contract_position_paper.tex:2195>).** Garder une lecture descriptive et un paragraphe principal de limites ; ne pas répéter trois fois l'absence de relation causale. « Cross-sectional snapshot » peut être expliqué comme une comparaison de modèles différents à une date donnée.
- **VÉRIFICATION EXTERNE RESTANTE.** Les formules, descriptions du benchmark et affirmations sur l'évolution de son évaluateur doivent être contrôlées dans leurs sources avant publication. Cette revue ne les valide pas.

## 5. Vocabulaire à réutiliser

Ces pistes sont locales, pas des remplacements automatiques. Le terme technique reste utile s'il désigne une opération distincte ou une notion propre à un travail cité.

| Formulation actuelle | Formulation simple possible | Condition à préserver |
| --- | --- | --- |
| departures from the evidence | content the evidence does not support ; what the task allows the response to add or change | Distinguer unknown et contradicted quand nécessaire. |
| instantiate the oracle | serve as the task oracle ; be used by the oracle | Un composant utilisé par l'oracle n'est pas toujours l'oracle complet. |
| adjudication procedure | checking procedure ; procedure for resolving disagreements | Vérifier un claim et résoudre un désaccord sont deux opérations distinctes. |
| canonical claim / commitment | recovered claim / claim content | Garder le sens et le contexte ; conserver q* comme repère. |
| epistemic status | how the claim is presented: as fact, hypothesis, or fiction | Ce n'est pas la confiance interne du modèle. |
| surface realization / matched realizations | wording / different wordings of the same claim | L'équivalence doit inclure le statut et être vérifiée. |
| nominal task profile | task category | Pas de classement ni de mesure quantitative. |
| purposive sample | resources selected to cover relevant task types | Ne pas présenter l'échantillon comme représentatif. |
| downstream label errors | errors in the resulting labels | Garder l'identification de l'étape où l'erreur naît. |
| global aggregation / one scalar | combining claim results / one overall score | Cela reste une politique optionnelle à étudier. |
| severity-weighted triage | giving more weight to serious errors to decide what to review first | Le score ne change pas les labels individuels. |

## 6. Emplacement principal des explications

| Idée | Emplacement principal à conserver | Usage ailleurs |
| --- | --- | --- |
| Définition du contrat et des labels | Section 2, inchangée | Rappels courts appliqués à la question locale. |
| Apport des travaux existants | Section 3 | Ne pas refaire le cours sur le contrat. |
| Catégories et procédure du codage | Section 4 et annexe B | Les chiffres doivent renvoyer à ces définitions. |
| Effet d'un changement sur un exemple | Section 5 | Réutiliser le musée avec une fonction différente par cas. |
| Protocole à tester et critère de réussite | Section 6 | Discussion : interpréter les limites, pas redonner le protocole. |
| Mesure de couverture et agrégation | Priorité 4 et annexe A | Section 7 : expliquer la portée d'un bilan, sans nouveau système de verdicts. |
| Échelle de style | Priorité 3 | Cas E : exemple en mots ; annexe A : renvoi à la bonne définition. |
| Conditions et limites d'AA-Omniscience | Annexe C | Section 7 : rôle descriptif en quelques phrases. |

## 7. Ordre de travail recommandé et points ouverts

Commencer par les incohérences C1 à C5, qui conditionnent le sens des reformulations. Réécrire ensuite la section 4, puis 3, 5, 6 et 7. Terminer par la conclusion et l'abstract. L'introduction et la section 2 restent hors modification.

La prochaine action concrète serait de reprendre 4.1 et 4.2 : expliquer en langage courant ce qui a été sélectionné et comment chaque ressource a été décrite, tout en séparant la méthode réellement documentée des informations encore manquantes.

Points qui ne peuvent pas être résolus par une phrase plus simple :

- La procédure réelle de sélection des 41 ressources et les traces qui la documentent.
- Le périmètre effectivement couvert par le codage de Gamma et la vérification des lignes 37 à 41.
- Dans le cas B, le contenu exact comparé à l'oracle après le changement de cadre.
- Le rôle de canonicalization dans les étapes déjà définies.

Bilan des actions de cette revue : un document de retours créé ; aucun patch du manuscrit, aucune modification de l'introduction ou de la section 2, aucune nouvelle référence ou donnée ajoutée. Aucune compilation nécessaire pour cette revue du texte.

