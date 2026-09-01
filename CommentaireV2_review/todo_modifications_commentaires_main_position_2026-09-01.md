# Checklist de révision des commentaires — `main_position.tex`

Source des commentaires :
`overleaf_comments_cl_soumission_main_tex_2026-09-01.json`.

Cette checklist distingue l’implémentation technique de la validation humaine :

- `[x]` devant `Cxx` : modification appliquée et contrôlée dans le manuscrit ;
- `[ ] Validation humaine` : passage encore à relire et accepter par l’auteur.

Les extraits et commentaires bruts sont conservés dans
`synthese_commentaires_main_position_2026-09-01.md`.

## Framework Overview

- [x] **C01 — Définir simplement `q^*`.** Remplacer la définition abstraite par une explication en mots simples liée au claim « complete stele ... temple entrance ». — [ ] Validation humaine
- [x] **C02 — Introduire clairement `m^*`.** Expliquer que `m^*` enregistre la manière dont le statut du claim est présenté et montrer le rôle de « possible ». — [ ] Validation humaine
- [x] **C03 — Supprimer la construction avec `nor`.** Reformuler l’état `unknown` en deux propositions simples. — [ ] Validation humaine
- [x] **C04 — Montrer comment le status marking est observé.** Identifier explicitement « One possible reconstruction » comme le marqueur satisfaisant `\mu`. — [ ] Validation humaine
- [x] **C05 — Expliquer le scope vide en strict grounding.** Dire simplement qu’aucun contenu laissé inconnu par l’oracle n’est autorisé, avec l’exemple Rosetta. — [ ] Validation humaine
- [x] **C06 — Reformuler la phrase sur le style sans `nor`.** Préserver la séparation entre style et label. — [ ] Validation humaine
- [x] **C07 — Relier la préparation à la figure Rosetta.** Montrer le span, le claim récupéré, `q^*` et `m^*` sur le même exemple. — [ ] Validation humaine
- [x] **C08 — Donner des exemples pour `\Gamma` et `\mu`.** Ajouter l’exemple du placement près du temple pour les deux tests. — [ ] Validation humaine

## Truth contract et Claim Recovery

- [x] **C09 — Clarifier les conflits d’instructions.** Décrire l’ordre : identifier les instructions applicables, fixer leur priorité, puis spécifier le contrat. — [ ] Validation humaine
- [x] **C10 — Préciser les contraintes externes.** Donner des catégories concrètes sans développer de claim juridique ou de sécurité non sourcé. — [ ] Validation humaine
- [x] **C11 — Remplacer l’exemple clinique de `\Gamma`.** Utiliser une reconstruction Rosetta autorisée et une invention Rosetta hors scope. — [ ] Validation humaine
- [x] **C12 — Nommer la séparation.** Opposer explicitement autorisation contractuelle et valeur/utilité du contenu. — [ ] Validation humaine
- [x] **C13 — Remplacer l’exemple clinique de `\mu`.** Contraster la même reconstruction Rosetta marquée comme possible et affirmée comme établie. — [ ] Validation humaine
- [x] **C14 — Distinguer extraction et recovery.** Expliquer segmentation vs interprétation contextuelle avec un exemple Rosetta. — [ ] Validation humaine
- [x] **C15 — Raccourcir le rappel de `q^*` et `m^*`.** Réutiliser exactement la logique de la première définition. — [ ] Validation humaine
- [x] **C16 — Réexpliquer le span sans claim.** Donner un exemple de fragment purement rhétorique et expliquer pourquoi l’absence de label est normale. — [ ] Validation humaine
- [x] **C17 — Introduire tôt evidence state vs claim label.** Placer la distinction à la première utilisation substantielle de l’evidence state et conserver un rappel court plus loin. — [ ] Validation humaine
- [x] **C18 — Clarifier le méta-claim.** Contraster « evidence is insufficient » avec l’affirmation de la proposition intégrée. — [ ] Validation humaine

## Style, Related Work et Resource Mapping

- [x] **C19 — Justifier l’utilité du style-marking.** Relier prudemment style, claim recovery et tests de robustesse, sans faire du style une permission ou un résultat démontré. — [ ] Validation humaine
- [x] **C20 — Relier factualité et créativité.** Expliquer leur intersection sur les claims laissés inconnus tout en séparant autorisation et qualité créative. — [ ] Validation humaine
- [x] **C21 — Raccourcir la figure.** Supprimer les répétitions entre reading guide et caption tout en gardant les précautions de lecture indispensables. — [ ] Validation humaine

## Worked Cases et transition

- [x] **C22 — Réécrire Case B avec la pierre de Rosette.** Conserver le caractère multifactoriel et le contraste entre cadre historique et cadre fictionnel. — [ ] Validation humaine
- [x] **C23 — Réécrire Case C avec la pierre de Rosette.** Garder `O`, `\Gamma`, `\mu`, `q^*` et l’evidence state fixes ; changer seulement `m^*`. — [ ] Validation humaine
- [x] **C24 — Réécrire Case D avec la pierre de Rosette.** Contraster une reconstruction autorisée avec une invention extérieure au scope. — [ ] Validation humaine
- [x] **C25 — Ajouter la transition vers la Research Agenda.** Relier explicitement les prédictions des cas aux études proposées. — [ ] Validation humaine

