# Review des commentaires V6 et plan de modification

## 1. Périmètre et diagnostic

Analyse du 29 septembre 2026, à partir de `mainV6.json` et du fichier local `réécriture_papier/truth_contract_position_paper.tex`. Le JSON appelle le fichier commenté `mainV6.tex` ; conformément à la demande, les passages sont rapprochés de `truth_contract_position_paper.tex`. Les formulations citées et les positions concordent suffisamment pour identifier les cibles. L’export ne contient toutefois pas le texte complet de la version Overleaf ni les bornes des sélections : il ne prouve pas l’identité intégrale des deux versions.

**Cette livraison est une analyse et un plan. Aucune modification du manuscrit n’a été appliquée.** Les commentaires sont traités comme des propositions de l’encadrant, et non comme des instructions automatiquement exécutées.

### Contenu réellement disponible

| Élément | Présent dans le JSON |
|---|---:|
| Fichiers détaillés | 1 |
| Fils de commentaires | 14 |
| Messages | 18 |
| Messages signalés comme tronqués | 5 |
| Fragments de changements suivis | 44 |

Les métadonnées globales annoncent 3 fichiers, 102 fils et 118 messages. Ces totaux ne sont pas exploitables comme couverture de cet export : seuls les éléments ci-dessus sont effectivement accessibles. Les fragments de changements suivis servent à localiser les remarques ; ils ne permettent pas de reconstruire un diff fiable ni de distinguer toutes les insertions et suppressions. La note technique de l’export suggérant d’accepter les changements dans Overleaf n’a pas été suivie.

**Diagnostic : les commentaires portent principalement sur la progression pédagogique du framework.** Le lecteur rencontre des concepts et des symboles avant leur définition ; il ne voit pas encore assez clairement ce que la claim trace apporte. Plusieurs corrections peuvent donc être regroupées plutôt que traitées par des ajouts successifs qui allongeraient le papier.

## 2. To-do list regroupée et priorisée

P1 = condition de compréhension à traiter d’abord ; P2 = clarification et harmonisation après stabilisation des définitions. Les lignes ci-dessous sont celles du source analysé et se décaleront avec les edits.

| Ordre | Priorité | Action | Commentaires couverts | Passages |
|---|---|---|---|---|
| 1 | P1 | Introduire les concepts en mots avant leurs symboles | V6-01 à V6-04 | Related Work 2.1–2.3, vers l. 431–486 |
| 2 | P1 | Définir les catégories de status marking et leur vocabulaire | V6-06, V6-12 | Framework 3.1–3.2 et claim trace |
| 3 | P1 | Expliquer à quoi sert la claim trace, puis présenter ses paramètres | V6-10, V6-11 | `subsec:response`, vers l. 1084 |
| 4 | P1 | Recentrer la discussion du style dans le framework | V6-14 | `subsec:style`, vers l. 1138 |
| 5 | P2 | Nommer les étapes du traitement d’une réponse | V6-07 | `subsec:unit`, vers l. 773 |
| 6 | P2 | Développer les deux exemples demandés avec la stèle | V6-08, V6-09 | `subsec:verification`, `subsec:rule` |
| 7 | P2 | Harmoniser les indices et la typographie des catégories | V6-05, V6-13 ; dépend de V6-06/V6-12 | `tab:notation`, règle, figure 2, claim trace |
| 8 | P2 | Relire les renvois, la continuité du vocabulaire et le rendu | Tous, après modifications | Sections 2, 3, exemples, agenda, annexe A |

### Lot 1 — Related Work : ne pas présupposer le framework

