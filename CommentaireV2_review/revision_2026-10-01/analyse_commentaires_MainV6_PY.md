# Avis sur les commentaires MainV6_PY

Analyse du 1er octobre 2026. Manuscrit ciblé : `réécriture_papier/truth_contract_position_paper.tex`. Aucun changement au manuscrit ; pas de nouvelle compilation ni de nouvel audit bibliographique. Les commentaires sont des propositions à évaluer, pas des instructions à exécuter automatiquement.

## Périmètre

L’export contient 92 fils et 96 messages : 88 de Pierre-Yves Genest, 8 de Martino Lovisetto. Deux paires sont des doublons probables (PY27/PY28 et PY59/PY60). Six messages sont signalés comme tronqués. `tabIteration: aborted` interdit de garantir que tous les commentaires Overleaf ont été capturés. Les changements suivis sont des fragments, pas un diff faisant autorité.

Les identifiants PY01–PY92 suivent l’ordre du JSON, y compris les remarques de Martino. Les cibles et lignes sont approximatives : le JSON fournit une position mais pas les bornes de la sélection. Les remarques très courtes, notamment « ? », ne permettent pas toujours d’identifier une intention unique.

## Mon diagnostic

La critique d’ensemble est fondée : les définitions et le positionnement ne sont pas encore assez nets, alors que la récupération des claims et les réserves occupent beaucoup de place. Plusieurs formulations ajoutées durant notre révision ont transformé des limites d’audit en prose du papier. Il faut corriger ce déséquilibre, pas simplement durcir le ton.

Trois difficultés sont prioritaires : (1) préciser ce que représentent Γ et μ et comment les appliquer ; (2) répondre à une question de couverture conjointe dans le resource mapping avec des preuves ; (3) recentrer l’agenda sur datasets, méthodes et usages. La claim trace peut rester utile tout en perdant une partie de sa notation dans le corps.

Je ne recommande pas quatre raccourcis : remplacer automatiquement status marking par hedging ; faire de m̂ une estimation μ̂ sans préciser les types ; affirmer sans audit que zéro dataset couvre les trois champs ; supprimer les limites empiriques. Le choix d’un oracle englobant extraction/recovery/vérification et la règle sur les contradictions autorisées sont des décisions scientifiques, non des corrections de style.

## Ordre de révision recommandé

1. Stabiliser la définition de claim, la responsabilité de l’oracle, la représentation de Γ et μ, et la règle des labels.
2. Réorganiser l’exposition : contexte et contrat ; claims/marking ; évidence ; décision ; résultat. Définir chaque symbole lors du premier usage.
3. Renforcer la comparaison avec les méthodes proches dans le Related Work et ajouter une synthèse de la position.
4. Terminer le contrôle des protocoles des ressources ; faire apparaître les trois champs et une conclusion proportionnée aux preuves.
5. Alléger la trace dans le corps, montrer les contrôles dans la figure 2 et choisir arbre/table de décision ; convertir la figure 4 en tableau si son format est conservé.
6. Refaire l’agenda autour de datasets, d’une méthode et de cas d’usage ; intégrer validation et robustesse comme exigences de ces travaux.
7. Regrouper les limites et les détails en annexe, améliorer les transitions et renforcer la conclusion.

## Avis commentaire par commentaire

### PY01 — Accepter

Cible approximative dans le source local : ligne 2. Position exportée : 71.

**Pierre-Yves Genest**:

> issue: Global sur le papier. Tu devrais relire le papier mot à mot. Des fois j'ai l'impression qu'il y a des commentaires de LLMs qui ne devraient pas faire partie du corps du papier. Du genre "on n'a pas pu faire ça" ou "on est pas 100% sûr que c'est ça", etc.

**Mon avis / action proposée.** Retirer du corps les notes de travail telles que « available records do not explain… ». Les limites scientifiques pertinentes restent, regroupées et formulées précisément. Plusieurs formulations ajoutées lors de nos révisions ont créé ce problème.

### PY02 — Alléger

Cible approximative dans le source local : ligne 300. Position exportée : 14095.

**Pierre-Yves Genest**:

> thought: je sais pas si c'est pertinent

**Mon avis / action proposée.** Le style séparé du contrat est utile, mais cette phrase peut quitter la figure 1 si sa légende ou le texte donne déjà cette précision.

### PY03 — Accepter

Cible approximative dans le source local : ligne 316. Position exportée : 15008.

**Pierre-Yves Genest**:

> thought: tu n'as pas encore explicité ta définition

**Mon avis / action proposée.** Reporter la convention surprenante « fait vrai classé H » après la règle et son exemple. Ne pas la présenter comme allant de soi dans l’introduction.

### PY04 — Déplacer

Cible approximative dans le source local : ligne 382. Position exportée : 19676.

**Pierre-Yves Genest**:

> thought: je sais pas si c'est pertinent

**Mon avis / action proposée.** Les contributions doivent annoncer ce que le papier apporte. Déplacer la réserve sur l’agrégation dans le passage qui précise l’unité d’évaluation.

### PY05 — Déjà corrigé localement

Cible approximative dans le source local : ligne 431. Position exportée : 22813.

**Martino Lovisetto**:

> which contract?

**Martino Lovisetto** — message signalé tronqué:

> expliquer....

**Pierre-Yves Genest**:

> oui la formulation peut laisser supposer que c'est VeriScore qui définit le truth contract (et pas nous)

**Mon avis / action proposée.** Le source dit désormais « The truth contract proposed here… », ce qui attribue explicitement le contrat à notre proposition et non à VeriScore.

### PY06 — Accepter

