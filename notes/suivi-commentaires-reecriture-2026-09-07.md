# Suivi des 47 commentaires Overleaf — réécriture du 7 septembre 2026

Source des commentaires : `CommentaireV2_review/last_mainV4-7-09.json` (export bookmarklet,
capturé le 2026-09-07). L'export annonce globalement 100 fils / 107 messages sur 2 fichiers,
mais son tableau ne contient effectivement **qu'un fichier, `main.tex`, avec 47 fils et
49 messages**, plus 57 fragments de changements suivis. Ce suivi couvre les 47 fils
disponibles. Deux messages (C08, C18) sont tronqués dans l'export et n'ont pas été
reconstitués. Les 57 fragments de changements suivis ne forment pas un historique
d'édition assez complet pour être appliqués automatiquement comme un patch.

Les identifiants C01–C47 suivent l'ordre du tableau JSON. Les renvois pointent vers les
**nouvelles** sections : l'export ne contient pas de sélection source fiable permettant de
convertir les positions Overleaf en numéros de ligne.

Version de départ conservée : `artifacts/main_position_AVANT_reecriture_2026-09-07.tex`
(identique à git HEAD 733bb5e). Journal de compilation : `artifacts/build-2026-09-07.log`.

---

## Vue d'ensemble

| État | Nombre | Commentaires |
|---|---|---|
| Appliqué | 34 | C02, C03, C06, C07, C09, C10, C11, C13, C14, C15, C16, C17, C19, C20, C21, C24, C25, C26, C28, C29, C30, C31, C33, C34, C35, C38, C39, C40, C41, C42, C43, C44, C45, C46 |
| Appliqué partiellement | 5 | C01, C04, C08, C23, C32 |
| Remplacé par une consigne plus récente | 3 | C05, C18, C22 |
| Traité par recentrage du périmètre | 3 | C12, C36, C47 |
| Traité, intention du commentaire indéterminée | 2 | C27, C37 |

---

## Abstract et introduction

**C01 — Abstract** (P.-Y. Genest, 2 sept. 8:57) : *« Pas super convaincu par l'abstract. […]
une accroche motivante ; amener notre position plus doucement ; pourquoi 50 % sur les
datasets ? »*
→ **Partiellement appliqué.** Nouvel abstract (l. 77) : accroche « A factual summary and a
fictional retelling should not be judged by the same rule », position amenée en trois temps,
développement sur les datasets entièrement supprimé. Reste une phrase de réserve
(« a proposed evaluation convention ») pour ne pas laisser croire à une validation empirique.

**C02 — Abstract** (8:53) : *« ajouter une accroche »* → **Appliqué**, même phrase d'ouverture.

**C03 — §1 motivation** (8:54) : *« pas sûr de la conséquence logique »*
→ **Appliqué.** La déduction « les hallucinations persistent donc il faut notre framework »
est supprimée. §1 repose maintenant sur une différence explicite entre deux tâches
(l. 100–110), et le paragraphe AA-Omniscience a disparu du papier.

**C04 — Abstract** (8:57) : *« ne pas évoquer un point négatif dans l'abstract »*
→ **Partiellement appliqué.** Le développement négatif sur les datasets disparaît ; la
mention « we report no experiments here » est conservée par honnêteté.

**C05 — §1 périmètre** (8:58) : *« je mentionnerais quand même le code »*
→ **Remplacé par la consigne du 7 septembre** (vision restreinte, texte seulement). Le code
est nommé au §3.1 comme cas du *oracle problem*, mais explicitement hors périmètre (l. 163–170,
l. 312–326).

**C06 — §1 définition** (8:58) : *« définir ce qu'est une hallucination »*
→ **Appliqué avec un changement scientifique explicite** (l. 155–162) : *contractual
hallucination* = violation du contrat (contenu ou marquage), ce qui n'est ni inclus ni
inclusif de « factuellement faux ». Le coût de ce choix est discuté au §6.2.

**C07 — §1 transition** (9:00) : *« quelle conclusion ? »*
→ **Appliqué.** La conclusion visée est désormais explicite : « Checking whether the document
contains the sentence does not, by itself, settle whether the response followed the task »
(l. 126).

**C08 — §1 position** (9:02 + 9:05, second message tronqué) : *« Therefore we argue that… »*
→ **Partie lisible appliquée.** §1 « Our position » (l. 133) énonce le besoin du contrat
avant toute règle. La fin du second message est tronquée dans le JSON.

