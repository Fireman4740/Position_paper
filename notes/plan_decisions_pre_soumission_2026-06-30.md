# Plan de décisions — avant soumission à *Computational Linguistics* (Position Papers)

Compagnon de `review_CL_position_claude_2026-06-30.md`. Ce document ne re-discute pas la review : il liste **les décisions à prendre**, leurs options, une recommandation, la dépendance entre elles, et l'effort. À trancher dans l'ordre du §4.

---

## 0. Déjà tranché / appliqué (aucune action)

- **D6 — Notation des niveaux** ✅ *appliqué dans `main_position_personal.tex` ce jour.*
  `κ` est désormais noté **0 / 1 / 2** partout (prose, Table 1, audit, figure du plan $(\sigma,\kappa)$, arbre, diagnostic). `σ` reste **low / high** ; la définition de `σ` (l.305–306) **diffère explicitement une échelle graduée** à une validation par des stylisticien·ne·s (en cours), avec renvoi à l'agenda. Build vérifié : compile (40 p.), aucune erreur, aucune référence/citation indéfinie. La back-référence cassée « Again, three levels » (déf. de `κ`) a été corrigée.
- **D7 — Catégorie de soumission** ✅ *vérifié sur la page CL.* La catégorie **Position Papers** existe et **n'a aucune limite de pages** annoncée. Aucune amputation requise. Indiquer simplement « Position Paper » à la soumission. → l'ancienne crainte « mauvaise catégorie / trop long » est sans objet.

---

## 1. Tableau des décisions ouvertes