Cible approximative dans le source local : ligne 441. Position exportée : 23421.

**Pierre-Yves Genest**:

> issue: je ne suis pas sûr de voir où tu veux en venir avec ce paragraphe.

**Mon avis / action proposée.** Réduire les scénarios d’échec dans le Related Work. Expliquer d’abord ce que FActScore, VeriScore et Claimify apportent à la récupération/vérification des claims, puis leur rapport à notre question.

### PY07 — Nuancer

Cible approximative dans le source local : ligne 455. Position exportée : 24359.

**Pierre-Yves Genest**:

> thought: remarque bête. Tu déclares que ça s'appelle "observed status marking". Dans le même temps tu dis que la littérature, depuis 40 ans appelle ça "hedging". Pourquoi pas utiliser leur terme ?

**Mon avis / action proposée.** Dans le manuscrit, observed status marking couvre aussi la présentation comme fait ou comme fiction. Hedging illustre seulement une partie de ce champ. Garder le terme, expliquer le rapport sans prétendre renommer le hedging.

### PY08 — Déplacer

Cible approximative dans le source local : ligne 463. Position exportée : 24765.

**Pierre-Yves Genest**:

> thought: n'a pas sa place dans un related work de position paper

**Mon avis / action proposée.** La fiabilité à tester de notre séparation contenu/marking appartient aux limites ou à l’agenda, pas à la description des travaux antérieurs.

### PY09 — Accepter, sans promettre une supériorité

Cible approximative dans le source local : ligne 474. Position exportée : 25298.

**Pierre-Yves Genest**:

> issue: du coup ça me dérange que tu ne les décrives pas plus en détails. En quoi c'est différent et moins bien que ce qu'on propose ?

**Mon avis / action proposée.** Décrire les méthodes proches et ce qu’elles évaluent. La comparaison doit établir la différence de représentation et de question ; « moins bien » nécessiterait des résultats que nous n’avons pas.

### PY10 — Accepter en partie

Cible approximative dans le source local : ligne 486. Position exportée : 26003.

**Pierre-Yves Genest**:

> issue: en somme tu dis on pourrait faire A, mais on fait B.
> - Tu n'expliques pas si et pourquoi B est mieux que A
> - Ca n'a pas sa place dans related work : c'est une discussion, qui n'a pas de référence qui plus est.

**Mon avis / action proposée.** Déplacer la comparaison hypothétique avec une rubric vers la discussion. Rendre explicite l’apport attendu, sans affirmer un gain d’implémentation démontré.

### PY11 — Accepter

Cible approximative dans le source local : ligne 523. Position exportée : 28242.

**Pierre-Yves Genest**:

> ?

**Mon avis / action proposée.** La phrase défensive « not a permission mechanism attributed to prior work » peut être remplacée par une transition directe vers notre distinction. Conserver une attribution exacte des études.

### PY12 — Accepter

Cible approximative dans le source local : ligne 584. Position exportée : 31829.

**Pierre-Yves Genest**:

> issue: pas défini avant

**Mon avis / action proposée.** La claim trace apparaît trop tôt en 2.6. Parler des décisions par claim dans le Related Work, puis nommer et définir la trace dans le framework.

### PY13 — Accepter sous réserve des sources

Cible approximative dans le source local : ligne 602. Position exportée : 32739.

**Pierre-Yves Genest**:

> thought: il faudrait au moins que tu listes les dimensions principales. Tu peux pas dire "X est compliqué. J'en dirais pas plus."

**Mon avis / action proposée.** Si le style reste une motivation, donner quelques dimensions réellement traitées dans les références citées. Ne pas inventer une taxonomie pour remplir le paragraphe.

### PY14 — Accepter sous réserve des sources

Cible approximative dans le source local : ligne 608. Position exportée : 33032.

**Pierre-Yves Genest**:

> issue: tu ne présentes pas ces findings. J'imagine que tu veux dire que le style impacte la détection/formulation des claims. Mais il faut le dire clairement.

**Mon avis / action proposée.** Dire ce que les articles cités ont effectivement observé avant « These findings ». Ne pas convertir un biais de jugement global en preuve d’erreur de récupération des claims sans appui.

### PY15 — Accepter

Cible approximative dans le source local : ligne 611. Position exportée : 33305.

**Pierre-Yves Genest**:

> thought: je mettrais bien un paragraphe/section de conclusion sur l'état de l'art pour récapituler les limites au global, et donc la place pour notre position

**Mon avis / action proposée.** Terminer le Related Work par une synthèse de la question laissée ouverte et de la position proposée, sans affirmer une absence universelle non démontrée.

### PY16 — Partiellement présent

Cible approximative dans le source local : ligne 613. Position exportée : 33317.

**Pierre-Yves Genest**:

> thought: mettre une phrase d'introduction

**Mon avis / action proposée.** Une introduction par le musée existe. Ajouter surtout une transition depuis la synthèse de la littérature, sans deuxième introduction redondante.

### PY17 — Accepter

Cible approximative dans le source local : ligne 617. Position exportée : 33516.

**Pierre-Yves Genest**:

> issue: à la fois une trivialité, et en même temps pas clair. "complete text" ca peut laisser sous-entendre que c'est question + la réponse ? Il me semble que la bonne formulation serait "complete answer is a response", mais bon c'est une lapalissade.

**Mon avis / action proposée.** Supprimer « complete text a response ». Employer directement response pour le texte généré par le modèle et préciser l’unité claim.

### PY18 — Accepter le diagnostic

Cible approximative dans le source local : ligne 618. Position exportée : 33604.

**Pierre-Yves Genest**:

