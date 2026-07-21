# Review de pré-soumission — main_position_personal_submission.tex

**Cible** : Computational Linguistics (track position paper), classe `clv2025`.
**Fichiers examinés** : `main_position_personal_submission.tex` (835 lignes) et le PDF compilé (22 pages), inspectés page par page. Contrôles effectués : recompilation complète du .tex (pdflatex ×3 + bibtex), diff textuel PDF soumis vs PDF recompilé, audit du rendu des figures et tables, vérification de `references.bib`.
**Périmètre** : forme, anglais académique, clarté, organisation, figures/tables — conformément au protocole demandé. La contribution scientifique n'est évaluée que lorsqu'un problème gêne la compréhension.

**Fait préliminaire important** : le PDF soumis est **périmé** par rapport au .tex. La recompilation du .tex actuel produit un document identique **sauf** dans la Figure 1, où le PDF soumis affiche deux fois un deux-points parasite « TC(p) : » que le source actuel ne contient plus. Deux hunks de différence au total. Il faut impérativement recompiler avant soumission et vérifier la Figure 1.

---

## A. Évaluation globale

Le manuscrit est solide sur le fond rédactionnel : l'argument central (le label « hallucination » est relatif à un contrat de vérité explicite) est énoncé tôt, répété aux bons endroits, et la structure problème → position → formalisme → mapping → cas → agenda est lisible. L'anglais est globalement correct, direct, avec des phrases courtes conformes au style visé. Les faiblesses sont concentrées sur trois plans : (1) des défauts mécaniques de rendu (renvois « Appendix 8 », doubles points après quatre titres de paragraphes, incohérences visuelles de la Table 1) ; (2) une bibliographie non conforme aux standards d'une revue (≈ 2 pages d'auteurs pour BIG-Bench, entrées sans identifiant, notes parasites, versions publiées non citées) ; (3) une sur-répétition défensive de deux disclaimers (claim-level vs response-level ; mapping « author-coded, not validated ») qui alourdit le texte d'environ une page.

| Critère | Note /5 | Justification |
|---|---|---|
| Clarté de l'argument central | 4 | Position énoncée dans le titre, l'abstract, §1 et §8 ; le lecteur ne peut pas la manquer. Le point est retiré pour la surcharge notationnelle de §3.3 qui brouille le message pour un lecteur pressé. |
| Qualité de l'anglais académique | 4 | Phrases courtes, voix active, hedging calibré. Restent : un article manquant (l. 105), un référent ambigu (l. 124), « labelled » (UK) vs « mislabeled » (US), quelques verbes mal attribués (« Evaluation should… reduce », l. 571). |
| Cohérence structurelle | 4 | Progression logique nette ; chaque section annonce sa fonction. Bémol : la liste des 5 questions de §4.1 est coupée en deux par le flottant Table 1 (items 1–4 p. 8, item 5 p. 9). |
| Cohérence terminologique | 3 | Contradiction titre §3 « Claim-Level *Verdicts* » vs corps qui réserve « verdict » au niveau réponse ; \SV développé de deux façons différentes ; vocabulaire des arêtes de la Figure 2 (« supported / not determined ») ≠ états formels (entailed / unknown). |
| Accessibilité aux non-spécialistes | 3 | Abstract à 6 symboles mathématiques ; §3.3 empile X, C, σ̂, z, C*, ≡ avec doubles indices. Le lecteur NLP généraliste suivra, mais au prix d'un effort évitable. |
| Clarté des figures | 4 | F1 et F3 très lisibles ; F2 bonne mais vocabulaire interne incohérent ; Table 1 (la « thèse en une vue ») souffre de défauts de mise en page visibles (badges, couleur SUP+SV, orphelin « it »). |
| Qualité des captions | 4 | Autonomes et informatives — c'est une force. F1 est trop longue (7 phrases) et la caption de la Table 1 contient une formule maladroite (« places its examples one below another »). |
| Maturité de publication | 3 | Rien de structurellement grave, mais l'accumulation de défauts mécaniques (refs cassées, biblio, PDF périmé) rend le manuscrit non soumis-able en l'état. |

---

## B. Cinq révisions prioritaires (par ordre d'importance)

**1. Recompiler et resynchroniser PDF/.tex ; corriger les renvois « Appendix 8 » (×3).**
Problème : le PDF soumis ne correspond pas au source (deux-points fantôme en Figure 1) ; et dans les deux versions, `Appendix~\ref{app:mapping}` s'affiche « **Appendix 8** » au lieu de « Appendix B » (p. 9, p. 10, p. 12 ; source l. 471, 481, 626). Le compteur de section n'est pas alphabétique pour `\ref` alors que les titres et les tables affichent bien A/B.
Pourquoi : un renvoi cassé visible trois fois est le premier signal de négligence qu'un relecteur remarque.
Action : recompiler ; remplacer les trois `Appendix~\ref{app:mapping}` par un renvoi correct (au plus simple, écrire `Appendix~B (\ref{app:mapping})` après avoir vérifié, ou corriger le compteur : `\renewcommand{\thesection}{\Alph{section}}` après `\appendix`, selon ce que permet `clv2025.cls`). Vérifier aussi `Section~\ref{sec:framework}` (l. 704, rendu correct « Section 3 »).