| # | Décision | Options | Reco | Dépend de | Effort |
|---|----------|---------|------|-----------|--------|
| **D1** | Statut du pilote empirique (App. B–C) | (A) le garder comme évidence indicative *défendue* ; (B) le réduire à 1 §/le sortir en futur papier ; (C) statu quo (désavoué mais présent) | **A** si D2(A) faisable, sinon **B**. Pas (C). | D2 | moyen |
| **D2** | Diagnostic `κ=2` vs `κ=0` : que prouve-t-il ? *(Issue critique #2)* | (A) audit manuel d'un échantillon des « hallucinations » sous `κ=2` → reporter la part réellement `PD` ; (B) rétrograder en simple illustration de *mesure*, laisser §4 porter la confusion | **A** (rend l'évidence « persuasive » au sens CL) ; **B** par défaut | — | A: élevé / B: faible |
| **D3** | Confond `σ`/`κ` dans le pilote + terme « creativity level » *(Issue #3)* | (A) concéder que « very\_creative » lève peut-être `κ` effectif, reformuler la conclusion ; (B) ajouter un manipulation-check ; (C) renommer « creativity level / creative intent » → « niveau **stylistique** » | **A + C** (B si pilote assumé) | D1 | A/C: faible / B: élevé |
| **D4** | Ancrer ≥ 1 worked verdict sur un item réel publié *(Issue #4)* | (A) Case A sur une annotation **XSum** publique de Maynez et al. (citable) ; (B) garder les 3 cas « of the kind X documents » | **A** (≥ 1 cas réel ; coupe l'objection « exemples ad hoc ») | — | moyen |
| **D5** | Cadrage de la nouveauté `(O,σ,κ)` *(dim. 2)* | (A) assumer la **synthèse** + marteler l'irréductibilité de `κ` (remonter « What the contract is not », muscler le cas `κ=1`) ; (B) remplacer « minimal basis » (l.440) par « suffisant pour faire flipper les verdicts » | **A + B** | — | faible |
| **D8** | Corrections factuelles + mineurs | voir détail §2 (arithmétique pilote ; scope multi-tour ; accord inter-codeurs ; hygiène `.bib`) | faire les fixes ; trancher 2 mini-ajouts | partiellement D1 | faible |

---

## 2. Détail par décision

**D1 — Statut du pilote (la décision structurante).**
Le corps désavoue l'étude (« we argue this position rather than establish it with a new controlled study », l.265) mais s'appuie dessus (l.270–273, 554–560) et garde 3 annexes empiriques. CL accepte qu'un position paper ait des expériences, à condition qu'elles soient une *évidence persuasive*. Donc : soit on **assume** le pilote et on le rend persuasif (→ D2A, D3B), soit on le **réduit** à une sonde indicative d'un paragraphe et on laisse cadre + audit + worked verdicts porter (→ D2B). Le statu quo (présent mais désavoué) est le pire des deux mondes : un reviewer le jugera comme une expérience, et sous-puissante.

**D2 — Ce que le diagnostic `κ` peut prouver *(critique).*** Le « +5,1 pts d'hallucination sous `κ=2` » (l.1107) est compatible avec deux lectures : (a) le vérifieur compte de la `PD` licenciée comme `H` (votre lecture) ; (b) les prompts permissifs produisent réellement plus de contenu non-supporté. Le vérifieur binaire **ne peut pas** trancher — trancher exige le label `PD` qui manque. **Décision** : faire l'audit manuel (A) transforme la suggestion en preuve et c'est ce qui sécurise D1A ; sinon, retirer au diagnostic son rôle de preuve de la confusion (B) et aligner l'abstract (l.145) + l.272.

**D3 — `σ`/`κ` dans le pilote + terminologie.** Le pilote fait varier `σ` via des « creativity levels » (`factual/hybrid/very_creative`, l.556, 813) en tenant `κ=0`. Or « very\_creative » pousse plausiblement le modèle à *inférer* une licence d'invention (`κ` effectif ↑) — ce que votre propre cadre prédit. Donc la hausse mesurée n'est pas forcément un pur effet de *mesure* de `σ` (l.271). **Décision** : (A) le dire explicitement et reformuler ; (C) renommer « creativity level / creative intent » en « niveau stylistique » (occurrences l.556, 558, 813, 868, 881, 883, 994–995) pour ne pas réutiliser le mot « creative » pour ce qui, dans le cadre, n'est *pas* `κ`. C'est une incohérence terminologique repérée par le scan prose-hygiene (§3).

**D4 — Ancrer un verdict réel.** Les 3 cas de §4 sont des instances *construites* (l.665), or « the gap is structural, not anecdotal » (l.269) s'appuie en partie dessus. **Décision** : ancrer **au moins** Case A sur une annotation XSum réelle de Maynez et al. (publiques, citables par ID) — un seul cas réel suffit à couper l'objection « tout §4 est ad hoc » et renforce la nouveauté (D5).

**D5 — Nouveauté.** Risque : un reviewer voit `(O,σ,κ)` comme la synthèse de trois idées connues (oracle / style-transfer / permissivité de tâche), d'autant que `O` est standard et que `σ` « changes no verdict » (l.309) — reste `κ` comme seul axe porteur de verdict nouveau. **Décision** : (A) assumer que la *synthèse opérationnelle* est la contribution, et rendre l'irréductibilité de `κ` imparable (le cas `κ=1` triage clinique, l.427–437, est votre meilleure arme — le remonter/renforcer) ; (B) remplacer le mot « minimal » (l.440, en tension avec le titre) par la formulation déjà présente l.447 (« suffit à faire flipper les verdicts »).

**D8 — Corrections factuelles + mini-décisions.**
- *À corriger (pas une décision, un fix) :* l'arithmétique du pilote ne tombe pas juste **telle qu'imprimée** — Fig. pipeline « 3×3×3 = 1 389 » (=27), « 9 modèles × 5 temp. » vs « 53 runs » (=45), et 1 389 n'est pas un multiple entier de 27. Reconcilier prompts / runs / températures / `N=12 469`. *(à faire seulement si D1 = garder le pilote, mais à faire absolument dans ce cas.)*
- *Mini-décision 1 :* ajouter une phrase de **scope mono-tour** aux limites (l.764–770) — le cadre est `TR(p)` (prompt→sortie), le grounding multi-tour/dialogue n'est ni traité ni signalé. Reco : oui (1 phrase).
- *Mini-décision 2 :* ajouter un petit **accord inter-codeurs** sur un sous-échantillon de l'audit (l.552, mono-codeur) pour préempter l'objection. Reco : oui si possible, sinon laisser le renvoi à l'agenda.
- *Hygiène `.bib` :* 7 warnings au build (`boubdir_elo_nodate`, `kalai_why_nodate`, `zhang_sirens_nodate` : year/journal vides ; `noauthor_bradleyterry_2025` : sans auteur/clé). Compléter, et vérifier qu'ils sont cités dans la variante `_personal`.

---

## 3. Résultats du scan prose-hygiene (skill `prose-hygiene`)

- **AI-tells : RAS.** 0 occurrence des marqueurs classiques (delve, underscore, showcase, tapestry, pivotal, crucial, realm, landscape, testament, leverage, « it is worth noting/important to note »). La prose lit comme de l'écriture humaine délibérée.
- **Terminologie — un point réel :** « creativity level » / « creative intent » (pilote) désigne une manipulation de **`σ`** alors que, dans le cadre, « creativity/invention » = **`κ`**. Cf. **D3C** (renommer « niveau stylistique »). C'est la seule dérive terminologique notable.
- **Terminologie — OK après harmonisation :** `TR, O, σ, κ, F (Faith), A (Acc), H (Hallu), PD` sont définis au premier usage et employés de façon cohérente ; `σ`/`κ` désormais uniformes (low/high ; 0/1/2).
- **Style :** seul défaut récurrent = **phrases trop denses/longues** (p. ex. l.304, 559). Pour une revue c'est tolérable ; un passage d'aération ciblé améliorerait la lisibilité, mais ce n'est pas bloquant. *(Non appliqué — à faire sur demande.)*
- **Redondance :** la différenciation FaithQA/HIC-Bench est quasi dupliquée (intro l.168–171 ≈ §3.3 l.648–651) ; l'intro peut se réduire à un renvoi.

---

## 4. Séquence de travail recommandée

1. **Trancher D1** (assumer vs réduire le pilote) — commande tout le reste.
2. Si « assumer » → **D2A** (audit manuel) + **D8 arithmétique** + **D3B**. Si « réduire » → **D2B** + **D3A/C**, et aligner abstract (l.145) + contributions.
3. **D4** : ancrer Case A sur un item XSum réel.
4. **D5** : muscler l'irréductibilité de `κ` ; remplacer « minimal ».
5. **D8 mineurs** : scope mono-tour, accord inter-codeurs, hygiène `.bib`.
6. Re-build (`make pdf`) + relire l'abstract pour qu'il reflète les choix D1/D2.

> Rappel cadrage : pour CL, l'obstacle n'est **pas** le format mais « rigorous reasoning **and persuasive evidence** ». D2 est le levier n°1 qui fait passer l'évidence de « assertée » à « persuasive ».