> issue: ta définition tourne en rond :
> - L'oracle vérifie les claims
> - Une claim c'est ce qui est vérifié par l'oracle
> - Donc une claim c'est ? On sait pas...
> (accessoirement, excuse-moi pour la petite pique, mais c'est typiquement de l'AI slop)
> Il faudrait apporter une définition plus grammaticale

**Mon avis / action proposée.** Définir la claim indépendamment de l’oracle, par le contenu qu’un passage affirme ou propose au sujet d’entités, propriétés ou événements. Une phrase grammaticale n’est pas nécessairement une seule claim. Garder les exemples de découpage.

### PY19 — Accepter

Cible approximative dans le source local : ligne 620. Position exportée : 33764.

**Pierre-Yves Genest**:

> issue: non défini

**Mon avis / action proposée.** Ne pas annoncer des evidence states et labels encore indéfinis ; parler d’abord de claims pouvant être évaluées différemment.

### PY20 — Accepter

Cible approximative dans le source local : ligne 643. Position exportée : 35058.

**Pierre-Yves Genest**:

> comment: l'oracle ne définit pas seulement le "comment la réponse est contrôlée contre la référence" mais aussi la référence elle-même non ?

**Mon avis / action proposée.** La définition de O doit inclure la référence désignée ET la procédure de vérification. Le corps l’explique déjà, mais la première puce est incomplète.

### PY21 — Alléger sans supprimer le fond

Cible approximative dans le source local : ligne 660. Position exportée : 35906.

**Pierre-Yves Genest**:

> thought: nécessaire ? Moi je me tiendrais juste à relever que le contrat est indépendant de la réponse.

**Mon avis / action proposée.** Conserver l’indépendance du contrat vis-à-vis de la réponse et l’interdiction de l’adapter après lecture. Reporter les instructions conflictuelles dans les conditions d’application, si nécessaire.

### PY22 — Accepter

Cible approximative dans le source local : ligne 667. Position exportée : 36305.

**Pierre-Yves Genest**:

> issue: toujours pas défini.

**Mon avis / action proposée.** Définir evidence state avant de l’utiliser comme sortie de l’oracle, ou annoncer les trois relations en mots dès cette première occurrence.

### PY23 — Clarifier

Cible approximative dans le source local : ligne 675. Position exportée : 36802.

**Pierre-Yves Genest**:

> ?

**Mon avis / action proposée.** Le « ? » vise vraisemblablement la présentation du statut dans les sorties de l’oracle. Employer le terme déjà introduit observed status marking ; la sélection exacte n’est pas exportée.

### PY24 — Accepter

Cible approximative dans le source local : ligne 677. Position exportée : 36931.

**Pierre-Yves Genest**:

> issue:
> - La notation devrait venir avant
> - Qu'est-ce que "claim" canonique ? pas défini

**Mon avis / action proposée.** Introduire q* dans le passage sur claim recovery et expliquer concrètement ce qu’il conserve. Canonical ne doit pas devenir un nouveau concept sans utilité explicitée.

### PY25 — Clarifier

Cible approximative dans le source local : ligne 681. Position exportée : 37284.

**Pierre-Yves Genest**:

> issue: pas clair

**Mon avis / action proposée.** Préciser une seule fois la différence entre claim non soutenue et impossibilité de terminer l’évaluation. Réduire les renvois abstraits aux procedural failures.

### PY26 — Alléger

Cible approximative dans le source local : ligne 687. Position exportée : 37647.

**Pierre-Yves Genest**:

> issue: ne sert à rien

**Mon avis / action proposée.** Les exemples tests/preuves peuvent être réduits si le framework reste textuel. Garder une limite courte sur ce que la procédure vérifie, plutôt qu’une réserve générale répétée.

### PY27 — Accepter

Cible approximative dans le source local : ligne 703. Position exportée : 38559.

**Pierre-Yves Genest** — message signalé tronqué:

> issue: c'est pas beaucoup plus vaste comme topic. Entre la position de la porte et la position de la stèle...

**Mon avis / action proposée.** Le contraste claim particulière / thème plus large est peu parlant. Donner une règle autorisant toutes les reconstructions d’un aspect défini, puis une claim précise qu’elle autorise.

### PY28 — Doublon probable de PY27

Cible approximative dans le source local : ligne 703. Position exportée : 38559.

**Pierre-Yves Genest** — message signalé tronqué:

> issue: c'est pas beaucoup plus vaste comme topic. Entre la position de la porte et la position de la...

**Mon avis / action proposée.** Même position, auteur et horaire ; autre troncature du même texte. Ne pas compter comme deuxième correction.

### PY29 — Priorité haute

Cible approximative dans le source local : ligne 709. Position exportée : 38875.

**Pierre-Yves Genest**:

> thought: je regrette que tu ne prennes pas le temps d'expliciter "comment" représenter le permission scope (cf la représentation par facette qu'on avait réfléchi au dernier point de thèse). Par ce que quand on écrit Gamma = ensemble vide, on comprend pas vraiment en l'état.

**Mon avis / action proposée.** Définir la représentation de Γ et ce qu’un élément de cet ensemble signifie. Γ vide doit signifier absence d’ajouts/changements autorisés, pas absence de faits permis. La proposition par facettes du rendez-vous n’est pas jointe : ne pas en inventer le contenu.

### PY30 — Déplacer et résoudre la portée

Cible approximative dans le source local : ligne 715. Position exportée : 39232.

**Pierre-Yves Genest**:

> issue: en disant ça, on s'attend à ce que le prochain paragraphe explique comment résoudre ce problème. Mais non. Donc ca revient juste à saboter ton travail.

