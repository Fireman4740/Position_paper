# Revue finale indépendante de la réécriture

**Date :** 28 septembre 2026  
**Périmètre :** comparaison ciblée de `réécriture_papier/truth_contract_position_paper.tex` avec `base_avant_revision.tex`, `mainV5_encadrant.tex` et `audit_sources_41.md`. Cette passe recherche les régressions scientifiques et d’intégration introduites par la révision ; elle ne rouvre pas l’ensemble de la science héritée du manuscrit de base. Aucun fichier du manuscrit n’a été modifié pendant la revue.

## Verdict

La réécriture est scientifiquement plus prudente et nettement mieux traçable que la base. Les corrections prioritaires de l’audit des 41 ressources ont été intégrées : rôle des contrôles de validité de tâche pour les lignes 37–41, statut `unverified` de $\mu$, séparation de l’abstention, qualification des six absences de référence factuelle externe, correction de la ligne 34, et attribution prudente de StoryScore et SimpleText. L’inventaire principal contient bien 41 ressources et les IDs correspondent aux trois tables détaillées.

La version compile et les citations/renvois sont résolus. Elle n’est toutefois pas prête à être livrée comme PDF final : l’annexe C perd deux figures existantes à cause du déplacement du fichier principal dans un sous-dossier. Une décision scientifique antérieure à cette révision reste également ouverte sur la règle de label des contradictions.

## Constats actionnables

### P1 — Les deux graphiques AA-Omniscience disparaissent du PDF compilé

**Localisation :** `réécriture_papier/truth_contract_position_paper.tex`, lignes 2104 et 2106 ; PDF compilé, page 35, figure C.1.

Les deux `\IfFileExists{figures/...}` sont évalués depuis `réécriture_papier/`, mais les PNG se trouvent dans le dossier `figures/` à la racine du dépôt. Le build réussit donc en silence et remplace chaque panneau par « Source graphic not supplied ». La légende continue pourtant à décrire les deux graphiques comme présents. C’est une régression d’intégration provoquée par le changement de répertoire du manuscrit.

**Correction proposée :** placer les deux fichiers utilisés dans `réécriture_papier/figures/` en conservant leurs noms, ou définir un chemin graphique explicite et stable vers le dossier source. Recompiler ensuite et contrôler visuellement la page C.1. Éviter de conserver le fallback dans un PDF destiné à diffusion : il masque une livraison incomplète derrière un build vert.

### P2 — Décision scientifique encore ouverte : traitement des contradictions et des faits soutenus mais exclus

**Localisation :** `réécriture_papier/truth_contract_position_paper.tex`, lignes 824–884 et 1593–1603 ; `AGENTS.md`, tableau « État vis-à-vis de l’évidence ».

Le manuscrit de base et la réécriture permettent à un claim `CONTRADICTED` de recevoir `LD` si $\Gamma$ autorise la modification et si $\mu$ est satisfait ; ils permettent aussi à un claim `ENTAILED` explicitement exclu de recevoir `H`. Le contexte canonique du dépôt dit au contraire `Contradicted → hallucination`, `Entailed → supported`, et réserve `licensed divergence` à `Unknown`. Ce conflit n’a pas été créé par la présente révision et il ne faut pas le corriger implicitement pendant une passe éditoriale.

**Décision demandée :** confirmer l’une des deux ontologies avant la prochaine révision scientifique. Si le tableau d’`AGENTS.md` est normatif, il faudra modifier ensemble l’abstract, la règle, le tableau de décision, les cas d’alternate history, l’agenda et la discussion. Si la règle du manuscrit est retenue, mettre à jour `AGENTS.md` pour éviter qu’un futur agent « corrige » la science dans le sens opposé.

### P2 — `s_i` est défini comme un « source span » alors qu’il désigne un span de la réponse

**Localisation :** `réécriture_papier/truth_contract_position_paper.tex`, lignes 1066–1074, en particulier 1072 ; figure 2, ligne 1051 et rangée « response spans » autour de la ligne 991.

Le texte introductif, la figure et l’usage de la trace indiquent tous que $s_i$ pointe vers le segment de réponse dont le claim a été récupéré. La phrase « $s_i$ identifies the source span » peut être lue comme un passage de la source de preuve, ce qui brouille précisément la provenance que la nouvelle trace cherche à formaliser.