- [ ] **V6-01 — « which contract? »** Vers l. 431, « The contract then checks… » apparaît sans rappel local suffisant. Nommer explicitement le truth contract proposé dans ce papier, ou décrire simplement les conditions de la tâche avant de renvoyer à 3.1. Éviter d’attribuer cette construction aux méthodes de la littérature.
- [ ] **V6-02 — « which permission? »** Dans la même phrase, préciser que la permission désigne ce que les instructions autorisent à ajouter ou modifier au-delà de l’évidence. Conserver la distinction : l’autorisation ne change pas l’evidence state.
- [ ] **V6-03 — status marking non expliqué.** En 2.2, une illustration existe déjà (« One possible reconstruction »), mais elle ne remplace pas une définition. Ajouter à la première occurrence une explication courte de la façon dont la réponse présente une claim comme établie, hypothétique ou fictive. Réserver la définition formelle et les symboles à la section 3.
- [ ] **V6-04 — O, Γ et μ avant leur définition.** En 2.3, remplacer les symboles par les termes déjà introduits en mots. Cela concerne à la fois « because Γ allows it / μ specifies… » et le paragraphe sur une instruction-following rubric. Garder les symboles dans le framework après leur définition en 3.1.

**Avis : accepter les quatre remarques.** La solution est une introduction locale concise, pas une duplication du framework dans le Related Work. Conserver l’idée prudente qu’une rubric suffisamment détaillée peut représenter les mêmes conditions, et que l’intérêt d’une implémentation séparée reste à tester.

**Critère de fin :** un lecteur peut comprendre 2.1–2.3 sans consulter le tableau des notations.

### Lot 2 — Status marking : définir les catégories une fois

- [ ] Définir, dans le passage sur observed status marking en 3.2, les trois termes déjà employés : **established** = présenté comme un fait ; **hypothetical** = proposé comme une possibilité ou une reconstruction ; **fictional** = présenté comme faisant partie d’un récit inventé.
- [ ] Dire explicitement que ces catégories décrivent la présentation de la claim, et non son evidence state. Une claim présentée comme établie peut être contredite par la référence.
- [ ] Garder la distinction entre **required status marking μ** (exigence de la tâche) et **observed status marking m̂ᵢ** (ce que la réponse exprime).
- [ ] Employer `HYPOTHETICAL` comme nom de catégorie si ce choix est retenu ; garder « possible » et « One possible reconstruction » comme indices textuels permettant de reconnaître cette catégorie. Corriger notamment le passage où `m̂₃` vaut actuellement « possible ».
- [ ] Harmoniser les listes, tableaux et figures : petites capitales LaTeX pour les valeurs formelles, texte normal pour les explications et citations de la réponse. Cela répond à V6-12 sans mettre tous les paragraphes en majuscules.

**Avis : accepter V6-06 et V6-12, avec une réserve.** Le papier emploie déjà ces trois catégories, mais les ériger en taxonomie exhaustive, exclusive et valable pour toute réponse serait une nouvelle affirmation. Les présenter comme les catégories utilisées ici ; conserver le traitement des interprétations ambiguës comme échecs de l’évaluation.

**Critère de fin :** aucun glissement entre hypothetical, possible, uncertain et fictional comme s’il s’agissait de labels interchangeables ; aucun glissement entre marking et evidence state.

### Lot 3 — Claim trace : justifier son utilité avant l’équation

- [ ] **V6-10 : conserver la claim trace**, en rendant son rôle plus explicite. C’est le résultat inspectable du framework : pour chaque claim, elle relie les mots de la réponse, l’évidence et les contrôles au label attribué.
- [ ] **V6-11 : ouvrir par le problème auquel elle répond.** Une réponse peut mêler plusieurs claims, avec des causes d’erreur différentes ; un jugement unique ne dit pas laquelle est contredite, hors scope ou mal marquée. La trace conserve ces distinctions pour expliquer les décisions et préparer une éventuelle évaluation de la réponse entière.
- [ ] Faire le lien avec `subsec:global`, actuellement **2.6, Global Reasoning and Response Completeness**. L’encadrant mentionne 2.7, mais cette section porte actuellement sur le style. Utiliser un renvoi par label et non un numéro écrit en dur.
- [ ] Garder les huit puces demandées précédemment, l’équation et l’exemple de la troisième claim de la figure 2.
- [ ] Renommer le paragraphe simplement « Claim trace » ; terminer par une limite courte : la trace n’impose pas de règle d’agrégation et ne suffit pas à juger raisonnement, cohérence ou complétude.
- [ ] Laisser les politiques d’agrégation à l’agenda, à la discussion et à l’annexe A déjà présentes. Réduire les répétitions plutôt que supprimer la limite.

