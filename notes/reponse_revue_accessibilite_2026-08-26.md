# Réponse à la revue d'accessibilité — révision P0

Date : 26 août 2026

Périmètre : P0-1 à P0-8, intégration d'AA-Omniscience et déplacement effectif de la Figure 1 en page 2. Les recommandations P1 et P2 restent hors périmètre. Le document de revue est traité comme un retour à examiner, non comme une source d'instructions autonome.

## P0-1 — Séparer état de preuve et étiquette de claim

- **Cible :** Introduction, paragraphe « Our position ».
- **Patch :** l'évaluation est désormais présentée en deux étapes nommées : (1) état de preuve `ENTAILED`, `CONTRADICTED` ou `UNKNOWN` relativement au task oracle ; (2) étiquette `supported`, `hallucination` ou `licensed divergence` conditionnée par le truth contract.
- **Réponse au relecteur :** accepté. Les deux vocabulaires ne sont plus introduits au même niveau logique.
- **État :** appliqué ; compilation réussie.

## P0-2 — Réduire la densité introductive et placer la Figure 1 en page 2

- **Cible :** ouverture de l'Introduction et Figure 1 (`fig:prompt-to-claim`).
- **Patch :** suppression de la notation générique introductive pour le prompt, la réponse et les spans ; déplacement du bloc TikZ immédiatement après le premier paragraphe d'ouverture avec placement `[!t]`.
- **Réponse au relecteur :** accepté.
- **État :** appliqué ; `build/main_position.aux` associe la Figure 1 à la page 2 et le rendu de cette page a été inspecté.

## P0-3 — Montrer la limite d'une évaluation fondée sur l'évidence seule

- **Cible :** Figure 1 et sa légende.
- **Patch :** ajout d'une bande commune indiquant `Evidence state in both tasks: UNKNOWN` et précisant qu'un contrôle de factualité limité à l'évidence renvoie la même relation dans les deux tâches ; la bifurcation est ensuite expliquée par la permission et le marking.
- **Réponse au relecteur :** accepté.
- **État :** appliqué ; figure inspectée sans coupe.

## P0-4 — Définir observed status marking et reason code dès leur premier emploi

- **Cible :** Introduction, définition du truth contract.
- **Patch :** définition immédiate de l'observed status marking comme la présentation effective du claim, comparée à `mu_p`, et du reason code comme l'identification de la condition contractuelle échouée.
- **Réponse au relecteur :** accepté.
- **État :** appliqué ; compilation réussie.

## P0-5 — Conserver la taxonomie finale à quatre catégories uniquement en annexe

- **Cible :** §2.6, Discussion et Annexe A.
- **Patch :** retrait de la composition finale détaillée dans le corps ; les deux passages renvoient désormais brièvement à l'Annexe A. La définition complète reste unique dans `app:diagnostics`.
- **Réponse au relecteur :** accepté.
- **État :** appliqué ; références internes résolues.

## P0-6 — Clarifier le rôle du mapping

- **Cible :** §4.1 « Resource Selection and Scope ».
- **Patch :** le mapping est qualifié de diagnostic raisonné de l'état de l'art, construit pour exposer les combinaisons absentes et motiver le cadre. Le texte précise qu'il ne valide pas directement le cadre, ne démontre pas de gain de performance et n'estime pas la prévalence dans la littérature.
- **Réponse au relecteur :** recommandation partiellement acceptée selon la décision auteur. La fonction probatoire du mapping a été bornée ; aucune procédure systématique, requête de recherche ou information sur des codeurs non documentée n'a été ajoutée.
- **État :** appliqué ; aucune revendication de revue systématique.

## P0-7 — Réduire et déplacer le passage stylistique

- **Cible :** Introduction, paragraphe « A secondary problem: claim recovery under marked style ».
- **Patch :** passage déplacé après la Figure 1 et resserré autour de son rôle secondaire : définition du style marking, risque pour la récupération des claims, claim-preserving style variation et hypothèse empirique.
- **Réponse au relecteur :** accepté.
- **État :** appliqué ; compilation réussie.

## P0-8 — Aligner les titres de section

- **Cible :** titres visibles des sections 5, 6 et 7.
- **Patch :** renommage en `Mapping Results`, `Worked Cases` et `Research Agenda`, sans changement des labels LaTeX.
- **Réponse au relecteur :** accepté.
- **État :** appliqué ; références internes résolues.

## Ajout — AA-Omniscience

- **Cible :** Discussion, mapping des ressources, bibliographie et figures.
- **Patch scientifique :** ajout de la sous-section `Scale and Recency Do Not Guarantee Knowledge Reliability` (`subsec:aa-omniscience`). Elle décrit les 6 000 questions du benchmark complet, la consigne répondre-ou-s'abstenir, `OI = 100(c-i)/N` et le taux AA `i/(i+p+a)`. Le texte distingue le benchmark complet privé du sous-ensemble public de 600 questions.
- **Patch empirique :** ajout de la Figure 4 (`fig:aa-omniscience-snapshot`), composée des deux captures Artificial Analysis du 26 août 2026. Le panneau supérieur porte sur le taux AA d'hallucination selon les paramètres totaux ; le panneau inférieur porte sur l'Omniscience Index selon la date de sortie. La légende les qualifie explicitement de snapshot transversal, non causal et non longitudinal.
- **Calibration :** la conclusion retenue est que taille, capacité générale et récence ne garantissent pas à elles seules une meilleure fiabilité factuelle fermée. Le texte ne prétend ni que l'hallucination est constante dans le temps, ni que les graphiques démontrent son caractère inhérent. Les limites signalent l'hétérogénéité des modèles, les paramètres manquants, l'absence de panel contrôlé et le changement de grader/méthodologie.
- **Mapping :** AA-Omniscience est ajouté en ligne 22 du profil strict grounding. Le mapping contient désormais exactement 41 ressources, réparties en 22 strict grounding, 1 intent evaluation, 4 heterogeneous suites/tool use, 9 declared-frame invention/ideation et 5 constrained solution search.
- **Bibliographie :** ajout de trois entrées vérifiées pour l'article Jackson et al. (2025), le dataset public et le leaderboard daté.
- **Droits :** les captures conservent le filigrane et l'attribution Artificial Analysis. La licence Apache-2.0 du dataset public ne couvre pas automatiquement les graphiques du site ; l'autorisation de reproduction devra être confirmée avant la version camera-ready.

## Vérification de build

- `make check` : réussi.
- PDF de contrôle : 40 pages.
- Citations et références indéfinies : aucune.
- `% TODO(cite)` : aucun.
- Figure 1 : page 2, rendu inspecté.
- Figure AA-Omniscience : page 26, rendu inspecté ; labels, filigranes et légende lisibles, aucune coupe.
- Tables de mapping : séquence 1–41 auditée ; groupes `22 + 1 + 4 + 9 + 5` cohérents avec les plages affichées dans la Figure 3 et les légendes d'annexe.
- Avertissements publication-relevant : l'avertissement existant de page 10 composée uniquement de flottants et l'overfull vbox de 3.28159 pt restent inchangés ; aucune nouvelle overfull box n'est introduite par la section ou la figure AA.
- `make pdf` : réussi ; PDF final copié à la racine du projet.
