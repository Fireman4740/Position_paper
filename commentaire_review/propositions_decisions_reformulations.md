# Propositions de décisions et premier brouillon de reformulations

Ce document propose une résolution concrète pour chacun des 6 points bloquants, puis un premier passage de reformulations avant/après pour une partie des commentaires 🟠/🟡/⚪. Rien n'est encore appliqué à `main_position.tex` — c'est une base à valider avant édition.

**Remarque préalable sur les macros.** Les instructions du projet listent `\CI, \TR, \PD, \Hallu, \Faith, \Acc` comme macros à garder stables. Le fichier actuel définit en réalité `\TC, \LD, \Hall, \SUP, \SV` (ligne 25-29 de `main_position.tex`) — l'ancien abstract collé dans le suivi (commentaire #6) utilise d'ailleurs encore `\TR`, `\Hallu`, `\PD`. Les instructions du projet semblent décrire un état antérieur du papier. Je m'appuie ci-dessous sur les macros réellement présentes dans le fichier (`\TC/\Hall/\LD/\SUP/\SV`) ; si tu veux, je peux aussi mettre à jour les instructions du projet pour refléter ce renommage.

---

## Partie A — Propositions de décision sur les 6 points bloquants

### A1. Notation `p` / `K_p` / `κ_p` / `κ`

