# Suivi des commentaires d'Elöd (export V8, 27/10) — statut dans `truth_contract_position_paper.tex`

Fichier modifié : `réécriture_papier/truth_contract_position_paper.tex`. Sauvegarde de la version d'entrée : `truth_contract_position_paper_AVANT_2026-10-27_V8.tex`. Le papier compile (41 pages) sans citation ni référence indéfinie et sans ligne qui déborde.

**Constat préalable.** La version locale correspondait à la V8 d'Overleaf. Presque toutes les corrections du 23 et du 26 octobre en étaient absentes, sauf le passage à « plausible information ». Elles ont été réappliquées en plus des nouveaux fils V8.

## Fils sur mainV7.tex (25 fils)

| # | Commentaire | Statut | Où / quoi |
|---|---|---|---|
| 1 | (Mathis) Définir *task context*, avec *domain constraints* | Fait | §3.1 : liste à puces prompt / applicable instructions / conversation history / domain constraints, avec un exemple médical pour *domain constraints* ; documents fournis désignés par O ; tableau 1 aligné |
| 2 | Clarifier les exemples, expliciter μ davantage | Fait | §3.1 « Required status marking » : μ = statut requis + forme prescrite ; deux cas pour les prompts courts (Γ = ∅ → μ vide ; additions permises → μ inféré du type de tâche) ; exemple « may have been contaminated » / « was contaminated » |
| 3 | Que se passe-t-il si μ est vide ? | Fait | Même paragraphe : μ est vide seulement quand la tâche ne permet aucun ajout ; la contradiction « μ empty » / « infers » est supprimée |
| 4 | CNN/DailyMail : où est la réponse du LLM ? Le jeu de données précise-t-il la métrique ? | Fait | §4 : CNN/DailyMail a été publié pour la compréhension de lecture (Hermann et al.) ; le modèle écrit son propre résumé ; QAGS juge ce résumé ; « la vérification vient de la métrique, pas du jeu de données » |
| 5 | « rubrics » non défini | Fait | §4.1, première occurrence : définition avec exemple (échelle 1–5) |
| 6 | Enlever le paragraphe « For each resource, we read… » | Fait | Supprimé ; seule la limite (pas d'estimation de prévalence) est gardée, en une phrase |
| 7 | « unit » pas clair / préciser : claim, phrase… | Fait | §4.2 : *evaluated unit* défini (claim, sentence, span, final answer, story, program) + exemple de la justification inventée |
| 8 | « contain at least one condition » | Fait | Légende des symboles, colonne permission |
| 9 | « status marking » ? | Fait | « required status marking column » |
| 10 | « requires a given presentation » / pourquoi pas *task instructions* | Fait | Légende colonne marquage réécrite avec « task instructions » ; symboles inchangés (D3) |
| 11 | Aucune source ne couvrait les 3 conditions… → « Enlever cette section » | Fait | Paragraphe « Finally, we define… » supprimé ; le critère est repris en une phrase au début du §4.5 |
| 12 | « nonanswer » pas clair | Fait | §4.4 « Supported content only » réécrit, avec l'exemple « The documents do not say » |
| 13 | Regulated answers flou, exemples | Fait | Un exemple par puce (recette sans noix, « probably », citation, Einstein/Nobel, condition « If the bridge… ») |
| 14 | claim/answer (?) sur « its evaluation » | Fait | « the scoring compares the hedging of an answer… » |
| 15–17 | Rappeler les références (HalluRAG, ALCE, LoGU, HIC-Bench, NeoCoder, TimeChara) | Fait | §4.5 + LoGU en §4.4 |
| 18 | Caption tableau 5 « enlever ou reformuler » | Fait | « State-of-the-art protocols closest to the truth contract » ; « not a validated evaluation method » supprimé |
| 19 | « décrédibilise notre approche » | Fait | Paragraphe après le tableau 5 réécrit : l'apport d'abord, la validation renvoyée au §6 |
| 20 | Enlever (caption figure 5, phrase sur O₂) | Fait | Supprimé, avec la coquille « added 4 $O_2$ » |
| 21 | Enlever (exemple A, « test evidence ») | Fait | Supprimé |
| 22 | Quels exemples ? Préciser le n° de section | Fait | Agenda : « The four examples of Section 5 » |
| 23 | Énumérer des références par étape + renvoi à l'état de l'art | Fait | Agenda, priorité 2 : version courte d'une phrase validée le 26/10 |
| 24 | Préciser le chapitre (Examples A–D) | Fait | « Examples A--D of Section 5 » |
| 25 | « ? » sur *rubric* | Fait | « an instruction-following rubric, that is, a list of the task instructions checked one by one » |

## Fils sur mainV8.tex (8 fils)

| # | Commentaire | Statut | Où / quoi |
|---|---|---|---|
| 1 | Définir « rubrics » | Fait | Idem V7 #5 |
| 2 | Expliquer « evaluated unit » | Fait | Idem V7 #7 |
| 3–4 | Rappeler références / ref | Fait | Idem V7 #15–17 |
| 5 | « results » de qui ? de l'état de l'art ? | Fait | §7.1 : « Theoretical studies in the literature… » ; chaque résultat est rattaché à sa citation |
| 6 | « pas clair » (comparaison de modèles AA-Omniscience) | Fait | §7.1 : ce que montre le snapshot, et ce qu'il ne peut pas montrer (taille → taux ; intérêt de l'annotation renvoyé au §6) |
| 7 | « pas clair » (score et labels) | Fait | §7.2 : le score résume les labels des claims, il ne les change jamais |
| 8 | Donner un exemple concret (marquage ambigu) | Fait | §7.3 : « Imagine the temple three thousand years ago… » puis « The stele stood near the entrance » (FICTIONAL ou ESTABLISHED ?) ; présenté comme une limite de l'oracle (D1) |