**C09 — exemple du musée** (9:03) : *« présente textuellement l'exemple du musée »*
→ **Appliqué.** Le papier s'ouvre sur l'exemple en prose (l. 102–110), avant tout schéma.

**C11 — fin d'introduction** (9:32) : *« je sais pas si c'est nécessaire dans l'intro »*
→ **Appliqué.** Introduction réduite à cinq blocs ; extraction, styles et procédures
déplacés dans le framework.

**C14 — position** (9:34) : *« notre position c'est "on a besoin d'un truth contract", et une
conséquence est le changement de l'évaluation »*
→ **Appliqué.** L. 133–154 : le besoin du contrat est la position ; « Changing the evaluation
labels is a consequence of this position, not the position itself ».

**C16 — trois champs en intro** (15:27) : *« pas de termes mathématiques dans l'introduction,
juste le truth contract avec ses 3 éléments décrits en français »*
→ **Appliqué.** Zéro équation dans l'introduction ; les trois champs sont une liste à puces
en langage ordinaire (l. 139–148). La notation revient au §3, conformément à la demande
ultérieure.

**C25 — contributions** (15:29) : *« je comprends pas la 2e contribution »*
→ **Appliqué.** Deux contributions concrètes (l. 171–182) : la règle, et le programme de
tests avec sa baseline. Le mapping ne sert plus de contribution.

**C27 — contributions** (15:30) : *« ? »*
→ **Traité, intention indéterminée.** La zone a été refondue ; le commentaire ne permet pas
d'en dire plus.

**C31 — annonce du plan** (15:48) : *« ne pas mentionner les appendices »*
→ **Appliqué.** L'annonce des annexes disparaît de l'introduction ; la règle centrale est
dans le corps du papier.

---

## État de l'art

**C12 — portée de l'état de l'art** (9:33) : *« pas très clair que tu essaies de critiquer les
datasets existants »*
→ **Traité par recentrage.** Le mapping de 41 ressources, sa section et son annexe sont
supprimés. §2 (l. 183–268) est un état de l'art ciblé, avec un avertissement explicite :
« This is a targeted account […] not a survey, and we make no claim about how often existing
benchmarks neglect task permissions ».

**C28 — comparaison aux approches voisines** (15:45) : *« pas clair que tu dis que c'est moins
bien que le truth contract […] et je comprends pas ce que ça fait là »*
→ **Appliqué, sans revendiquer de supériorité** (l. 232–241) : « An evaluator that combines an
evidence check with a sufficiently detailed instruction check could implement the rule we
propose. We do not claim otherwise. » L'apport annoncé est l'interface explicite, et cette
combinaison devient la baseline du §5.3.

**C46 — ouverture des travaux liés** (17:12) : *« je vois pas trop l'intérêt de mettre ça là »*
→ **Appliqué.** §2 est placé avant le framework et commence directement par les travaux
existants, sans répétition de la règle.

**C47 — ancrage bibliographique** (17:19) : *« 2 références seulement, ça me paraît léger »*
→ **Traité par état de l'art ciblé.** §2.1 discute quatre travaux (Maynez, Kryscinski,
FActScore, VeriScore) plus Claimify, Choi et Wanner sur la fragilité de l'extraction.
39 clés citées au total dans le papier, toutes présentes dans `references.bib`.

---

## Framework : oracle et contrat

**C33 — oracle** (16:10) : *« à définir ici, je comprends pas ce que c'est »*
→ **Appliqué.** §3.1 s'ouvre sur la définition (l. 279–285).

**C41 — composition de l'oracle** (16:38) : *« il faut aussi la méthode pour comparer l'article
aux claims ? »*
→ **Appliqué.** L'oracle est un *reference package* : « named textual sources together with a
procedure for resolving what those sources establish. Both halves are needed. »

