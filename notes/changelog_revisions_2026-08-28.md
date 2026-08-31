# Changelog — passe de lisibilité avant soumission (28 août 2026)

Source : `commentaire_review/review_lisibilite_2026-08-27.md`.
Fichier modifié : `main_position.tex` uniquement. Sauvegarde :
`tmp/main_position.backup_20260828_120141.tex`.
Build vérifié : `make pdf` sort en 0, aucune référence indéfinie, un seul
overfull hbox de 1,4 pt. 44 pages.

**Non touché, sur instruction explicite : la Figure 3 et son *reading guide*.**
Seule sa prose d'accompagnement (§4.3) a été réécrite.

---

## 1. Structure

| Avant | Après |
|---|---|
| 9 sections, 2 annexes | **8 sections, 3 annexes** |
| §2 Framework : 7 sous-sections (p. 5–14) | §2 Framework : **5 sous-sections (p. 5–12)** |
| §4 Methodology + §5 Mapping Results | **§4 Resource Mapping** (4.1 sélection, 4.2 codage, 4.3 résultats) |
| §8.2 AA-Omniscience : 2 p. + Figure 4 | **quelques phrases en §7.1 + Annexe C** |

- **§2.6 (response-level verdict) et §2.7 (procedural failures) déplacées en
  Annexe A**, fusionnées avec le contenu qui s'y trouvait déjà. Renvoi en §2.1.
  Corrige le pic de charge des anciennes p. 10–14 : le lecteur atteint
  maintenant l'état de l'art p. 12 au lieu de p. 14.
- **§4 et §5 fusionnées**, avec le paragraphe d'ouverture qui manquait aux deux
  (les deux `\section{}` étaient suivies immédiatement d'une `\subsection{}`).
- **Annexe C créée** : `AA-Omniscience Leaderboard Snapshot`, contenant la
  Figure 4, la définition de l'Omniscience Index et les mises en garde
  méthodologiques. L'Index reste cité comme observation et argument dans le
  corps (§7.1), en quatre phrases.
- Doublons supprimés en Annexe A : la règle de composition ordonnée y était
  répétée mot pour mot depuis §2.6.

## 2. Introduction

- **Non-sequitur supprimé.** L'ancien §1 ¶2 (« Evaluation *therefore* requires
  two distinct levels… ») annonçait la thèse avant sa motivation. Le contraste
  motivant (fiction, brainstorming, assistant clinique) passe désormais avant,
  et la thèse est formulée en trois phrases courtes (« Whether the available
  information settles a claim is one question. Whether the task allowed the
  response to make that claim is another. »).
- **Référence pendante supprimée** : « We reuse *this* museum-label example… »
  n'avait pas d'antécédent dans le corps. Fondue dans le renvoi à la Figure 1.
- **« adjudication standard » et « task-conditioned claim label » retirés** de
  l'introduction : le lecteur rencontre maintenant `task oracle` et
  `claim label` en premier.
- **Contributions remontées** juste après le bloc « Our position » (elles
  étaient p. 5).
- **« A secondary problem » ramené de 14 lignes à 4.** La définition complète du
  style marking et la citation *foregrounding* ont été déplacées en §2.5, où
  elles étaient de toute façon répétées presque mot pour mot.
- La restriction de portée d'`UNKNOWN` (« not a statement about all possible
  knowledge ») remonte de §2.4 à sa première occurrence.
- `claim-recovery coverage` et `procedural failures`, employés dans
  l'introduction et définis 8 pages plus loin, sont remplacés par leur glose.
- Distinction `factuality` / `faithfulness` explicitée dès la p. 2.

## 3. Étiquette `SUP` → `GROUNDED`

- Macro `\SUP` (rendu `SUP`) remplacée par **`\Grd` (rendu `G`)**, cohérent avec
  `\Hall` → `H` et `\LD` → `LD`.
- Toutes les occurrences du mot *supported* **au sens d'étiquette** passent à
  *grounded* (résumé, §1, §2.4, cas A et E, agenda P5, §7.3, conclusion,
  Annexe A, Figure 2). Les emplois ordinaires (« a claim is supported by a
  source document ») sont conservés.
- Justification ajoutée en §2.4 : FEVER utilise `SUPPORTED` pour un **état de
  preuve**, c'est-à-dire pour ce que nous appelons `ENTAILED`.

## 4. Terminologie

| Concept | Avant | Après |
|---|---|---|
| Sortie au niveau réponse | 8 formes de surface | **`response-level record`** (le tout) / **`content verdict`** (la composante de contenu) |
| Erreurs de décomposition | 5 formes | **`under-decomposition`** / **`over-decomposition`**, définies une fois en §2.3 |
| Qui évalue | `evaluator` / `annotator` | **`evaluator`** |
| L'objet proposé | `the proposal` / `the rule` / … | **`the rule`** |
| §5 | `case studies` / `worked cases` | **`worked cases`** |