**Correction proposée :** remplacer localement `source span` par `response span`. Si la trace doit aussi pointer vers les passages de preuve, ajouter un champ distinct plutôt que surcharger $s_i$.

### P2 — Pagination très coûteuse des longtables de l’annexe B

**Localisation :** `réécriture_papier/truth_contract_position_paper.tex`, lignes 1948–1955, 1986–1994 et 2028–2037 ; PDF compilé, pages 29–34.

La page 30 ne contient que la ligne 13 de B.1. Les pages 32 et 34 contiennent respectivement les trois dernières lignes de B.2 et B.3, avec une grande zone blanche. Le contenu reste lisible, mais la révision passe de 33 pages annoncées dans le contexte du dépôt à 41 pages et donne à l’annexe un aspect très dilaté.

**Correction proposée :** essayer une composition légèrement plus compacte, modifier les coupures entre B.1–B.3, ou réunir les parties dans une stratégie de pagination qui évite des pages d’une à trois lignes. Vérifier le résultat rendu, car un simple changement de taille peut déplacer d’autres ruptures. Si aucune contrainte de longueur ne s’applique, ce point reste éditorial plutôt que scientifique.

### P3 — Le titre canonique du dépôt et le titre du document divergent

**Localisation :** `réécriture_papier/truth_contract_position_paper.tex`, lignes 29 et 72–74 ; `AGENTS.md`, section « Le papier ».

Le dépôt annonce *Hallucination Evaluation Should Be Contract-Aware: Reference Evidence, Permission Scope, and Licensed Divergence*, tandis que les trois versions comparées emploient *Hallucination Is Relative: Evaluating LLM Divergence under Truth Contracts*. Il s’agit d’une divergence héritée, pas d’une régression de cette réécriture.

**Correction proposée :** confirmer le titre retenu, puis synchroniser `\title`, `pdftitle`, `\runningtitle` et les métadonnées de soumission en une seule passe.

### P3 — Une référence de figure encode « Appendix B » en dur

**Localisation :** `réécriture_papier/figures/resource_clusters.tex`, ligne 67.

Le texte interne à la figure écrit `Appendix B` alors que le reste du manuscrit utilise `Appendix~\ref{app:mapping}`. La valeur actuelle est correcte, mais elle deviendra fausse si l’ordre des appendices change.

**Correction proposée :** employer le renvoi symbolique dans le fichier de figure.

## Vérifications réussies

- Compilation forcée, puis recompilation après la dernière modification concurrente du manuscrit : **succès, 41 pages, aucune erreur**.
- Bibliographie : **94 clés citées, aucune clé manquante** dans `references.bib` ; aucune citation indéfinie au build.
- Renvois LaTeX : **aucun `\ref` indéfini et aucun label dupliqué**.
- Migration de notation : aucune occurrence résiduelle de l’ancien symbole isolé `$E$` ou `E_i`; `$\mathrm{ES}$` est utilisé de façon cohérente.
- Inventaire : IDs 1–41 présents une fois dans les tables détaillées ; regroupements de la figure 3 cohérents avec le tableau principal.
- Figure 2 : la nouvelle bordure « Claim trace » englobe bien les spans, claims, états, labels et motifs ; la légende ne la présente pas comme un résultat empirique.
- Figure 4 / cas A : même réponse, même claim, même marking observé et mêmes $\Gamma,\mu$ ; seul le référentiel de l’oracle change. L’ajout A2 est explicitement déclaré construit et ne prétend pas constituer une preuve historique.
- Audit des sources : StoryScore et SimpleText restent hors du total fixe de 41 ; les formulations locales correspondent aux limites consignées dans `audit_sources_41.md`.

## Anomalies non bloquantes du build

Le log ne contient que des `Underfull \vbox`, un `Underfull \hbox` aux lignes 1419–1425 et le warning `hyperref` déjà lié à la classe. Aucune de ces alertes ne justifie une modification scientifique. `git diff --check` relève seulement un espace final à la ligne 345.


---

**Suivi par l’auteur de la révision (après cette revue) :** corrections d’images, de span, de renvoi et de pagination réalisées. Voir [le suivi daté des corrections](suivi_commentaires_et_decisions.md#suivi-de-la-revue-finale-et-vérification). Le constat scientifique reste ouvert. La présente revue est conservée comme photographie de l’état intermédiaire.
