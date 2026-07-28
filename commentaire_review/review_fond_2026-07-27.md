# Note de review — fond du position paper

Lecture du `main_position.tex` du 27/07 (1004 l.) dans la position d'un relecteur *Computational Linguistics* qui n'a pas suivi les échanges précédents. Indépendante des commentaires Overleaf : ce sont les objections qui viendraient **en plus**.

Le papier est en bon état. Le déplacement de Related Work après le framework et la réécriture de l'abstract ont réglé les deux problèmes de lisibilité les plus visibles. Ce qui suit porte sur la solidité de la thèse, pas sur la rédaction.

---

## A. Le problème central : σ_p n'apparaît pas dans la règle de décision

C'est, de loin, l'objection la plus dangereuse, et c'est la version dure de ce que Pierre-Yves a formulé trois fois (#48, #49, #55).

La règle est :

```
V(c*|p) = SUP   si E(c*, O_p) = entailed
          LD    si E(c*, O_p) = unknown ∧ L(c*, K_p)=1 ∧ M(c*, s, K_p)=1
          Hall  sinon
```

`E` dépend de `O_p`. `L` et `M` dépendent de `K_p`. **`σ_p` n'apparaît nulle part.** Un relecteur formaliste lira donc : le contrat est annoncé comme un triplet `(O_p, σ_p, K_p)`, mais la fonction qui produit le label — le seul objet que le papier définit vraiment — n'en utilise que deux composantes. La conclusion naturelle est que σ_p n'appartient pas au contrat.

Le papier **a** la réponse, mais elle est enfouie dans une phrase de transition (l. 257) : « The diagnostic role of $\sigma_p$ is upstream of factual verification. » Autrement dit σ_p n'agit pas sur `V` mais sur `C(s,p)`, la fonction de récupération des claims, en amont. C'est une bonne réponse — elle transforme l'objection en choix de conception — mais elle n'est jamais posée comme telle.

**Correction recommandée**, la plus rentable de toute la liste :

1. Rendre l'argument de σ_p explicite dans la notation. Écrire la récupération `𝒞(s, p)` en faisant apparaître que σ_p en est un paramètre — ou, plus simple, ajouter une phrase encadrée : *« σ_p enters the pipeline at the claim-recovery stage; K_p and O_p enter at the labeling stage. The three components are therefore not redundant: they act at different points of the same pipeline. »*
2. Ajouter le pipeline à deux étages dans `fig:decision` : une bande « recovery (σ_p) » et une bande « labeling (O_p, K_p) ».
3. Le §3.2 « Faithfulness and alignment » nouvellement ajouté fournit l'appui empirique ; il faut juste le relier explicitement à cette structure en deux étages.

Sans cette clarification, l'ajout du §3.2 se lit comme une défense de σ_p par l'anecdote (« les juges LLM se trompent ») plutôt que par l'architecture.

## B. `κ_p` est-il dérivable de `Γ_p` ?

Même méthode d'attaque, autre cible. Dans la règle, la permission est portée par `L(c*, K_p)`, qui teste l'appartenance à `Γ_p`, et par `M`, qui teste `ρ_p`. **`κ_p` n'intervient pas non plus directement.** Le papier dit lui-même (l. 231) qu'une tâche factuelle-seulement a une portée vide : `κ_p=0 ⟺ Γ_p=∅`. Et `κ_p=2` correspond à `Γ_p =` le cadre déclaré.

Un relecteur demandera donc si `κ_p` n'est pas simplement une statistique résumée de `Γ_p`, conservée pour la commodité du tableau de mapping. Ce n'est pas fatal — un niveau ordinal grossier a une valeur descriptive réelle pour coder 40 ressources — mais il faut l'assumer plutôt que de le laisser découvrir : *« κ_p is a coarse ordinal summary of Γ_p, retained because it supports cross-resource comparison; Γ_p and ρ_p carry the decision. »*

Bonus : cette formulation désamorce aussi #44 (collision κ=1 / ρ) et #45 (confusion visuelle κ/K) en réduisant le poids conceptuel de κ.

## C. `unknown` porte trop de charge

`E(c*, O_p) = unknown` signifie « O_p ne soutient ni ne contredit ». Or trois situations très différentes s'y agrègent :