Un bloc de terminologie canonique en tête de fichier (l. 40–47) fixe désormais
ces choix et interdit explicitement `structured verdict` et
`response-level verdict`.

## 5. Formalisme

- **95 indices de contexte de tâche supprimés** : `O_p`, `\Gamma_p`, `\mu_p`,
  `\sigma_p` → `O`, `\Gamma`, `\mu`, `\sigma`. Les indices `p_1` / `p_2` de la
  Figure 1, où deux contextes sont effectivement contrastés, sont conservés.
- **Paire `c^* = (q^*, m^*)` supprimée** du corps (5 usages, jamais manipulée en
  tant que paire). `q^*` et `m^*` restent, employés séparément.
- **Triplet `\TC(p)=(O_p,\Gamma_p,\mu_p)` → `\TC=(O,\Gamma,\mu)`.**
- Collision de symbole réglée : `p` désignait à la fois le contexte de tâche et
  les *partial answers* d'AA-Omniscience. L'Annexe C utilise maintenant
  `n_c`, `n_w`, `n_u`, `n_a`.

## 6. §2 Framework

- **§2.1 exerce enfin la branche qui fait l'intérêt du papier.** L'ancien
  parcours complet aboutissait à deux `SUP` — le cas où le contrat ne sert à
  rien. Il porte maintenant sur le span de reconstruction : `UNKNOWN` → `LD`,
  avec le contrefactuel explicite (« Had the same span appeared under the
  strict-grounding task… `out-of-scope` »).
- **`response span` défini** à sa première occurrence (il ne l'était nulle part).
- **§2.2 task oracle** : la conclusion (« reproducible evaluation therefore
  requires a concrete specification ») remonte de la 5ᵉ à la 2ᵉ position.
- **`usefulness`** rendu compréhensible à sa première occurrence en §2.2.
- **§2.4** : nouveau paragraphe expliquant *pourquoi* deux vocabulaires sont
  nécessaires ; paragraphe orphelin « Severity » (2 phrases) supprimé et traité
  une seule fois en §7.2 ; phrase-pointeur isolée supprimée.
- **§2.5** : liste négative à 8 termes remplacée ; dernier paragraphe (3 idées)
  coupé en deux ; définition du style marking rendue autonome.

## 7. §4 Resource Mapping

**§4.3 entièrement réécrite autour des trois champs du contrat**, style en
quatrième position au lieu de dominer les trois paragraphes. Chiffres recomptés
sur les tableaux de l'Annexe B :

- **Task oracle** : identifiable dans 35/41 ; les 6 `none identifiable`
  appartiennent tous au profil *declared-frame invention and ideation*.
- **Permission scope** : **41/41 ne déclarent aucune permission scope** —
  22 `inferred empty`, 8 `implicit frame`, 1 `partial`, 10 `not separately
  represented`. C'est la thèse du papier, désormais énoncée comme résultat
  principal et non enfouie en 3ᵉ position d'une phrase de 43 mots.
- **Required status marking** : **41/41** jamais noté séparément
  (26 `not scored`, 15 `not separated`).
- **Style** : 1 ressource sur 41 (WritingBench) note une contrainte de style ;
  **0/41** tiennent la revendication canonique fixe.

Ajouté aussi : mention explicite que le codage a été fait par les auteurs, et un
commentaire `% TODO(authors)` demandant d'énoncer la procédure de recherche —
**je ne l'ai pas inventée**, c'est la brèche méthodologique la plus attaquable
et il faut une phrase de votre main.

## 8. §5 Worked Cases

- **Table 2 ajoutée** : les cinq contrastes en un coup d'œil (champ qui varie,
  état de preuve, étiquette prédite, code de raison).
- **Cas B** : phrase ajoutée expliquant pourquoi le silence d'un registre
  *déclaré exhaustif* entraîne `CONTRADICTED` alors que le silence d'un oracle
  borné donne `UNKNOWN` (Figure 1 et Annexe A). C'était la seule incohérence
  interne apparente du cadre.
- **Cas C et E** : la reprise d'exemples déjà donnés (§2.2, Figure 2) est
  maintenant signalée.

## 9. Figures

- **Figure 1** : légende — étiquettes écrites en toutes lettres (elles
  n'étaient définies qu'à la page suivante) ; la différence de style entre les
  deux prompts est désormais assumée comme délibérée au lieu d'être contredite
  par la barre « Only Γ changes ».
- **Figure 2** : l'encart `σ = 1` quitte la rangée du contrat (il y contredisait
  visuellement le texte) et descend sous le pipeline, sous l'intitulé
  « Outside the truth contract » ; l'encart « No separate historical claim »
  supprimé (second message ; le point est couvert par la règle 3 de §2.3).
  Rendu vérifié page 11.
- **Figure 3 : inchangée.**
- **Figure 4 → Annexe C.**