## Discussion

- [x] **C26 — Raccourcir la définition de la relativité.** Conserver seulement label relatif, vérité non relative et portée de licensed divergence. — [ ] Validation humaine
- [x] **C27 — Sourcer et expliquer le passage empirique.** Vérifier les citations existantes et distinguer bornes théoriques, taux de déploiement et observation de benchmark. — [ ] Validation humaine
- [x] **C28 — Réduire les détails sur AA-Omniscience.** Garder uniquement la nature du test et la portée utile à l’argument. — [ ] Validation humaine
- [x] **C29 — Nuancer l’instantané du leaderboard.** Le présenter comme une illustration limitée, sans généralisation causale ou de prévalence. — [ ] Validation humaine
- [x] **C30 — Raccourcir Response-Level Interpretation.** Conserver les trois risques d’interprétation indispensables dans une forme condensée. — [ ] Validation humaine
- [x] **C31 — Condenser Limitations and Safeguards.** Regrouper les limites par familles et distinguer limites de la proposition, défis de mise en œuvre et limites de l’état actuel de la recherche. — [ ] Validation humaine

## Contrôles globaux

- [x] Les 31 identifiants C01–C31 apparaissent une seule fois dans la checklist d’exécution et ont été cochés après application.
- [x] Aucun exemple clinique ou Café Verdier visé par les commentaires ne subsiste dans les passages révisés.
- [x] Les exemples Rosetta sont explicitement construits ou présentés comme des sorties hypothétiques.
- [x] Le requested style-marking level ne modifie jamais `\Gamma`, `\mu` ou le claim label.
- [x] Aucune ancienne terminologie (`truth regime`, `productive divergence`, `stylistic latitude`, `invention license`) n’a été introduite.
- [x] Aucune macro interdite (`\TR`, `\PD`, `\Hallu`, `\Faith`, `\Acc`, `\CI`, `\TRs`, `\citetodo`, `\claimtodo`) n’a été introduite.
- [x] Toutes les clés de citation utilisées existent dans `references.bib`.
- [x] Les claims AA-Omniscience restent bornés au benchmark et à l’instantané cités.
- [x] `make check` réussit sans erreur LaTeX ni citation manquante.
- [x] Le changelog et les réponses aux 31 commentaires sont complétés ci-dessous.

## Journal d’exécution

- **État initial :** checklist créée avant modification du manuscrit ; le build de référence réussissait en 42 pages.
- **Application :** C01–C31 implémentés dans `main_position.tex` sans écraser les modifications préexistantes du manuscrit.
- **Contrôle textuel :** 31 marqueurs attendus sur 31 retrouvés ; aucune occurrence résiduelle de `nor` dans le manuscrit.
- **Contrôle bibliographique :** 106 clés utilisées, toutes présentes parmi les 136 entrées de `references.bib`.
- **Compilation finale :** `make check` réussi, 42 pages, aucune erreur LaTeX et aucune citation manquante ; seuls des avertissements typographiques `Underfull` non bloquants subsistent.
- **Contrôle visuel :** figures et passages remaniés inspectés dans le PDF, notamment les pages 4–6 et 18–21 ; aucun chevauchement ni texte coupé observé.

## Changelog et réponses aux commentaires