- indétermination réelle (l'archive est muette),
- échec de récupération (le vérifieur n'a pas trouvé la preuve qui existe),
- claim hors du domaine couvert par O_p.

Sous un contrat permissif, les trois produisent **LD**. Conséquence directe et exploitable contre le framework : *un système de vérification qui sous-récupère produit mécaniquement plus de LD, donc paraît meilleur.* C'est un incitatif pervers de mesure, et il est structurel, pas accidentel.

Le papier note bien (l. 304) que `unknown` « n'est pas un énoncé sur toute connaissance possible », mais ne traite pas le risque de mesure. Deux phrases suffisent, à placer en §2.5 ou en Discussion, et cela renforce plutôt que fragilise : montrer qu'on a vu le problème est un signe de maturité, et cela alimente le point 3 de l'agenda (diagnostic de pipeline).

## D. L'agrégation différée coûte cher au « so what »

Le papier définit soigneusement les labels au niveau claim et laisse `R(y|p)` ouvert (l. 333-339, agenda point 4, Discussion). C'est intellectuellement honnête. Mais tout consommateur réel d'une métrique d'hallucination a besoin d'un nombre par réponse, et un relecteur dira que la contribution s'arrête une marche avant l'utilisabilité.

**Suggestion peu coûteuse** : ne pas résoudre l'agrégation, mais en *exhiber une* sur l'exemple fil rouge — « sous la règle du pire cas, cette réponse est Hall ; sous la règle proportionnelle, 3/4 SUP-ou-LD » — en précisant que le choix reste ouvert. Cela montre que le framework produit des sorties exploitables, sans prétendre trancher.

## E. La base empirique est plus fragile que le cadre conceptuel

Le mapping des 40 ressources est le seul appui empirique, et il est : purposif, codé en une passe par un seul auteur, sans codebook public ni recodage indépendant. Le papier le dit (l. 628-629).

Pierre-Yves demande de retirer cette phrase (#64). **Je recommande de ne pas la retirer.** Un relecteur CL qui découvre par lui-même que l'annotation est mono-auteur et non mesurée réagira bien plus mal que face à une limite déclarée. Le vrai problème n'est pas la présence de l'aveu, c'est son **ton** : « interpretive annotations rather than measurements » et « would be required before treating it as a validated resource » se lisent comme des excuses.

Reformulation qui préserve l'honnêteté et supprime l'auto-dévalorisation :

> *The mapping is a purposive expert coding designed to test whether prominent resources represent the contract's variables. It is a scoping instrument, not a prevalence estimate; releasing it as a validated dataset would require a public codebook and independent recoding.*

Même contenu informationnel, posture inverse : on décrit un choix de méthode, on ne s'excuse pas d'une faiblesse.

## F. Le SOTA sur l'extraction de claims manque, et ce n'est pas un détail

Tout le framework repose sur une hypothèse implicite : **on sait décomposer une réponse en claims vérifiables.** Le papier cite `min_factscore_2023` et `bayat_factbench_2024` en passant, mais ne traite jamais l'extraction de claims comme un domaine avec ses résultats et ses limites connues.

C'est un problème de fond, pas une lacune bibliographique : si l'extraction est peu fiable — et la littérature montre qu'elle l'est, notamment sur les textes non littéraux, ce que le papier affirme par ailleurs en §2.3 — alors `𝒞(s,p)` est une fonction bruitée et tous les labels en aval héritent de ce bruit. Un relecteur peut retourner le §2.3 contre le papier : *vous démontrez vous-mêmes que l'extraction est sensible au style, donc votre unité d'analyse est instable.*

Il faut donc une sous-section courte en §3 qui (i) situe l'état de l'art de l'extraction/décomposition de claims, (ii) reconnaisse que sa fiabilité borne celle du framework, (iii) présente ce fait comme une motivation du point 3 de l'agenda plutôt que comme une faiblesse. C'est exactement la note d'encadrant « ajouter SOTA extraction de claim ».

## G. Ce que les figures ne font pas

Trois observations distinctes :

- **`fig:flip`** fait un travail précis et le fait bien depuis la refonte : *un même libellé, deux contrats, deux verdicts*. À garder tel quel.
- **`fig:decision`** est l'algorithme. Elle part de « model response ($y$) » : le prompt n'est pas un input. C'est le commentaire #61 et la note d'encadrant.
- **Aucune figure ne montre le passage prompt → réponse → plusieurs claims → plusieurs labels.** C'est pourtant la démonstration la plus convaincante possible du framework, et c'est ce que demande elod dans son commentaire tronqué #21 (« écrire un texte plus long, le découper en claims pour introduire les définitions »).

Cette troisième figure est le meilleur investissement restant. Voir le fichier `fil_rouge_prompt_claim.md` pour la proposition détaillée.

Note connexe : l'exemple fil rouge actuel (photosynthèse, σ_p=2, κ_p=0) **ne peut pas produire de LD**, puisque κ_p=0 interdit toute divergence licenciée. Le papier est donc obligé de recourir à un second exemple (Verdier) pour illustrer LD, et les deux ne se composent pas. C'est la raison structurelle pour laquelle il n'existe pas de fil rouge unique.

## H. L'ouverture agents manque

Le framework est mono-tour et centré prompt. Le papier évoque le multi-tour (l. 768, 828) mais jamais les agents ni l'usage d'outils. Or c'est là que le cadre devient le plus intéressant *et* le plus tendu :

- `O_p` cesse d'être fixé au départ : il est constitué en cours de trajectoire par les récupérations et les appels d'outils, donc le contrat est évalué contre une preuve qui n'existait pas au moment du prompt ;
- une tâche agentique se décompose en sous-tâches ayant chacune son propre `TC`, avec conflits possibles entre le contrat de l'utilisateur et celui d'un sous-agent ;
- `ρ_p` devient central : ce qu'un agent rapporte comme établi vs. conjecturé conditionne les actions en aval, donc le coût d'une violation de présentation n'est plus seulement épistémique.

Un paragraphe en Discussion ou un point 7 dans l'agenda. Bon rendement : c'est court, c'est actuel, et cela répond d'avance à « pourquoi ce cadre compte au-delà du QA ».

## I. Points mineurs mais visibles

- **`\emph{Outco}` × 5** dans Worked Cases (l. 729, 735, 742, 748, 754) — `\emph{Outcome:}` tronqué, présent dans le PDF compilé, antérieur à la review.
- **L'abstract ne mentionne plus SUP / Hall / LD.** La trichotomie est pourtant la contribution la plus concrète. Une clause suffit : « …a three-way claim-level label — supported, hallucination, or licensed divergence — rather than a binary one. »
- **Related Work arrive après ~15 pages de framework.** Le déplacement était juste, mais le lecteur attend longtemps avant de savoir en quoi cela diffère des taxonomies existantes. Un paragraphe de positionnement de 3 lignes en fin d'intro compense (et recoupe la demande #27 de Martino).
- **`simpletext_task2_2026`** est dans `references.bib` mais n'est **jamais cité** dans le `.tex` — alors que c'est précisément la référence CLEF réclamée en #47.
- **Worked Cases B-E** restent des constructions. Case A (XSum) est la seule ancrée dans une ressource documentée. La phrase d'honnêteté ajoutée l. 723 ne remplace pas des exemples réels.

---

## Priorisation

| Rang | Action | Pourquoi |
|---|---|---|
| 1 | Rendre explicite le pipeline à deux étages (σ_p en récupération, O_p/K_p en labellisation) — §A | Neutralise l'objection la plus dangereuse ; coût : un paragraphe + une bande dans la figure |
| 2 | Nouvelle figure prompt → claims → labels avec fil rouge unique — §G | Meilleur rendement pédagogique ; répond à #21, #61 et à la note d'encadrant |
| 3 | Sous-section SOTA extraction de claims — §F | Comble le trou qui permet de retourner §2.3 contre le papier |
| 4 | Assumer `κ_p` comme résumé ordinal de `Γ_p` — §B | Deux phrases, désamorce #44 + #45 |
| 5 | Reformuler la limite du mapping sans s'excuser — §E | Deux phrases, arbitre #64 sans céder sur la rigueur |
| 6 | Traiter le risque de mesure sur `unknown` — §C | Deux phrases, renforce l'agenda |
| 7 | Ouverture agents — §H | Un paragraphe, forte valeur perçue |
| 8 | Corriger `Outco` × 5, citer `simpletext_task2_2026`, clause labels dans l'abstract | Mécanique |
