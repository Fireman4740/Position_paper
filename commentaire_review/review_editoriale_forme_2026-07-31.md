# Review éditoriale — forme, lisibilité, organisation, anglais académique

**Manuscrit :** `main_position.tex` (1793 lignes, 30 p. compilées, dont ~17 p. de corps)
**Titre :** *Hallucination Evaluation Should Be Contract-Aware: Reference Evidence, Permission Scope, and Licensed Divergence*
**Cible :** *Computational Linguistics* — Position Paper
**Date :** 31 juillet 2026
**Périmètre :** forme uniquement. La nouveauté scientifique, la validité des cas et la justesse des résultats ne sont évaluées que lorsqu'un problème de contenu empêche directement la compréhension.

---

## A. Évaluation globale de la clarté

### Le message, reconstruit

**Problème.** L'évaluation des hallucinations projette généralement la relation d'un énoncé aux preuves de référence directement sur le label final. Une affirmation que les preuves n'impliquent ni ne contredisent est comptée comme hallucination par défaut.

**Position centrale.** Cette projection est incomplète. Un état de preuve `unknown` ne doit pas recevoir automatiquement le label hallucination. Le label doit dépendre du *contrat de vérité* de la tâche.

**Concepts principaux.** Contrat de vérité `TC(p) = (O_p, Γ_p, μ_p)` — preuves de référence, portée d'autorisation, marquage de statut requis ; trois labels d'énoncé (supported, hallucination, licensed divergence) ; codes de raison (`contradicted`, `out-of-scope`, `marking-failure`) ; niveau de marquage stylistique σ, variable séparée qui n'appartient pas au contrat ; variation stylistique préservant l'énoncé.

