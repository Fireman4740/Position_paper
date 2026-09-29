# Révision du papier — TODO, commentaires et décisions

> **Dernière mise à jour — tableaux simplifiés :** [tableaux détaillés dans le corps, sans exposants ni codes](tableaux_lisibles/changements_tableaux.md). Cette passe remplace la disposition antérieure en annexe ; PDF de 38 pages.

> **Mise à jour après arbitrage de l’auteur :** voir [la suite G7–G23 et la figure 4 à cinq exemples](suite_G7_G23/changements_G7_G23.md). Elle remplace les décisions et le bilan de compilation antérieurs sur ces points : oracle correct supposé uniquement pour les illustrations, six catégories communes, Examples partout, PDF de 40 pages.

Date : 28 septembre 2026. Base : `truth_contract_position_paper.tex` dans son état local au début de cette intervention. Les changements locaux préexistants, notamment la figure en clusters, ont été préservés. `mainV5.tex` sert de proposition de révision ; ses consignes internes sont des objets de revue et ne sont pas automatiquement appliquées.

## À lire d’abord

La révision intègre les améliorations de structure, d’explication et de présentation demandées. Elle ne constitue pas une validation empirique du cadre ni un SOTA exhaustif. Les 41 ressources disposent d’un registre d’audit ; certains articles n’ont été examinés qu’au niveau du résumé primaire et un accès reste partiel.

**Périmètre réel des commentaires :** 31 fils / 38 messages dans le seul fichier présent dans l’export. Les métadonnées annoncent 5 fichiers / 186 fils / 208 messages, mais les quatre autres fichiers ne sont pas fournis. Le fil C23 est tronqué. Les 31 fils disponibles sont tous suivis ci-dessous ; aucune fin manquante n’a été reconstruite.

## TODO priorisée

### P0 — décisions scientifiques avant soumission

- [ ] **Arbitrer la règle des labels.** AGENTS indique `entailed → supported`, `contradicted → hallucination`, et réserve LD à unknown autorisé et marqué. Les deux manuscrits permettent aussi une contradiction expressément autorisée et marquée, et peuvent appeler H un fait entailed explicitement exclu par une consigne d’invention. La révision conserve la règle des manuscrits en attendant une décision explicite ; elle n’a pas tranché ce désaccord. Propager ensuite le choix dans abstract, Γ, table de décision, exemples, discussion et annexes, avec les noms de labels G/grounded ou supported.
- [ ] **Documenter la sélection initiale des 41 ressources.** Fournir les recherches, dates, critères d’inclusion/exclusion et versions effectivement utilisés. Le texte expose actuellement que cette provenance manque ; aucune procédure rétrospective n’est inventée.
- [ ] **Achever le recodage vérifiable de Γ et μ.** Pour chaque ressource, conserver passage source, instruction, unité évaluée et check. Γ demeure une interprétation provisoire ; μ = unverified décrit l’état de l’audit, pas une absence de marking.

### P1 — compléter la couverture et consolider le SOTA

- [ ] Récupérer les quatre fichiers de commentaires absents et le texte complet de C23 ; fusionner les doublons avec ce registre.
- [ ] Approfondir les ressources marquées A (aperçu primaire) et P (accès partiel, ID 36) avant toute affirmation négative sur leurs capacités.
- [ ] Décider si StoryScore et SimpleText 2026 rejoignent l’inventaire. Ils sont déjà discutés dans Related Work avec des clés BibTeX existantes, mais leur ajout aux 41 demande le même codage et une nouvelle version du périmètre.
- [ ] Réaliser la revue indépendante via une autre famille de modèle selon le protocole Hermes si autorisée. Les agents de revue actuels ont un contexte neuf, mais ne certifient pas cette exigence. La tentative `hermes -z -m attack` a été refusée par le contrôle automatique : destination externe et export du manuscrit non vérifiés. Aucun contournement effectué.
- [ ] Confirmer le titre canonique : AGENTS et le manuscrit de départ emploient des titres différents. Le titre hérité du manuscrit a été conservé.