**Mon avis / action proposée.** Le passage annonce une difficulté globale au milieu d’une définition locale. Définir les limites de l’unité claim en une phrase, puis traiter le nombre de reconstructions dans l’agrégation/les contraintes de réponse.

### PY31 — Priorité haute

Cible approximative dans le source local : ligne 723. Position exportée : 39723.

**Pierre-Yves Genest**:

> thought: comme pour le précédent, dommage que tu ne prennes pas le temps de l'expliciter en détails

**Mon avis / action proposée.** Définir comment μ prescrit une présentation et comment on compare le marking observé à cette exigence. Les trois labels ajoutés décrivent m̂, mais ne suffisent pas à définir μ, qui peut aussi imposer un titre ou la portée d’un marquage.

### PY32 — Déjà présent localement

Cible approximative dans le source local : ligne 738. Position exportée : 40572.

**Pierre-Yves Genest**:

> ajouter un saut de paragraphe

**Mon avis / action proposée.** Le passage « The contract specifies… » commence actuellement un nouveau paragraphe.

### PY33 — Réduire

Cible approximative dans le source local : ligne 739. Position exportée : 40708.

**Pierre-Yves Genest**:

> thought: pas certain de la pertinence

**Mon avis / action proposée.** Une limite de portée concise suffit ; éviter l’énumération répétée qualité/utilité/originalité/raisonnement/sécurité à chaque étape.

### PY34 — Accepter

Cible approximative dans le source local : ligne 743. Position exportée : 40869.

**Pierre-Yves Genest**:

> issue: il faut définir la notation dans les paragraphes précédents.

**Mon avis / action proposée.** Introduire les symboles là où leur concept est expliqué ; le tableau récapitule ensuite. Ne pas concentrer les définitions tardivement avant le tableau.

### PY35 — Accepter

Cible approximative dans le source local : ligne 744. Position exportée : 40950.

**Pierre-Yves Genest**:

> issue: utilité ? tu n'en parles pas avant.

**Mon avis / action proposée.** Les trois evidence states doivent être reliés à la vérification avant d’être énumérés comme un supplément de notation.

### PY36 — Ne pas adopter automatiquement

Cible approximative dans le source local : ligne 745. Position exportée : 41042.

**Pierre-Yves Genest**:

> J'utiliserais plutôt mu hat. (pour mieux coller à mu)

**Mon avis / action proposée.** μ est une exigence, m̂ est une observation de la réponse. μ̂ suggérerait une estimation de la même quantité. Garder m̂ sauf refonte explicite des types et de leur relation.

### PY37 — Alléger

Cible approximative dans le source local : ligne 747. Position exportée : 41172.

**Pierre-Yves Genest**:

> inutile

**Mon avis / action proposée.** L’explication de l’indice i est utile une fois. Elle peut entrer dans la légende du tableau ou la phrase introduisant les claims, sans paragraphe supplémentaire.

### PY38 — Déjà corrigé

Cible approximative dans le source local : ligne 750. Position exportée : 41302.

**Martino Lovisetto**:

> mettre les index comme présenté en section 3.4

**Mon avis / action proposée.** ESᵢ, q*ᵢ et m̂ᵢ sont indexés dans le tableau de notation. O, Γ et μ restent propres à la tâche.

### PY39 — Accepter

Cible approximative dans le source local : ligne 750. Position exportée : 41309.

**Pierre-Yves Genest**:

> issue: je comprends pas l'ordre des lignes dans cette table ?

**Mon avis / action proposée.** Réordonner : contexte p ; contrat O, Γ, μ ; informations par claim q*ᵢ, m̂ᵢ, ESᵢ. Éviter l’intercalation actuelle de ES avant μ.

### PY40 — Accepter sobrement

Cible approximative dans le source local : ligne 757. Position exportée : 41552.

**Pierre-Yves Genest**:

> issue: redétailler ce qui est dans le contexte

**Mon avis / action proposée.** Rappeler les éléments de p déjà définis dans le texte ou renvoyer précisément à cette définition ; ne pas créer une seconde définition différente.

### PY41 — Accepter

Cible approximative dans le source local : ligne 758. Position exportée : 41582.

**Pierre-Yves Genest**:

> issue: pas clair. Tu n'utilises même pas le terme oracle.

**Mon avis / action proposée.** Commencer la cellule O par « Task oracle » et rappeler référence + procédure ; le terme doit correspondre à la puce de définition.

### PY42 — Option éditoriale

Cible approximative dans le source local : ligne 769. Position exportée : 42075.

**Pierre-Yves Genest**:

> thought: pas sûr que le titre soit le bon. Tu parle quand même beaucoup du status marking

**Mon avis / action proposée.** Un titre mentionnant claims et observed status marking serait plus fidèle. L’essentiel est de regrouper leur définition avant les exemples.

### PY43 — Décision d’architecture

Cible approximative dans le source local : ligne 772. Position exportée : 42213.

**Pierre-Yves Genest**:

> thought: je suis pas sûr que ce soit le rôle de l'oracle que de séparer en claim puis d'identifier le status marking de chaque claim

**Mon avis / action proposée.** La remarque est recevable, mais l’oracle large a été explicitement choisi par l’auteur. Deux architectures sont possibles ; clarifier celle retenue ou valider un changement avant de redistribuer extraction, recovery et vérification.

### PY44 — Conserver et expliquer

Cible approximative dans le source local : ligne 850. Position exportée : 47076.

**Pierre-Yves Genest**:

> ?

**Mon avis / action proposée.** L’absence de label après échec d’évaluation empêche de confondre absence de résultat et UNKNOWN. Illustrer brièvement ; ne pas supprimer cette distinction.

