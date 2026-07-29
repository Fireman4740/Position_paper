# Audit de révision du position paper

Date du contrôle : 28 juillet 2026  
Review utilisée : `review_position_paper_CL_2026-07-28(1).md`

## Verdict

Toutes les corrections rédactionnelles, structurelles et formelles qui
pouvaient être réalisées dans le manuscrit ont été intégrées. Le papier est
désormais organisé comme une démonstration guidée : problème, règle proposée,
comparaison avec les alternatives, portée des éléments de preuve, tests
contrastifs, programme empirique, limites, puis conclusion.

Trois demandes de la review ne peuvent toutefois pas être déclarées
« complètement résolues » par une réécriture :

1. le mapping reste un codage exploratoire par un seul auteur, sans second
   codeur ni mesure d'accord ;
2. les cas contrastifs restent construits et ne comprennent pas encore deux
   ou trois items documentés reproduits depuis des benchmarks existants ;
3. la conformité visuelle exacte au format de *Computational Linguistics*
   doit être recompilée avec les fichiers officiels `clv2025.cls` et
   `compling.bst`, qui ne faisaient pas partie des fichiers fournis.

Le manuscrit ne masque plus ces limites : elles sont formulées explicitement
comme limites probatoires et comme conditions de validation future.

## Nouvelle architecture

| Étape de lecture | Fonction pour le reviewer |
|---|---|
| 1. Introduction | Partir du problème connu, distinguer permission et style, puis annoncer précisément la position. |
| 2. A Contract-Aware Claim Verdict | Définir les objets dans l'ordre d'utilisation et faire suivre un seul exemple fil rouge. |
| 3. Related Evaluation Paradigms | Montrer ce que font déjà les approches voisines et où se situe la contribution. |
| 4. Diagnostic Mapping | Expliquer la méthode avant les observations et limiter les conclusions à l'échantillon. |
| 5. Contrastive Unit Tests | Rendre les décisions attendues et leurs falsificateurs vérifiables. |
| 6. Falsifiable Research Agenda | Transformer l'intuition en études, baselines, métriques et résultats qui affaibliraient la thèse. |
| 7. Discussion | Séparer implications, limites, risques de gaming et critères de rejet. |
| 8. Conclusion | Revenir à la conséquence méthodologique sans répéter tout le papier. |

Les transitions annoncent maintenant la fonction de la section suivante et
le niveau de preuve disponible. Le reviewer n'a plus à déduire si un élément
est une définition, une illustration, une observation exploratoire ou une
hypothèse expérimentale.

## Changements conceptuels principaux

### 1. Position resserrée

Le titre est devenu :

> *Hallucination Evaluation Should Be Contract-Aware: Separating Unsupported
> Error from Licensed Divergence*

Le manuscrit ne dit plus que la vérité change selon le prompt. Il défend une
convention d'évaluation plus étroite : le verdict de hallucination dépend de
l'évidence admissible, de la permission et du marquage requis.

### 2. Style séparé du truth contract

Le cœur formel est maintenant :

\[
TC(p)=(O_p,\Gamma_p,\mu_p).
\]

Le style demandé et le style observé appartiennent à une spécification de
tâche séparée. Le style peut devenir une condition expérimentale de recovery
ou un diagnostic de compliance, mais il ne peut jamais autoriser un contenu
non soutenu.

### 3. Oracle redéfini

\(O_p\) ne mélange plus preuve, préférences humaines, rubriques de qualité et
cadre fictionnel. Il contient :

- les sources admissibles ;
- leur autorité ;
- la borne temporelle ;
- l'hypothèse de complétude ;
- les exigences de retrieval ;
- la politique de résolution des conflits.

Les rubriques de créativité, de préférence ou de réussite sont désormais
notées séparément comme critères \(Q\).

### 4. Échec de retrieval protégé

Une condition d'adéquation \(A(c^*,O_p)\) précède le jugement de support. Une
recherche insuffisante, une source non couverte ou un conflit non résolu
retourne `UNRESOLVED`. Le système ne peut donc plus convertir un échec de
retrieval en `LD`.

### 5. Règle de décision corrigée

Après une adjudication adéquate :

- `SUP` : la claim est soutenue ;
- `H` : la claim est contredite, ou elle reste non réglée sans satisfaire la
  permission et le marquage ;
- `LD` : la claim reste non réglée mais son contenu est autorisé et son statut
  est correctement signalé ;
- `UNRESOLVED` : l'adjudication elle-même est insuffisante.

Les tests de scope et de marking utilisent la réponse et le contexte
discursif complets, pas seulement un span local.

### 6. Granularité des claims clarifiée

Le span est le segment textuel sélectionné ; la claim est l'engagement
contextualisé récupéré ; le record canonique conserve modalité, négation,
attribution, temporalité, référents, frame et provenance. La canonicalisation
ne peut donc plus transformer « may support » en « supports ».

La usefulness devient \(U(u,p)\), où \(u\) est l'unité adaptée à la tâche
(idée, passage, plan ou artefact), et non uniquement une claim `LD`.

## Figures et tableaux

### Figure 1

Le prompt fictionnel ne mentionne plus Verdier. La figure montre maintenant
une vraie différence :

- le registre historique exhaustif ne soutient pas l'entité réelle et
  n'autorise aucune invention : `H` ;
- le prompt de fiction autorise l'ajout d'une entité du story world et le
  marque par son frame : `LD`.