### P2 — améliorations intégrées dans cette révision

- [x] Related Work en section 2 ; framework en section 3 ; roadmap mise à jour.
- [x] Figure 2 : cadre Claim trace, statut observé visible, provenance de l’exemple explicite.
- [x] Figure 3 : clusters locaux conservés et corrigés, IDs renvoyant au tableau du corps ; cible d’évaluation présentée comme proposition.
- [x] Figure 4 : deux situations A1/A2, réponse identique, seul l’oracle change ; labels prédits, données construites explicitement annoncées.
- [x] Tableau des 41 ressources remonté dans le corps ; annexe B revue et rendue lisible avec en-têtes répétés.
- [x] Audit ciblé des 41 ressources et mise à jour du Related Work avec deux protocoles récents déjà dans la bibliographie.
- [x] Claim trace formalisé et illustré ; définition de l’evaluator et des trois champs clarifiée.
- [x] Agenda précisé ; tableau redondant retiré.
- [x] Erreurs decree/Rosetta stone évitées ; fausse attribution de l’extrait illustratif à Wikipedia retirée.
- [x] Graphiques AA-Omniscience existants rétablis depuis le dossier figures du dépôt.

## Registre des 31 fils

Les numéros C01–C31 suivent l’ordre du JSON. `dataPos` est l’ancrage exporté dans mainV5, pas une ligne de la version révisée. Les liens ci-dessous pointent vers le passage révisé concerné ; certains regroupent plusieurs changements.

### C01 — Intégré

**elod.egyed-zsigmond — 16 September, 9:04 pm**

> comparison de quoi avec quoi ?

**Passage :** [manuscrit, l. 112](/Users/mathiscarlesso/Documents/Cesi/Alteca/Thèse/Position_paper/réécriture_papier/truth_contract_position_paper.tex:112). Ancrage original `dataPos=20486`.

**Traitement :** La roadmap annonce la comparaison des 41 ressources selon les champs du contrat et les cinq cas construits.

### C02 — Intégré

**elod.egyed-zsigmond — 16 September, 9:05 pm**

> examples

**Passage :** [manuscrit, l. 1321](/Users/mathiscarlesso/Documents/Cesi/Alteca/Thèse/Position_paper/réécriture_papier/truth_contract_position_paper.tex:1321). Ancrage original `dataPos=20522`.

**Traitement :** Worked Examples et annonce explicite de cinq cas illustratifs, sans résultat expérimental revendiqué.

### C03 — Traité localement

**Pierre-Yves Genest — 14 September, 10:22 am**

> praise : magnifique !
> (Il reste quelques typos à corriger néanmoins)

**Passage :** [manuscrit, l. 112](/Users/mathiscarlesso/Documents/Cesi/Alteca/Thèse/Position_paper/réécriture_papier/truth_contract_position_paper.tex:112). Ancrage original `dataPos=20666`.

**Traitement :** Corrections de langue dans les passages repris ; le compliment ne constitue pas une demande scientifique. Pas de certification d’une correction linguistique exhaustive.

### C04 — Intégré

**Martino Lovisetto — 21 September, 9:57 am**

> début de section trop "brusque". Mettre une phrase de contexte pour introduire. (la reference de quoi ?)

**Passage :** [manuscrit, l. 600](/Users/mathiscarlesso/Documents/Cesi/Alteca/Thèse/Position_paper/réécriture_papier/truth_contract_position_paper.tex:600). Ancrage original `dataPos=20709`.

**Traitement :** Ouverture contextualisée : réponse, claim, source illustrative et différence evidence/permission.

### C05 — Intégré

**Mathis Carlesso — 21 September, 9:59 am**

> mettre au debut de la section

**Passage :** [manuscrit, l. 600](/Users/mathiscarlesso/Documents/Cesi/Alteca/Thèse/Position_paper/réécriture_papier/truth_contract_position_paper.tex:600). Ancrage original `dataPos=21048`.