**2. Supprimer le point final de quatre titres `\paragraph{…}` (doubles points rendus).**
Problème : la classe ajoute un point après les titres de paragraphes ; quatre titres en contiennent déjà un → rendu « .. » : « *Claim labels versus response-level assessment..* » (p. 7, l. 330), « *Factuality cluster: low σ, low κ..* » (p. 10, l. 487), « *Creativity cluster: …as explicit controls..* » (l. 491), « *The apparent contradiction is a coverage gap..* » (l. 497).
Action : retirer le `.` final dans les quatre `\paragraph{}`.

**3. Assainir la bibliographie (chantier le plus long).**
Problème, par ordre de gravité : (a) `srivastava_beyond_2023` (BIG-Bench) déroule ~440 auteurs sur **≈ 2 pages** (pp. 20–21) ; (b) trois entrées sortent **sans aucun identifiant ni venue** parce que `compling.bst` ignore les champs `eprint` : `narayan_xsum_2018` (en plus : titre décapitalisé « Don't give me the details, just the summary! topic-aware… » et venue EMNLP 2018 absente), `lai_multidimensional_2023`, `pauli_mind_2025` ; `sun_hallucinating_2024` n'a qu'une URL OpenReview non rendue ; (c) notes parasites importées de Zotero : « version: 1 » (HalluLens, SimpleQA/wei), « Version Number: 1. » (banerjee_does), « Number: 5. » (franceschelli) ; (d) plusieurs papiers publiés cités en préprint arXiv : HaluEval (EMNLP 2023), FActScore (EMNLP 2023), FRANK (NAACL 2021), MENLI (TACL 2023), RealTime QA (NeurIPS 2023 D&B), BIG-Bench (TMLR 2023), DelucionQA (Findings EMNLP 2023) ; MacGyver est daté 2025 alors que l'arXiv est 2311.* et la publication NAACL Findings 2024 — année à vérifier ; (e) casse incohérente : « Writingbench » (wu_writingbench, protéger {W}riting{B}ench) et format « arXiv preprint arXiv:… » vs « ArXiv:… [cs] » ; « ArXiv » devrait être « arXiv » partout ; kalai_calibrated cumule venue STOC + note arXiv (garder STOC seul).
Pourquoi : CL est une revue ; le copy-editing y est strict et les relecteurs regardent la biblio.
Action : tronquer BIG-Bench (`author = {Srivastava, Aarohi and Rastogi, Abhinav and Rao, Abhishek and others}`), passer chaque @misc en entrée publiée quand elle existe, sinon ajouter `note = {arXiv:XXXX.XXXXX}` ; supprimer toutes les notes de version ; protéger les majuscules des titres par des accolades.

**4. Corriger la mise en page de la Table 1 (le problème d'affichage que tu suspectais est réel).**
Quatre défauts visibles p. 9 : (a) les badges « σp = …, κp = … » sont en haut à droite dans les cartes 1 et 4 mais rejetés à gauche sur leur propre ligne dans les cartes 2 et 3 (effet accidentel dû à la longueur des prompts) ; (b) « **SUP+SV** » est composé dans le **vert de LD**, alors que le code couleur du papier (F1, F2) réserve le vert à licensed divergence — un lecteur qui scanne verra une carte « verte » = LD là où le label est SUP ; (c) colonne justification trop étroite : « σp = 2 does not license / **it** » laisse « it » orphelin ; (d) les deux claims d'une même carte se touchent (pas d'espacement vertical).
Action : badge systématiquement sur une deuxième ligne alignée à droite (`\hfill\colorbox…` après un `\\` systématique), ou raccourcir les prompts ; définir une couleur neutre/bleue pour SUP ; élargir la 3e colonne (p. ex. `P{0.30\linewidth}` et réduire la colonne label à `0.11`) ; ajouter `\addlinespace[2pt]` entre les lignes de claims.

**5. Résoudre la contradiction terminologique « verdict » vs « label » et unifier le vocabulaire des états d'évidence.**
Problème : le titre de §3 est « Truth Contracts and Claim-Level **Verdicts** » alors que le texte martèle que les labels de claims **ne sont pas** des verdicts (« It does not by itself return a verdict for the complete response », l. 332 ; caption F1 « Both labels are claim-level, not verdicts »). Parallèlement, la Figure 2 étiquette ses arêtes « supported / contradicted / **not determined** » alors que le formalisme définit E ∈ {ENTAILED, CONTRADICTED, UNKNOWN} — trois mots pour deux des trois états, dans la même page que la définition.
Action : renommer §3 « Truth Contracts and Claim-Level Labels » ; dans F2, étiqueter les arêtes « entailed / contradicted / unknown » (le nœud dit déjà « if evidence is unknown »).

---

## C. Revue section par section

**Titre.** Clair et mémorable ; annonce la position (« Is Contract-Relative ») et l'objet (« Truth-Contract Framework »). Légère redondance « Contract-Relative … Truth-Contract » — acceptable. RAS bloquant.

**Abstract (239 mots, 14 phrases).** Rôle rempli : problème, gap, position, approche, évidence, limite. Deux réserves. (1) Densité symbolique : six symboles (O, σ, K, κ, Γ, ρ) dans un abstract, c'est trop pour un premier contact ; Γp et ρp peuvent être remplacés par leur glose (« where and how divergence is allowed » suffit — ils sont déjà glosés ainsi, donc les symboles Γp/ρp n'apportent rien ici). (2) Micro-ordre : la phrase « The style level guides the interpretation… » arrive après la phrase sur l'agrégation, alors qu'elle appartient au bloc style ; la remonter d'une phrase. Détails : « aggregate claim results » → « aggregate claim-level labels » ; « The style level » → « The requested style level » ; l'ordre « five worked cases and an author-coded mapping » est l'inverse de l'ordre du papier (mapping §4, cases §5) — aligner.