**Séquence de l'argument.** Problème → position + notation → justification contre une baseline factualité + suivi d'instruction → problème secondaire (récupération d'énoncés sous style marqué) → règle formelle → paradigmes voisins → cartographie de 40 ressources → 5 cas travaillés → agenda de recherche → discussion/limites → conclusion.

**Ce que le lecteur doit retenir.** `entailed → SUP`, `contradicted → H`, `unknown → LD` seulement si dans Γ et marqué comme μ l'exige, sinon `H` avec code de raison. Le style ne modifie jamais ce qui est autorisé.

### Cohérence

| Vérification | Verdict |
|---|---|
| Titre ↔ argument | Cohérent. Le titre annonce les trois champs du contrat et le label `LD` ; c'est exactement le contenu. |
| Résumé ↔ corps | Cohérent. Aucune affirmation du résumé n'est absente du corps. |
| Contribution annoncée ↔ sections | Cohérent. Les trois contributions (§1, ¶ *Contributions*) correspondent à §2, §4, §6. |
| Introduction ↔ conclusion | Cohérent, mais la conclusion reprend presque littéralement le résumé (voir §L). |

**Point fort majeur.** La discipline argumentative est remarquable. Le manuscrit ne contient aucun « however », « moreover », « indeed », « notably » ni « specifically ». Les connecteurs sont utilisés à bon escient, les affirmations sont systématiquement bornées, et l'auto-réfutation est explicite (critères de falsification). C'est rare et cela doit être préservé.

### Faiblesse principale d'organisation

**§2 est surchargée.** Elle contient 120 phrases, 6 sous-sections, les deux figures principales, une taxonomie d'échecs procéduraux référencée en §2.1 mais définie en §2.4, et une sous-section de reporting (§2.6) qui répète le dernier paragraphe de §2.4. Le lecteur y rencontre la chaîne de traitement avant d'avoir les définitions des échecs qui la peuplent.

**Définitions dispersées entre §2 et §3.** Le manuscrit l'admet lui-même : « Other response-level properties remain separate diagnostics, defined in Sections 2 and 3 » (l. 155). `usefulness` est utilisé en §1 (l. 119, 174) et en §2 (l. 534, 574) mais défini en §3.5 (l. 909). La distinction *claim extraction* / *claim recovery*, indispensable pour lire §2.3, est posée en §3.4 (l. 896–899). Les définitions atterrissent dans la section que les relecteurs survolent.

### Faiblesse principale de langue

**Les macros de label rendent des abréviations opaques en prose courante.** `\Hall` produit un « H » isolé, `\SUP` produit « SUP », `\LD` produit « LD ». Résultat, p. 8 :

> « **H** is the top-level label for every truth-contract violation, and the mandatory reason code, not a separate label, distinguishes the kind of violation. »
> « A **marking-failure** therefore receives **H** because the task authorized the content only under a status marking the response did not supply. »
> « A contradicted claim therefore receives **H** once the procedural prerequisites are satisfied. »

Une phrase qui commence par la lettre « H » impose au lecteur une résolution mémorielle à chaque occurrence — 34 occurrences de `\Hall`, 19 de `\SUP`, 29 de `\LD`. C'est la correction au plus fort rendement du manuscrit.

**Densité de dénégation.** ~222 tokens de négation et 105 occurrences de `separat*` sur 421 phrases de corps. Le manuscrit passe une part importante de son espace à dire ce qu'il n'est pas. La prudence est justifiée ; sa répétition ne l'est plus (voir §L).

### Faiblesse principale de terminologie

**Trois notions de « marking » coexistent** et leur voisinage lexical est la première source de confusion possible :

- `required status marking` μ_p (champ du contrat)
- `observed status marking` m\* (composante de l'énoncé canonique)
- `requested / observed style-marking level` σ_p / σ̂(y,p) (hors contrat)

Le manuscrit sépare correctement les concepts, mais les étiquettes partagent le mot « marking » et diffèrent par un qualificatif antéposé. En lecture rapide, `status marking` et `style-marking` sont quasi indiscernables.

**Aggravant :** `style marking` est employé dès le résumé (l. 82) et défini seulement l. 787 — soit après ~60 occurrences et 700 lignes.

**Clarté du message central : claire.**

---

## B. Scores

| Critère | Score | Justification |
|---|---:|---|
| Clarté du message central | **5** | Position explicite dès le résumé, reformulée l. 128, tenue jusqu'à la conclusion. Titre, résumé, contributions et sections concordent. |
| Organisation globale | **3** | Séquence macro correcte, mais §2 surchargée, définitions dispersées entre §2 et §3, sous-section §2.6 redondante avec la fin de §2.4. |
| Transitions | **4** | Les transitions inter-sections §4→§5, §5→§6, §6→§7 sont exemplaires. Manquent celles de §1→§2, §3→§4, et entre §2.1–§2.4. |
| Introduction des concepts | **3** | ~10 symboles introduits en 25 lignes dans §1 ; `y` utilisé l. 159 et défini l. 349 ; `style marking` défini 700 lignes après son premier emploi ; échecs procéduraux invoqués l. 379 et définis l. 499. |
| Qualité des définitions | **4** | Définitions précises, non circulaires, bien délimitées par contraste. Faiblesses : `nominal task profile` jamais défini, `procedural failure` défini par énumération après usage, `evaluation resource` défini l. 932 mais utilisé l. 84. |
| Cohérence terminologique | **3** | Aucun synonyme fautif détecté — le vocabulaire est stable. Mais la proximité lexicale `status marking` / `style-marking` et le trio μ / m\* / σ imposent une charge élevée. |
| Cohérence des paragraphes | **4** | Bonne dans §3–§7. Problématique en §2.1 (premier paragraphe = 5 fonctions distinctes) et §4.2 (paragraphe de 6 mises en garde successives). |
| Lisibilité des phrases | **3** | Moyenne 19,4 mots ; 19,0 % > 25 mots ; 10,0 % > 30 mots. Concentration en §4 (32 % > 25 mots) et Annexe A (27 %). |
| Anglais académique | **4** | Correct, idiomatique, sans jargon inutile, sans nominalisation excessive. Pénalisé par les abréviations en prose et quelques attachements ambigus. |
| Clarté des figures et tableaux | **3** | Fig. 1 excellente. Fig. 2 dense mais navigable. Fig. 3 : légende sur-affirmée par rapport à ce que la figure encode, encadré « highlighted » visuellement invisible (`draw=red!8`), aucune légende de couleurs. |
| Lisibilité globale | **3** | Le lecteur peut suivre, mais doit relire §2.1 et §2.4, et retenir 15+ termes nouveaux avant §3. |

---

## C. Cinq révisions prioritaires

### 1. Supprimer les abréviations de label de la prose courante

**Localisation.** Partout : §1 (l. 130–147, 171, 193), §2.4 (l. 519–560), §2.6, §5, §6, §7, §8, légendes de Fig. 1–2.

**Problème.** `\Hall` rend « H ». Une lettre isolée en position sujet (« H is the top-level label… ») force une résolution mémorielle. `\SUP` et `\LD` sont moins graves mais participent du même coût.

**Action recommandée.** Garder les abréviations **uniquement** dans les figures, les tableaux et les listes formelles (`\item[...]` de la règle l. 518–533). En prose, employer les noms complets, avec l'abréviation entre parenthèses à la première occurrence de chaque section :

```
% Avant
\Hall\ is the top-level label for every truth-contract violation, and the
mandatory reason code, not a separate label, distinguishes the kind of violation.

% Après
The hallucination label is the single top-level label for every truth-contract
violation. The kind of violation is recorded by the mandatory reason code, not
by a separate label.
```

Solution technique minimale, sans toucher aux figures :

```latex
\newcommand{\Hall}{\textsc{hall}}   % au lieu de \textsc{H}
\newcommand{\SUP}{\textsc{sup}}
\newcommand{\LD}{\textsc{ld}}
```

Puis réécrire les ~15 phrases où l'abréviation occupe la position sujet.

**Amélioration attendue.** La plus forte du manuscrit. Élimine un coût de décodage réparti sur ~80 occurrences, concentrées dans la section la plus dense.

---

### 2. Définir `style marking` avant son premier emploi

**Localisation.** Premier emploi : résumé l. 82. Définition : §2.5, l. 787–792.

**Problème.** Le lecteur rencontre « requested and observed style-marking levels » dans le résumé, puis « style-marking level » 12 fois dans §1, sans savoir si « style » désigne un registre nommé (formel/familier), un auteur, ou un degré. La définition (« a noticeable departure from minimally marked wording through devices such as deviation or repetition ») arrive après la règle d'étiquetage complète.

**Action recommandée.** Ajouter une glose d'une phrase dans §1, au ¶ *A secondary problem* (l. 176–189), juste avant la première occurrence de σ :

> By *style marking* we mean the degree to which the wording departs from minimally marked prose through devices such as metaphor, deviation, or parallelism; it is a matter of degree, not the identity of a named style.

Puis, en §2.5, remplacer la définition l. 787–792 par un simple rappel et passer directement à l'échelle à trois niveaux.

**Amélioration attendue.** Supprime l'ambiguïté la plus coûteuse du résumé et de §1, et évite que le lecteur confonde σ avec μ pendant 700 lignes.

---

### 3. Restructurer §2 : échecs procéduraux d'abord, reporting une seule fois

**Localisation.** §2.1 (l. 347–386), §2.4 (l. 498–507 et l. 568–576), §2.6 (l. 824–831).

**Problème.**
- §2.1 (l. 379–386) invoque *span-selection failure*, *claim recovery failure*, *canonicalization failure*, *contract-specification failure*, *reference-evidence adequacy failure*, *adjudication failure* et *procedural failure* — sept notions non définies. Leurs définitions arrivent l. 480–487 et l. 498–507.
- §2.4 se termine (l. 568–576) par un paragraphe sur le reporting au niveau réponse. §2.6 (l. 824–831) reprend le même contenu en cinq lignes. L'annexe A (l. 1583–1586) le répète une troisième fois, et l'agenda Priorité 4 une quatrième.

**Action recommandée.**

1. Découper §2.1 en deux : (a) un paragraphe d'orientation qui donne l'exemple photosynthèse et la chaîne, sans mentionner les échecs ; (b) déplacer les phrases l. 379–386 vers un nouveau §2.4.1 *Procedural prerequisites and failure modes*, placé **avant** la règle d'étiquetage.
2. Supprimer le paragraphe l. 568–576 de §2.4 et le fusionner dans §2.6.
3. Réduire l'annexe A l. 1583–1586 à un renvoi : *« Reporting requirements are stated in Section 2.6. »*

**Amélioration attendue.** Le lecteur ne rencontre plus de terme technique non défini dans la section qui porte la contribution centrale. Économie nette : ~10 lignes.

---

### 4. Alléger la charge notationnelle de l'introduction

**Localisation.** §1, ¶ *Our position*, l. 127–162.

**Problème.** Dix symboles sont introduits en 25 lignes : *claim*, *response span* `s`, `x`, `p`, `TC(p)`, `O_p`, `Γ_p`, `μ_p`, `SUP`/`H`/`LD`, `σ_p`, `σ̂(y,p)`. Trois défauts précis :

- `s` est défini l. 135 puis **redéfini** l. 446 (« Let `s` denote a response span »), et n'apparaît jamais dans une formule du corps ;
- `x` est défini l. 136, n'est réutilisé qu'une fois (l. 398) et dans les figures ;
- `σ̂(y,p)` est employé l. 159 alors que `y` n'est défini que l. 349.

**Action recommandée.**
- Supprimer `s` et `x` de §1. Introduire `s` seulement en §2.3 (l. 446, où il est déjà redéfini) et `x` seulement en §2.2 (l. 398, où le contraste `x` vs `p` est utile) et dans les légendes de figures.
- En §1, écrire « the observed style-marking level of the response » en toutes lettres et réserver la notation `σ̂(y,p)` à §2.5, une fois `y` défini.
- Conserver `TC(p)=(O_p,Γ_p,μ_p)` et les trois labels : ils portent la position.

**Amélioration attendue.** Passe de 10 à 6 symboles dans §1. Élimine deux emplois-avant-définition.

---

### 5. Corriger la figure 3 : légende, saillance, légende de couleurs

**Localisation.** Fig. 3, l. 1018–1136 ; p. 14 du PDF.

**Problèmes.**
- **Sur-affirmation.** La légende ouvre par « In our selected sample, no resource separately represents reference evidence, permission scope, and required status marking while also controlling claim-preserving style variation. » Or la figure n'encode que **deux** dimensions (profil de tâche × traitement de σ). Γ et μ n'y apparaissent pas. Le lecteur cherche dans la figure une information qu'elle ne contient pas.
- **L'encadré « highlighted » n'est pas saillant.** `draw=red!8` produit un contour quasi blanc ; l'encadré « No selected resource » est l'élément le **moins** visible de la figure alors que la légende le désigne comme « the highlighted box ». Il s'agit très probablement d'une coquille pour `red!80`.
- **Aucune légende de couleurs.** Six couleurs d'encadrés sans clé de lecture ; le lecteur suppose un codage sémantique qui n'existe pas.
- **Lien vertical invisible.** L'encadré du manque est en haut à gauche, le cluster « Strict grounding » en bas à gauche. Rien ne montre que le premier est la case vide de la colonne du second.

**Action recommandée.**
- `draw=red!8` → `draw=red!70`, et ajouter un filet vertical pointillé reliant l'encadré du manque au cluster *Strict grounding*.
- Réécrire la première phrase de la légende pour ne décrire que ce que la figure montre :
  > **Selected resources by nominal task profile and treatment of requested style-marking level.** Each box groups resources that share a task profile (horizontal) and a treatment of requested style-marking level (vertical). No selected strict grounding resource manipulates requested style-marking level while holding canonical claim content fixed; the empty region at the top left marks that absence. The broader observation — that no selected resource separately represents all three truth-contract fields while also controlling claim-preserving style variation — is established by Appendix B, not by this figure.
- Ajouter une ligne de légende : *Box color indicates nominal task profile only.*

**Amélioration attendue.** La figure cesse de promettre plus qu'elle ne montre, et l'élément qu'elle est censée mettre en avant devient visible.

---

## D. Structure recommandée

L'ordre macro est bon. Les modifications portent sur §2 et sur la localisation de trois définitions.

```
1. Introduction                                        [inchangé, allégé — voir C.4]
   1.1 Le problème et son enjeu
   1.2 Ce que les protocoles actuels ne représentent pas
   1.3 Notre position  ← Figure 1 immédiatement après (voir §H)
   1.4 Pourquoi un contrat plutôt que factualité + suivi d'instruction
   1.5 Un problème secondaire : récupération d'énoncés sous style marqué
       + glose de « style marking » (voir C.2)
   1.6 Cartographie et cas travaillés
   1.7 Contributions
   1.8 Organisation

2. A Contract-Aware Claim Labeling Rule
   2.1 Overview: from a response span to a claim label  [échecs retirés]
   2.2 The truth contract
   2.3 Unit of analysis, claim recovery, and canonicalization
       + NOUVEAU : distinction claim extraction / claim recovery   ← déplacé de §3.4
   2.4 Procedural prerequisites and failure modes        ← NOUVELLE sous-section
   2.5 From evidence state to claim label                [reporting retiré de la fin]
   2.6 Requested and observed style-marking levels
   2.7 Claim-level reporting and separate diagnostics    [seul lieu du reporting]
       + NOUVEAU : définition de usefulness              ← déplacé de §3.5

3. Related Evaluation Paradigms                          [allégé des définitions déplacées]
4. Purposive Mapping of Evaluation Resources             [+ phrase d'ouverture, voir §H]
5. Worked Cases                                          [inchangé]
6. Research Agenda                                       [scaffolding allégé, voir §J]
7. Discussion                                            [+ phrases-sujets, voir §J]
8. Conclusion                                            [désindexé du résumé, voir §L]
```

**Rien à déplacer en annexe.** Rien à remonter de l'annexe. Les annexes A et B sont correctement dimensionnées.

---

## E. Revue section par section

### Résumé

**Objet.** Poser le problème, la position, le contrat, la preuve empirique et le critère de réfutation.

**Points forts.** Aucun acronyme, aucun symbole mathématique. Le critère de falsification en clôture est excellent et rare dans un position paper.

**Problèmes de clarté.**
- 12 phrases, 21,6 mots en moyenne, plus longue à 40 mots. Deux phrases portent trois affirmations chacune (l. 77–81 et l. 82–83).
- Rupture de parallélisme : « receives **the supported label** », « receives **the hallucination label** », puis « receives **licensed divergence** » (sans « the … label »). Le lecteur ne sait pas si `licensed divergence` est un label ou une propriété.
- « style-marking levels » (l. 82) et « claim recovery » (l. 83) sont des termes techniques non glosés.

**Définitions manquantes.** `style marking`.

**Révisions.** Voir §M (résumé réécrit).

---

### §1 Introduction

**Objet.** Motiver, poser la position, la distinguer d'une baseline, annoncer les preuves.

**Points forts.** Le contraste médecin/fiction (l. 110–113) est la meilleure page pédagogique du manuscrit : deux phrases, aucun formalisme, la distinction est acquise. Le ¶ *Why a truth contract rather than…* est exactement la bonne objection anticipée, posée au bon endroit.

**Problèmes de clarté.**
- Surcharge notationnelle (voir C.4).
- L'abréviation `SUP` apparaît l. 130 et n'est glosée qu'l. 141 ; `H` apparaît l. 130 et est glosé l. 143. Onze lignes d'écart, dans le paragraphe qui porte la position.
- Figure 1 est annoncée l. 191, soit **deux paragraphes après** la position qu'elle illustre, séparée d'elle par la discussion de la baseline puis par le problème stylistique. Or Fig. 1 ne parle pas de style — elle isole la portée d'autorisation.
- Le ¶ *Organization* (l. 335–341) omet la conclusion et les annexes.

**Transitions manquantes.** §1 → §2 (voir §H).

**Révisions.** C.2, C.4 ; déplacer l'annonce de Fig. 1 à la fin du ¶ *Our position*.

---

### §2 A Contract-Aware Claim Labeling Rule

**Objet.** Définir le contrat, la récupération d'énoncés, la canonicalisation, la règle d'étiquetage et le contrôle d'alignement stylistique.

**Points forts.** §2.2 est excellente : les trois champs sont introduits par trois questions en langue naturelle (« What evidence is used? What content may extend beyond that evidence? How must such content be marked? ») avant toute formule. C'est le modèle à imiter ailleurs. §2.4 (règle en trois items + précédence des codes de raison) est parfaitement spécifiée. La clause sur les refus traités comme méta-énoncés (l. 562–566) anticipe une objection sérieuse.

**Problèmes de clarté.**
- Sept notions d'échec invoquées avant définition (C.3).
- §2.4 ouvre sur une phrase de 35 mots qui est aussi la thèse de la section : « Evidence state alone determines the claim label for `entailed` and `contradicted` claims, but not for claims with evidence state `unknown`, which additionally require the permission-scope and required-status-marking checks. »
- Glissement catégoriel l. 546 : « A `marking-failure` therefore receives `H` » — un *code de raison* ne peut pas recevoir un label ; c'est l'énoncé qui le reçoit. Corriger.
- Décalage l. 498 : « three procedural prerequisites hold », suivi de trois **échecs**. Le lecteur doit inverser mentalement.
- La chaîne affichée l. 366–378 (`\[ \begin{aligned} … \]`) place huit étapes dans un environnement mathématique. Une liste numérotée serait plus lisible et permettrait le renvoi étape par étape.
- §2.6 duplique la fin de §2.4.
- Phrase orpheline l. 578–579 : « Figure 2 illustrates the complete procedure on a constructed example. » Un paragraphe d'une phrase, sans indication de ce qu'il faut y observer.

**Définitions manquantes ou tardives.** `procedural failure` (usage l. 380, définition l. 480) ; `evaluator` (usage résumé l. 75, définition l. 350) ; `y` (usage l. 159, définition l. 349).

**Révisions.** C.1, C.3 ; corriger l. 546 et l. 498 ; convertir la chaîne l. 366–378 en liste ; étoffer l'amorce de Fig. 2.

---

### §3 Related Evaluation Paradigms

**Objet.** Positionner la règle par rapport à cinq littératures voisines.

**Points forts.** Le paragraphe d'ouverture (l. 837–844) annonce les quatre composantes et la question spécifique — bon cadrage. §3.3 et §3.4 s'ouvrent sur d'authentiques transitions logiques (« Fixing the reference evidence does not yet determine which propositions the response commits to », « Operationalizing contextual commitment requires a reliable unit of verification »). C'est le meilleur enchaînement du manuscrit.

**Problèmes de clarté.**
- Deux définitions structurantes sont enterrées ici : `usefulness` (l. 909–913) et la distinction `claim extraction` / `claim recovery` (l. 896–899). Toutes deux sont nécessaires pour lire §2. Les remonter (voir §D).
- §3.1, §3.2, §3.5, §3.6 s'ouvrent sans transition depuis la sous-section précédente.
- §3.6 (l. 920–928) fait 3 phrases. Trop courte pour justifier un titre de sous-section ; fusionner avec §3.5 ou l'étoffer.

**Révisions.** Déplacer deux définitions ; ajouter quatre transitions (voir §H).

---

### §4 Purposive Mapping of Evaluation Resources

**Objet.** Décrire le codage de 40 ressources et identifier la combinaison absente.

**Points forts.** Honnêteté méthodologique exemplaire : « not a systematic review, representative sample, or prevalence estimate » (l. 943–944), « Because this position paper does not document a search date, search queries, or an independent recoding procedure… » (l. 945–947). Un relecteur ne pourra pas reprocher une sur-généralisation.

**Problèmes de clarté.**
- **Section la moins lisible du manuscrit** : 21,7 mots par phrase, 32,4 % au-delà de 25 mots, 17,6 % au-delà de 30.
- Ouverture abrupte : « The unit of analysis is the evaluation resource. » Aucune phrase ne dit pourquoi une cartographie est nécessaire ici ni à quelle question elle répond.
- `nominal task profile` : les cinq valeurs sont énumérées dans la question 4 du protocole (l. 958–959), mais le terme n'est jamais défini. L. 971 dit seulement ce qu'il ne fait pas (« never enter the claim-labeling rule »).
- Le ¶ *Missing combination* (l. 1000–1015) enchaîne six réserves successives. Le résultat principal de la section est noyé.
- Fig. 3 (voir C.5 et §K).

**Révisions.** C.5 ; ajouter une phrase d'ouverture (voir §H) ; définir `nominal task profile` en une phrase ; scinder les phrases de 40+ mots (voir §I).

---

### §5 Worked Cases

**Objet.** Montrer le comportement de la règle à ses frontières.

**Points forts.** **La meilleure section du manuscrit sur le plan de la forme.** 16,9 mots par phrase, **zéro** phrase au-delà de 30 mots. Le patron *Fixed / Changed / Predicted result* est immédiatement lisible et parfaitement parallèle sur les cinq cas. La mise en garde d'ouverture (l. 1149–1150) est correctement calibrée.

**Problèmes de clarté.** Aucun significatif. Deux points mineurs :
- Case A n'utilise pas le gras `\textbf{Fixed.}` sur la même ligne que les autres (l. 1155 vs 1156) — vérifier la régularité typographique du rendu.
- L'annonce l. 1147–1148 (« Case A instantiates a documented distinction in summarization; Cases B–E are constructed specification checks ») pourrait précéder la liste plutôt que la suivre.

**Révisions.** À préserver telle quelle. Utiliser cette section comme référence de style pour réviser §4.

---

### §6 Research Agenda

**Objet.** Convertir les limites en programme de validation falsifiable.

**Points forts.** Le préambule (l. 1213–1228) donne la logique de séquence avant les priorités — bon. Chaque priorité se termine par un critère de falsification symétrique (ce qui soutiendrait / ce qui affaiblirait). C'est la marque d'un position paper sérieux.

**Problèmes de clarté.**
- **Échafaudage typographique lourd.** Sept priorités × quatre sous-titres = 28 mini-titres en `\noindent\textbf{…}\par`, chacun sur sa propre ligne, chacun suivi d'une à cinq phrases. Sur ~9 pages, l'effet est celui d'un formulaire. Envisager de fusionner *Research problem* et *Why it matters* en un seul bloc pour les priorités 4 à 7, où le contenu est plus court.
- Le protocole anti-circularité (« independently adjudicated gold claim labels, apply the same claim recovery procedure and reference evidence, specify decision thresholds before evaluation ») est énoncé l. 1225–1228 puis re-énoncé quasi mot pour mot l. 1285–1287. Supprimer la seconde occurrence.
- 23,8 % des phrases dépassent 25 mots.

**Révisions.** Alléger l'échafaudage ; supprimer la répétition l. 1285–1287.

---

### §7 Discussion

**Objet.** Implications d'évaluation, résultats d'impossibilité, limites.

**Points forts.** Le traitement des bornes théoriques (l. 1448–1458) est nuancé et correctement borné : « These results rely on different assumptions; none alone implies a constant deployment error rate. » Les six limites sont numérotées, distinctes, et chacune est appariée à une garantie.

**Problèmes de clarté.**
- §7.1 ouvre sur deux paragraphes de deux phrases sans phrase-sujet. Le lecteur ne sait pas ce que la sous-section entend établir.
- Le ¶ *Avoiding indiscriminate suppression* commence directement par « `\citet{kalai_calibrated_2024}` derive a statistical lower bound… ». Trois résultats sont empilés avant que leur pertinence pour l'argument soit énoncée. La phrase qui la donne (l. 1460) arrive après.

**Révisions.** Voir §J.

---

### §8 Conclusion

**Objet.** Réaffirmer la position et le test empirique immédiat.

**Points forts.** Courte (7 phrases), ne contient aucun concept nouveau, se termine sur le test empirique plutôt que sur une généralité.

**Problèmes de clarté.** Reprise trop littérale du résumé. Comparer :

> **Résumé, l. 78–81 :** « A claim that the reference evidence leaves unknown receives licensed divergence only when it lies inside the permission scope and its observed status marking satisfies the required status marking; otherwise it receives the hallucination label with a recorded reason code. »
> **Conclusion, l. 1516–1518 :** « A claim with evidence state `unknown` receives `LD` only when it falls within the permission scope and is marked as required; otherwise it receives `H` with a reason code. »

**Révisions.** Voir §L.

---

### Annexes A et B

**Objet.** Test de stabilité formel ; codage complet des 40 ressources.

**Points forts.** Le vocabulaire de codage fermé (l. 1604–1650) rend la cartographie inspectable. C'est ce qui distingue une cartographie défendable d'une impression.

**Problèmes de clarté.**
- Annexe A : 22,5 mots par phrase, 20 % au-delà de 30 mots. La phrase l. 1553–1557 fait 66 mots et contient à la fois la condition de stabilité et la condition d'égalité des ensembles. À scinder.
- Annexe A répète les prescriptions de reporting déjà données en §2.6 et en Priorité 4.
- Annexe B : les colonnes « Requested style-marking treatment » et « Γ / μ » sont quasi constantes (« not controlled » / « Γ: inferred empty, μ: not scored » sur 21 lignes consécutives). Envisager une note de tableau — *« Unless otherwise noted, requested style-marking treatment is "not controlled", Γ is "inferred empty", and μ is "not scored". »* — et ne remplir que les exceptions. Gain : ~30 % de largeur, lisibilité nettement accrue.

---

## F. Audit des concepts et des définitions

### F.1 Inventaire

| Concept / terme | 1ʳᵉ occurrence | Lieu de définition | Employé avant définition ? | Problème principal | Révision requise |
|---|---|---|---|---|---|
| `claim` | l. 69 (résumé) | l. 134 (§1) | Oui (résumé) | Acceptable pour un résumé | Aucune |
| `truth contract` | l. 75 (résumé) | l. 138 + éq. (1) l. 392 | Non | — | Aucune |
| `reference evidence` O_p | l. 69 | l. 139, 412–418 | Non | — | Aucune |
| `permission scope` Γ_p | l. 75 | l. 140, 420–429 | Non | — | Aucune |
| `required status marking` μ_p | l. 75 | l. 140, 431–439 | Non | Voisinage lexical avec `style-marking` | Voir §G |
| `supported` / `SUP` | l. 75 / **l. 130** | l. 141 | Oui (11 lignes) | Abréviation avant glose | Gloser à l. 130 |
| `hallucination label` / `H` | l. 74 / **l. 130** | l. 143 | Oui (13 lignes) | Idem + lettre isolée en prose | **C.1** |
| `licensed divergence` / `LD` | l. 77 / l. 144 | l. 144 | Non | Rupture de parallélisme au résumé | Écrire « the licensed-divergence label » |
| `evidence state` | l. 128 | l. 509–513 | Oui (381 lignes) | Employé dès §1 sans dire ce qu'est un « état » | Ajouter une glose l. 128 |
| `entailed` / `contradicted` / `unknown` | l. 130 | l. 495–496, 510–513 | Oui | Réservation explicite (l. 495) arrive tard | Avancer la réservation en §1 |
| `response span` `s` | l. 135 | l. 135 puis **redéfini** l. 446 | — | Double définition ; `s` jamais utilisé en formule | **C.4** — retirer de §1 |
| prompt littéral `x` | l. 136 | l. 136 | — | Réutilisé une seule fois | **C.4** — retirer de §1 |
| task context `p` | l. 136 | l. 136, 398 | Non | — | Aucune |
| réponse `y` | **l. 159** | l. 349 | **Oui (190 lignes)** | `σ̂(y,p)` employé avant que `y` existe | **C.4** |
| `reason code` | l. 81 | l. 143–147, 522–530 | Partiellement | — | Aucune |
| `canonicalization` / `c*=(q*,m*)` | l. 337 | l. 356–358, 451–456 | Renvoi explicite l. 148 | — | Aucune |
| `claim recovery` | l. 83 (résumé) | l. 447–448, 458–464 | Oui | Distinction avec `claim extraction` en §3.4 | Remonter en §2.3 |
| `claim extraction` | l. 882 | l. 896–899 | Non | Placé en §3, nécessaire pour §2 | Remonter en §2.3 |
| `style-marking level` σ_p | l. 82 (résumé) | l. 775–783 | Oui (693 lignes) | Voir ci-dessous | **C.2** |
| **`style marking`** | **l. 82** | **l. 787–792** | **Oui (705 lignes)** | **Concept le plus tardivement défini du manuscrit** | **C.2 — priorité** |
| `observed style-marking level` σ̂ | l. 82 | l. 800–805 | Oui | Dépend de `y`, non défini | **C.4** |
| `style-marking alignment` | l. 83 | l. 802–805 | Oui | Nom long, abrégé en cours de route (l. 803) | Aucune |
| `claim-preserving style variation` | l. 87 | l. 185, 472–477 | Partiellement | Deux définitions (informelle l. 185, formelle l. 472) | Renvoyer explicitement de l'une à l'autre |
| `stylistic foregrounding` | l. 179 | jamais | Oui | 1 seule occurrence, terme de stylistique non glosé | Supprimer ou gloser |
| `procedural failure` | **l. 380** | l. 480–482 | **Oui (100 lignes)** | Invoqué dans la chaîne avant existence | **C.3** |
| `contract-specification failure` | l. 382 | l. 499–500 | Oui | Idem | **C.3** |
| `reference-evidence-adequacy failure` | l. 383 | l. 501–502 | Oui | Idem | **C.3** |
| `adjudication failure` | l. 384 | l. 503–504 | Oui | Idem | **C.3** |
| `evaluator` | l. 75 (résumé) | l. 350 | Oui | Acceptable | Aucune |
| `usefulness` | l. 119 | **l. 909–911 (§3.5)** | **Oui (790 lignes)** | Défini dans Related Work, employé en §1 et §2 | Remonter en §2.7 |
| `severity` | l. 559 | l. 559–560 | Non | — | Aucune |
| `claim-recovery coverage` | l. 569 | l. 570–572 | Non | — | Aucune |
| `error localization` | l. 1222 | l. 1223–1224 | Non | — | Aucune |
| `evaluation resource` | l. 84 (résumé) | l. 932–936 | Oui (848 lignes) | Acceptable, mais le résumé dit « evaluation resources » sans glose | Écrire « forty benchmarks, datasets, and evaluation protocols » au résumé |
| `nominal task profile` | l. 957 | **jamais** | — | **Terme structurant jamais défini** ; seules ses 5 valeurs sont listées | Ajouter une phrase de définition |
| `meta-claim` | l. 563 | l. 563–565 | Non | — | Aucune |
| `strict grounding` | l. 71 (résumé) | jamais formellement | Oui | Compréhensible par contexte ; c'est aussi une valeur de profil | Gloser au premier emploi en §4 |
| `declared frame` | l. 537 | l. 1608 (vocabulaire) | Oui | Employé en §2.4, §4, §5 avant le vocabulaire de codage | Gloser l. 537 |

### F.2 Qualité des définitions

Les définitions du manuscrit sont, dans l'ensemble, **d'un niveau supérieur à la moyenne**. Aucune n'est circulaire. Toutes précisent leur unité d'analyse. La plupart sont délimitées par contraste explicite avec un concept voisin. Les quatre problèmes ci-dessous sont les seuls significatifs.

---

**Définition 1 — `style marking`**

**Définition actuelle (l. 787–792) :**
> « Here, *style marking* means a noticeable departure from minimally marked wording through devices such as deviation or repetition. It may be lexical, syntactic, phonological, or discourse-level; metaphor is only one possible form. »

**Problème.** La définition est correcte mais arrive après ~60 usages. De plus, elle est partiellement circulaire dans sa formulation : *style marking* est défini comme un écart par rapport à un *minimally marked* wording, et « minimally marked » n'est glosé qu'implicitement par le niveau σ=0 (l. 780), lui-même défini par « minimal rhetorical transformation and no salient authorial voice ». Le lecteur tourne en rond entre σ=0 et la définition.

**Définition intuitive simplifiée :**
> Style marking is how much the wording calls attention to itself. Plain expository prose is minimally marked; sustained metaphor or a strong authorial voice is heavily marked.

**Définition formelle recommandée :**
> *Style marking* is the degree to which the wording of a response departs from plain expository prose. The departure may be lexical, syntactic, phonological, or discourse-level, and it may be produced by devices such as deviation, parallelism, repetition, or metaphor. Style marking is a matter of degree; it is not the identity of a named style, and it is not evidence of factual error.

**Exemple requis.** Une paire minimale de deux phrases exprimant le même contenu, l'une à σ=0 et l'autre à σ=2. Le manuscrit en possède déjà une (Case E, l. 1197–1199) — la remonter ou y renvoyer.

---

**Définition 2 — `nominal task profile`**

**Définition actuelle.** Aucune. Les cinq valeurs sont listées dans la question 4 du protocole (l. 958–959) ; l. 971 précise seulement : « The profiles are nominal descriptions and never enter the claim-labeling rule. »

**Problème.** Le terme structure la figure 3 et les trois tableaux de l'annexe B. Le lecteur doit inférer qu'un « profil » est une catégorie descriptive attribuée par les auteurs à chaque ressource, et non une propriété déclarée par la ressource elle-même.

**Définition intuitive simplifiée :**
> A nominal task profile is our own shorthand label for the kind of task a resource evaluates.

**Définition formelle recommandée :**
> A *nominal task profile* is a categorical label that we assign to each resource to summarize the kind of task it evaluates. Profiles are descriptive groupings introduced for this mapping; they are not claimed by the original resources, they are not ordered, and they never enter the claim-labeling rule.

**Exemple requis.** Une ressource par profil, avec la raison du classement (FEVER → strict grounding parce que la vérification se fait contre Wikipédia sans autoriser de contenu non attesté).

---

**Définition 3 — `procedural failure` et les trois échecs de contrat**

**Définition actuelle (l. 480–482, 498–504) :**
> « Span-selection, claim recovery, canonicalization, and matching errors are procedural failures. »
> « A claim label is assigned only after three procedural prerequisites hold. A *contract-specification failure* occurs when… »

**Problème.** Trois défauts. (a) La première est une définition par extension : elle énumère quatre cas sans dire ce qui fait qu'une erreur est « procédurale ». (b) Les deux définitions sont séparées de 18 lignes alors qu'elles relèvent du même dispositif, et §2.1 les invoque toutes les deux 100 lignes plus tôt. (c) L. 498 annonce trois *prérequis* et énumère trois *échecs* — le lecteur doit effectuer la négation lui-même.

**Définition intuitive simplifiée :**
> A procedural failure means the evaluation could not be carried out reliably, not that the model got something wrong.

**Définition formelle recommandée :**
> A *procedural failure* is a breakdown in the evaluation procedure itself rather than in the response. It occurs when the evaluator cannot obtain a stable canonical claim (span-selection, claim recovery, canonicalization, or matching error), cannot determine the truth contract from the task context (contract-specification failure), cannot rely on the specified evidence (reference-evidence-adequacy failure), or cannot resolve the evidence into a single state (adjudication failure). A procedural failure is recorded and the affected span is left unlabeled; it never receives SUP, H, or LD.

**Exemple requis.** Un cas où deux annotateurs récupèrent des énoncés différents du même span, et où l'évaluation enregistre donc un échec plutôt qu'un désaccord de label.

---

**Définition 4 — `claim-preserving style variation` (deux versions)**

**Définitions actuelles.**
- Informelle, l. 184–185 : « We call surface realizations that express the same claims *claim-preserving style variation*. »
- Formelle, l. 472–477 : « A pair of matched realizations instantiates *claim-preserving style variation* when both yield the same canonical claims under fixed reference evidence O_p, permission scope Γ_p, and required status marking μ_p. »
- Test formel, annexe A, l. 1543–1557 : trois réponses, matching adjudiqué, égalité des ensembles canoniques.

**Problème.** Trois formulations pour un concept, sans renvoi explicite entre elles. La version §1 parle de « the same claims » (avant que `claim` canonique existe), la version §2.3 parle de « the same canonical claims », l'annexe parle d'ensembles appariés `C*(y_i,p_i)`. Un lecteur attentif se demande si ce sont trois conditions ou une seule.

**Définition intuitive simplifiée :** conservée telle quelle (l. 184–185 est bonne).

**Révision recommandée.** Conserver les trois niveaux mais les chaîner explicitement :
- l. 185 → ajouter « We make this notion precise in Section 2.3 and state its operational test in Appendix A. »
- l. 477 → conserver le renvoi existant vers l'annexe (déjà présent, l. 478). Bon.

**Exemple requis.** Aucun — Case E le fournit.

---

## G. Audit terminologique

Le vocabulaire du manuscrit est **stable** : aucun cas de deux termes employés comme synonymes pour un même concept, aucun terme employé avec deux sens. C'est un résultat notable pour un manuscrit qui introduit une quinzaine de termes.

Les difficultés relèvent de la **proximité lexicale** et de la **densité**, non de l'incohérence.

| Terme actuel | Termes alternatifs employés | Problème | Terme recommandé | Localisations à réviser |
|---|---|---|---|---|
| `required status marking` (μ_p) | — | Partage « marking » avec `style-marking level`, dont il doit être distingué. Le manuscrit consacre un paragraphe entier (l. 771–773) à cette distinction, ce qui signale le risque. | Conserver, mais **ne jamais abréger en « marking »** ; en cas d'ambiguïté locale, écrire « status marking » en entier | l. 439, 529, 546, 1420 (« failed required status marking ») |
| `observed status marking` (m\*) | « the marking actually produced » (l. 819) | Trois expressions pour la même chose selon les endroits | `observed status marking` uniquement | l. 819 |
| `requested style-marking level` (σ_p) | « requested level » (l. 83), « style-marking level » (l. 191), « requested style-marking treatment » (tableaux) | Quatre variantes. « requested style-marking treatment » dans les tableaux d'annexe désigne en réalité *le traitement du niveau par le protocole*, pas le niveau lui-même | Distinguer explicitement : `requested style-marking level` (variable) vs `treatment of requested style-marking level` (codage) | l. 83, 191, 955, 1044, 1676 |
| `H` / `SUP` / `LD` | « the hallucination label », « the supported label », « licensed divergence » | Abréviation en prose courante | Noms complets en prose, abréviations en figures/tableaux | **C.1** |
| `unknown claim` | « a claim with evidence state `unknown` », « evidence-unknown content », « evidence-unknown claim » | Quatre formulations. `evidence-unknown content` (l. 421, 1643) désigne du contenu, `unknown claim` (l. 514) un énoncé — la distinction est réelle mais non signalée | Signaler la distinction une fois : le contenu est ce que Γ autorise, l'énoncé est ce que la règle étiquette | l. 421, 514, 1643 |
| `task context` (p) | « the task », « task conditions » (l. 125), « the complete task context » | Variantes bénignes | Conserver `task context` | l. 125 |
| `purposive mapping` | « the mapping », « our selected sample », « the selected resources », « our coding » | Cinq expressions pour la même chose, souvent dans la même phrase | Choisir `the mapping` pour l'objet, `the selected sample` pour l'ensemble des 40 ressources, `our coding` pour l'opération | §4 entier, l. 1499–1502 |
| `usefulness` | « quality », « overall response quality », « value » (l. 916) | Le manuscrit distingue explicitement les trois (l. 909–913) — bien — mais la distinction est posée en §3.5, après quatre emplois | Conserver ; **remonter la définition** | l. 119, 174, 534, 574 |
| `evaluation resource` | « resource », « benchmark », « protocol », « dataset » | L'umbrella term est défini l. 932–936. Correct. | Conserver | Aucune |
| `strict grounding` | « strict-grounding settings » (l. 98), « strict grounding task », « strict grounding profile » | Trois usages : contexte de déploiement, tâche, profil de codage. Le troisième est technique | Gloser le profil au premier emploi en §4 | l. 98, 219, 978 |

### Mots vagues

Le manuscrit est **remarquablement propre** sur ce point. Comptages sur le corps entier :

| Mot vague | Occurrences | Évaluation |
|---|---:|---|
| `aspect`, `element`, `issue`, `mechanism`, `approach`, `process`, `behavior` | **0** | Aucun problème |
| `dimension` | 1 | Référent clair (l. 1647) |
| `phenomenon` | 1 | Référent clair (l. 848) |
| `perspective` | 1 | Référent clair (l. 853) |
| `framework` | 10 | Toujours référencé à la proposition du papier. Acceptable, mais 4 occurrences dans §6 pourraient être remplacées par `the claim-labeling rule`, plus précis |
| `context` | 39 | Presque toujours `task context` (technique). ~5 occurrences en usage courant à vérifier |

**Aucun jargon inutile détecté.** Le manuscrit préfère déjà « use » à « utilize », « show » à « demonstrate ». Seul `stylistic foregrounding` (l. 179) est un terme de spécialité employé une fois sans glose ; le remplacer par sa paraphrase (déjà présente dans la même phrase) ou l'expliciter.

---

## H. Audit des transitions

### H.1 Transitions manquantes ou insuffisantes

---

**Localisation :** §1 → §2 (l. 343–349)

**Transition actuelle :** aucune. §2 s'ouvre sur `\subsection{Overview}` puis « The object of evaluation is a model response y produced under task context p. »

**Problème :** le ¶ *Organization* annonce le contenu de §2 mais ne dit pas pourquoi la section doit venir maintenant. Le lecteur passe d'une position argumentée à une spécification technique sans savoir quel niveau de détail l'attend ni ce qu'il devra retenir.

**Transition proposée :**
> The position stated above assigns three different roles to evidence, authorization, and presentation. Those roles are only usable if each is specified precisely enough for two evaluators to apply them to the same response. This section gives that specification.

---

**Localisation :** §2.1 → §2.2 (l. 386–392)

**Transition actuelle :** aucune. §2.2 s'ouvre sur `\paragraph{Truth contract}` puis directement sur l'équation (1).

**Problème :** l'aperçu de §2.1 se termine sur les modes d'échec ; §2.2 recommence au début avec la définition du contrat. Le lecteur ne sait pas si §2.2 reprend §2.1 en détail ou traite autre chose.

**Transition proposée :**
> The overview above used the three contract fields without saying how each is fixed. We now define them one at a time, starting with the object they jointly form.

---

**Localisation :** §2.3 → §2.4 (l. 487–491)

**Transition actuelle :** aucune.

**Problème :** §2.3 se termine sur les erreurs procédurales, §2.4 s'ouvre sur la thèse de la règle d'étiquetage. Le lien — qu'on ne peut étiqueter qu'une fois l'énoncé canonique stabilisé — est laissé implicite alors qu'il est précisément le point.

**Transition proposée :**
> Once a stable canonical claim has been obtained, the evaluator can compare it with the contract. That comparison is not uniform across evidence states, which is the point at which the proposed rule departs from current practice.

---

**Localisation :** §3.1 → §3.2 (l. 859–862)

**Transition actuelle :** aucune. §3.2 s'ouvre sur « Source faithfulness asks whether a claim is supported by provided evidence… »

**Problème :** §3.1 conclut que le label doit rester distinct de la taxonomie descriptive ; §3.2 change d'objet sans dire pourquoi les relations de preuve viennent ensuite.

**Transition proposée :**
> If the claim label is not fixed by the taxonomy, the next question is what fixes the evidence relation on which it partly depends.

---

**Localisation :** §3.4 → §3.5 (l. 899–903)

**Transition actuelle :** aucune.

**Problème :** on passe de l'extraction d'énoncés à l'évaluation d'intention sans indiquer que l'on quitte la question de l'unité pour celle de la contrainte de tâche.

**Transition proposée :**
> Claim extraction settles what is being evaluated but not what the task allowed. That second question is the domain of instruction-following and intent-aware evaluation.

---

**Localisation :** §3 → §4 (l. 928–932)

**Transition actuelle :** « This separation motivates the controlled test defined in Section 2 and summarized by the mapping below. » Puis §4 s'ouvre sur « The unit of analysis is the evaluation resource. »

**Problème :** la phrase pointe en arrière (§2) et en avant (« the mapping below ») sans dire à quelle question la cartographie répond. §4 démarre ensuite sur une définition méthodologique, sans motivation. Le lecteur arrive dans une section de codage sans savoir ce qu'on cherche à établir.

**Transition proposée (à placer en ouverture de §4) :**
> The preceding comparison shows that each component of the rule already exists somewhere in the literature. It does not show whether any single evaluation resource represents them together. We examined forty resources to answer that question.

---

**Localisation :** §2.4, l. 578–579 (amorce de Figure 2)

**Transition actuelle :** « Figure 2 illustrates the complete procedure on a constructed example. »

**Problème :** annonce purement descriptive, sur un paragraphe isolé d'une phrase. Ne dit pas ce qu'il faut observer dans une figure qui comporte quatre pipelines parallèles et une vingtaine de nœuds.

**Transition proposée :**
> Figure 2 applies the rule to a single response that yields four claims. The four claims share one truth contract and one reference evidence set, yet receive three different labels; the figure shows which comparison produces each difference.

---

### H.2 Transitions à conserver

Ces quatre transitions sont exemplaires. Elles expliquent une relation logique au lieu d'annoncer un contenu.

| Localisation | Texte |
|---|---|
| §3.2 → §3.3, l. 868–869 | « Fixing the reference evidence does not yet determine which propositions the response commits to. The next step is therefore to recover claims in context. » |
| §3.3 → §3.4, l. 883–884 | « Operationalizing contextual commitment requires a reliable unit of verification, which motivates claim extraction and recovery. » |
| §4 → §5, l. 1139–1141 | « The mapping identifies a design gap but does not show how the proposed rule behaves at its boundaries. The worked cases below make those predicted label changes explicit. » |
| §5 → §6, l. 1207–1209 | « Together, the cases isolate changes in reference evidence, discourse frame, required status marking, permission scope, and surface realization. Their predictions define tests for the annotation and benchmark studies below. » |
| §6 → §7, l. 1428–1430 | « Together, these studies test the framework from annotation reliability to downstream action. Until such evidence is available, the implications of the position must remain limited to the distinctions stated below. » |
| §2.4 → §2.5, l. 769–770 | « Having stated the claim-labeling rule, we now isolate a separate variable that may affect claim recovery but never changes what content the task permits. » |

---

### H.3 Déplacement d'ancrage de figure

**Localisation :** §1, l. 191.

**Problème :** Figure 1 illustre la position centrale (seule la portée d'autorisation change le label). Elle est annoncée après le ¶ *Why a truth contract…* et le ¶ *A secondary problem: claim recovery under marked style*. Or Figure 1 ne concerne pas le style. Le lecteur doit remonter deux paragraphes pour retrouver le fil.

**Action :** déplacer les l. 191–193 et le flottant à la fin du ¶ *Our position* (après l. 162), avant le ¶ *Why a truth contract…*. Le ¶ sur le style suit ensuite naturellement, puisqu'il introduit une variable que la figure a explicitement neutralisée (« Shared requested style-marking level: σ=0 (outside the truth contract) »).

**Phrase de liaison à ajouter après la figure :**
> The figure also shows what the rule does not do: the requested style-marking level is held fixed across both tasks and plays no part in either label. Whether it can nevertheless disturb the evaluation is a separate question.

---

## I. Corrections d'anglais académique

Les corrections suivantes sont classées par importance. Les phrases citées sont exactes.

---

**Original (l. 542–544) :**
> \Hall\ is the top-level label for every truth-contract violation, and the mandatory reason code, not a separate label, distinguishes the kind of violation.

**Problème :** rendu « H is the top-level label… ». Lettre isolée en position sujet ; en outre, la phrase porte deux affirmations (unicité du label ; rôle du code de raison) reliées par « and ».

**Révision proposée :**
> The hallucination label is the only top-level label for a truth-contract violation. The kind of violation is recorded by the mandatory reason code rather than by a separate label.

**Raison :** supprime le décodage d'abréviation en position saillante et sépare deux affirmations distinctes.

---

**Original (l. 546–547) :**
> A \textsc{marking-failure} therefore receives \Hall\ because the task authorized the content only under a status marking the response did not supply.

**Problème :** glissement catégoriel. `marking-failure` est un **code de raison**, pas un objet étiquetable. Ce sont les énoncés qui reçoivent un label. La phrase dit littéralement qu'un code de raison reçoit un label.

**Révision proposée :**
> A claim that falls inside the permission scope but fails the required status marking therefore receives the hallucination label with reason code \textsc{marking-failure}. The task authorized the content only under a marking the response did not supply.

**Raison :** rétablit la relation correcte entre énoncé, label et code de raison, et scinde une phrase de 27 mots.

---

**Original (l. 498) :**
> A claim label is assigned only after three procedural prerequisites hold.

**Problème :** la phrase annonce trois *prérequis*, les trois phrases suivantes définissent trois *échecs*. Le lecteur doit opérer la négation lui-même.

**Révision proposée :**
> Three conditions must hold before a claim label can be assigned. Each has a corresponding failure, which the evaluator records instead of a label.

**Raison :** aligne l'annonce sur ce qui suit.

---

**Original (l. 191–192) :**
> Figure~\ref{fig:prompt-to-claim} holds the response wording, the recovered claim, reference evidence, required status marking, and style-marking level fixed.

**Problème :** une figure ne « tient » rien fixe ; c'est la construction de l'exemple qui le fait. En outre, le verbe et son complément (« holds … fixed ») sont séparés par 18 mots.

**Révision proposée :**
> In Figure~\ref{fig:prompt-to-claim}, the response wording, the recovered claim, the reference evidence, the required status marking, and the style-marking level are all held fixed. Only the permission scope differs between the two tasks.

**Raison :** attribue l'action au dispositif expérimental et rapproche verbe et complément.

---

**Original (l. 978–982) :**
> Among the twenty-one resources assigned to the strict grounding profile in our coding, reference evidence is generally specified, requested style-marking level is not separately controlled, permission scope is coded as inferred empty, and required status marking is not separately scored.

**Problème :** 43 mots, quatre propositions coordonnées, toutes au passif, avec un modificateur initial de 12 mots avant le premier sujet.

**Révision proposée :**
> We assigned twenty-one resources to the strict grounding profile. In most of them, the reference evidence is specified. None separately controls the requested style-marking level, and none separately scores the required status marking. We coded the permission scope of all twenty-one as inferred empty.

**Raison :** quatre phrases de 8 à 15 mots, sujets explicites, trois passifs supprimés sur quatre.

---

**Original (l. 82–83, résumé) :**
> A complete evaluation also records requested and observed style-marking levels separately. The requested level is available as context during claim recovery and supports a prompt--response style-marking alignment check, but its effect on recovery remains a secondary robustness question and it never expands permission scope.

**Problème :** la seconde phrase fait 40 mots et porte trois affirmations : disponibilité pendant la récupération, existence d'un contrôle d'alignement, et non-extension de la portée. Le « but » relie une affirmation positive à deux réserves de nature différente.

**Révision proposée :**
> A complete evaluation also records the requested and the observed style-marking level separately. The requested level is available to the evaluator during claim recovery, and comparing the two levels gives a prompt--response alignment check. It never widens the permission scope, and whether it affects claim recovery is a secondary question.

**Raison :** trois phrases de 15, 25 et 20 mots ; sépare la fonction de la réserve.

---

**Original (l. 819–820) :**
> Every recovered claim must remain warranted by linguistic evidence in the produced response, and $\widehat{\sigma}(y,p)$ records the marking actually produced.

**Problème :** « and » relie une prescription (les énoncés doivent être justifiés) à une définition notationnelle. Les deux propositions n'ont aucun lien logique.

**Révision proposée :**
> Every recovered claim must remain warranted by linguistic evidence in the response as produced. Separately, $\widehat{\sigma}(y,p)$ records the style marking that the response actually realizes.

**Raison :** sépare une norme d'une définition.

---

**Original (l. 820–821) :**
> Existing evaluators use claim decomposition, natural-language inference, or semantic similarity \citep{...}, while model-based judges used in alignment benchmarking can prioritize style over factuality and safety \citep{feuer_style_2025}.

**Problème :** 33 mots ; « while » est ambigu entre contraste et simultanéité ; « used in alignment benchmarking » est un participe intercalé entre sujet et verbe.

**Révision proposée :**
> Existing evaluators use claim decomposition, natural-language inference, or semantic similarity. Model-based judges raise a further concern: in alignment benchmarking, they can prioritize style over factuality and safety.

**Raison :** rend le contraste explicite, supprime le participe intercalé.

---

**Original (l. 559–560) :**
> Severity measures the potential consequence of an \Hall-labeled claim after labeling. It does not determine the claim label.

**Problème :** « after labeling » peut se rattacher à « measures » ou à « claim » ; en outre le mot « labeling » apparaît deux fois en 20 mots.

**Révision proposée :**
> Severity is assessed after a claim has received the hallucination label. It measures the potential consequence of that claim and never determines which label the claim receives.

**Raison :** lève l'ambiguïté d'attachement et supprime la répétition.

---

**Original (l. 172) :**
> A sufficiently fine-grained instruction-following rubric could encode the same distinction. The truth contract contributes an explicit and inspectable claim-labeling rule.

**Problème :** deux phrases juxtaposées sans connecteur, alors que la relation est une concession suivie d'une contre-affirmation. Le lecteur peut lire la seconde comme une simple addition.

**Révision proposée :**
> A sufficiently fine-grained instruction-following rubric could in principle encode the same distinction. What the truth contract adds is that the rule is stated explicitly and can be inspected.

**Raison :** rend la concession et le contre-argument visibles.

---

**Original (l. 467) :**
> If a span yields no truth-conditional claim, it receives no claim label and is not a procedural failure.

**Problème :** « it » peut désigner le span ou l'énoncé (inexistant). L'énumération « receives no label and is not a failure » mêle une conséquence et une clarification.

**Révision proposée :**
> Some spans yield no truth-conditional claim. Such a span receives no claim label, and its absence of a label is not a procedural failure.

**Raison :** lève l'ambiguïté du pronom.

---

**Original (l. 1553–1557, annexe A) :**
> With fixed $O_p$, $\Gamma_p$, and $\mu_p$, the desired stability condition is that every matched canonical claim $c_j^*$ receives the same claim label (\SUP, \Hall, or \LD) under $y_0,p_0$, $y_1,p_1$, and $y_2,p_2$, in addition to the matched-claim-set condition $\mathcal C^*(y_0,p_0)=\mathcal C^*(y_1,p_1)=\mathcal C^*(y_2,p_2)$.

**Problème :** 66 mots ; deux conditions distinctes reliées par « in addition to » en fin de phrase, après une parenthèse et trois triplets indicés.

**Révision proposée :**
> Suppose $O_p$, $\Gamma_p$, and $\mu_p$ are fixed. Stability then requires two conditions. First, the three responses must yield the same canonical claim set: $\mathcal C^*(y_0,p_0)=\mathcal C^*(y_1,p_1)=\mathcal C^*(y_2,p_2)$. Second, every matched canonical claim $c_j^*$ must receive the same claim label under all three.

**Raison :** hiérarchise deux conditions au lieu de les subordonner.

---

**Original (l. 136) :**
> We use $x$ for the literal prompt and $p$ for the complete task context, including applicable system instructions, the user's request, dialogue history, domain constraints, and attached evidence.

**Problème :** définit deux symboles et énumère cinq composantes dans une phrase de 29 mots. `x` n'est ensuite réutilisé qu'une fois.

**Révision proposée (avec suppression de `x`, cf. C.4) :**
> We write $p$ for the complete task context. It includes the user's request, any applicable system instructions, dialogue history, domain constraints, and attached evidence.

**Raison :** un symbole au lieu de deux, deux phrases au lieu d'une.

---

**Original (l. 125) :**
> Consequently, two protocols can assign different labels to identical surface wording when their prompts establish different task conditions.

**Problème :** aucune erreur, mais « Consequently » est le seul connecteur conclusif de tout le paragraphe et la conséquence n'est pas strictement déductible des phrases qui précèdent (qui décrivent ce que la recherche sur la créativité mesure). Le lien est une observation, pas une conséquence.

**Révision proposée :**
> As a result, two protocols can label identical wording differently, simply because their prompts establish different task conditions. Neither protocol makes that difference explicit.

**Raison :** ajuste la force du connecteur et explicite ce qui manque.

---

## J. Corrections au niveau du paragraphe

---

**Localisation :** §2.1, premier paragraphe (l. 349–363), « The object of evaluation is a model response y… »

**Idée principale visée :** montrer, sur un exemple, comment on passe d'un span de réponse à un label.

**Problèmes actuels :**
- Cinq fonctions dans un même paragraphe : définition de `y`, définition de `evaluator`, exemple photosynthèse, notation `c*=(q*,m*)`, contrôle d'alignement stylistique.
- L'exemple photosynthèse (l. 352–354) fait 65 mots à lui seul et contient deux citations imbriquées.
- La dernière phrase (« This prompt–response style-marking alignment check does not create or excuse a truth-conditional claim ») introduit une réserve sur un dispositif qui n'a pas encore été défini.

**Structure recommandée :**
1. Une phrase qui annonce ce que la sous-section fait : *« This subsection walks one response span through the whole procedure. »*
2. Définition de `y`, `p` et `evaluator` (2 phrases).
3. L'exemple : prompt, span, énoncés récupérés (3 phrases courtes).
4. Canonicalisation et comparaisons (2 phrases).
5. Renvoi : *« The style-marking alignment check is defined in Section 2.6 and plays no part in the label. »*

**Réécriture proposée du bloc exemple (l. 352–354) :**
> Consider the constructed prompt « Explain photosynthesis like a poet, but keep the science accurate. » Suppose the response contains the span « In each leaf, chlorophyll is a green net for sunlight; captured light drives the reactions that build sugars. » Read in this task context, the span yields two contextualized claims. The first is that chlorophyll absorbs light energy. The second is that photosynthesis uses that energy to produce sugars.

---

**Localisation :** §2.1, second paragraphe (l. 365–386), « Claim labeling follows one fixed chain: »

**Idée principale visée :** donner la chaîne canonique de traitement.

**Problèmes actuels :**
- La chaîne est présentée dans un environnement mathématique `\[ \begin{aligned} … \]` alors qu'elle ne contient aucune mathématique. Elle occupe trois lignes affichées et ne peut pas être référencée étape par étape.
- Les trois phrases qui la suivent (l. 379–386) introduisent sept modes d'échec non définis.

**Structure recommandée :**
1. Convertir la chaîne en liste numérotée (8 étapes), ce qui permet ensuite d'écrire « a failure at step 2 or 3 » plutôt que de renommer chaque étape.
2. Retirer les l. 379–386 vers la nouvelle §2.4 *Procedural prerequisites and failure modes* (voir C.3).
3. Terminer le paragraphe par un renvoi : *« Steps 1–3 can fail in ways that leave the span unlabeled; Section 2.4 defines those failures. »*

---

**Localisation :** §4.2, ¶ *Missing combination in the selected sample* (l. 1000–1015)

**Idée principale visée :** énoncer le résultat de la cartographie.

**Problèmes actuels :** six phrases, dont cinq sont des réserves sur la première. Le résultat est énoncé l. 1001–1003, puis immédiatement restreint (l. 1004–1005), étendu (l. 1006–1007), reformulé (l. 1008–1009), nuancé (l. 1010–1012), puis re-caractérisé (l. 1014–1015). Le lecteur perd le fil du résultat.

**Structure recommandée :**
1. Le résultat, une fois, en une phrase.
2. Ce que le codage enregistre exactement (représentation séparée, non manipulation expérimentale) — une phrase.
3. Le corollaire pour les ressources de factualité — une phrase.
4. Une seule phrase de portée, en clôture.

Supprimer l. 1014–1015 (« not an empty region on an ordinal scale, but an absent categorical design ») : la même mise en garde figure déjà dans la légende de Figure 3 (l. 1133–1134) et dans le guide de lecture de la figure (l. 1113–1115).

---

**Localisation :** §7.1, l. 1436–1445

**Idée principale visée :** montrer que label, utilité, alignement stylistique et gravité sont quatre axes indépendants.

**Problèmes actuels :** deux paragraphes de deux phrases, sans phrase-sujet. Le lecteur découvre l'idée d'indépendance seulement en la reconstituant.

**Réécriture proposée :**
> The rule separates four properties that current protocols often report as one. A response can contain no hallucination-labeled claim and still be of little use, or fail the style-marking alignment check. Conversely, neither usefulness nor style-marking alignment changes a claim label.
>
> Severity is the fourth. A false drug dose and an incorrect trivia date can both receive the hallucination label, although their consequences differ. Severity may therefore weight a violation after labeling, but it does not determine whether the violation occurred.

---

**Localisation :** §7.1, ¶ *Avoiding indiscriminate suppression* (l. 1447–1468)

**Idée principale visée :** les bornes théoriques d'impossibilité ne justifient pas la suppression indiscriminée du contenu non attesté.

**Problèmes actuels :** trois résultats théoriques sont énumérés (l. 1448–1454) avant que leur pertinence soit énoncée (l. 1460). Le lecteur lit onze lignes de résultats sans savoir pourquoi.

**Structure recommandée :** placer la phrase-sujet en tête.

> A recurring objection is that hallucination cannot be eliminated, and that evaluation should therefore be maximally conservative. Three formal results bear on the first half of that claim. [les trois résultats, inchangés] These results rely on different assumptions, and none alone implies a constant deployment error rate or precludes statistically negligible rates in a specified setting. [suite inchangée]

---

**Localisation :** §6, priorités 4 à 7 (l. 1330–1425)

**Problème :** l'échafaudage *Research problem / Why it matters / Study and measures / Falsification criterion* est justifié pour les priorités 1 à 3, dont chaque bloc contient plusieurs phrases. Pour les priorités 4 à 7, plusieurs blocs se réduisent à une seule phrase, ce qui rend le titre plus long que son contenu (par ex. Priorité 7, *Why it matters* : une phrase de 22 mots).

**Recommandation :** fusionner *Research problem* et *Why it matters* en un seul bloc pour les priorités 4 à 7. Gain : 8 mini-titres, ~16 lignes.

---

## K. Figures et tableaux

### Figure 1 — `fig:prompt-to-claim` (p. 4)

- **Objet.** Montrer que, toutes choses égales par ailleurs, seule la portée d'autorisation change le label.
- **Problème principal de clarté.** Aucun majeur. La figure est la meilleure du manuscrit : symétrie gauche/droite, preuve de référence partagée en haut, span identique au centre, verdicts contrastés en bas, et une bande de synthèse (« Only the permission scope changes the claim label »).
- **Définition ou explication manquante.** La convention d'omission de l'indice `p` (« We drop the subscript p when the task context is clear », l. 399) est énoncée **après** la figure, qui écrit pourtant `O`, `μ` et `Γ_1`/`Γ_2`. En outre, `Γ_1` devrait être `Γ_{p_1}` pour être cohérent avec `TC(p_1)`.
- **Révision requise.** Soit écrire `Γ_{p_1}` et `Γ_{p_2}`, soit ajouter une phrase dans la légende : *« Subscripts index the two task contexts p₁ and p₂; O and μ are identical and written without a subscript. »*
- **Localisation recommandée.** Immédiatement après le ¶ *Our position* (voir §H.3).
- **Transition proposée avant la figure.** Voir §I, correction de la l. 191.
- **Légende autonome proposée.** La légende actuelle est déjà autonome. Ajouter seulement la phrase sur les indices.
- **Verdict : claire.**

---

### Figure 2 — `fig:claim-label-annotation` (p. 8)

- **Objet.** Appliquer la procédure complète à une réponse produisant quatre énoncés et trois labels différents.
- **Problème principal de clarté.** Densité. Quatre pipelines parallèles sur sept rangées, plus deux encadrés détachés en bas, plus un chemin orange en pointillés qui contourne toute la figure par la droite pour relier `O_p` à la rangée « evidence state ». Réduite à `\textwidth`, la police descend sous 6 pt.
- **Définition ou explication manquante.** Le chemin orange n'est pas expliqué dans la légende : le lecteur doit deviner qu'il représente l'usage de la preuve de référence à l'étape d'état de preuve. Les deux encadrés du bas (`s_5`/`s_0` sans énoncé ; contrôle d'alignement stylistique) sont visuellement détachés du pipeline, ce qui suggère à tort qu'ils en sont une étape terminale.
- **Révision requise.**
  1. Ajouter une phrase de légende : *« The dashed orange path shows where the reference evidence enters the procedure: it determines the evidence state and nothing else. »*
  2. Séparer visuellement les deux encadrés du bas par un filet horizontal, avec un intitulé de rangée à gauche (« separate outputs ») cohérent avec les intitulés existants.
  3. Envisager une version sur deux colonnes de figure ou en pleine largeur `figure*` pour regagner de la taille de police.
- **Localisation recommandée.** Inchangée (§2.4).
- **Transition proposée avant la figure.** Voir §H.1, dernière entrée.
- **Légende autonome proposée.** La légende actuelle est bonne ; ajouter la phrase sur le chemin orange.
- **Verdict : compréhensible avec effort.**

---

### Figure 3 — `fig:profiles` (p. 14)

- **Objet.** Situer les 40 ressources selon deux axes catégoriels et montrer la case vide.
- **Problème principal de clarté.** Trois défauts cumulés, détaillés en **C.5** : (a) la légende annonce un résultat à quatre dimensions alors que la figure en encode deux ; (b) `draw=red!8` rend invisible l'encadré que la légende appelle « the highlighted box » ; (c) aucune clé de lecture des six couleurs.
- **Définition ou explication manquante.** `nominal task profile` n'est défini nulle part (voir §F.2). Le lecteur qui arrive à la figure sans avoir lu la question 4 du protocole ne sait pas d'où viennent les profils.
- **Révision requise.** Voir C.5. En complément : le guide de lecture (l. 1111–1119) est placé **dans** la figure, en petit corps, alors qu'il duplique partiellement la légende. Le fusionner avec la légende et libérer de l'espace vertical.
- **Localisation recommandée.** Inchangée.
- **Transition proposée avant la figure.** Actuellement : « Figure 3 summarizes this pattern. » Remplacer par :
  > Figure 3 places each selected resource on two categorical axes: the nominal task profile we assigned to it, and how it treats the requested style-marking level. The region at the top left is empty, and that emptiness is the observation.
- **Légende autonome proposée.** Voir C.5.
- **Verdict : compréhensible avec effort** (avec le risque, pour un lecteur pressé, de chercher Γ et μ dans la figure et de conclure qu'elle est incohérente avec sa légende).

---

### Tableaux B.1 – B.3 (annexe B)

- **Objet.** Fournir le codage inspectable des 40 ressources.
- **Problème principal de clarté.** Redondance verticale extrême. Sur les 21 lignes du profil *strict grounding*, la colonne « Requested style-marking treatment » vaut « not controlled » 21 fois et la colonne « Γ / μ » vaut « Γ: inferred empty / μ: not scored » 20 fois sur 21. Deux colonnes sur cinq n'apportent presque aucune information différentielle mais consomment 29 % de la largeur.
- **Définition ou explication manquante.** Aucune — le vocabulaire fermé (l. 1604–1650) est complet et précède les tableaux. C'est un point fort.
- **Révision requise.** Ajouter en note de tableau : *« Unless a cell states otherwise, requested style-marking treatment is "not controlled", Γ is "inferred empty", and μ is "not scored". »* Ne remplir alors que les exceptions (lignes 21, 22, 26, 30, 35, et le bloc 27–40). La largeur regagnée permet d'élargir la colonne « Task and reference evidence O », actuellement la plus tassée.
- **Localisation recommandée.** Inchangée.
- **Légende autonome proposée.** Les trois légendes sont déjà autonomes et énoncent le motif dominant. Bon.
- **Verdict : claires.**

---

## L. Répétitions et coupes

| Localisation | Action | Raison | Effet attendu |
|---|---|---|---|
| l. 568–576 (fin §2.4) **et** §2.6 (l. 824–831) **et** annexe A (l. 1583–1586) **et** §6 P4 (l. 1341–1346) | Conserver §2.6 seulement ; remplacer les trois autres par un renvoi | La politique de reporting est énoncée quatre fois. §2.6 lui est explicitement consacrée. | −14 lignes ; §2.4 se termine sur la règle et non sur une digression |
| Résumé l. 85–88, §4.2 l. 1001–1003, légende Fig. 3 l. 1125–1127, conclusion l. 1524–1526 | Conserver résumé + §4.2 en entier ; réduire la légende (voir C.5) et la conclusion à un renvoi | L'énoncé de la combinaison absente apparaît quatre fois quasi mot pour mot | −6 lignes ; la conclusion cesse de dupliquer le résumé |
| l. 1225–1228 (préambule §6) **et** l. 1285–1287 (Priorité 2) | Supprimer l. 1285–1287 | Le protocole anti-circularité (gold labels adjudiqués, même procédure de récupération, seuils fixés d'avance) est énoncé deux fois à 60 lignes d'écart | −3 lignes |
| Résumé l. 83 ; §1 l. 161–162 ; §2.2 l. 400–404 ; §2.5 l. 769–773 ; légende Fig. 2 l. 761–762 ; conclusion l. 1519–1520 | Conserver §2.2 et §2.5 ; réduire §1 à une proposition ; supprimer de la conclusion | « le niveau de style n'appartient pas au contrat et n'élargit jamais la portée » est répété six fois | −5 lignes ; la réserve garde sa force |
| Résumé l. 88 ; §1 l. 317 ; §4 l. 942–947 ; §4.2 l. 1004–1005 ; §7.2 limite 6 (l. 1499–1502) | Conserver §4 (complet) et la limite 6 (courte) ; réduire le résumé et §1 à une proposition subordonnée | La mise en garde « pas une estimation de prévalence » apparaît cinq fois | −4 lignes |
| §1 l. 324–327 **et** §5 l. 1149–1150 | Conserver §5 ; supprimer de §1 | La réserve sur les cas travaillés (« do not establish inter-annotator reliability, empirical coverage, or an advantage over simpler baselines ») est énoncée deux fois | −3 lignes |
| l. 308–309 (légende Fig. 1) **et** l. 534–536 (§2.4) **et** l. 916–918 (§3.5) | Conserver §2.4 ; réduire la légende à « LD records authorization, not truth or quality » ; conserver §3.5 (le contraste utilité/portée y est spécifique) | « LD records … not truth, usefulness, quality, or safety » est répété trois fois | −2 lignes |
| l. 135 (`s`) **et** l. 446 (`s` redéfini) ; l. 136 (`x`) | Supprimer les deux définitions de §1 (voir C.4) | Double définition de `s` ; `x` sous-utilisé | −2 lignes ; −2 symboles en §1 |
| l. 1014–1015 | Supprimer | La mise en garde « pas une région vide sur une échelle ordinale » figure déjà dans la légende (l. 1133–1134) et le guide de lecture (l. 1113–1115) de Fig. 3 | −2 lignes |
| §6, priorités 4–7 : 8 mini-titres | Fusionner *Research problem* et *Why it matters* | Échafaudage plus long que son contenu | −16 lignes |
| Tableaux B.1–B.3, colonnes 4 et 5 | Note de tableau + cellules d'exception uniquement | Deux colonnes quasi constantes sur 21 lignes | Lisibilité des tableaux nettement accrue |

**Estimation de la réduction possible : 10 à 12 % du corps, sans perte de contenu scientifique** — soit environ 1,5 à 2 pages sur les ~17 pages de corps. La quasi-totalité provient de mises en garde répétées, non d'argumentation.

**Avertissement.** Ces mises en garde sont la principale défense du manuscrit contre un relecteur qui l'accuserait de sur-généraliser. Il faut les réduire en nombre d'occurrences, **jamais** en force. Chaque réserve doit rester énoncée pleinement **une fois**, à l'endroit où elle porte.

---

## M. Liste de contrôle de révision

### Obligatoire — bloque actuellement une lecture fluide

1. **Remplacer `\Hall` / `\SUP` / `\LD` par les noms complets en prose courante** ; les réserver aux figures, tableaux et listes formelles. (C.1 — ~15 phrases à réécrire, dont l. 542, 546, 535, 171, 193.)
2. **Définir `style marking` en §1**, avant sa première utilisation dans le corps. (C.2)
3. **Déplacer la taxonomie des échecs procéduraux avant la chaîne de traitement** ; §2.1 ne doit plus invoquer sept termes non définis. (C.3)
4. **Définir `y` avant `σ̂(y,p)`**, ou écrire le niveau observé en toutes lettres en §1. (C.4)
5. **Corriger le glissement catégoriel l. 546** : c'est l'énoncé, non le code de raison, qui reçoit un label. (§I)
6. **Corriger la légende de Figure 3** pour qu'elle ne décrive que ce que la figure encode, et rendre visible l'encadré « highlighted » (`red!8` → `red!70`). (C.5)
7. **Définir `nominal task profile`** — terme structurant de §4, de Fig. 3 et de l'annexe B, actuellement jamais défini. (F.2)

### Fortement recommandé — réduit la clarté sans la bloquer

8. Remonter la définition de `usefulness` (§3.5 → §2.7) et la distinction `claim extraction` / `claim recovery` (§3.4 → §2.3).
9. Fusionner le paragraphe de reporting de §2.4 dans §2.6 ; réduire les deux autres occurrences à des renvois. (§L)
10. Ajouter les sept transitions manquantes : §1→§2, §2.1→§2.2, §2.3→§2.4, §3.1→§3.2, §3.4→§3.5, §3→§4, et l'amorce de Figure 2. (§H.1)
11. Déplacer l'ancrage de Figure 1 juste après le ¶ *Our position*. (§H.3)
12. Scinder les phrases de plus de 30 mots en §4 (32 % > 25 mots) et en annexe A (20 % > 30 mots). (§I)
13. Restructurer le ¶ *Missing combination* (§4.2) : le résultat d'abord, une seule mise en garde en clôture. (§J)
14. Ajouter des phrases-sujets aux deux premiers paragraphes de §7.1 et au ¶ *Avoiding indiscriminate suppression*. (§J)
15. Supprimer `s` et `x` de §1 ; les introduire seulement là où ils servent. (C.4)
16. Ajouter la note de tableau aux annexes B.1–B.3 pour vider les deux colonnes quasi constantes. (§K)
17. Rétablir le parallélisme du résumé : « receives the licensed-divergence label ». (§E)

### Optionnel — polissage

18. Alléger l'échafaudage des priorités 4 à 7 de §6. (§J)
19. Remplacer `stylistic foregrounding` (l. 179) par sa paraphrase, déjà présente dans la phrase.
20. Convertir la chaîne affichée l. 366–378 en liste numérotée référençable.
21. Harmoniser `Γ_1` → `Γ_{p_1}` dans Figure 1, ou l'expliciter en légende.
22. Fusionner §3.6 (3 phrases) avec §3.5, ou l'étoffer.
23. Compléter le ¶ *Organization* (l. 335–341) par la conclusion et les annexes.
24. Remplacer 4 occurrences de `framework` en §6 par `the claim-labeling rule`, plus précis.
25. Envisager Figure 2 en `figure*` pleine largeur pour regagner de la taille de police.

### Résumé révisé proposé

Restructuration en cinq mouvements — problème / limite / position / dispositif / implication — sans ajout d'affirmation. Phrases ramenées sous 25 mots.

> Hallucination evaluation often maps a claim's relation to reference evidence directly onto a final label. This convention suits tasks with strict grounding. It is incomplete when a task permits bounded hypotheses or fictional invention.
>
> This position paper argues that a claim the reference evidence neither entails nor contradicts should not automatically receive the hallucination label. Evaluators should instead apply a task-specific *truth contract* with three fields: reference evidence, permission scope, and required status marking.
>
> The rule is as follows. An entailed claim receives the supported label. A contradicted claim receives the hallucination label. A claim the reference evidence leaves unknown receives the licensed-divergence label only when it lies inside the permission scope and its observed status marking satisfies the required status marking. Otherwise it receives the hallucination label with a recorded reason code.
>
> How stylistically marked the wording is remains a separate variable. A complete evaluation records the requested and the observed level separately and compares them, but the requested level never widens the permission scope.
>
> We examine the distinction through a purposive mapping of forty benchmarks, datasets, and evaluation protocols, and through five worked cases. In our selected sample, no resource separately represents all three contract fields while also controlling for claim-preserving style variation; the mapping describes the selected resources and does not estimate prevalence in the wider literature. The proposal would be unnecessary if a combined factuality and instruction-following baseline matched it on claim-label agreement, reason-code accuracy, and identification of the pipeline stage responsible for a disputed label.

*(Aucune affirmation nouvelle. « evaluation resources » est développé en « benchmarks, datasets, and evaluation protocols » pour éviter un terme technique non glosé. « licensed divergence » devient « the licensed-divergence label » pour le parallélisme.)*

### Structure de conclusion proposée

La conclusion actuelle est correcte mais duplique le résumé. Structure recommandée, à contenu constant :

1. **La position, en une phrase**, formulée différemment du résumé — insister sur ce que le lecteur doit changer dans sa pratique plutôt que reformuler la règle.
2. **Ce que le contrat rend explicite** que les protocoles actuels laissent implicite (une phrase).
3. **Ce que le contrat ne fait pas** — une seule réserve, la plus importante : ce n'est pas une mesure de vérité, d'utilité ou de qualité.
4. **Le test empirique immédiat**, inchangé (l. 1526–1528 est déjà bon et se termine correctement).

Supprimer la répétition intégrale de la règle (l. 1515–1518) : elle figure au résumé, en §1, en §2.4 et dans deux légendes de figure.

---

## N. Verdict final de lisibilité

> **Compréhensible, mais nécessite une révision modérée.**

Le manuscrit n'a pas de problème de structure macro, de cohérence terminologique ni de correction grammaticale. Le message central est explicite dès le résumé, formulé de nouveau à la ligne 128, appliqué sans dérive jusqu'à la ligne 1528. Le titre, le résumé, les contributions annoncées et le contenu des sections concordent. La discipline argumentative — connecteurs justes, réserves systématiques, critères de falsification symétriques — est nettement au-dessus de la moyenne des position papers.

Ce qui reste entre le manuscrit et une lecture fluide tient à quatre choses, toutes corrigibles sans réécriture de fond :

**Un coût de décodage évitable.** Les abréviations `H`, `SUP` et `LD` apparaissent environ 80 fois en prose courante, dont plusieurs en position sujet de phrase. Un relecteur non familier du cadre doit résoudre une abréviation à chaque occurrence, dans la section précisément où il devrait pouvoir se concentrer sur la règle.

**Des concepts qui arrivent après leur usage.** `style marking` est employé dès le résumé et défini 705 lignes plus loin. Sept modes d'échec sont invoqués en §2.1 et définis en §2.4. `usefulness` est employé en §1 et §2, défini en §3. `nominal task profile` structure une figure et trois tableaux sans être jamais défini. Aucune de ces définitions n'est mauvaise ; elles sont simplement mal placées.

**Une section porteuse surchargée.** §2 contient la contribution centrale, les deux figures principales, six sous-sections et une redondance interne. C'est la section que le relecteur lira le plus attentivement et la seule qu'il devra relire.

**Une figure qui promet plus qu'elle ne montre.** La légende de la Figure 3 affirme un résultat à quatre dimensions ; la figure en encode deux. Et l'encadré qu'elle désigne comme « highlighted » est, à cause d'un `red!8` très probablement fautif, l'élément le moins visible de l'image.

**Pour qu'un relecteur non familier du cadre lise ce manuscrit sans effort**, il faut qu'il puisse (a) lire chaque phrase sans résoudre une abréviation, (b) rencontrer chaque terme technique après sa définition et non avant, et (c) traverser §2 une seule fois. Les sept points obligatoires de la section M suffisent à obtenir ces trois conditions. Les points 8 à 17 amèneraient le manuscrit au niveau de §5 — qui, avec 16,9 mots par phrase et aucune phrase au-delà de 30 mots, montre que les auteurs savent déjà écrire exactement comme il le faudrait partout ailleurs.

---

### Note d'intendance (hors périmètre de la review)

Les instructions de projet (`CLAUDE.md`) listent comme macros à préserver `\CI`, `\TR`, `\PD`, `\Hallu`, `\Faith`, `\Acc`, et donnent comme titre « Hallucination Is Relative: Evaluating LLM Divergence Under Truth-Regime Contracts ». Le manuscrit utilise `\TC`, `\LD`, `\Hall`, `\SUP` et porte un autre titre. `README.md` et `CL_submission_metadata.txt` sont à jour ; seul `CLAUDE.md` ne l'est pas. À synchroniser pour éviter qu'un futur outil ne restaure d'anciens noms de macro.