**Traitement :** Le contexte du musée est placé au début du framework.

### C06 — Intégré

**Martino Lovisetto — 21 September, 10:01 am**

> faire une transition plus smooth pour mettre en relation ces deux paragraphes

**Passage :** [manuscrit, l. 600](/Users/mathiscarlesso/Documents/Cesi/Alteca/Thèse/Position_paper/réécriture_papier/truth_contract_position_paper.tex:600). Ancrage original `dataPos=21048`.

**Traitement :** Transition entre exemple, conditions d’évaluation et représentation par le contrat.

### C07 — Intégré

**Mathis Carlesso — 21 September, 10:00 am**

> plus de context

**Passage :** [manuscrit, l. 600](/Users/mathiscarlesso/Documents/Cesi/Alteca/Thèse/Position_paper/réécriture_papier/truth_contract_position_paper.tex:600). Ancrage original `dataPos=21121`.

**Traitement :** La référence construite et la tâche muséale sont identifiées.

### C08 — Intégré

**Mathis Carlesso — 21 September, 10:00 am**

> plus détailler

**Passage :** [manuscrit, l. 600](/Users/mathiscarlesso/Documents/Cesi/Alteca/Thèse/Position_paper/réécriture_papier/truth_contract_position_paper.tex:600). Ancrage original `dataPos=21183`.

**Traitement :** Le texte précise ce qui reste fixe et ce qui change dans l’exemple.

### C09 — Reformulé

**Martino Lovisetto — 21 September, 10:17 am**

> tu veux dire quoi par "departures" ? Tu veux dire "differences par rapport à la source" ? Tu veux dire "morceaux de texte de la source" ? Cela peut être ambigue, il faut simplifier et clarifier

**Passage :** [manuscrit, l. 625](/Users/mathiscarlesso/Documents/Cesi/Alteca/Thèse/Position_paper/réécriture_papier/truth_contract_position_paper.tex:625). Ancrage original `dataPos=22932`.

**Traitement :** Les ajouts ou changements par rapport au contenu de référence sont explicités dans permission scope.

### C10 — Intégré

**elod.egyed-zsigmond — 16 September, 9:25 pm**

> il y a bcp trop de choses ici. pas cohérentes avec les 3 composants et non introduites.

**Passage :** [manuscrit, l. 625](/Users/mathiscarlesso/Documents/Cesi/Alteca/Thèse/Position_paper/réécriture_papier/truth_contract_position_paper.tex:625). Ancrage original `dataPos=23313`.

**Traitement :** Présentation des trois composants avant l’équation ; les détails sont rattachés à leur composant.

### C11 — Reformulé

**Martino Lovisetto — 21 September, 10:20 am**

> deviation ?

**Passage :** [manuscrit, l. 625](/Users/mathiscarlesso/Documents/Cesi/Alteca/Thèse/Position_paper/réécriture_papier/truth_contract_position_paper.tex:625). Ancrage original `dataPos=23529`.

**Traitement :** Formulations concrètes sur les ajouts/changements plutôt qu’un terme deviation non défini.

### C12 — Objection reformulée

**elod.egyed-zsigmond — 16 September, 9:24 pm**

> reformuler: p n'est pas un "task context" TC(p) l'est

**Passage :** [manuscrit, l. 643](/Users/mathiscarlesso/Documents/Cesi/Alteca/Thèse/Position_paper/réécriture_papier/truth_contract_position_paper.tex:643). Ancrage original `dataPos=23744`.

**Traitement :** p reste le contexte complet ; TC(p) est sa représentation contractuelle. Confondre les deux serait une erreur de niveau.

### C13 — Intégré

**elod.egyed-zsigmond — 16 September, 9:27 pm**