**Avis : accepter la demande d’explication ; ne pas supprimer l’objet.** V6-10 pose une question, V6-11 propose précisément une manière d’y répondre. « Aider à formaliser » est défendable ; annoncer que la trace fournit déjà un verdict global validé ne l’est pas. Les labels individuels sont bien définis par le framework, tandis que leur agrégation reste ouverte.

**Critère de fin :** la première phrase explique l’usage de la trace ; l’équation décrit ensuite les informations nécessaires à cet usage.

### Lot 4 — Style et créativité : limiter la section 3 à ce qui affecte la règle

- [ ] **V6-14 : accepter le recentrage demandé.** La cible du commentaire est le titre de 3.5 « Style as a Robustness Question », même si son texte parle de créativité. Le style, la qualité créative et le status marking doivent rester distingués.
- [ ] Garder dans le framework un passage court : changer seulement le style, sans changer le contrat, le contenu ni le status marking, ne change pas le label attendu. Cette précision est nécessaire pour comprendre l’exemple E.
- [ ] Garder aussi la séparation entre style demandé et style observé, sans introduire une nouvelle dimension du truth contract.
- [ ] Déplacer ou fusionner la description du protocole de robustesse avec la priorité 3 de l’agenda, qui décrit déjà ces comparaisons. Maintenir dans le Related Work la motivation bibliographique.
- [ ] Éviter de présenter la créativité comme une dimension évaluée par le framework. Conserver sa distinction avec la permission dans le Related Work et ses questions ouvertes dans l’agenda.
- [ ] Réviser les renvois depuis la figure 2 et l’exemple E si la sous-section est raccourcie ou transformée en paragraphe. Réutiliser `subsec:style` si le passage conceptuel reste présent.

**Avis : accepter partiellement.** Enlever tout le passage sur le style ferait perdre une distinction nécessaire à la règle et au contrôle E. Garder sa conséquence conceptuelle, déplacer le programme expérimental, et ne revendiquer aucun résultat de robustesse.

### Lot 5 — Rendre la chaîne de traitement explicite

- [ ] **V6-07 : remplacer « The first two steps »** par une phrase nommant l’extraction et la récupération/interprétation des claims comme étapes du traitement de la réponse par l’oracle.
- [ ] Annoncer ensuite la vérification de l’évidence en 3.3, puis les contrôles de permission et de marking en 3.4.
- [ ] Conserver l’oracle comme boîte noire au niveau du framework : décrire ses entrées/sorties et ses fonctions ne prétend pas fournir un nouvel algorithme d’implémentation.

**Critère de fin :** chaque « step » renvoie à une opération nommée, et la séparation oracle/contrôles du contrat correspond à la figure 2.

### Lot 6 — Deux exemples précis, toujours avec la même stèle

- [ ] **V6-08 : développer le raisonnement UNKNOWN.** Reprendre la phrase complète sur la reconstruction près de l’entrée du temple ; dire ce que la référence indique (la stèle probablement exposée dans un temple) et ce qu’elle ne précise pas (cet emplacement). En conclure UNKNOWN, avant toute décision de permission. Ne pas confondre absence de réponse dans la référence avec source inaccessible ou erreur de l’oracle.
- [ ] **V6-09 : rendre l’uchronie explicite.** Le texte propose déjà une tâche d’histoire alternative, mais sans en donner une instruction et une réponse suffisamment concrètes. Réutiliser la date du décret déjà présente dans le papier ; indiquer séparément ce que dit la référence, ce que la tâche autorise à changer et le marquage fictif requis. Montrer que l’evidence state reste CONTRADICTED même si le label change selon la convention actuelle du manuscrit.