| ID | Modification appliquée | Réponse au commentaire |
|---|---|---|
| C01 | `q^*` est défini comme le contenu propositionnel normalisé du claim, puis relié à l’affirmation sur la stèle complète et l’entrée du temple. | Pris en compte : la notation est désormais introduite en langage simple avant son usage formel. |
| C02 | `m^*` est défini comme la manière dont le statut du claim est présenté ; le rôle de « One possible reconstruction » est explicité. | Pris en compte : la différence entre contenu et présentation du statut est visible sur le même exemple. |
| C03 | La phrase sur l’état `unknown` est scindée en deux propositions affirmatives simples. | Pris en compte : la construction avec `nor` a été supprimée. |
| C04 | Le texte identifie explicitement « One possible reconstruction » comme le `m^*` observé qui satisfait `\mu`. | Pris en compte : le passage décrit maintenant comment le marquage est effectivement observé. |
| C05 | Le scope vide du strict grounding est expliqué comme l’interdiction de tout claim que l’oracle laisse inconnu, avec l’exemple Rosetta. | Pris en compte : la notation ensembliste est accompagnée d’une interprétation concrète. |
| C06 | La phrase sur le style est reformulée : un choix stylistique ne peut pas rendre permissible un claim non autorisé. | Pris en compte : la séparation entre style, permission et label est conservée sans `nor`. |
| C07 | L’étape de préparation renvoie au span annoté de la figure Rosetta et relie span, claim, `q^*` et `m^*`. | Pris en compte : le pipeline est désormais ancré dans un exemple unique et traçable. |
| C08 | Les tests de `\Gamma` et `\mu` sont illustrés par la reconstruction du placement de la stèle près du temple. | Pris en compte : les deux conditions sont expliquées concrètement avant le label. |
| C09 | La procédure de conflit est ordonnée : recenser les instructions applicables, fixer leur priorité, puis spécifier le contrat. | Pris en compte : la phrase indique maintenant une procédure opérationnelle. |
| C10 | Les contraintes externes sont illustrées par des politiques de sécurité, obligations juridiques et règles professionnelles ou de domaine applicables. | Pris en compte : les catégories sont concrètes sans ajouter de conclusion normative non sourcée. |
| C11 | Les exemples cliniques sont remplacés par une reconstruction historique Rosetta autorisée et une prédiction construite de restitution future hors scope. | Pris en compte : `\Gamma` est expliqué avec l’exemple filé du papier. |
| C12 | Le texte distingue explicitement l’autorisation contractuelle de la valeur, de l’utilité et de la qualité du contenu. | Pris en compte : les deux questions d’évaluation ne sont plus confondues. |
| C13 | Le même claim Rosetta est opposé sous deux marquages : reconstruction possible et fait établi. | Pris en compte : l’effet propre de `\mu` est isolé sans recourir à un exemple clinique. |
| C14 | Claim extraction est décrite comme une segmentation ; claim recovery comme l’interprétation contextuelle du contenu et de son statut. | Pris en compte : l’exemple Rosetta rend la différence opérationnelle. |
| C15 | Le rappel de `q^*` et `m^*` est raccourci et reprend les définitions initiales. | Pris en compte : la notation reste cohérente sans nouvelle formulation concurrente. |
| C16 | « Now imagine the scene » sert d’exemple de span rhétorique sans proposition évaluable. | Pris en compte : l’absence de claim label est justifiée comme un cas normal. |
| C17 | La distinction entre evidence state et claim label est introduite dès la première utilisation substantielle, puis rappelée brièvement. | Pris en compte : le lecteur dispose de la distinction avant les décisions de classification. |
| C18 | Le méta-claim « the evidence is insufficient » est distingué de l’affirmation de la proposition enchâssée. | Pris en compte : le refus peut maintenant être évalué sans attribuer au modèle le claim refusé. |
| C19 | Un paragraphe présente le style-marking comme variable de robustesse pour la claim recovery, sans lui donner de pouvoir contractuel. | Pris en compte : l’utilité expérimentale est formulée comme hypothèse testable, pas comme résultat acquis. |
| C20 | La related work relie factualité et créativité aux contenus laissés inconnus, tout en séparant permission et qualité créative. | Pris en compte : l’intersection et les limites respectives des deux littératures sont explicites. |
| C21 | Le guide de lecture et la caption de la cartographie sont raccourcis ; les précautions indispensables sont conservées une seule fois. | Pris en compte : la figure n’invite plus à une lecture quantitative de sa géométrie. |
| C22 | Case B utilise désormais la pierre de Rosette et oppose un cadre historique à un cadre fictionnel d’histoire alternative déclaré. | Pris en compte : le cas reste volontairement multifactoriel et le changement de contrat est explicite. |
| C23 | Case C conserve l’oracle, le scope, le marking requis, le contenu et l’evidence state ; seul `m^*` change. | Pris en compte : le contraste isole bien l’échec ou la satisfaction du marquage. |
| C24 | Case D oppose une reconstruction historique autorisée à une prédiction construite de transfert futur, hors du scope fixé. | Pris en compte : le changement de `q^*` et la cause `out-of-scope` sont visibles. |
| C25 | Une transition relie les prédictions des worked cases aux manipulations et mesures de la Research Agenda. | Pris en compte : le passage des exemples à l’évaluation empirique est motivé. |
| C26 | Le passage conserve trois idées : relativité du label, non-relativité de la vérité et portée limitée de licensed divergence. | Pris en compte : les répétitions ont été retirées. |
| C27 | Le passage empirique distingue limites théoriques, taux observés en déploiement et observation de benchmark ; les deux clés AA sont présentes dans la bibliographie. | Pris en compte : chaque niveau de preuve est annoncé avec une portée calibrée. |
| C28 | AA-Omniscience est résumé à son protocole pertinent : répondre ou s’abstenir sur des questions factuelles. | Pris en compte : les détails secondaires ont été supprimés. |
| C29 | Le leaderboard est présenté comme un instantané transversal limité et non comme une loi causale, une tendance longitudinale ou une estimation de prévalence. | Pris en compte : la conclusion empirique est bornée à ce que la source permet. |
| C30 | Response-Level Interpretation est condensé en trois précautions : conformité au contrat, indétermination et agrégation après labellisation. | Pris en compte : les protections conceptuelles restent présentes sous une forme plus courte. |
| C31 | Les limites sont regroupées en trois familles : portée du construit, implémentation/spécification et état actuel des preuves. | Pris en compte : les limites de la proposition sont distinguées des travaux de validation encore nécessaires. |