> reformuler: after the call of the LLM (`?)

**Passage :** [manuscrit, l. 625](/Users/mathiscarlesso/Documents/Cesi/Alteca/Thèse/Position_paper/réécriture_papier/truth_contract_position_paper.tex:625). Ancrage original `dataPos=24067`.

**Traitement :** Le contrat est fixé indépendamment de la réponse jugée, avant tout ajustement opportuniste.

### C14 — Reformulé

**elod.egyed-zsigmond — 16 September, 9:29 pm**

> je ne vois pas l'intérêt de cette phrase ici

**Passage :** [manuscrit, l. 625](/Users/mathiscarlesso/Documents/Cesi/Alteca/Thèse/Position_paper/réécriture_papier/truth_contract_position_paper.tex:625). Ancrage original `dataPos=24552`.

**Traitement :** La phrase isolée sur les contraintes externes a été retirée de ce passage ; les contraintes de domaine restent dans p. L’interdiction d’élargir le scope après coup est conservée.

### C15 — Intégré

**elod.egyed-zsigmond — 16 September, 9:30 pm**

> avant tu dis qu'un oracle évalue une "response". alors il doit être capable d'y extraire les claims

**Passage :** [manuscrit, l. 746](/Users/mathiscarlesso/Documents/Cesi/Alteca/Thèse/Position_paper/réécriture_papier/truth_contract_position_paper.tex:746). Ancrage original `dataPos=25814`.

**Traitement :** Pour le texte, extraction, interprétation et vérification appartiennent au système oracle ; interfaces explicites.

### C16 — Resserré

**elod.egyed-zsigmond — 16 September, 9:32 pm**

> redondant, enlever

**Passage :** [manuscrit, l. 625](/Users/mathiscarlesso/Documents/Cesi/Alteca/Thèse/Position_paper/réécriture_papier/truth_contract_position_paper.tex:625). Ancrage original `dataPos=26292`.

**Traitement :** Répétitions réduites ; conservation de la distinction essentielle : une permission d’inventer ne crée pas de preuve.

### C17 — Intégré partiellement

**elod.egyed-zsigmond — 16 September, 9:36 pm**

> bcp trop détaillé pour ce papier. On avaiit défini l'orcale comme une boite noire, ce n'est pas la peine d'aller dans les détails

**Passage :** [manuscrit, l. 625](/Users/mathiscarlesso/Documents/Cesi/Alteca/Thèse/Position_paper/réécriture_papier/truth_contract_position_paper.tex:625). Ancrage original `dataPos=26885`.

**Traitement :** Oracle raccourci, implémentation ouverte ; interface, couverture des tests et limites maintenues pour rendre le cadre interprétable.

### C18 — Reformulé

**elod.egyed-zsigmond — 17 September, 7:03 pm**

> ?? c'est el première fois que tu parles de cela, c'est quoi ?

**Passage :** [manuscrit, l. 796](/Users/mathiscarlesso/Documents/Cesi/Alteca/Thèse/Position_paper/réécriture_papier/truth_contract_position_paper.tex:796). Ancrage original `dataPos=35615`.

**Traitement :** Définition des échecs procéduraux, avec renvoi annexe A. Rejet de la solution qui suppose simplement l’oracle correct.

### C19 — Intégré

**elod.egyed-zsigmond — 17 September, 10:09 am**

> A enlever

**elod.egyed-zsigmond — 24 September, 11:20 am**

> déplacer dans la section 2.5: Style as a Robustness Question}\label{subsec:style}

**Passage :** [manuscrit, l. 1094](/Users/mathiscarlesso/Documents/Cesi/Alteca/Thèse/Position_paper/réécriture_papier/truth_contract_position_paper.tex:1094). Ancrage original `dataPos=47595`.

**Traitement :** Développement du style déplacé dans sa sous-section ; figure 2 conserve une mention courte indiquant une évaluation séparée.

### C20 — Intégré

**Mathis Carlesso — 25 September, 9:56 am**

> Définir formellement

**Mathis Carlesso — 25 September, 9:57 am**

> avec exemple de la figure 2

**Passage :** [manuscrit, l. 1070](/Users/mathiscarlesso/Documents/Cesi/Alteca/Thèse/Position_paper/réécriture_papier/truth_contract_position_paper.tex:1070). Ancrage original `dataPos=48894`.

**Traitement :** Trace formelle avec span de réponse, contenu, statut observé, état d’évidence, checks, label et raison ; exemple du claim 3.

### C21 — Intégré

**elod.egyed-zsigmond — 17 September, 7:03 pm**

> As presented in figure 2

**Passage :** [manuscrit, l. 1064](/Users/mathiscarlesso/Documents/Cesi/Alteca/Thèse/Position_paper/réécriture_papier/truth_contract_position_paper.tex:1064). Ancrage original `dataPos=49065`.

**Traitement :** Renvoi local vers figure 2 et son cadre Claim trace.

### C22 — Intégré

**elod.egyed-zsigmond — 17 September, 7:14 pm**

> c'est quoi isi : un humain, un programme ?

**elod.egyed-zsigmond — 25 September, 10:11 am**

> clarifier / oracle

**Passage :** [manuscrit, l. 625](/Users/mathiscarlesso/Documents/Cesi/Alteca/Thèse/Position_paper/réécriture_papier/truth_contract_position_paper.tex:625). Ancrage original `dataPos=54137`.

**Traitement :** Evaluator défini comme humain, programme ou combinaison ; distingué de l’oracle et de sa fonction.

### C23 — Partiel : export tronqué

**elod.egyed-zsigmond — 23 September, 8:58 pm**

> pas claire

**elod.egyed-zsigmond — 25 September, 10:45 am**

> décrire les catégories des tâches et comment tu les a identifié. Remplacer les noms de catégories pa...

**Passage :** [manuscrit, l. 1126](/Users/mathiscarlesso/Documents/Cesi/Alteca/Thèse/Position_paper/réécriture_papier/truth_contract_position_paper.tex:1126). Ancrage original `dataPos=64517`.

**Traitement :** Cinq familles définies et règle de regroupement explicitée. La procédure historique de sélection n’est pas inventée. La fin « Remplacer les noms de catégories pa... » manque dans le JSON.

### C24 — Intégré

**elod.egyed-zsigmond — 23 September, 9:00 pm**

> il faut lister les ressources ici, pas dans l'annexe. Tu les décris trop en détails pour que le texte reste compréhensible sans regarder les annexes. Il devrais l'être pourtant.

**Passage :** [manuscrit, l. 1166](/Users/mathiscarlesso/Documents/Cesi/Alteca/Thèse/Position_paper/réécriture_papier/truth_contract_position_paper.tex:1166). Ancrage original `dataPos=65315`.

**Traitement :** Tableau des 41 noms et IDs dans le corps. Matrices détaillées et citations par ressource conservées en annexe B.

### C25 — Intégré

**elod.egyed-zsigmond — 23 September, 9:03 pm**

> lesquels ?

**Mathis Carlesso — 25 September, 10:58 am**

> préciser

**Passage :** [manuscrit, l. 1213](/Users/mathiscarlesso/Documents/Cesi/Alteca/Thèse/Position_paper/réécriture_papier/truth_contract_position_paper.tex:1213). Ancrage original `dataPos=66600`.

**Traitement :** Ressources nommées et IDs explicites, notamment 37–41 ; vérifications de validité de tâche distinguées de l’entailment.

### C26 — Intégré

**elod.egyed-zsigmond — 23 September, 9:10 pm**

> reformuler ou mettre dans une section perspectives

**elod.egyed-zsigmond — 25 September, 10:57 am**

> mettre le paragraphe dans le research agenda

**Passage :** [manuscrit, l. 1453](/Users/mathiscarlesso/Documents/Cesi/Alteca/Thèse/Position_paper/réécriture_papier/truth_contract_position_paper.tex:1453). Ancrage original `dataPos=67911`.

**Traitement :** Recodage et validation développés dans l’agenda ; brève limite conservée au voisinage des résultats pour éviter une surinterprétation.

### C27 — Intégré avec correction de fond

**elod.egyed-zsigmond — 23 September, 9:11 pm**

> ici tu met d'abord le label et ensuite kle nombre. Dans la section précédente tu présentes les résultats différamment, il faut homogénéiser

**elod.egyed-zsigmond — 25 September, 10:59 am**

> précise les numéros de ressource en chiffres

**Passage :** [manuscrit, l. 1213](/Users/mathiscarlesso/Documents/Cesi/Alteca/Thèse/Position_paper/réécriture_papier/truth_contract_position_paper.tex:1213). Ancrage original `dataPos=68191`.

**Traitement :** IDs en chiffres et comptes Γ explicités comme interprétatifs. Les comptes μ 26/15 sont retirés : leur distinction n’est pas suffisamment établie. μ devient unverified, sans claim d’absence.

### C28 — Intégré

**elod.egyed-zsigmond — 23 September, 9:19 pm**

> Il faut commencer par quelques mots sur le Case A puis B puis ainsi de suite

**Passage :** [manuscrit, l. 1321](/Users/mathiscarlesso/Documents/Cesi/Alteca/Thèse/Position_paper/réécriture_papier/truth_contract_position_paper.tex:1321). Ancrage original `dataPos=75274`.

**Traitement :** Vue d’ensemble A–E avant les cas et cadrage des variables ; figure 4 présente A1/A2 parallèles.

### C29 — Intégré

**elod.egyed-zsigmond — 23 September, 9:22 pm**

> changer la police

**Passage :** [manuscrit, l. 1343](/Users/mathiscarlesso/Documents/Cesi/Alteca/Thèse/Position_paper/réécriture_papier/truth_contract_position_paper.tex:1343). Ancrage original `dataPos=82201`.

**Traitement :** L’ancrage mainV5 porte sur le label G du cas A : emploi de la macro Grd en mode texte. Figure 4 a aussi une typographie homogène.

### C30 — Intégré

**elod.egyed-zsigmond — 23 September, 9:24 pm**

> pas assez précis

**Passage :** [manuscrit, l. 1453](/Users/mathiscarlesso/Documents/Cesi/Alteca/Thèse/Position_paper/réécriture_papier/truth_contract_position_paper.tex:1453). Ancrage original `dataPos=87727`.

**Traitement :** Questions testables et priorités précisant unités, comparaisons, invariants et vérifications attendues.

### C31 — Intégré

**elod.egyed-zsigmond — 23 September, 9:27 pm**

> quel est l'intérêt de ce tableau ?

**Passage :** [manuscrit, l. 1453](/Users/mathiscarlesso/Documents/Cesi/Alteca/Thèse/Position_paper/réécriture_papier/truth_contract_position_paper.tex:1453). Ancrage original `dataPos=88864`.

**Traitement :** Tableau récapitulatif redondant de l’agenda retiré ; priorités conservées et développées dans le texte.

## Revue des changements de mainV5 : retenus, réécrits, écartés

Les fichiers sont collaboratifs : on ne peut pas attribuer chaque modification à l’encadrant à partir du seul diff. Ce jugement porte sur les modifications, pas sur leurs auteurs.

| Décision | Changements | Pourquoi et traitement |
|---|---|---|
| Retenir | Contextualiser le framework, présenter les trois composants avant l’équation, orienter les cas | Améliore la lecture ; intégré avec une prose corrigée. |
| Retenir | Définir l’evaluator et montrer le claim trace | Rend la méthode interprétable ; définition formelle et figure 2 complétées. |
| Retenir | Ressources visibles dans le corps et familles explicites | Le lecteur peut identifier les objets comparés sans parcourir l’annexe. |
| Réécrire | Alléger l’oracle | Réduction des répétitions, maintien de l’interface et de la distinction unknown/échec. |
| Réécrire | p et TC(p) | p reste contexte, TC(p) sa représentation contractuelle ; l’objection littérale n’est pas acceptée. |
| Réécrire | E → ES | Le renommage incomplet de mainV5 est incohérent ; ES a été adopté uniformément dans la révision. |
| Réécrire | Style dans figure 2 | Développement déplacé dans la section style ; mention courte dans la légende. |
| Réécrire | Résultats du mapping | Vérifications de validité de tâche et vérifications factuelles séparées ; comptes μ non démontrés retirés. |
| Réécrire | Research agenda | Questions opérationnelles ; tableau supprimé car redondant dans cette version. |
| Écarter | Remplacer decree par Rosetta stone | Confond l’objet, la date du décret et la découverte ; détruit l’exemple de contradiction. |
| Écarter | Attribuer le fragment construit à Wikipedia | Une illustration ne doit pas se présenter comme une citation vérifiée. |
| Écarter | Supposer l’oracle correct pour évacuer ses échecs | Masque la différence entre manque de preuve et procédure inexécutable. |
| Écarter | Retirer la fixation préalable du contrat et l’interdiction d’élargissement après coup | Permettrait de légitimer arbitrairement une sortie après l’avoir observée. |
| Écarter | Enlever les limites du mapping ou généraliser à tout le domaine | L’échantillon purposif et l’audit partiel ne justifient ni exhaustivité ni absence universelle. |
| Écarter | Faire de Wu/Gong une preuve d’un permission scope ou confondre informativeness et compréhension | Les sources examinées ne soutiennent pas ces attributions précises. |

### Écarts motivés par rapport aux recommandations de l’agent de comparaison

La revue indépendante donne des recommandations, pas des décisions automatiques. J’ai retenu un renommage ES complet (elle critiquait sa version partielle), déplacé le développement du style hors de la figure tout en conservant le rappel, placé les 41 noms dans un tableau compact du corps selon la demande utilisateur, et supprimé le tableau de l’agenda après conservation des priorités dans la prose.

## Pièces de travail

- [Comparaison indépendante détaillée avec mainV5](../review_independante_diff_elod_2026-09-28.md).
- [Revue finale indépendante](review_finale_independante.md), complétée par le suivi des corrections ci-dessous.
- [Audit des 41 ressources : sources primaires et profondeur de lecture](audit_sources_41.md).
- [Base avant intervention](base_avant_revision.tex), [version mainV5 figée](mainV5_encadrant.tex).
- [Diff base → mainV5](diff_base_mainV5.patch), [diff base → révision](diff_base_revision.patch).
- [Codage initial des 41 ressources](resources_41_baseline.json), préservé pour suivre les changements.


## Suivi de la revue finale et vérification

La revue finale indépendante porte sur un état intermédiaire de 41 pages. Corrections apportées ensuite :

- P1 images AA-Omniscience : deux fichiers originaux copiés depuis `figures/` vers le dossier de figures du manuscrit ; les deux graphiques sont désormais visibles. Aucun chiffre ni graphique reconstitué.
- P2 `source span` : remplacé par `response span` dans la définition de s_i ; ancien exemple textuel « Rosetta, 1799 » mis en cohérence avec la réponse affichée.
- P2 coupures de tableaux : largeurs redistribuées, espaces resserrés et sauts forcés inutiles supprimés ; B.1, B.2 et B.3 tiennent désormais chacun sur une page (29–31). Police footnotesize conservée.
- P3 renvoi annexe B de la figure 3 : remplacé par une référence LaTeX.
- Conflit scientifique et titre : laissés explicitement dans la TODO de décision.

Vérification finale : `make check`, puis `make pdf` dans `réécriture_papier`. PDF de **39 pages**, **0 erreur LaTeX**, **0 citation manquante** sur 94 clés utilisées, **0 référence indéfinie**, **0 boîte Overfull**, 41 IDs d’annexe présents une fois chacun. Le warning de classe hyperref sur pdfpagelabels et des Underfull sans débordement restent présents. Figures 2/3/4, inventaire du corps, trois tableaux d’annexe et graphiques rétablis inspectés visuellement. Ces contrôles vérifient le document et sa cohérence interne, pas la validité empirique de sa thèse. Détails : [verification_finale.json](verification_finale.json).
