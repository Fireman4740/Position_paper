# Suite de révision — décisions G7–G23 et figure 4

Cette passe remplace les décisions antérieures sur les points explicitement réexaminés par l’auteur. La version précédente du manuscrit et son PDF sont sauvegardés dans ce dossier. Le manuscrit actif reste `réécriture_papier/truth_contract_position_paper.tex`.

## Changements et réponse aux demandes

| Demande | Passage | Modification appliquée / réponse |
|---|---|---|
| G7 | Framework, The Truth Contract | Garde-fous conservés : contrat indépendant de la réponse, résolution des instructions conflictuelles, aucune extension opportuniste du scope. |
| G8–G9 | Task oracle ; Oracle Verification ; Examples | Suivant la clarification de l’auteur : oracle boîte noire, entrée = réponse, sorties = claims récupérés et états d’évidence. Correction supposée pour illustrer la règle uniquement. Sources, versions, conflits, limites et échecs restent discutés séparément ; aucune fiabilité empirique n’est affirmée. |
| G10 | Ensemble du manuscrit | Notation ES conservée uniformément ; aucun retour à E. |
| G11 | Claim trace | Les champs de la trace sont explicitement rattachés aux concepts déjà introduits dans les sous-sections précédentes. Le développement de recovery coverage est renvoyé à l’annexe. |
| G14 | Related Work, Creativity and Task Quality | Passage développé en termes simples : originalité, utilité pour la tâche, lisibilité, factualité et permission répondent à des questions différentes. Exemple muséal explicatif ; pas d’attribution aux articles d’une notion de permission qu’ils ne définissent pas. |
| G15 | Resource Mapping ; Selection and Scope | Introduction plus générale, inspirée de mainV5 : diversité des situations d’évaluation et intérêt des catégories au-delà d’un dataset. La généralisation est conceptuelle ; la liste n’est pas présentée comme exhaustive sans preuve de sélection. |
| G16 | Coding Protocol ; Resource Analysis Criteria ; tableau principal ; figure 3 | Phrase complétée et six catégories harmonisées. Titre Resource Analysis Criteria repris. |
| G19 | Tout le manuscrit et les renvois | Examples A–E partout ; labels LaTeX sec:examples et fig:example-transitions. Les emplois génériques de case ont aussi été reformulés pour éviter l’ambiguïté. |
| G23 | Annexe B | Même nomenclature de six catégories ; les ressources 33–34 forment leur groupe, affiché après 35–36 afin de garder les groupes contigus. Les IDs restent inchangés. |
| Figure 4 | Examples | Figure compacte à cinq comparaisons. Une réponse inchangée par paire, deux conditions, deux labels. Les paragraphes A–E et les renvois de l’agenda sont alignés avec la nouvelle figure. |

## Nomenclature commune

1. **Factuality evaluation** — IDs 1–22.
2. **Intent evaluation** — ID 23.
3. **Mixed-task and tool-use evaluation** — IDs 24–27.
4. **Creative writing and reasoning** — IDs 28–32, 35–36.
5. **Divergent thinking and linguistic creativity** — IDs 33–34.
6. **Constrained problem solving** — IDs 37–41.

Ces noms désignent les groupes. Les cellules de tâche conservent leurs descriptions précises (summarization, factual QA, code generation, etc.).

## Les cinq exemples révisés

| Exemple | Ce qui reste fixe | Ce qui change | Labels attendus |
|---|---|---|---|
| A | Réponse factuelle sur la position de la stèle ; Γ et μ | O : fragment initial / référence construite étendue | H → G |
| B | Reconstruction explicitement présentée comme possible ; O et μ | Γ : faits soutenus seulement / reconstruction autorisée | H → LD |
| C | Même reconstruction et même indice de conjecture ; O et Γ | μ : titre Hypothesis obligatoire / indice dans la phrase accepté | H → LD |
| D | Même scénario de retour futur, marqué possible ; O et μ | Γ : reconstruction historique / scénario de lieu futur | H → LD |
| E | Même réponse soutenue, mêmes claims et même TC | Consigne de style : simple / métaphorique | G → G |

**Pourquoi E ne change pas le TC :** le style demandé n’est pas un quatrième champ du contrat et n’autorise pas de contenu supplémentaire. E sert donc de contrôle. La variation de formulation à contenu constant reste décrite dans la section sur la robustesse et dans l’agenda, mais ne constitue plus la paire de réponses de la figure 4. B ne repose plus sur un changement de cadre fictionnel ; C change désormais le marking requis, et D le scope, pour réellement maintenir la réponse fixe.

## Vérification

Compilation du projet avec `make check` puis publication locale par `make pdf` : **40 pages**, 0 erreur, 0 citation manquante sur 94 clés, 0 référence indéfinie, 0 label dupliqué, 0 Overfull. Les 41 IDs sont tous présents une fois dans les tableaux de l’annexe. Figures 3 et 4 et tableau B.3 inspectés visuellement. Le warning de classe hyperref sur pdfpagelabels reste présent. Aucun nouveau résultat empirique ni aucune nouvelle référence bibliographique ajouté.

Le conflit antérieur entre la règle générale d’AGENTS et celle des manuscrits pour contradicted/entailed n’a pas été tranché par cette demande. Cette passe clarifie uniquement l’hypothèse de correction de l’oracle pour les illustrations.

- [Diff de cette passe](diff_revision_precedente.patch).
- [Contrôles structurés](verification.json).