**Décision scientifique à résoudre avant V6-09 :** le manuscrit actuel autorise certaines claims CONTRADICTED explicitement permises et correctement marquées à recevoir LD. Les instructions AGENTS fournies résument au contraire CONTRADICTED → hallucination. Cette divergence préexiste au commentaire ; elle ne doit pas être tranchée par une simple reformulation. Il faut confirmer quelle règle fait autorité, puis harmoniser la prose, la table de décision et les exemples. Même écart à examiner pour les faits ENTAILED explicitement exclus par une tâche d’invention, que le manuscrit peut actuellement classer H. Les labels « grounded » du manuscrit et « supported » des instructions doivent aussi être harmonisés au niveau global, pas renommés isolément dans cette review.

**Avis : accepter la demande d’exemples.** V6-08 est une clarification immédiate ; V6-09 dépend de la convention scientifique retenue. Aucun fait historique nouveau ni nouvelle citation n’est nécessaire pour expliquer les exemples déjà construits.

### Lot 7 — Indices et typographie

- [ ] **V6-05 : dans `tab:notation`, utiliser q*ᵢ, m̂ᵢ et ESᵢ** pour les valeurs associées à la claim i ; expliquer i une fois.
- [ ] Ne pas indexer automatiquement p, O, Γ ou μ par i : ils désignent ici le contexte et les conditions communs à l’évaluation de la réponse.
- [ ] Harmoniser les occurrences concrètes dans la claim trace et la figure 2. Le générique q* peut rester dans une définition générique si le passage à la claim i est expliqué ; éviter une substitution globale aveugle.
- [ ] **V6-13 : homogénéiser les labels G, LD et H** en réutilisant les macros existantes `\Grd`, `\LD` et `\Hall`. Pour les noms développés, choisir une convention unique dans les listes de valeurs, sans multiplier les nouvelles macros.
- [ ] Appliquer la même convention typographique aux evidence states et reason codes dans le tableau de décision, où « Unknown or contradicted » n’est actuellement pas présenté comme les autres valeurs.

**Critère de fin :** la notation suffit à distinguer un paramètre du contrat d’une valeur propre à une claim ; les quatre familles — marking, evidence state, label, reason code — restent visuellement et conceptuellement distinctes.

## 3. Points supplémentaires repérés dans le source

Ces points sont nos observations locales, pas des commentaires attribués à l’encadrant.

- [ ] Vers l. 1111, la phrase `We write this claim trace record, $$, as` contient un affichage mathématique vide. Remplacer par une introduction correcte du record τᵢ lors du lot claim trace.
- [ ] Vers l. 765, corriger « A response of a LLM » en anglais naturel.
- [ ] Dans les définitions des evidence states, éviter « the oracle states the claim » : le système vérifie une relation à la référence. Utiliser une formulation cohérente avec support, contradiction et absence de conclusion dans l’évidence.
- [ ] Dans le paragraphe sur UNKNOWN, rendre grammaticale la phrase introduite par « This differs from a failed evaluation: if… ».
- [ ] Préserver l’hypothèse déjà décidée : oracle supposé correct pour illustrer la règle, avec limites et échecs discutés séparément.

## 4. Plan de rédaction avant patch

### Mini-plan proposé

1. Related Work : donner les mots et leur rôle, puis situer l’apport du papier.
2. Truth contract : définir les trois paramètres et ce qui appartient à la tâche.
3. Claims : définir contenu et status marking observé, avec les catégories utilisées.
4. Oracle : expliquer les evidence states à partir de la stèle.
5. Règle : appliquer permission et marking, puis exposer la claim trace comme résultat.
6. Style : garder la distinction utile à la règle ; développer les expériences dans l’agenda.

### Claims à défendre et appuis déjà présents

| Claim | Appui disponible | Limite à garder |
|---|---|---|
| Permission et relation à l’évidence sont distinctes | Définitions 3.1–3.4, exemple du temple | Pas de résultat empirique revendiqué |
| Marking observé et marking requis ont des rôles différents | μ, m̂, exemple « One possible reconstruction » | Fiabilité de récupération non démontrée |
| La trace rend inspectable chaque décision individuelle | Tuple existant, figure 2, reason codes | Utilité pratique encore à évaluer |
| La trace ne suffit pas à établir la qualité de la réponse entière | Related Work 2.6, priorité 4, discussion, annexe A | Pas de règle globale présentée comme validée |
| À contenu, marking et contrat constants, le style seul ne change pas la règle | Règle formelle et exemple E | Robustesse d’un évaluateur réel à tester |