## Décisions D1–D3 réappliquées
- **D1** : l'oracle est supposé correct dans le corps du texte. Toutes les mentions d'échec y sont retirées (« successfully », « Procedural failures are recorded… », caption du tableau 3, claim trace). L'annexe A s'appelle « Limits of the Oracle » et garde la distinction entre source indisponible et UNKNOWN. Le paragraphe « Recovery coverage » de l'annexe a son propre titre.
- **D2** : μ est inféré du type de tâche (voir V7 #2–3).
- **D3** : les symboles du tableau 4 ne changent pas ; seules la légende et la caption sont reformulées.

## Passe prose-hygiene

**Appliqué**
- **Coquilles** : « a considered as », « respnse », « illustrates the  museum », « claim label: \Hall{} », « Truth Contract », espaces doubles et en fin de ligne, « doesn't ».
- **Paragraphe en double** sur le claim (§3) supprimé.
- **Notation** : $(q^*_i,\mathrm{ES}_i)\in\Gamma$ est utilisée au §3.5 mais n'était plus définie ; elle est maintenant définie dans « Permission check ».
- **Réponse de la figure 1** : « A possible place of the complete stele could be near… » (double hedge, anglais maladroit) devient « The complete stele may once have stood near a temple entrance… », dans la figure et dans l'introduction.
- **Un concept, un terme** : « text fragment » / « museum fragment » / « museum text fragment » → « reference fragment » dans la prose ; les prompts des figures ne changent pas. « museum explanation » et « museum panel » → « museum label ». « conjecture » → « possibility ».
- **Terme utilisé avant d'être défini** : « reason code » est annoncé à sa première occurrence (§3.5).
- **Contribution 2** de l'introduction précisée, avec un renvoi au §3.5. La phrase vague « proposes some ideas on whether… » est remplacée.
- **Titre du §4** : « Overview of Existing Evaluation Resources », au lieu de « Existing hallucination datasets overview ». « Datasets » contredisait la phrase « a dataset alone is not enough », et le §4 couvre aussi les ressources de créativité. La casse est alignée sur les autres titres.

**Vocabulaire « IA »** : rien de notable. On trouve une seule occurrence de *essential* et une de *robustness* (sens technique) ; aucun *not only… but*, aucun *serves as*, aucune contraction.

**Signalé, non modifié**
- « observed marking » (8 occurrences) est une forme courte de « observed status marking ». Elle est acceptable, mais on pourrait l'uniformiser.
- La figure 1 dit « Source text fragment », alors que la prose dit « reference fragment ».
- « resource mapping » reste dans la caption du tableau 4 et dans la conclusion, alors que le titre du §4 est maintenant « Overview… ».