**C22 — contenu de l'oracle** (16:17) : *« dire clairement que l'oracle contient tout ce qui est
vrai (et qu'on ne doit pas falsifier) »*
→ **Remplacé par la consigne du 7 septembre.** Pas d'oracle contenant toute la vérité :
référence textuelle bornée, spécialisée par domaine, fixée avant le prompt (l. 303–326).
Une contradiction peut recevoir LD si le contrat l'autorise précisément. Le papier assume :
« This is a restricted account of verification, not a metaphysical account of truth. »

**C18 — fiction et contradiction** (9:46 + 16:16, second message tronqué) : *« tu es sûr ?
Quid d'une fiction sur un personnage politique par exemple ? »*
→ **Remplacé par la consigne du 7 septembre.** La règle a changé : une contradiction n'est
plus automatiquement H. Si le contrat autorise précisément cette modification et que le
cadre fictionnel fournit le marquage, le claim reçoit LD, **sans que l'oracle bouge**
(§3.4, l. 476–481, et 3e exemple du §4, l. 615–624). Le suivi tronqué n'est pas reconstitué ;
aucun exemple de personnalité politique réelle n'est nécessaire pour poser la règle.

**C34 — redéfinir le truth contract** (16:13) : → **Appliqué.** §3.2 redéfinit le contrat dans
sa propre sous-section (l. 327–340) avant toute décision.

**C39 — notation du contrat** (16:24) : *« tu l'utilises pas avant non ? »*
→ **Appliqué.** L'indice $p$ est effectivement utilisé ; la convention inutile annonçant sa
disparition est supprimée.

**C10 / C20 / C21 / C32 / C36 — définitions des trois champs**
- C10 (9:32) *« définir chaque terme »* → **Appliqué** : liste `description` de trois entrées
  (l. 337–352), chacune ouverte par une question en langage ordinaire.
- C20 (9:47) *« vraiment à mettre en avant, c'est la formule centrale […] peut-être une liste
  à points »* → **Appliqué** : le triplet est une équation numérotée (éq. 1), les champs une
  liste, et la règle une seconde équation numérotée (éq. 2) suivie du tableau 1.
- C21 (9:49) *« j'ai du mal à comprendre les définitions »* → **Appliqué** : « permission to add
  is not permission to contradict » ; $\Gamma_p$ est un ensemble de couples (contenu, état de
  preuve).
- C36 (16:18) *« "permission scope is empty" n'est pas clair »* → **Appliqué avec changement de
  domaine** : la formule « permission scope is empty » disparaît ; $\Gamma_p$ couvre aussi les
  claims *entailed*, ce qui permet à une tâche d'interdire un contenu pourtant établi.
- C32 (16:57) *« il faudrait un glossaire […] encore trop compliqué / sur-ingénieré »*
  → **Partiellement appliqué.** Pas de glossaire autonome : les trois champs sont définis en
  liste et les autres symboles localement. La notation restante se limite à
  $O$, $\Gamma_p$, $\mu_p$, $c^*$, $\widehat m$, $E$, $L$, $M$, $V$, $\sigma$.

**C13 / C19 — exemple des permissions**
- C13 (9:39) *« définitions trop techniques, ça me fait pas ressentir »* → **Appliqué** :
  exemple concret juste après les définitions (l. 366–372), distinguant ajouter un détail et
  déplacer une date connue.
- C19 (9:46) *« praise : très bien le paragraphe explicatif »* → **Intention conservée**, le
  paragraphe pédagogique est réécrit pour la nouvelle règle mais garde sa fonction.

**C38 — ordre des définitions** (16:23) : *« je le positionnerais avant, les définitions sont
centrales »*
→ **Appliqué.** Ordre : oracle → contrat → unité claim → règle. La figure 1 arrive après les
définitions, comme vue d'ensemble.

---

## Framework : claims, marquage, style

**C15 — sens de « truth-conditional »** (9:40) : *« j'ai toujours du mal à comprendre ce terme »*
→ **Appliqué** (l. 405–408) : « content that can be assessed as true or false in the context in
which it was stated », avec le contre-exemple « now picture the scene ».

**C29 — extraction en intro** (15:45) : *« est-ce nécessaire en intro ? »*
→ **Appliqué.** Les détails de récupération des claims sont au §3.3 uniquement.

**C43 — extraction, citation manquante** (16:44) : *« mériterait une citation/référence »*
→ **Appliqué.** §3.3 relie le choix de l'unité à FActScore et VeriScore, et les modes d'échec
à Claimify, Choi et Wanner.

**C40 / C42 — notation du marquage**
- C40 (16:36) *« réintroduire la lettre m »* → **Appliqué** : $\widehat m$ est le marquage
  observé.
- C42 (16:42) *« pourquoi m et pas mu ? on préfère \hat{} pour les valeurs observées »*
  → **Appliqué** : $\mu_p$ est l'exigence, $\widehat m$ l'observation, $M$ le test de
  conformité. Le style suit la même convention : $\sigma_p$ demandé, $\widehat\sigma$ observé.

**C37 / C44 — raisons d'échec**
- C37 (16:19) *« ? »* → **Traité, intention indéterminée**, mais le sujet est désormais dans le
  corps du papier.
- C44 (16:55) *« pas introduits avant, disponible seulement en annexe »* → **Appliqué** : le
  *reason code* est défini au §3.4 (l. 492–497) ; l'annexe ne donne que le format de
  consignation.

**C45 — position de la partie style** (17:03) : *« on pourrait croire que ça fait partie du
truth contract »*
→ **Appliqué.** §3.5 s'intitule « Style is recorded, but kept outside » et pose explicitement :
« Neither $\sigma_p$ nor $\widehat\sigma$ enters Equation (2). » La distinction style /
marquage de statut est énoncée en une phrase : « Style changes how a commitment is dressed;
marking changes whether it is made. »

**C30 — style en intro** (15:46) : *« est-ce nécessaire en intro ? »* → **Appliqué**, les
variables de style n'apparaissent qu'au §3.5.

**C17 — ouverture du framework** (Mathis, 3 sept. 13:12) : *« simplifier l'explication »*
→ **Appliqué.** §3 s'ouvre sur deux opérations en quatre phrases (l. 271–276).

---

## Figures et exemples

**C23 — figure 1** (9:48) : *« image toujours un peu difficile à comprendre, encore plus au
début de l'intro » + lien SharePoint*
→ **Partiellement appliqué.** La figure est redessinée en cinq étapes linéaires avec deux
libellés « step 1 / step 2 », et déplacée dans le framework, plus au début de l'introduction.
**Le modèle SharePoint n'a pas été consulté** : la conformité à cette image n'est pas vérifiée.

**C24 — figure 2 / §4** (Mathis, 3 sept. 13:30) : *« trouver une autre formulation »*
→ **Appliqué.** Formulée comme une variation de permission à oracle constant : « A change in
permission can change the label without changing the evidence ».

**C35 — figure 2** (16:17) : *« praise : bonne figure illustrative »*
→ **Intention conservée.** La comparaison à deux colonnes est gardée, simplifiée ; ce n'est
pas le même dessin que l'ancienne version.

---

## Agenda

**C26 — §5** (Mathis, 3 sept. 13:47) : *« reformuler pas clair, supprime "falsifiable" du papier
et reformule les phrases qui l'utilisent »*
→ **Appliqué.** Le mot « falsifiable » n'apparaît plus (vérifié par grep). Les sept priorités
deviennent cinq études, chacune terminée par ce qui compterait contre la position.

---

## Consignes du 7 septembre (hors commentaires Overleaf)

| Consigne | Traitement |
|---|---|
| Vulgariser, phrases simples, concepts communs | Intro sans équation, phrases courtes, voix active ; 2660 → 849 lignes |
| S'inspirer de papiers connus du domaine | Ouverture sur un cas concret (Maynez), unité atomique justifiée par ses limites (FActScore, VeriScore), contraintes vérifiables (IFEval) |
| Intro simple → SOTA → framework | Ordre respecté : §1 sans notation, §2 état de l'art, §3 framework |
| Expliquer le choix de passer par le claim | §3.3 entier, avec ses trois coûts assumés |
| Supprimer FEVER et SUPPORTED | Vérifié par grep : absents |
| Vision restreinte, oracle textuel | §1 « Scope » et §3.1 |
| Notion globale du problème de l'oracle | §3.1 « The oracle is domain-specific, not universal » : le *oracle problem* est énoncé comme un point général sur la vérification, sans oracle métaphysique |
| Oracle indépendant du prompt | §3.1 « The oracle is fixed independently of the prompt » |

---

## Vérifications effectuées

- Compilation `make pdf` avec `clv2025`, `natbib` et `compling` du dépôt : **15 pages**,
  0 erreur, 0 citation non résolue, 0 référence non résolue, 0 overfull hbox.
- Avertissements restants, tous bénins : `pdfpagelabels` désactivé par l'ordre de chargement
  du gabarit (pré-existant), 4 underfull vbox d'espacement vertical sur pages à flottant.
- 39 clés citées, toutes présentes dans `references.bib`. Aucune clé inventée, aucune entrée
  ajoutée, aucun `\citetodo` restant.
- Inspection visuelle des 15 pages, des deux figures, du tableau de décision, des deux
  équations numérotées et de la bibliographie.
- Termes retirés vérifiés par grep : `FEVER`, `SUPPORTED`, `falsifiable` absents du corps.
- Version de départ conservée intégralement.

Il s'agit d'une vérification éditoriale et technique, pas d'une revue indépendante ni d'une
validation expérimentale.