La caption précise que les claims contextualisées diffèrent et que la figure
est construite, non empirique.

### Figure 2

La figure prompt-to-claim a été reconstruite en deux panneaux :

1. contexte gouvernant et truth contract ;
2. trois chemins complets vers `SUP`, `LD` et `H`.

Le glossaire est placé avant la figure. Le même exemple de musée est utilisé
dans le texte, la figure et la règle.

### Ancienne Figure 3

Le workflow redondant et trop dense a été supprimé. La règle numérotée et la
Figure 2 assurent maintenant cette fonction sans introduire un second exemple.

### Figure de mapping

L'échelle ordinale \(\kappa\) a été supprimée. Elle est remplacée par des
profils nominaux :

- strict grounding ;
- bounded hypothesis ;
- declared-frame invention ;
- constrained solution search ;
- heterogeneous.

Le style non contrôlé n'est plus codé comme style neutre. Les positions
incertaines sont signalées et la cellule proposée est décrite comme condition
diagnostique, pas comme lacune établie dans tout le champ.

### Tableaux

- Le glossaire précède l'usage des symboles.
- Les grandes cards sont remplacées par des profils compacts.
- Une comparaison structurée couvre factuality/faithfulness, claim recovery,
  intent, value-based evaluation et la proposition.
- Les tableaux de l'Appendix B distinguent type de ressource, unité, preuve
  \(O\), qualité \(Q\), traitement du style, profil de permission, statut du
  codage et test `ME`.
- Les tableaux longs ont été divisés en continuations pour éliminer tout
  dépassement de page.

## État de la review obligatoire

| Demande obligatoire | État | Réponse apportée |
|---|---|---|
| Corriger la Figure 1 et réauditer les labels | Traité | Nouveau contraste historique/fiction et nouvelle caption. |
| Décider la place de \(\sigma_p\) | Traité | Style sorti de \(TC\), requested et observed séparés. |
| Redéfinir \(O_p\), complétude et unknown | Traité | Politique d'adjudication, test d'adéquation et `UNRESOLVED`. |
| Supprimer ou justifier \(\kappa_p\) | Traité | Supprimé du modèle et remplacé par des profils nominaux. |
| Refaire le mapping | Partiellement traité | Unités, types, \(O/Q\), style et incertitude recodés ; validation indépendante encore absente. |
| Limiter les conclusions au sample | Traité | Mapping qualifié d'exploratoire, purposif et non représentatif. |
| Corriger Case C | Traité | Les tests préservent explicitement modalité et canonical claim. |
| Requalifier Wu, ToolQA, extraction et mitigation | Traité | Trade-off de training séparé de l'hypothèse de mesure ; claims de couverture réduits. |
| Ajouter Limitations and safeguards | Traité | Sous-section autonome avec autorité, preuves incomplètes, subjectivité, gaming et rejet. |
| Abstract sous 250 mots et équations numérotées | Traité | Abstract de 217 mots ; sept équations numérotées. |
| Compiler et inspecter le package exact | Partiel | Compilation et inspection réussies avec environnement de contrôle ; classe et style bibliographique officiels à fournir. |

## État des recommandations fortes

| Recommandation | État |
|---|---|
| Comparaison avec FaithQA, VeriScore, HIC-Bench et paradigmes voisins | Traité |
| Deux ou trois cas réels documentés | Non ajouté ; les unit tests restent construits |
| Déplacer `SV`, \(z\) et stability en annexe | Traité |
| Simplifier le workflow et recoder la figure de mapping | Traité |
| Rendre l'agenda falsifiable | Traité |
| Ajouter une transition au début du mapping | Traité |
| Harmoniser vers US English et « article » | Traité, hors libellé éditorial `Position Paper` |

## Contrôles techniques

- Abstract : 217 mots.
- Citations : 79 clés distinctes utilisées, aucune clé absente.
- Bibliographie : 111 entrées disponibles.
- Renvois : aucun label dupliqué, aucune référence interne non définie.
- Équations : 7 équations numérotées.
- Compilation de contrôle : aucune erreur LaTeX, aucune citation ou référence
  non définie, aucun float trop grand pour une page.
- Inspection visuelle : première page, trois figures, tableaux comparatifs,
  agenda et six parties du mapping vérifiés.
- Taille textuelle approximative du source complet : 11 755 mots avant,
  8 244 après, soit environ 30 % de réduction.

Le PDF de contrôle compte 46 pages parce qu'il utilise une classe locale de
vérification mono-colonne et un style bibliographique de substitution avec
URLs longues. Ce nombre n'est pas une estimation du nombre de pages dans le
gabarit officiel.

## Vérifications encore nécessaires avant soumission

1. Recompiler avec les versions officielles de `clv2025.cls` et
   `compling.bst`, puis inspecter le PDF de soumission.
2. Faire recoder le mapping par au moins un second annotateur, conserver les
   extraits/pages de justification et rapporter l'accord et l'adjudication.
3. Ajouter, si l'espace et les permissions le permettent, deux ou trois items
   documentés issus de protocoles existants.
4. Vérifier manuellement toutes les métadonnées 2025–2026 et le statut final
   des ressources récentes ou préprints.
5. Tester empiriquement la stabilité de recovery sous transformations de
   style ; elle reste volontairement une hypothèse falsifiable.
6. Préparer les mots-clés du portail : large language models; hallucination;
   factuality; faithfulness; claim extraction; computational creativity;
   evaluation methodology; epistemic calibration; agentic AI.