**1. Introduction.** Très bonne mécanique : le problème est établi avant la terminologie, les deux exemples (médical/fiction) sont immédiats, « Our position » est explicite, les contributions sont numérotées. Deux points : le paragraphe « Our position » (l. 107–119) contient 13 phrases et cumule position + définitions + disclaimer d'agrégation ; le disclaimer (« This paper does not claim an optimal response-level aggregation rule », déjà dans l'abstract et §3.4) peut sortir d'ici. La phrase l. 105 a un article manquant (voir D).

**2. Related Evaluation Paradigms.** Court (4 paragraphes) mais c'est un choix défendable pour un position paper : chaque paragraphe synthétise un paradigme et le différencie (faithfulness/factuality, intent, « bonnes » hallucinations, foregrounding/style transfer) au lieu de lister des papiers. La dernière phrase (« The missing bridge is a protocol that varies stylistic marking while holding the expressed claims and reference evidence fixed ») est la meilleure du papier pour poser le gap. Si un relecteur demande des ajouts, les fils absents les plus probables sont instruction following/RLHF et la littérature hedging/calibration — à anticiper, pas obligatoire.

**3. Truth Contracts and Claim-Level Verdicts.** Le cœur, globalement bien construit : définitions en run-in, exemples immédiats pour Γp et ρp (Lyme), distinction σp demandé vs σ̂ observé propre. Trois problèmes. (1) Le titre contredit la terminologie du corps (voir B.5). (2) §3.3 est la sous-section la plus coûteuse : X_{σp}(s,p), C_{σp}, σ̂, z_{σp}, quatre types de spans, C*, ≡, puis le double bloc d'équations — chaque objet est défini, mais l'empilement d'indices σp (jusqu'à C*_{σ_{p_0}}) est hostile ; si les indices ne portent pas de contraste réel dans le papier, écrire une note « we omit the subscript σp henceforth » comme fait pour p, ou alléger. (3) La phrase « The target capability is to produce stylistically creative yet factually grounded output… » (l. 293) change de sujet (du diagnostic d'évaluateur vers la capacité du modèle) au milieu du paragraphe des échecs d'évaluateur — la déplacer en fin de §3.3 ou dans §6.5. §3.4 est précis (règle V, refus/méta-claims, fiction) ; le paragraphe « Claim labels versus response-level assessment » est bon mais son titre porte le point en trop (B.2).

**4. Purposive Mapping of a Diagnostic Gap.** Protocole lisible (5 questions), codes définis, limites honnêtes. Trois points. (1) La question 2-bis (« we also recorded whether marked form is evaluated as a possible source of factuality-measurement error », l. 469) annonce un enregistrement dont le résultat n'est jamais rapporté en tant que tel dans §4.2 — soit ajouter la phrase de résultat (une ligne suffit), soit supprimer l'annonce. (2) Les disclaimers « author-coded / interpretive / not validated » apparaissent deux fois en dix lignes (l. 477–481) puis encore en §7.2 et App. B — fusionner (voir G). (3) « Examples include “explain this scientific result like a poet…” » (l. 505) : un seul exemple, et rattaché à la mauvaise phrase (il illustre la combinaison manquante, pas les « existing resources » qui précèdent) — voir D.

**5. Worked Cases.** Efficace ; A–E isolent chacun une composante et la dernière phrase récapitule. Supprimer la méta-justification « The cases are kept in prose because… » (l. 607) : c'est une réponse anticipée à un relecteur, pas du contenu. Micro-incohérence : Case B dit « grounded QA contract » là où F1 dit « historical-QA prompt » — sans gravité, mais « historical QA » est plus précis.

**6. Research Agenda.** Six priorités bien découpées, chacune actionnable ; c'est la section qui donne au papier sa valeur de position paper. Dense (deux pages de prose serrée) mais les gras la rendent scannable. RAS bloquant.

**7. Discussion.** 7.1 fait le travail de séparation claims/réponse/style sans nouveauté indue ; « its formal results » (l. 665) surdit ce que sont des définitions (voir D). 7.2 est une bonne section limites (normativité, échelles, validation) — c'est le bon endroit pour l'unique rappel « author-coded » de la discussion.

**8. Conclusion.** Conforme : aucune claim nouvelle, reprend position + next steps. « An unknown claim » (l. 691) → « An evidence-unknown claim » pour coller au vocabulaire défini.

**Appendix A.** Utile et court ; la liste des quatre diagnostics est claire ; bonne clarification « contract dependence, not relative truth ».

**Appendix B.** Texte d'escorte clair (définitions de « implicit »/« partial » réutilisables). Problème de placement : les Tables B.1–B.3 flottent **au milieu des références** (hauts des pp. 16, 17, 18, références en dessous) — légal en LaTeX, mais visuellement défectueux pour une soumission. Ajouter `\clearpage` avant `\bibliography{references}` (ou forcer `[p]`) pour regrouper les tables avant les références. Typos de noms de ressources dans B.2 : « **DelusionQA** » → **DelucionQA** (nom officiel, cf. Sadat et al. 2023) ; « **HaluQA** » → **HalluQA** (Cheng et al. 2023) ; « RealTimeQA » → « RealTime QA ». Dans B.3, la citation en table rend « (Ismayilzada, Stevenson, and Plas 2025) » — « van der Plas » perd sa particule : protéger le nom dans le .bib (`{van der Plas}, Lonneke`).

---

## D. Corrections au niveau de la phrase

**1.**
Original : "The point is not that all current factuality systems make this error, but that many protocols do not expose requested style level as a variable with which the error can be measured." (l. 105)
Problème : article manquant devant « requested style level » ; « with which the error can be measured » est lourd.
Révision proposée : "The point is not that all current factuality systems make this error, but that many protocols do not expose the requested style level as a variable, so the error cannot be measured."
Raison : grammaire + relation logique explicite.

**2.**
Original : "The wording is fixed, but the prompt establishes a different discourse frame, so the two occurrences do not express the same contextualized claim." (l. 124)
Problème : « the prompt » est ambigu — il y a deux prompts ; « a different discourse frame » différent de quoi ?
Révision proposée : "The wording is fixed, but each prompt establishes a different discourse frame, so the two occurrences do not express the same contextualized claim."
Raison : lève l'ambiguïté du référent.

**3.**
Original : "Current methods often aggregate claim results, but no single rule is known to be optimal across truth contracts; contract-aware response-level assessment remains an open problem." (abstract, l. 77)
Problème : « claim results » est vague et n'est pas le terme défini.
Révision proposée : "Current methods often aggregate claim-level labels, but no single rule is known to be optimal across truth contracts; contract-aware response-level assessment remains an open problem."
Raison : cohérence terminologique avec le reste du papier.

**4.**
Original : "The style level guides the interpretation of metaphors and other marked forms, but never permits unsupported content by itself." (abstract, l. 78)
Problème : « The style level » sans qualificatif — c'est σp, le niveau *demandé* ; en plus la phrase est mal placée (après l'agrégation).
Révision proposée : "The requested style level guides the interpretation of metaphors and other marked forms, but never permits unsupported content by itself." (et remonter la phrase juste après la phrase sur l'évaluateur, l. 74–75)
Raison : précision + regroupement thématique.

**5.**
Original : "For $\Gamma_p$, consider a medical brainstorming task that permits possible diagnoses but not invented drug doses; the diagnosis space is inside the scope, whereas treatment instructions are outside it." (l. 217)
Problème : glissement « drug doses » → « treatment instructions » entre les deux moitiés de la phrase.
Révision proposée : "…that permits possible diagnoses but not invented drug doses; the diagnosis space is inside the scope, whereas invented treatment content, such as drug doses, is outside it."
Raison : le contraste porte sur le même objet des deux côtés.

**6.**
Original : "The target capability is to produce stylistically creative yet factually grounded output whenever $K_p$ requires grounding." (l. 293)
Problème : rupture de sujet — le paragraphe parle des échecs de l'évaluateur ; cette phrase parle de la capacité cible du modèle.
Révision proposée : déplacer la phrase (avec la suivante, l. 294) en clôture de §3.3 ou dans §6.5, avec un connecteur : "For models, the target capability is…"
Raison : un paragraphe = une idée.

**7.**
Original : "If an entailed claim violates a requested hedge or style, it remains \SUP\ but receives a separate task-compliance error." (l. 322)
Problème : un claim ne « reçoit » pas une erreur ; c'est le système qui la signale.
Révision proposée : "If an entailed claim violates a requested hedge or style, it remains SUP but is additionally flagged with a task-compliance error."
Raison : attribution correcte de l'action, formulation idiomatique.

**8.**
Original : "Existing resources more often pair factual contracts with neutral language and creative contracts with marked language. Examples include ``explain this scientific result like a poet, but keep every claim accurate.''" (l. 504–505)
Problème : « Examples include » (pluriel) pour un seul exemple ; et l'exemple illustre la combinaison *manquante*, pas les « existing resources » de la phrase précédente — contresens possible à la première lecture.
Révision proposée : "Existing resources more often pair factual contracts with neutral language and creative contracts with marked language. The underrepresented combination corresponds to prompts such as ``explain this scientific result like a poet, but keep every claim accurate.''"
Raison : nombre correct et rattachement du référent à la bonne idée.

**9.**
Original : "Evaluation should instead reduce unlicensed departures (\Hall), preserve licensed ones (\LD), and retain supported content at the requested $\sigma_p$ level." (l. 571)
Problème : l'évaluation ne réduit ni ne préserve rien ; ce sont les objectifs qu'elle doit mesurer (la formulation correcte existe déjà en §6.5).
Révision proposée : "Evaluation should instead target three outcomes: reducing unlicensed departures (H), preserving licensed ones (LD), and retaining supported content at the requested σp level."
Raison : attribution correcte + parallélisme avec §6.5.

**10.**
Original : "The cases are kept in prose because each contrast requires an explanation that a compact summary table would repeat without adding a new result." (l. 607)
Problème : méta-commentaire défensif sans contenu.
Révision proposée : supprimer la phrase.
Raison : gain net de concision ; la justification n'aide pas le lecteur.

**11.**
Original : "Because this paper does not define an optimal $R$, its formal results should not be read as a complete response-scoring method." (l. 665)
Problème : « formal results » surdit — le papier propose des définitions, pas des résultats formels (théorèmes).
Révision proposée : "Because this paper does not define an optimal R, its formal definitions should not be read as a complete response-scoring method."
Raison : calibrage de la claim sur ce que le papier contient réellement.

**12.**
Original : "An unknown claim is \LD\ only when it falls within the permitted scope and uses the required epistemic presentation; otherwise it is \Hall." (l. 691)
Problème : « unknown claim » n'est pas le terme défini (« evidence-unknown »).
Révision proposée : "An evidence-unknown claim is LD only when it falls within the permitted scope and uses the required epistemic presentation; otherwise it is H."
Raison : cohérence avec §3.4 et l'abstract.

**13.**
Original : "Thus, a claim extracted from a response can be labelled differently when the prompt changes the truth contract." (caption F1, l. 151)
Problème : « labelled » (orthographe UK) alors que le papier utilise l'américain (« mislabeled », l. 328).
Révision proposée : "…can be labeled differently…"
Raison : cohérence US English demandée.

**14.**
Original : "Each colored card fixes one truth contract …, and places its examples one below another." (caption Table 1, l. 401)
Problème : « places its examples one below another » est non idiomatique.
Révision proposée : "Each colored card fixes one truth contract $\TC(p)=(O_p,\sigma_p,K_p)$ and lists one or two evaluated claims from example outputs."
Raison : dit ce que contient la carte au lieu de décrire l'empilement.

---

## E. Revue des figures et tables

### Figure 1 (`fig:flip`, p. 3) — un wording, deux labels

- **Message actuel** : le même wording de claim reçoit H sous contrat QA historique et LD sous contrat fiction — la dépendance au contrat en une image.
- **Difficulté principale** : aucune sérieuse ; c'est la figure la plus efficace du papier. Dans le PDF soumis, un deux-points parasite « TC(p) : » apparaît dans les deux boîtes (absent du .tex actuel — artefact de version, disparaît à la recompilation ; à vérifier).
- **Requis** : recompiler et vérifier la disparition du « : » ; passer « labelled » → « labeled » dans la caption.
- **Optionnel** : raccourcir la caption (7 phrases → 4) en fusionnant les deux phrases de précaution finales ; p. ex. garder « Strictly, the discourse frame changes the contextualized claim… » et supprimer « Both labels are claim-level, not verdicts… » (déjà dit partout).
- **Caption proposée** : "**One extracted claim wording, two contract-dependent labels.** The same constructed claim wording is evaluated under two prompts. Under the historical-QA prompt it is an unsupported real-world assertion and receives H; under the fiction-writing prompt it is an in-frame invention permitted by $K_p$ and receives LD. Strictly, each prompt changes the contextualized claim, so the figure shows contract dependence, not a contradiction about one fixed proposition."
- **Compréhension** : claire. **Nécessité** : essentielle.

### Figure 2 (`fig:decision`, p. 8) — procédure span → claim

- **Message actuel** : pipeline de décision : lire TC(p) → typer le span → récupérer le claim canonique → comparer à Op → si unknown, tester Kp → labels ; agrégation réponse laissée ouverte (nœud pointillé).
- **Difficulté principale** : le vocabulaire des arêtes ne correspond pas au formalisme : « supported » et « not determined » là où §3.4 définit ENTAILED et UNKNOWN (le nœud suivant dit d'ailleurs « if evidence is unknown » — trois formulations coexistent dans la même figure). Un lecteur qui vient de lire la règle V doit re-mapper mentalement.
- **Requis** : renommer les arêtes « entailed / contradicted / unknown ».
- **Optionnel** : la ligne en `\scriptsize` du nœud pointillé (« no optimal contract-aware aggregation rule is defined yet ») est très petite après `\resizebox` — passer en `\footnotesize` ; harmoniser « supported claim (SUP) » vs « hallucination (H) » (les boîtes de gauche/droite n'ont pas le même patron de libellé).
- **Caption proposée** : la caption actuelle est bonne ; remplacer seulement « when the evidence is unknown » → inchangé, et vérifier qu'elle emploie les mêmes termes que les arêtes après correction.
- **Compréhension** : compréhensible avec effort (à cause du vocabulaire) → claire après correction. **Nécessité** : utile.

### Figure 3 (`fig:profiles`, p. 11) — espace de conception des tâches

- **Message actuel** : grille 3×3 κ × σ ; neuf profils de tâches illustratifs ; les deux axes sont indépendants.
- **Difficulté principale** : les fonds colorés (bleuté en bas, gris au milieu, verdâtre en haut) suggèrent un codage sans légende. Le lecteur peut chercher une signification (gradient de risque ? de permission ?) qui n'est pas explicitée.
- **Requis** : soit une phrase de caption (« Background shading only groups rows by permission level »), soit supprimer les fonds.
- **Optionnel** : la cellule (σ=2, κ=0) « Strongly marked factual content » est la case « manquante » identifiée par le papier — l'encadrer ou la marquer (« underrepresented in our sample ») relierait la figure au résultat du mapping, ce qui la rendrait démonstrative au lieu de purement taxonomique.
- **Caption proposée** : ajouter en fin de caption actuelle : "Background shading has no meaning beyond grouping rows by $\kappa_p$; the top-right-to-bottom-left diagonal carries no ordering."
- **Compréhension** : claire. **Nécessité** : utile.

### Table 1 (`tab:contracts`, p. 9) — la thèse en une vue

- **Message actuel** : quatre contrats représentatifs, chacun avec un ou deux claims labellisés — le tableau démontre que le label dépend du contrat, pas du wording.
- **Difficulté principale** : les défauts d'affichage suspectés sont confirmés, au nombre de quatre. (a) Badges σ/κ : en haut à droite (cartes 1, 4) vs à gauche sur leur propre ligne (cartes 2, 3) — l'œil ne trouve pas le paramètre au même endroit d'une carte à l'autre. (b) « SUP+SV » composé en vert (couleur codée LD dans F1/F2) : le code couleur du papier est violé à l'endroit le plus visible. (c) « σp = 2 does not license / it » : orphelin « it » seul sur sa ligne (colonne trop étroite). (d) Claims d'une même carte collés verticalement.
- **Requis** : (a) badge toujours au même endroit — le plus robuste : toujours sur une deuxième ligne, aligné à droite (`\\*[1pt]\null\hfill\colorbox…`) ; (b) composer SUP+SV en couleur neutre (noir ou `clrB`) ; (c) élargir la colonne justification à ~0.30\linewidth et réduire la colonne label ; (d) `\addlinespace[3pt]` entre claims.
- **Optionnel** : la 2e claim de la carte 4 est une description sans guillemets (« A fabricated statement about a real named person… ») au milieu de claims cités — la mettre en italique pour signaler le changement de statut ; ré-ancrer le flottant pour qu'il ne coupe plus la liste des 5 questions de §4.1 (déplacer le `\begin{table*}` après le paragraphe contenant l'item 5, ou utiliser `[!b]`).
- **Caption proposée** : "**The thesis in one view.** Each colored card fixes one truth contract $\TC(p)=(O_p,\sigma_p,K_p)$, with $K_p=(\kappa_p,\Gamma_p,\rho_p)$, and lists one or two evaluated claims from example outputs. SUP, H, and LD are claim-level labels and SV is an auxiliary span label; the table assigns no verdict to a complete response."
- **Compréhension** : compréhensible avec effort (défauts visuels) → claire après correction. **Nécessité** : essentielle.

### Tables B.1–B.3 (pp. 16–18) — mapping des 40 ressources

- **Message** : profils codés (O, σ, κ) des 24 ressources factualité, 2 intent/taxonomie, 9 créativité, 5 problem solving. Les comptes annoncés dans le texte (24, 2, 5, total 40) sont exacts — vérifié.
- **Difficulté principale** : placement — les trois tables flottent au milieu de la section References (voir C, Appendix B). Contenu : lisible, colonnes non ambiguës, captions autonomes qui répètent la légende des codes (bien).
- **Requis** : corriger « DelusionQA » → « DelucionQA », « HaluQA » → « HalluQA » (B.2) ; regrouper les tables avant les références (`\clearpage` avant `\bibliography`).
- **Optionnel** : « RealTimeQA » → « RealTime QA » ; fixer « van der Plas » dans le .bib pour la citation en B.3 ; les trois captions répètent la même phrase finale (« These are author-coded profiles, not labels reported by the original resources ») — c'est défendable pour des tables autonomes, garder.
- **Compréhension** : claire. **Nécessité** : essentielle (c'est l'évidence du papier).

### Équations et définitions formelles

- TC(p), Kp (l. 195–197) : définis avant usage ✔. E(c,Op) (l. 299–301) : ✔, valeurs nommées et glosées. V(c|p) (l. 307–314) : ✔, chaque branche est expliquée en prose immédiatement après ; le cas par défaut (« otherwise ») couvre bien contradicted + unlicensed + présentation manquante ; l'exception fiction (contradiction avec le monde réel) est traitée en prose (l. 320–321) — correct. X_{σp} (l. 253–257) : tous les composants définis, mais c'est l'endroit où la notation dépasse le besoin (voir C §3). Le double bloc aligné (l. 277–288) rend bien à la compilation — pas de débordement (0 Overfull box au log).
- Avertissement de compilation à connaître : `Font shape 'T1/ppl/m/scit' undefined` — les petites capitales italiques n'existent pas dans la police du journal ; LaTeX substitue silencieusement pour SUP/H/LD dans l'abstract (italique). Le rendu actuel est acceptable, mais c'est la classe qui décide — aucun correctif requis, ne pas s'inquiéter du warning.

---

## F. Audit terminologie et notation

| Terme/symbole actuel | Localisation | Problème | Forme recommandée |
|---|---|---|---|
| « Claim-Level Verdicts » (titre §3) | l. 189 | Contredit le corps, qui réserve « verdict » au niveau réponse (l. 153, 332) | « Claim-Level Labels » |
| \SV = « stylistic contribution » | l. 259, 268 | Première définition dans le corps ≠ « stylistic variation » (F2, l. 349) ; caption T1 dit « auxiliary span label » | Définir une fois « stylistic variation (SV) » à la première occurrence du corps, puis « an independently identifiable stylistic contribution » comme glose, pas comme expansion |
| « supported / not determined » (arêtes F2) | l. 377, 379 | ≠ états formels ENTAILED / UNKNOWN (l. 300) | « entailed / unknown » |
| « labelled » | caption F1, l. 151 | UK vs « mislabeled » (l. 328) US | « labeled » partout |
| « unknown claim » | l. 691 | Terme défini = « evidence-unknown » | « evidence-unknown claim » |
| « evidentially unknown » | l. 114 | Variante unique de « evidence-unknown » | « evidence-unknown » |
| σ, κ sans indice p dans l'abstract | l. 80 | L'abstract définit σp, κp puis utilise σ, κ ; la convention « we drop the subscript » n'est énoncée qu'en §3.1 | Garder σp, κp dans l'abstract, ou σ/κ partout dans l'abstract |
| « DelusionQA » | Table B.2 | Nom officiel : DelucionQA | « DelucionQA » |
| « HaluQA » | Table B.2 | Nom officiel : HalluQA | « HalluQA » |
| « RealTimeQA » | Table B.2 | Nom officiel : RealTime QA | « RealTime QA » |
| « grounded QA contract » | l. 586 (Case B) | F1 dit « historical-QA prompt » | « grounded historical-QA contract » (ou aligner sur F1) |
| « The number estimates the breadth » | l. 475 | « the number » = le niveau κ | « The level estimates the breadth » |
| « Writingbench » | rendu biblio | Casse perdue dans le .bib | « WritingBench » (protéger par accolades) |
| « ArXiv:XXXX [cs] » / « arXiv preprint arXiv:XXXX » | rendu biblio | Deux formats coexistent ; « ArXiv » mal capitalisé | « arXiv:XXXX.XXXXX » uniforme |

Aucun symbole ne change de sens en cours de papier (bon point) : O, σ, σ̂, κ, Γ, ρ, E, L, M, V, U, R, C, C*, z, X restent stables entre texte, équations, figures et tables. Le seul écart texte/figure est lexical (F2, ci-dessus).

---

## G. Répétitions et complexité superflue

**1. Le disclaimer « claim-level ≠ response-level / pas de règle d'agrégation optimale » apparaît ≈ 9 fois** : abstract (2 phrases, l. 76–77), intro (3 phrases, l. 115–117), §3.4 (paragraphe dédié, l. 330–336), caption T1 (l. 403), F2 (nœud + caption, l. 368–370, 387–388), §6.4 (l. 639), §7.1 (l. 665), App. A (l. 718–719), conclusion (l. 693–694). Les captions peuvent le garder (autonomie), et §3.4 + §6.4 sont les emplacements légitimes. Recommandation : réduire l'abstract à une phrase, supprimer les 2 des 3 phrases de l'intro, supprimer la reprise de §7.1 (l. 665) et alléger la conclusion. Gain : ~0,3 page et un ton moins défensif.

**2. Le disclaimer « purposive / author-coded / not validated » apparaît ≈ 8 fois** : §1 (l. 160), §4.1 (l. 458–459, puis l. 477–480 deux fois en quatre lignes), §7.2 (l. 682–683), App. B (l. 729–730), captions B.1/B.2/B.3. Fusionner les deux occurrences de §4.1 en une seule ; garder §7.2 (c'est la section limites) et les captions.

**3. « σ ne licencie pas de contenu / n'est pas une échelle de qualité » ≈ 5 fois** (l. 212–213, 229–230, 233, caption F3 l. 562, §7.1 l. 663). Garder §3.2 et la caption F3 ; couper les reprises.

**4. Sections compressibles sans perte** : intro « Our position » (−3 phrases), §4.1 (−4 phrases de disclaimers), §5 (−1 phrase méta), §7.1 (−1 phrase). **Estimation totale : ~0,75 page de prose.** S'y ajoute ~1,5 page de références récupérée en tronquant BIG-Bench. Le papier peut passer de 22 à ~20 pages sans toucher au contenu scientifique.

---

## H. Checklist finale de révision

**Obligatoire avant soumission**
- [ ] Recompiler le PDF depuis le .tex courant ; vérifier la disparition de « TC(p) : » en Figure 1 (les deux boîtes).
- [ ] Corriger les trois « Appendix 8 » (l. 471, 481, 626) → « Appendix B ».
- [ ] Supprimer le point final des quatre `\paragraph{…}` (l. 330, 487, 491, 497).
- [ ] Tronquer la liste d'auteurs de `srivastava_beyond_2023` (« and others »).
- [ ] Réparer les entrées bib sans identifiant rendu : `narayan_xsum_2018` (+ venue EMNLP 2018, + casse du titre), `lai_multidimensional_2023`, `pauli_mind_2025`, `sun_hallucinating_2024`.
- [ ] Supprimer les notes parasites : « version: 1 » (bang, wei), « Version Number: 1 » (banerjee_does), « Number: 5 » (franceschelli).
- [ ] Table 1 : badges au même endroit sur les 4 cartes ; SUP+SV en couleur neutre ; élargir la colonne justification ; espacer les claims.
- [ ] Corriger « DelusionQA » → « DelucionQA » et « HaluQA » → « HalluQA » (Table B.2).
- [ ] Renommer §3 « …Claim-Level Labels » ; arêtes F2 « entailed / contradicted / unknown ».
- [ ] « labelled » → « labeled » (caption F1).

**Fortement recommandé**
- [ ] Citer les versions publiées : HaluEval, FActScore, FRANK, MENLI, RealTime QA, BIG-Bench (TMLR), DelucionQA ; vérifier l'année de MacGyver (2024 vs 2025).
- [ ] `\clearpage` avant `\bibliography` pour regrouper B.1–B.3 avant les références ; repositionner Table 1 pour ne plus couper la liste des 5 questions.
- [ ] Appliquer les corrections D.1–D.12 (phrases).
- [ ] Dégraisser les répétitions (G.1–G.3) : abstract, intro, §4.1, §7.1, conclusion.
- [ ] Alléger l'abstract : retirer les symboles Γp, ρp ; « claim results » → « claim-level labels » ; remonter la phrase style.
- [ ] Ajouter la phrase de résultat pour la sous-question « marked form as a measurement-error source » (§4.2) ou supprimer son annonce (l. 469).
- [ ] Uniformiser « arXiv:XXXX » et la casse des titres dans le .bib (WritingBench…).

**Polissage optionnel**
- [ ] Encadrer la cellule (σ=2, κ=0) de la Figure 3 et noter le codage des fonds dans la caption.
- [ ] Raccourcir la caption de F1 (7 → 4 phrases).
- [ ] Italiciser la claim décrite (non citée) de la carte 4 de Table 1.
- [ ] `{van der Plas}` dans le .bib ; « RealTime QA » ; note d'allègement des indices σp en §3.3.
- [ ] Anticiper une question relecteur sur instruction following/RLHF et hedging/calibration en Related Work.

---

## I. Verdict de publication

**Révision modérée requise** (« requires moderate revision »).

Justification : le fond rédactionnel est en bon état — argument lisible, sections bien finalisées, hedging calibré, captions autonomes, aucun `\citetodo` restant, compilation propre (0 overfull). Ce qui empêche la soumission immédiate n'est pas la clarté mais l'accumulation de défauts mécaniques dont plusieurs sont immédiatement visibles par un relecteur : PDF désynchronisé du source, renvois « Appendix 8 » cassés, doubles points, Table 1 visuellement incohérente à l'endroit précis où le papier « montre sa thèse », et une bibliographie qui n'est pas au niveau d'une revue (2 pages d'auteurs BIG-Bench, entrées sans identifiant, notes Zotero résiduelles). Tous ces correctifs sont locaux et rapides (une demi-journée à une journée, biblio comprise) ; aucun ne demande de réécriture. Après ce passage, le manuscrit relèvera du « ready after minor language editing ».