Ces clarifications s’appuient sur le manuscrit et ses références existantes. Aucune nouvelle recherche bibliographique n’a été menée pour cette analyse ; l’adéquation des références n’a donc pas fait l’objet d’un nouvel audit.

### Objections à anticiper

- **« Le papier est circulaire ou introduit ses concepts trop tard. »** Réponse : mots simples dans le Related Work, définitions dans un ordre unique, symboles seulement ensuite.
- **« Le status marking se confond avec la vérité ou la confiance du modèle. »** Réponse : définir ce que la réponse présente, montrer un exemple et séparer explicitement m̂, μ et ES.
- **« La claim trace n’est qu’une liste de variables. »** Réponse : montrer la décision qu’elle explique et la cause d’erreur qu’un label seul masquerait ; ne pas annoncer un gain mesuré.
- **« Le framework promet une évaluation globale ou de la créativité. »** Réponse : limiter la contribution aux claims et au contrat ; garder les études de qualité et d’agrégation dans l’agenda.
- **« CONTRADICTED peut devenir LD : la définition change. »** Réponse : expliciter la convention seulement après décision scientifique ; une formulation plus claire ne résout pas à elle seule l’objection.

## 5. Journal prévisionnel et réponses à l’encadrant

Les formulations ci-dessous sont des **brouillons à envoyer seulement après réalisation** ; aucune réponse n’a été envoyée et aucune correction n’est déclarée faite.

| Commentaires | Entrée de journal prévue | Réponse après correction |
|---|---|---|
| V6-01–04 | Définitions verbales avancées ; symboles reportés en section 3 | « Nous avons explicité les concepts lors de leur première occurrence et réservé la notation au framework. » |
| V6-06, V6-12 | Catégories de marking définies et harmonisées | « Nous avons défini established, hypothetical et fictional et séparé ces catégories des evidence states. » |
| V6-10–11 | Fonction de la trace explicitée ; renvoi vers la discussion globale corrigé | « La trace est conservée comme résultat inspectable par claim ; son introduction explique désormais son utilité et les limites de l’agrégation. » |
| V6-14 | Discussion du style raccourcie ; protocole regroupé dans l’agenda | « Nous avons recentré le framework sur la règle et déplacé les développements expérimentaux, en gardant la distinction nécessaire à l’exemple E. » |
| V6-07 | Étapes du traitement nommées | « L’extraction, la récupération et la vérification sont maintenant situées explicitement dans le traitement par l’oracle. » |
| V6-08–09 | Exemples de la stèle développés sous la convention retenue | « Nous avons détaillé la référence, la claim et les conditions pertinentes pour rendre le raisonnement vérifiable. » |
| V6-05, V6-13 | Indices et typographie harmonisés | « Les valeurs propres à chaque claim sont indexées et les labels suivent une convention cohérente. » |

## 6. Ordre d’exécution et validation prévue

1. Valider l’orientation : conserver la trace, raccourcir le style dans le framework, garder les trois catégories de marking sans revendiquer leur exhaustivité.
2. Résoudre séparément la convention CONTRADICTED/LD et les autres écarts AGENTS/manuscrit avant de réécrire l’exemple d’uchronie. Les autres clarifications peuvent avancer indépendamment.
3. Appliquer les lots 1–5, puis les exemples et l’harmonisation ; mettre à jour les renvois et le journal par commentaire.
4. Vérifier les noms de catégories, les indices, les définitions avant emploi et l’absence de renforcement des claims.
5. Compiler avec le build existant et inspecter les pages touchées, notamment la liste de la claim trace et la figure 2.

**Statut actuel : plan uniquement ; compilation non relancée, puisqu’aucun fichier LaTeX n’a été modifié.** La transcription complète des 18 messages et l’inventaire avec empreinte du source sont conservés à côté de ce document. Les compléments des cinq messages tronqués seraient utiles pour confirmer leurs intentions précises, sans empêcher les corrections déjà motivées par leur partie visible.