### PY45 — En attente

Cible approximative dans le source local : ligne 880. Position exportée : 48867.

**Martino Lovisetto**:

> donner un exemple (toujours avec la stele)

**Mon avis / action proposée.** Remarque de Martino sur l’uchronie. L’exemple dépend encore de la convention scientifique sur les contradictions autorisées ; ne pas résoudre ce choix par une simple reformulation.

### PY46 — Priorité haute

Cible approximative dans le source local : ligne 898. Position exportée : 50005.

**Pierre-Yves Genest**:

> issue: tu peux pas dire cette formule, puisque tu n'a pas défini gamma

**Mon avis / action proposée.** Objection mathématique fondée : préciser le domaine de Γ avant d’écrire (q*, ES) ∈ Γ. La description informelle de ce qui est permis ne suffit pas à justifier cette écriture.

### PY47 — Conserver, alléger

Cible approximative dans le source local : ligne 906. Position exportée : 50467.

**Pierre-Yves Genest**:

> thought: pas convaincu de la pertinence

**Mon avis / action proposée.** Les reason codes distinguent contenu non permis et marking inadéquat, distinction centrale pour expliquer H. Leur notation peut rester minimale ; ne pas supprimer leur fonction.

### PY48 — Accepter

Cible approximative dans le source local : ligne 919. Position exportée : 51075.

**Pierre-Yves Genest**:

> thought: je ferais un arbre de décision. La vue tableau est confuse je trouve

**Mon avis / action proposée.** Un arbre de décision serait plus lisible que la table actuelle. Stabiliser la règle scientifique avant de dessiner l’arbre ; éviter de maintenir deux représentations redondantes.

### PY49 — Accepter

Cible approximative dans le source local : ligne 1034. Position exportée : 56609.

**Pierre-Yves Genest**:

> issue: jamais défini avant

**Mon avis / action proposée.** Définir sᵢ comme passage de la réponse avant la figure 2, ou retirer le symbole de la figure si sa définition formelle quitte le corps.

### PY50 — Accepter sur la lisibilité

Cible approximative dans le source local : ligne 1071. Position exportée : 58235.

**Pierre-Yves Genest**:

> thought: il faudrait aussi déterminer gamma et mu ?

**Mon avis / action proposée.** Γ et μ sont déjà présents dans les boîtes du haut. Faire apparaître les résultats de leurs contrôles entre evidence state et label, plutôt que laisser croire à une conversion directe.

### PY51 — Accepter la critique de surcharge

Cible approximative dans le source local : ligne 1108. Position exportée : 59909.

**Pierre-Yves Genest**:

> issue: AAAAAAH mais tu peux pas savoir comme je hais littéralement découvrir de nouveaux trucs ésotériques à CHAQUE fois que je lis ce papier.
> Honnêtement, cette partie ne sert à rien, si ce n'est à définir de nouvelles notations (inutilisées)

**Mon avis / action proposée.** Conserver l’utilité de la trace ; envisager de déplacer le tuple et les variables aᵢ, bᵢ, ℓᵢ, rᵢ en annexe si elles ne servent pas ensuite. Cela modifierait toutefois la présentation à huit puces précédemment demandée par l’auteur.

### PY52 — Partiellement corrigé

Cible approximative dans le source local : ligne 1109. Position exportée : 59957.

**Martino Lovisetto**:

> expliquer à quoi sert cette claim trace. Faire le lien avec 2.7 pour dire que la reponse d'un LLM est caracterisée par un verdict qui est complexe et ici nous proposon un outil pour aider à la formalisation de ce verdict (meme si comme on y arrive ne fait pas l'objet du framework)

**Mon avis / action proposée.** L’introduction actuelle explique l’utilité et renvoie à 2.6. Elle ne résout pas à elle seule l’objection de notation superflue de PY51.

### PY53 — Corrigé localement

Cible approximative dans le source local : ligne 1127. Position exportée : 61057.

**Martino Lovisetto**:

> en maiuscule

**Mon avis / action proposée.** Les valeurs de status marking et evidence states sont en textsc dans la définition et la trace. L’offset seul ne permet pas de garantir le mot sélectionné à l’origine.

### PY54 — Corrigé localement

Cible approximative dans le source local : ligne 1137. Position exportée : 61659.

**Martino Lovisetto**:

> en maiuscule ?

**Mon avis / action proposée.** Les noms de claim labels et les reason codes utilisent les petites capitales dans la trace ; même réserve sur la sélection exacte.

### PY55 — Réduire avec discernement

Cible approximative dans le source local : ligne 1167. Position exportée : 63178.

**Martino Lovisetto**:

> est-ce que il est vraiment sage de mettre en evidence le pb de la creativité sans le traiter ? Surtout dans la section 3 qui est censée être le coeur de notre plus value scientifique. J'aurais tendence à en parler que dans la section 2 comme lacune actuelle de l'état de l'art et dans la reserach agenda à la fin.

**Pierre-Yves Genest**:

> oui je pense que ce n'est pas nécessaire dans notre papier

**Mon avis / action proposée.** Le style est déjà raccourci. Garder la distinction avec status marking et la propriété de stabilité des labels ; déplacer les expérimentations. Ce passage n’a pas à proposer une évaluation de la créativité.

### PY56 — Accepter la question, refuser la conclusion non étayée

Cible approximative dans le source local : ligne 1191. Position exportée : 64547.

**Pierre-Yves Genest**:

> issue: il y a un truc qui me dérange dans cette partie. Détailler les datasets c'est bien, mais au fond tu n'évoques pas, tu ne réponds pas à la question : "Est-ce qu'il existe un dataset qui couvre les 3 éléments du truth contract ?".
> Evidemment on sait que la réponse est non, mais il faut le dire

**Mon avis / action proposée.** Le mapping doit répondre à la couverture conjointe de O, Γ et μ. Mais l’audit actuel ne permet pas d’affirmer qu’aucun dataset ne la couvre. Vérifier les protocoles et conclure dans le périmètre documenté.

### PY57 — Accepter

Cible approximative dans le source local : ligne 1191. Position exportée : 64555.

**Pierre-Yves Genest**:

> issue: idem partie précédente : ajouter une conclusion sur la partie précédente (au moins un récap) et une introduction à cette section

**Mon avis / action proposée.** Conclure le framework par son entrée, sa règle et sa sortie ; présenter le mapping comme l’examen de leur prise en compte dans les ressources existantes.

### PY58 — Alléger

Cible approximative dans le source local : ligne 1202. Position exportée : 65064.

**Pierre-Yves Genest**:

> issue: à retirer

**Mon avis / action proposée.** La définition courte d’evaluation resource peut être intégrée à la première phrase. Conserver les informations de sélection nécessaires à l’interprétation.

### PY59 — Accepter sur la méthode, nuancer sur l’exhaustivité

Cible approximative dans le source local : ligne 1206. Position exportée : 65383.

**Pierre-Yves Genest** — message signalé tronqué:

> issue: pour moi c'est super négatif ? Pourquoi 41 ressources si ce ne sont pas toutes les ressources. Et en plus si ce ne sont pas les approches les plus communes...

**Mon avis / action proposée.** 41 n’est pas un problème en soi. Il manque une justification positive et documentée du choix. Ni exhaustivité ni représentativité ne doivent être inventées.

### PY60 — Doublon probable de PY59

Cible approximative dans le source local : ligne 1206. Position exportée : 65383.

**Pierre-Yves Genest** — message signalé tronqué:

> issue: pour moi c'est super négatif ? Pourquoi 41 ressources si ce ne sont pas toutes les ressources...

**Mon avis / action proposée.** Même position et version tronquée du même commentaire. Pas de correction supplémentaire.

### PY61 — Priorité haute

Cible approximative dans le source local : ligne 1211. Position exportée : 65660.

**Pierre-Yves Genest**:

> issue: à corriger.

**Mon avis / action proposée.** Réaliser/documenter la sélection et l’audit. Retirer la narration du travail incomplet seulement après avoir apporté la méthode ou réduit la portée des résultats.

### PY62 — À réexaminer

Cible approximative dans le source local : ligne 1246. Position exportée : 67489.

**Pierre-Yves Genest**:

> thought: pertinence de ce groupe ?

**Mon avis / action proposée.** Le groupe creative writing and reasoning mélange des tâches différentes. Vérifier s’il aide la comparaison des champs du contrat ; ne pas renommer/reclasser sans vérifier les ressources concernées.

### PY63 — Réduire la réserve, préciser le statut

Cible approximative dans le source local : ligne 1255. Position exportée : 68048.

**Pierre-Yves Genest**:

> ?

**Mon avis / action proposée.** Présenter les catégories comme un regroupement descriptif fondé sur les tâches. L’absence de double annotation peut être indiquée une seule fois dans la méthode si une conclusion dépend du codage.

### PY64 — Non reproduit localement

Cible approximative dans le source local : ligne 1260. Position exportée : 68271.

**Pierre-Yves Genest**:

> issue: attention il y a des références brisées dans la figure.

**Mon avis / action proposée.** Le dernier journal local ne contient pas de référence indéfinie ; la figure 3 renvoie aux tables du corps. Vérifier le PDF Overleaf commenté avant de conclure que son export est corrigé.

### PY65 — Accepter le diagnostic

Cible approximative dans le source local : ligne 1281. Position exportée : 69312.

**Pierre-Yves Genest**:

> issue: paragraphe très bizarre. Tu l'as vraiment relu ? Tu es sûr que c'est pas le LLM qui n'est pas arrivé jusqu'au bout du travail

**Mon avis / action proposée.** La légende de codes raconte les limites du travail et allonge les tableaux. Compléter les vérifications et garder des valeurs clairement définies, sans transformer non vérifié en absent.

### PY66 — À préciser

Cible approximative dans le source local : ligne 1282. Position exportée : 69385.

**Pierre-Yves Genest**:

> ?

**Mon avis / action proposée.** Le codage « Only supported content (inferred) » nécessite une consigne ou un protocole attestant la restriction. Le ? ne fournit pas une contre-proposition précise.

### PY67 — Accepter partiellement

Cible approximative dans le source local : ligne 1294. Position exportée : 69982.

**Pierre-Yves Genest**:

> issue: tu listes oracle, permission scope. Où est observed status marking ?

**Pierre-Yves Genest**:

> egalement, je pense que si tu utilises des chiffres, des croix, ou des valeurs courtes en lieux et place des commentaires, tu pourrais gagner de la place et faciliter la lecture.

**Mon avis / action proposée.** Ajouter la couverture du required status marking μ aux tableaux. L’observed marking est une annotation de réponse, pas un champ du contrat du dataset. Des valeurs courtes sont possibles, mais distinguer documenté, absent dans le protocole examiné et non vérifié ; éviter les croix ambiguës et le retour aux sigles rejetés par l’auteur.

### PY68 — Accepter après inspection du rendu

Cible approximative dans le source local : ligne 1294. Position exportée : 70073.

**Pierre-Yves Genest**:

> issue: la légende a un style un peu bizarre par rapport aux autres figures/tableaux. Pas en gras, grosses marges sur le côté, etc.

**Mon avis / action proposée.** Harmoniser les légendes de longtable avec le style du journal. Le source contient déjà du gras dans le titre ; le commentaire peut viser le rendu Overleaf et ses marges.

### PY69 — Cible incertaine

Cible approximative dans le source local : ligne 1356. Position exportée : 76787.

**Pierre-Yves Genest**:

> ?

**Mon avis / action proposée.** Le ? est proche du groupe mixed-task/tool-use ; confirmer la sélection avant une modification substantielle. Vérifier l’utilité de ce regroupement pour le contrat.

### PY70 — Nuancer

Cible approximative dans le source local : ligne 1434. Position exportée : 83933.

**Pierre-Yves Genest**:

> ? pourquoi tu ne peux pas arriver à une réponse absolue ?

**Mon avis / action proposée.** Une réponse ferme est possible pour un protocole délimité et réellement audité. Elle ne découle pas d’un résumé ou d’un intitulé de tâche. Compléter les preuves au lieu de seulement enlever « we read/infer ».

### PY71 — Accepter sur le travail restant

Cible approximative dans le source local : ligne 1443. Position exportée : 84467.

**Pierre-Yves Genest**:

> ?

**Mon avis / action proposée.** La vérification du scope des ressources appartient à l’audit actuel, pas à un agenda futur. Terminer ce contrôle ou restreindre les conclusions.

### PY72 — Accepter

Cible approximative dans le source local : ligne 1453. Position exportée : 85022.

**Pierre-Yves Genest**:

> issue: pas précis du tout

**Mon avis / action proposée.** Préciser pourquoi abstention et status marking sont distingués et ce que les protocoles cités mesurent, ou réduire le passage si cette comparaison n’aide pas le mapping.

### PY73 — Recentrer

Cible approximative dans le source local : ligne 1463. Position exportée : 85607.

**Pierre-Yves Genest**:

> issue: pas convaincu de la pertinence

**Mon avis / action proposée.** Le mapping devrait prioriser les trois champs du contrat. Les résultats de style peuvent être secondaires ou regroupés avec leur motivation, sans détourner la conclusion principale.

### PY74 — Partiellement présent

Cible approximative dans le source local : ligne 1492. Position exportée : 87203.

**Pierre-Yves Genest**:

> issue: idem précédent : conclure la partie précédente et introduire cette section

**Mon avis / action proposée.** L’introduction présente déjà A–E et les invariants. Renforcer surtout le lien avec la conclusion du mapping ; ne pas répéter intégralement chaque exemple.

### PY75 — Accepter

Cible approximative dans le source local : ligne 1516. Position exportée : 88662.

**Pierre-Yves Genest**:

> issue: ce n'est pas une figure mais un tableau.

**Mon avis / action proposée.** L’actuelle figure 4 est techniquement et visuellement un tableau tabularx. La convertir en table et adapter les renvois, ou créer un vrai schéma si l’auteur souhaite garder une figure.

### PY76 — Alléger sans supprimer A

Cible approximative dans le source local : ligne 1531. Position exportée : 89515.

**Pierre-Yves Genest**:

> ? quelle utilité

**Mon avis / action proposée.** Le détour par XSum est facultatif. L’exemple A a une fonction : montrer la dépendance à la référence, distincte de la permission. Conserver cette fonction et retirer la motivation redondante.

### PY77 — Accord avec condition

Cible approximative dans le source local : ligne 1587. Position exportée : 92983.

**Pierre-Yves Genest**:

> A la rigueur ça peut être un élément intéressant. Le style ne doit pas impacter le résultat.

**Mon avis / action proposée.** La stabilité du label est utile si contrat, contenu et observed marking restent fixes. L’exemple E actuel change la consigne de style avec réponse identique ; il ne prouve pas la robustesse à une réécriture effective.

### PY78 — Fusionner

Cible approximative dans le source local : ligne 1595. Position exportée : 93557.

**Pierre-Yves Genest**:

> à supprmer

**Mon avis / action proposée.** La phrase rappelle une distinction utile mais répétée. La garder une seule fois dans l’explication du style et raccourcir la fin de E.

### PY79 — Déplacer

Cible approximative dans le source local : ligne 1599. Position exportée : 93748.

**Pierre-Yves Genest**:

> issue: je ne suis pas sûr que ça doive faire partie du corps du papier ?

**Mon avis / action proposée.** Le protocole complémentaire changeant la formulation appartient à l’agenda. Les exemples construits doivent rester centrés sur ce qu’ils illustrent.

### PY80 — Accepter

Cible approximative dans le source local : ligne 1608. Position exportée : 94176.

**Pierre-Yves Genest**:

> issue: idem parties précédentes, mieux lier et introduire la partie

**Mon avis / action proposée.** Introduire l’agenda à partir des usages rendus possibles par le contrat, pas par une nouvelle liste de doutes sur sa validité.

### PY81 — Priorité haute

Cible approximative dans le source local : ligne 1632. Position exportée : 95404.

**Pierre-Yves Genest**:

> issue:
> - je ne trouve pas le research agenda intéressant ou pertinent. Je pense que c'est trop concentré sur des points de détails. Tu n'évoques pas les datasets, la construction d'une méthode, l'application à un vrai cas d'usage, etc.
> - Egalement le research agenda est un sabotage en règle du papier. Tu verras quand tu liras, à chaque fois la research question correspond à un doute sur le papier et revient à dire "le papier tient ou au contraire il s'écroule" ?