## 10. Phrase et paragraphe

Réécritures ciblées : phrase de clôture du résumé (50 mots, subjonctif inversé),
règle de composition ordonnée (2 « Otherwise » enchaînés → liste numérotée),
phrase sur la sévérité en §7.2 (52 mots → 3 phrases), paragraphe d'ouverture de
§3 (39 mots, 4 propositions → 5 phrases), ouverture manquante de §3.1, passif de
§2.2.

Redondances supprimées : le paragraphe de §7.2 qui reprenait §3.6 et l'Annexe A ;
la première limitation de §7.3 devient un renvoi ; les répétitions de « X ne
change jamais une étiquette » passent de 8 à 7 et le rappel de portée de 6 à 4.

## 11. Concepts supprimés

- Catégories finales de l'Annexe A (« reliable and creatively aligned » /
  « reliable but creatively misaligned ») : deux noms introduits en annexe,
  employés nulle part ailleurs.
- `creative-task success` **conservée** comme troisième composante (non retenue
  parmi les suppressions).

## 12. Vérifications

- `make pdf` : exit 0, aucune référence indéfinie.
- Clés de citation : **106 avant, 106 après, aucune perdue, aucune ajoutée,
  aucune absente de `references.bib`**. Aucun `\citetodo` restant.
- Figures 1 et 2 inspectées visuellement dans le PDF compilé.
- Chiffres de §4.3 recomptés programmatiquement sur les tableaux B.1–B.3.

## 13. Reste à faire

1. **`% TODO(authors)` en §4.1** : énoncer la procédure de recherche des
   41 ressources. Une clause suffit.
2. Décider si `creative-task success` mérite une grille minimale, ou si elle doit
   redevenir un simple diagnostic (recommandé par la review, non appliqué).
3. Relire l'Annexe A d'un trait : elle a doublé de taille et ses intitulés sont
   maintenant tous au même niveau (`\paragraph`).

---

## 14. Passe `prose-hygiene` — tirets cadratins (28 août, second passage)

Sauvegarde avant passe : `tmp/main_position.pre_emdash.tex`.

**Les 11 tirets cadratins (`---`) du manuscrit ont été supprimés** (5 d'origine,
6 introduits pendant la passe de lisibilité). Le tiret cadratin en incise donne
une cadence de billet de blog plutôt que d'article de revue, et c'est un des
marqueurs de prose générée les plus visibles.

| Emplacement | Avant | Après |
|---|---|---|
| Résumé | `not the truth of the proposition---a distinction current protocols leave implicit` | deux phrases : `…not the truth of the proposition. Current protocols leave that distinction implicit and therefore cannot act on it.` |
| Résumé | `licensed divergence}---a label that records compliance, not truth` | `licensed divergence}, a label that records compliance rather than truth` |
| §1 Our position | `An evaluator---a human annotator, an automated pipeline, or both---identifies` | `An evaluator, which may be a human annotator, an automated pipeline, or both, identifies` |
| §1 Our position | `a claim---as established, hedged, or explicitly hypothetical---is its observed status marking` | `a claim, whether as established, hedged, or explicitly hypothetical, is its observed status marking, and that marking is compared with µ` |
| §2.1 | `discourse framing---here, that the claim is offered as a possibility` | phrase séparée : `Here that framing is the fact that the claim is offered as a possibility rather than asserted.` |
| §2.1 Preparation | `response span---a contiguous stretch…---recovers the` | `response span, that is, a contiguous stretch… . It then recovers the…` (l'item est coupé en deux phrases) |
| §2.1 | `on top of it---the response-level record, and the procedural failures…---is specified in` | `Appendix A specifies what an evaluation publishes on top of it: …` (**doublon de renvoi à l'Annexe A supprimé au passage**) |
| §2.4 | `an evidence state---what we call ENTAILED---and reusing the word` | `an evidence state, namely for what we call ENTAILED. Reusing that word…` |
| §4.3 | `Twenty-two resources---the entire strict grounding profile---are coded` | `All twenty-two resources of the strict grounding profile are coded` |
| §4.3 | `The remaining ten---the intent-evaluation resource, …---are coded` | `The remaining ten are coded not separately represented: the intent-evaluation resource, …` |

**Reste du scan `prose-hygiene` : rien à signaler.** Zéro occurrence de
`delve`, `underscore`, `showcase`, `pivotal`, `crucial`, `leverage`, `realm`,
`landscape`, `testament`, `foster`, `utilize` ; zéro « it is worth noting » ;
zéro parallélisme négatif rhétorique ; zéro participe présent d'analyse tacké en
fin de phrase ; zéro attribution vague sans citation ; zéro reste de Markdown.
Les 4 occurrences de `robust` sont toutes le terme technique
(`style-marking robustness`, `style-robust recovery`).

`make pdf` : exit 0, 44 pages, un overfull hbox de 1,4 pt.