En relisant le texte, ce n'est pas une erreur de fond : `K_p=(\kappa_p,\Gamma_p,\rho_p)` est cohérent partout dans le corps du papier. Le vrai bug est dans l'**abstract**, qui écrit `$\kappa=0$` et `$\kappa=2$` (sans indice `p`, et sans jamais mentionner `K_p`), alors que le corps du texte utilise systématiquement `\kappa_p` comme composante de `K_p`. Un lecteur qui commence par l'abstract voit donc « κ » comme un symbole autonome, puis découvre `K_p` en section 3 sans lien explicite — d'où la confusion répétée (#10, #22, #39, #42, #45, #53).

**Proposition :** garder `K_p=(\kappa_p,\Gamma_p,\rho_p)` tel quel (design cohérent), et corriger seulement la présentation :
1. Dans l'abstract, remplacer `$\kappa=0$` / `$\kappa=2$` par `$\kappa_p=0$` / `$\kappa_p=2$` — cohérence stricte avec le corps du texte.
2. À la toute première mention de `K_p` et `\kappa_p` (abstract ou §2), ajouter une incise d'une ligne : « `K_p` est la politique de permission complète ; `\kappa_p` en est la composante de niveau (0, 1 ou 2). »
3. Pour `p` : trancher pour **« task context »** comme terme canonique (déjà la définition précise et volontaire — `p` inclut system/user/domain, pas seulement le prompt littéral), gloser « informellement, le prompt » à la première définition, et vérifier que le tableau des symboles et toutes les occurrences ultérieures restent cohérentes avec ce choix plutôt que d'alterner.

### A2. Rôle de σ dans le contrat de vérité

Pierre-Yves a raison de pointer que la justification actuelle de σ est éclatée en plusieurs endroits sans jamais répondre frontalement à « pourquoi l'inclure si ça n'autorise rien ». Le texte contient déjà la bonne réponse (§3.3, phrase finale : « stylistic form can change which claims an evaluator extracts and verifies even though σ_p does not authorize new content »), mais elle arrive tard et de façon incidente.

**Proposition :** ajouter, dès la première définition de σ_p (§3.1, dans le paragraphe `\textbf{Truth contract}` ou juste après), 2-3 phrases qui répondent explicitement à l'objection :

> *Style is part of the contract for the same reason evidence and permission are: tasks routinely specify a register (a poem, a formal report, a terse answer), and the contract should make that request explicit. σ_p does not authorize unsupported content on its own — that is κ_p's role — but tracking it separately prevents two failure modes: an evaluator flagging a stylistic departure as \Hall\ when no factual commitment was violated, and a stylistic departure masking a real κ_p violation. This matters in practice because claim extraction and entailment checking are sensitive to register \citep{chen_menli_2023,aynetdinov_semscore_2024,lai_multidimensional_2023,pauli_mind_2025}, independently of what the task permits.*

Cette version répond directement aux 3 messages de Pierre-Yves (#48, #49) sans inventer de nouvelle littérature — elle réutilise les citations déjà présentes en §3.3. Si tes encadrants veulent une réponse plus étoffée, la section faithfulness/alignment évoquée dans leurs notes de réunion (voir le document `revue_commentaires_roadmap.md`, §4) peut prolonger ce paragraphe plutôt que le remplacer.

### A3. κ=1 vs ρ : chevauchement

En relisant la définition exacte : `\kappa_p=1` est glosé comme « limited and *explicitly marked* divergence » — le mot « marked » empiète directement sur le rôle de `\rho_p` (« required epistemic presentation », qui gouverne justement comment le contenu doit être signalé). C'est un vrai chevauchement de définition, pas juste une confusion de lecture.

Deux options, à trancher par toi car cela touche la règle de décision formelle (donc les Worked Cases en aval) :

- **Option 1 (redéfinir κ_p)** : retirer « explicitly marked » de la définition de κ=1, qui devient purement une question d'*ampleur* (« limited, bounded divergence » sans référence au marquage) ; le fait qu'un κ=1 typique soit généralement marqué devient une observation empirique, pas une exigence formelle — géré entièrement par ρ_p.
- **Option 2 (clarifier sans redéfinir)** : garder la définition actuelle, ajouter une phrase explicite : « κ_p and ρ_p are orthogonal: κ_p bounds *how much* may be invented, ρ_p governs *how* it must be signaled. The ``explicitly marked'' qualifier in κ_p=1 describes the scope of typical use, not a presentation requirement — that is entirely ρ_p's role. »

**Ma recommandation :** Option 2 — moins de risque de casser la cohérence des Worked Cases qui utilisent déjà κ_p=1 tel que défini, et ça répond directement à la question de Pierre-Yves sans toucher au cœur du système. Mais c'est ta décision à confirmer avant que je touche à la définition formelle.

### A4. Abstract : version actuelle vs `main_old`

Un retour intégral à l'ancien abstract n'est pas possible tel quel : il utilise `\TR`, `\Hallu`, `\PD` — des macros qui n'existent plus dans le fichier actuel (`\TC`, `\Hall`, `\LD`). Un vrai retour en arrière impliquerait de renommer tout le papier, pas seulement l'abstract.

**Proposition :** garder la notation actuelle (`\TC(p)=(O_p,\sigma_p,K_p)`, `\Hall`, `\LD`, `\SUP`) mais reprendre l'arc rhétorique de l'ancien abstract, que Pierre-Yves préférait : ouvrir sur le problème en langage accessible, introduire le formalisme ensuite, et finir sur l'apport plutôt que sur une limite. Brouillon :

> *Hallucination is usually scored as a binary defect: a statement is either supported or it is not.
> This misses a distinction that matters in practice: the same unsupported content is dangerous in a medical answer, harmless in a metaphor, and useful in fiction or brainstorming.
> We argue that hallucination should instead be a claim-level label relative to a task's \emph{truth contract}, $\TC(p)=(O_p,\sigma_p,K_p)$: the reference evidence $O_p$ that grounds a claim, the requested style level $\sigma_p$, and the content-permission policy $K_p$ that determines what evidence-unknown content the task allows.
> An entailed claim receives \emph{supported} (\SUP); a contradicted or unlicensed claim receives \emph{hallucination} (\Hall); an evidence-unknown but licensed claim receives \emph{licensed divergence} (\LD).
> Requested style guides interpretation but never authorizes unsupported content by itself.
> We support this position with an author-coded mapping of forty evaluation resources: factuality benchmarks cluster around neutral language and factual-only permission, while creative-writing benchmarks cluster around marked language and task-implied invention — the two literatures cover different truth-contract profiles rather than the same task.
> This gap motivates a controlled benchmark that varies requested style and content permission independently, and a research agenda for contract-aware evaluation.*

Changements par rapport à l'actuel : ouverture non formelle (reprend l'esprit de l'ancien abstract), σ_p et κ_p correctement indicés (cf. A1), \SUP défini en même temps que \Hall/\LD (cf. A5 ci-dessous), et la dernière phrase se termine sur l'agenda de recherche plutôt que sur « the main missing test is... » qui sonnait comme un aveu de faiblesse.

### A5. Garder ou supprimer SUP/Hall/LD

En comptant les occurrences réelles dans le fichier : `\Hall` apparaît des dizaines de fois, `\LD` et `\SUP` de même, y compris à l'intérieur des figures TikZ et tableaux où l'espace est contraint. L'argument de Martino (« each is introduced and then barely reused ») ne correspond pas à l'usage réel du document.

**Proposition :** garder les trois abréviations (rejeter la suggestion de Martino), et résoudre la vraie plainte partagée par les deux relecteurs — qu'elles ne sont pas assez tôt/clairement définies — en corrigeant un point précis : `\SUP` est utilisé dans l'abstract et en §3.2 (« each receives \SUP », commentaire #35) **avant** sa définition formelle en §3.5. `\Hall` et `\LD`, eux, sont déjà définis dès §2 (paragraphe « Our position »). Correction minimale, sans réécrire la structure :

Avant (§2, paragraphe « Our position ») :
> An unsupported claim is labeled as \Hall\ if it violates $K_p$; an evidence-unknown claim is labeled as \LD\ if $K_p$ permits it and its presentation satisfies the contract.

Après :
> An entailed claim is labeled \SUP\ (supported). An unsupported claim is labeled \Hall\ if it violates $K_p$; an evidence-unknown claim is labeled \LD\ if $K_p$ permits it and its presentation satisfies the contract.

Un seul clause ajoutée, en parallèle des deux qui existent déjà — ça règle #17, #35 et une bonne partie de #57 sans toucher à la structure du papier.

**Bonus trouvé en marge :** `\SV` (utilisé des dizaines de fois, y compris en légende de figure) n'est **jamais glosé en toutes lettres** nulle part dans le document — c'est très probablement la vraie cause des commentaires #36 et #37 (« ? », « ?? »), pas juste une phrase mal tournée. Proposition : ajouter l'expansion à la première occurrence (abstract ou §3.2) : `\SV\ (\emph{stylistic variation})`. À confirmer/ajuster le libellé exact avec toi — je propose « stylistic variation » par cohérence avec le rôle du flag (« an independently identifiable stylistic contribution »), mais c'est votre terme à choisir.

### A6. Figure « conceptual task-design space » (fig:profiles)

Cette figure est l'ancrage visuel du résultat empirique central du papier (le « diagnostic gap » σ=2/κ=0 identifié dans l'échantillon de 40 ressources) — la supprimer reviendrait à perdre le seul support visuel de la contribution empirique.

**Proposition :** garder la figure, mais couper la description redondante qui la précède dans le texte (la grille 3×3 est déjà entièrement décrite en prose juste avant, cf. §5). Réduire cette prose à un renvoi (« Figure~\ref{fig:profiles} visualizes this pattern ») plutôt que de la re-décrire intégralement, ce qui répond à l'objection d'elod sur la nécessité sans perdre le support visuel du résultat.

---

## Partie B — Premier brouillon de reformulations locales

### §2 « Our position »

**#5** (« user? » sur « The evaluator ») — le texte ne précise jamais si « the evaluator » est un humain, un système automatique, ou les deux. Ajouter à la première occurrence :
> Après : *The evaluator — a human annotator or an automated system applying the decision rule below — identifies factual and stylistic content within each response span...*

**#12** (elod : reformuler avec « in addition to ») —
Avant : *The relevant distinction is therefore whether the task permits that departure from support, not merely whether a statement is supported.*
Après : *The relevant question is therefore not only whether a statement is supported, but also whether the task permits departing from that support.*

**#14** (Pierre-Yves : « nitpick, pas très utile ») —
Proposition : supprimer la phrase *« Here, a truth contract is a task-specific evaluation specification rather than an independent legal agreement. »* Elle n'apporte rien que le nom « truth contract » ne rende pas déjà évident, et elle interrompt le fil entre la définition et la formule.

**#15** (elod : « que sont ces instructions ? ») —
Avant : *The prompt symbol $p$ denotes the relevant task context, including applicable system, user, domain, and evidence instructions.*
Après : *The prompt symbol $p$ denotes the relevant task context: applicable system instructions (e.g., a fixed register), the user's request, domain constraints (e.g., a specified knowledge base), and any attached evidence.*

**#16** (elod : reformuler la phrase sur O_p) — Cette phrase répète, en plus court, la définition complète donnée ensuite en §3.1 (« Reference evidence (O_p) »). La confusion vient probablement de cette quasi-duplication plutôt que de la formulation elle-même.
Proposition : raccourcir ici à une référence en avant plutôt que de redéfinir :
Avant : *The reference evidence $O_p$ specifies the standard of support and may include real-world or fictional-frame constraints used for adjudication.*
Après : *The reference evidence $O_p$ specifies the standard of support (defined in full in \S\ref{sec:contract}).*
(Et appliquer le même principe à la phrase suivante sur σ_p et K_p dans ce même paragraphe : forward-reference plutôt que double définition.)

### Contributions / Evidence and scope

**#23** (elod : préciser « listed in Appendix B ») —
Avant : *First, we map forty hallucination and creativity evaluation resources against the components of the proposed contract.*
Après : *First, we map forty hallucination and creativity evaluation resources against the components of the proposed contract (full list in Appendix~\ref{app:mapping}).*

**#24** (elod : reformuler) —
Avant : *This purposive, author-coded mapping identifies a pattern in the sample rather than estimating prevalence in the full literature.*
Après : *This mapping is purposive and author-coded: it identifies a pattern within our sample, not a prevalence estimate for the broader literature.*

**#26** (elod : « c'est quoi le rule ? ») — « the rule » apparaît ici avant que la règle formelle (V(c*|p), §3.5) ne soit introduite.
Avant : *These cases illustrate the intended behavior of the rule but do not establish annotation reliability or completeness.*
Après : *These cases illustrate the intended behavior of the labeling rule defined in \S\ref{sec:contract} but do not establish annotation reliability or completeness.*

### Related Evaluation Paradigms

**#28** (elod : « ça ressemble au kappa, non ? ») —
Après la phrase sur `zhang_sirens_2025`, ajouter : *This taxonomy classifies the source of a mismatch (input, context, or fact); κ_p answers a different question — how much evidence-unknown content the task permits, regardless of source.*

**#30** (elod : « K définit la présentation ? incompréhensible ») —
Avant : *$O_p$ identifies the evidence, $\sigma_p$ records the requested style, and $K_p$ defines the permitted content, scope, and presentation.*
Après : *$O_p$ identifies the evidence, $\sigma_p$ records the requested style, and $K_p=(\kappa_p,\Gamma_p,\rho_p)$ jointly specifies what may be invented, where, and how it must be signaled.*

**#31** (elod : embrouille par rapport à O_p) —
Avant : *Faithfulness asks whether a claim is supported by provided evidence, whereas factuality asks whether it is correct against an external reference \citep{maynez_faithfulness_2020,kryscinski_evaluating_2020}. Both define evidence relations.*
Après : *Faithfulness and factuality each fix a particular choice of $O_p$ — the provided context, or an external reference — and ask whether a claim is entailed by it \citep{maynez_faithfulness_2020,kryscinski_evaluating_2020}.*

**#32** (elod : « definitive » incompris — probablement une lecture erronée de « defective » au moment du surlignage) — À vérifier avec elod ; si le mot posant problème est bien « defective », proposition :
Avant : *...distinguishes potentially valuable or ``intelligent'' hallucinations from defective ones.*
Après : *...distinguishes potentially valuable or ``intelligent'' hallucinations from purely unwanted (defective) ones.*

**#33** (elod : « pas claire ») —
Avant : *Our distinction does not rest on value.*
Après : *Our distinction does not rest on the value or ingenuity of a divergence — only on whether the task's content-permission policy authorizes it.*

**#34** (elod : « low usefulness » à détailler) —
Avant : *...an unhelpful but in-frame fictional invention remains \LD\ with low usefulness.*
Après : *...an unhelpful but in-frame fictional invention remains \LD, with low usefulness recorded as the separate, task-dependent score $U(c^*,p)$ defined in \S\ref{sec:contract}.*

### Truth Contracts and Claim-Level Labels

**#54** (Pierre-Yves : « à justifier ») —
Avant : *The same wording can therefore yield different claims in fiction, metaphor, and hypothetical language.*
Après : *The same wording can therefore yield different claims depending on frame — as in the historical-QA and fiction-writing pair worked through in Figure~\ref{fig:flip}.* (renvoie à un exemple déjà présent plutôt que d'en inventer un nouveau.)

**#58** (elod : « wrt O_p plutôt ») —
Avant : *An \LD\ label records contractual permission, not proof that the claim is true in the external world.*
Après : *An \LD\ label records contractual permission, not proof that the claim is true relative to $O_p$.*

**#59** (elod : alignement réponse/prompt non abordé) —
Avant : *Usefulness $U(c^*,p)$ is reported as a separate task-dependent score over \LD\ claims.*
Après : *Usefulness $U(c^*,p)$ is reported as a separate task-dependent score over \LD\ claims; it is related to, but narrower than, general response-to-prompt alignment, which this paper does not score.*

**#60** (elod : détailler un peu) — Pas besoin de nouveau contenu : l'exemple illustratif existe déjà juste avant (« one severe \Hall\ may matter more than several minor supported claims... »). Proposition : déplacer la phrase sur `Figure~\ref{fig:decision}` **après** la définition de $R(y\mid p)$ plutôt qu'entre l'exemple et la définition, pour que le fil ne soit pas coupé.

**#66** (elod : « the five » — référent ambigu) —
Avant : *The five constrained creative-problem-solving resources instead combine mostly neutral form with a partial $\kappa=1$ policy...*
Après : *A separate set of five constrained creative-problem-solving resources instead combine mostly neutral form with a partial $\kappa=1$ policy...*

### Conclusion

**#72** (Martino : ouverture) —
Avant : *Hallucination is a claim-level label relative to a task's reference evidence, requested style, and content-permission policy.*
Après : *In this position paper, we argued that hallucination should be evaluated relative to a task's truth contract rather than treated as a context-free property of a sentence. Concretely, hallucination is a claim-level label relative to a task's reference evidence, requested style, and content-permission policy.*

**#73** (Martino : rappeler la taille de l'échantillon) —
Avant : *In our purposive sample, these variables are rarely represented together, and the worked cases illustrate their distinct roles.*
Après : *In our purposive sample of forty evaluation resources, these variables are rarely represented together, and the worked cases illustrate their distinct roles.*

---

## Ce qui reste pour un prochain passage

Non traité ici, à faire une fois les décisions ci-dessus validées (pour éviter de reformuler deux fois le même passage) :
- Déplacement du tableau des symboles et des définitions (#1, #2, #3, #9, #13, #17, #25, #29, #38, #40, #52, #57) — c'est un déplacement de bloc, pas une reformulation locale.
- Refonte des figures fig:flip/fig:decision (#18, #20, #21, #61, #62) et nouvelle figure/tableau des 40 ressources (#65) — nécessite le retour sur la maquette de Pierre-Yves.
- Worked Cases, Research Agenda, section mapping §4 (#63, #64, #68, #69, #70) — révisions plus longues, à traiter en Phase 4 du roadmap.
- Passe mécanique `\textbf` → `\paragraph` (#41, #70) et numérotation des 40 ressources dans les tableaux annexes (#74) — mécanique, à faire en une passe dédiée.
- Citation CLEF/TREC/SemEval (#47) : `references.bib` contient déjà `simpletext_task2_2026` (CLEF 2026 SimpleText Task 2), réutilisable pour la partie CLEF. Aucune clé TREC ou SemEval trouvée — à traiter avec `\citetodo{}` ou une recherche de littérature dédiée plutôt que d'inventer une référence.
- À vérifier directement dans Overleaf avant d'agir : #4 (texte du commentaire mal capturé) et #21 (message tronqué).
- Gloss anglais pour Γ/ρ (#56) — mineur, à intégrer avec la Phase 2 puisqu'il touche les mêmes paragraphes que les autres corrections de §3.1.