**Mon avis / action proposée.** Restructurer l’agenda autour des jeux de données annotés, méthodes d’évaluation et cas d’usage. L’accord entre annotateurs et les comparaisons contrôlées deviennent des éléments de ces axes.

### PY82 — Accepter en partie

Cible approximative dans le source local : ligne 1662. Position exportée : 96846.

**Pierre-Yves Genest**:

> thought: pour moi ça aurait dû être un objectif du position paper. Définir les termes de façon suffisamment détaillée et précise pour que l'annotation ne soit plus un problème.

**Mon avis / action proposée.** Le papier doit fournir des définitions utilisables et des règles d’annotation. Même des définitions précises ne garantissent pas à elles seules l’accord entre annotateurs : ce point reste empirique.

### PY83 — Accepter

Cible approximative dans le source local : ligne 1663. Position exportée : 96881.

**Pierre-Yves Genest**:

> pourquoi faire référence au resource mapping ? Le research agenda va justement au delà de notre papier.

**Mon avis / action proposée.** La finition du resource mapping est une tâche de révision présente. Ne pas la présenter comme une nouvelle perspective scientifique.

### PY84 — Accepter la forme

Cible approximative dans le source local : ligne 1678. Position exportée : 97927.

**Pierre-Yves Genest**:

> issue: pas convaincu par la section "critical test" de chaque RQ

**Mon avis / action proposée.** Retirer les répétitions « Critical test » ; intégrer des comparaisons et mesures concrètes dans chaque axe. Garder la possibilité que les expériences contredisent les attentes.

### PY85 — Accepter

Cible approximative dans le source local : ligne 1682. Position exportée : 98155.

**Pierre-Yves Genest**:

> thought: au-delà de pouvoir faire des comparaison micro, on cherche aussi simplement à avoir un dataset pour évaluer tout court

**Mon avis / action proposée.** Prévoir un jeu de données d’évaluation à part entière, avec tâches/contrats/réponses/annotations, et pas seulement quelques paires illustratives.

### PY86 — Accepter

Cible approximative dans le source local : ligne 1706. Position exportée : 99655.

**Pierre-Yves Genest**:

> issue: hors du spectre du position paper

**Mon avis / action proposée.** La nouvelle échelle σ de style ajoute un concept provisoire peu nécessaire. La retirer de l’agenda et de l’annexe associée, en gardant un test de stabilité à contenu constant.

### PY87 — Accepter la reformulation, nuancer le vocabulaire

Cible approximative dans le source local : ligne 1781. Position exportée : 104037.

**Pierre-Yves Genest**:

> thought: je pense que l'idée générale de la section est intéressante : "on dissocie la réalité objective de la réalité subjective (ce que l'utilisateur spécifie" => Est-ce que c'est pertinent, est-ce que ça perturbe l'utilisateur, etc.
> Par contre le texte est difficile à lire, il faut reformuler

**Mon avis / action proposée.** Parler d’évidence et d’autorisation de la tâche. « Réalité subjective » serait trompeur : une instruction autorisant une fiction ne rend pas cette fiction vraie.

### PY88 — Priorité haute

Cible approximative dans le source local : ligne 1811. Position exportée : 105909.

**Pierre-Yves Genest**:

> issue: c'est un peu une limite du papier, honnêtement. Pourquoi est-ce qu'on rentre tant dans les détails sur le découpage en claim, la canonisation, la conservation du status marking, etc. tout super détaillé.
> Et de l'autre côté on n'explique pas comment agréger. C'est mystérieux pour moi.

**Mon avis / action proposée.** L’asymétrie est réelle. Une règle d’agrégation optionnelle existe déjà en annexe A : soit la rendre visible et en préciser la portée, soit assumer une contribution par claim et alléger nettement les détails techniques. Ne pas prétendre qu’aucune règle n’existe.

### PY89 — Refuser la suppression globale

Cible approximative dans le source local : ligne 1828. Position exportée : 106858.

**Pierre-Yves Genest**:

> supprimer le sabotage en règle

**Mon avis / action proposée.** Retirer les répétitions et formulations défensives, mais conserver une section de limites concise et factuelle. L’absence de validation empirique ne peut pas être effacée stylistiquement.

### PY90 — Accepter

Cible approximative dans le source local : ligne 1844. Position exportée : 107691.

**Pierre-Yves Genest**:

> thought: je pense qu'on pourrait viser une conclusion un peu plus longue. 10 lignes pour un papier de 28 pages, ça me paraît léger.

**Mon avis / action proposée.** La conclusion doit rappeler la position, les trois composantes, ce que les exemples montrent et les usages futurs. Sa longueur doit suivre ce contenu, sans remplissage.

### PY91 — Accepter sur la partie lisible

Cible approximative dans le source local : ligne 1846. Position exportée : 107792.

**Pierre-Yves Genest** — message signalé tronqué:

> truth contract composed of : ...

**Mon avis / action proposée.** Nommer explicitement O/référence et procédure, permission scope et required status marking dans la conclusion. Le complément du message tronqué n’est pas disponible.

### PY92 — Réduire et vérifier

Cible approximative dans le source local : ligne 1863. Position exportée : 108554.

**Pierre-Yves Genest**:

> thought: mouais, pas convaincu de la pertinence de l'appendice.
> Egalement, aligner les notations mathématiques (exemple : ici claim c'est "c" et pas "q")

**Mon avis / action proposée.** L’annexe peut accueillir la trace détaillée et l’agrégation ; retirer les développements périphériques. Une divergence c/q n’est pas établie par la seule remarque : le source actuel doit être contrôlé avant remplacement global.
