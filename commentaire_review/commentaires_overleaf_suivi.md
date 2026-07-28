# Suivi des commentaires Overleaf — CL soumission

- Source : `main.tex` (commentaires exportés depuis Overleaf)
- Capturé le : 2026-07-24T11:54:51.378Z
- Fils de discussion : 74 (82 messages, 7 potentiellement tronqués)
- Note Overleaf : swept top-to-bottom per file; for the authoritative set, Review > Accept in Overleaf so the text syncs via git

**Comment lire chaque entrée :**
- *Texte visé par le commentaire* : le segment exact estimé comme étant surligné/sélectionné.
- *Contexte élargi* : le passage complet autour, avec ce segment encadré par `⟦...⟧`.
- ⚠️ L'export Overleaf ne donne que le point de départ de la sélection (`dataPos`), pas sa fin exacte. Le segment `⟦...⟧` est donc une **estimation** (bornée par la ponctuation la plus proche, l'ancrage du commentaire suivant, et un plafond de 90 caractères) — vérifiez dans Overleaf en cas de doute, surtout si marqué *(estimation incertaine)*.

---


## (avant Introduction / préambule)

### Commentaire 1 — pos 2477

**Texte visé par le commentaire :** “be a claim-level label relative to a task's \emph{truth contract}”

**Contexte élargi :**
> \begin{document} \maketitle \begin{abstract} Hallucination in large language models is usually defined as unsupported or contradicted content. This definition becomes ambiguous when a task permits invention or requests figurative language. We argue that hallucination should instead ⟦be a claim-level label relative to a task's \emph{truth cont⟧ ract} (TC), $\TC(p)=(O_p,\sigma_p,K_p)$. The contract specifies reference evidence $O_p$, a requested style level $\sigma_p$, and a content-permission policy $K_p$. The evaluator identifies factual and stylistic content within each response span, interprets each recovered claim in context, and...

- **elod.egyed-zsigmond** (23 July, 5:53 pm): reformuler
- **elod.egyed-zsigmond** (23 July, 6:17 pm): définir claim (donner un exemple)

- [ ] **Statut** : à traiter
- **Action / réponse** : 

---

### Commentaire 2 — pos 2543

**Texte visé par le commentaire :** “ $\TC(p)=(O_p,\sigma_p,K_p)$.”

**Contexte élargi :**
> ...in large language models is usually defined as unsupported or contradicted content. This definition becomes ambiguous when a task permits invention or requests figurative language. We argue that hallucination should instead be a claim-level label relative to a task's \emph{truth contract} ⟦(TC), $\TC(⟧ p)=(O_p,\sigma_p,K_p)$. The contract specifies reference evidence $O_p$, a requested style level $\sigma_p$, and a content-permission policy $K_p$. The evaluator identifies factual and stylistic content within each response span, interprets each recovered claim in context, and verifies a canonical...

- **Martino Lovisetto** (24 July, 8:33 am): what is p ?

- [ ] **Statut** : à traiter
- **Action / réponse** : 

---

### Commentaire 3 — pos 2554 (estimation incertaine)

**Texte visé par le commentaire :** “p)=(O_p,\sigma_p,K_p)$.”

**Contexte élargi :**
> ...large language models is usually defined as unsupported or contradicted content. This definition becomes ambiguous when a task permits invention or requests figurative language. We argue that hallucination should instead be a claim-level label relative to a task's \emph{truth contract} (TC), $\TC( ⟦p)=(O_p,\sigma_p,K_p)$.⟧ The contract specifies reference evidence $O_p$, a requested style level $\sigma_p$, and a content-permission policy $K_p$. The evaluator identifies factual and stylistic content within each response span, interprets each recovered claim in context, and verifies a canonical form against...

- **elod.egyed-zsigmond** (23 July, 5:54 pm): qu'est-ce "p"? c'est le "claim" ? tu ne le définis pas

- [ ] **Statut** : à traiter
- **Action / réponse** : 

---

### Commentaire 4 — pos 2669

**Texte visé par le commentaire :** “content-permission policy $K_p$.”

**Contexte élargi :**
> ...when a task permits invention or requests figurative language. We argue that hallucination should instead be a claim-level label relative to a task's \emph{truth contract} (TC), $\TC(p)=(O_p,\sigma_p,K_p)$. The contract specifies reference evidence $O_p$, a requested style level $\sigma_p$, and a ⟦content-permission policy $K_p$.⟧ The evaluator identifies factual and stylistic content within each response span, interprets each recovered claim in context, and verifies a canonical form against $O_p$. Requested style guides the interpretation of metaphor and marked forms but never authorizes unsupported content by itself. An...

- **elod.egyed-zsigmond** (23 July, 5:55 pm): je renommerai : "creativity-êrmission"

- [ ] **Statut** : à traiter
- **Action / réponse** : 

---

### Commentaire 5 — pos 2702 (estimation incertaine)

**Texte visé par le commentaire :** “The evaluator”

**Contexte élargi :**
> The contract specifies reference evidence $O_p$, a requested style level $\sigma_p$, and a content-permission policy $K_p$. ⟦The evaluator identifies factual and stylistic content withi⟧ n each response span, interprets each recovered claim in context, and verifies a canonical form against $O_p$. Requested style guides the interpretation of metaphor and marked forms but never authorizes unsupported content by itself. An entailed claim receives \emph{supported} (\SUP). A...

- **Martino Lovisetto** (24 July, 8:39 am): user ?

- [ ] **Statut** : à traiter
- **Action / réponse** : 

---

### Commentaire 6 — pos 2996 (estimation incertaine)

**Texte visé par le commentaire :** “An entailed claim receives \emph{supported} (\SUP).
A contradicted or unlicensed claim receives \emph{hallucination} (\Hall), whereas an evidence-unknown but licensed claim receives \emph{licensed divergence} (\LD).
These labels apply to individual claims; we leave contract-aware response aggregation as an open research problem.
We support the position with an author-coded mapping of forty evaluation resources and cases.
In this sample, factuality benchmarks cluster around neutral language ($\sigma=0$) and factual-only permission ($\kappa=0$), whereas creative-writing benchmarks cluster around marked language ($\sigma=1$ or $2$) and task-implied invention ($\kappa=2$).
The sampled literatures therefore cover different truth-contract profiles rather than the same task.
The main missing test is a controlled benchmark that varies requested style and content permission independently.”

**Contexte élargi :**
> ...evaluator identifies factual and stylistic content within each response span, interprets each recovered claim in context, and verifies a canonical form against $O_p$. Requested style guides the interpretation of metaphor and marked forms but never authorizes unsupported content by itself. ⟦An entailed claim receives \emph{supported} (\SUP).⟧ A contradicted or unlicensed claim receives \emph{hallucination} (\Hall), whereas an evidence-unknown but licensed claim receives \emph{licensed divergence} (\LD). These labels apply to individual claims; we leave contract-aware response aggregation as an open research problem. We support the...

- **Pierre-Yves Genest** (22 July, 1:55 pm): thought: je ne suis pas sur que ça soit pertinent de l'inclure dans l'abstract. Je préférais la version dans main_old.
- **Pierre-Yves Genest** (22 July, 1:56 pm): Je pense qu'il faudrait plus insister sur les éléments positifs du position paper. Si on passe à un system truth-contract qu'est-ce que ça nous apporte de plus qu'actuellement. Qu'est-ce que ça améliore ?
- **elod.egyed-zsigmond** (23 July, 6:12 pm): d'accord

- [ ] **Statut** : à traiter
- **Action / réponse** : 
- abstract old main : 
- \begin{abstract}
Hallucination is usually scored as a binary defect: a statement is supported or it is not.
This misses a central property of language use: the same unsupported content can be dangerous in a medical answer, harmless in a metaphor, and useful in fiction or ideation.
We argue that hallucination should instead be evaluated relative to the prompt's \emph{truth regime}, $\TR(p)=(O,\sigma,\kappa)$: the oracle $O$ that grounds truth, the stylistic latitude $\sigma$ that permits surface variation, and the invention license $\kappa$ that determines whether new truth-conditional content may be introduced.
Under this view, hallucination (\Hallu) is a truth-regime violation, whereas productive divergence (\PD) is divergence that the regime licenses and the task rewards.
We then show that current hallucination and creativity benchmarks share a blind spot: neither conditions its scores on what the prompt authorizes.
We make this gap concrete without a new experiment, by auditing widely used benchmarks against $(O,\sigma,\kappa)$ and by applying a claim-level labeling rule to documented cases in which the same output flips between \Hallu\ and \PD\ as the regime changes.
These observations motivate a research agenda for truth-regime-aware evaluation that scores \Hallu\ and \PD\ separately under explicit oracle and permission annotations.
\end{abstract}

---

### Commentaire 7 — pos 2996 (estimation incertaine)

**Texte visé par le commentaire :** “An entailed claim receives \emph{supported} (\SUP).”

**Contexte élargi :**
> ...evaluator identifies factual and stylistic content within each response span, interprets each recovered claim in context, and verifies a canonical form against $O_p$. Requested style guides the interpretation of metaphor and marked forms but never authorizes unsupported content by itself. ⟦An entailed claim receives \emph{supported} (\SUP).⟧ A contradicted or unlicensed claim receives \emph{hallucination} (\Hall), whereas an evidence-unknown but licensed claim receives \emph{licensed divergence} (\LD). These labels apply to individual claims; we leave contract-aware response aggregation as an open research problem. We support the...

- **elod.egyed-zsigmond** (23 July, 5:57 pm): reformuler, phrase incompréhensible: receives the label: "SUP" (supported)

- [ ] **Statut** : à traiter
- **Action / réponse** : 

---

### Commentaire 8 — pos 2996 (estimation incertaine)

**Texte visé par le commentaire :** “An entailed claim receives \emph{supported} (\SUP).
A contradicted or unlicensed claim receives \emph{hallucination} (\Hall), whereas an evidence-unknown but licensed claim receives \emph{licensed divergence} (\LD).”

**Contexte élargi :**
> ...evaluator identifies factual and stylistic content within each response span, interprets each recovered claim in context, and verifies a canonical form against $O_p$. Requested style guides the interpretation of metaphor and marked forms but never authorizes unsupported content by itself. ⟦An entailed claim receives \emph{supported} (\SUP).⟧ A contradicted or unlicensed claim receives \emph{hallucination} (\Hall), whereas an evidence-unknown but licensed claim receives \emph{licensed divergence} (\LD). These labels apply to individual claims; we leave contract-aware response aggregation as an open research problem. We support the...

- **Martino Lovisetto** (24 July, 8:35 am): the label abbreviations SUP, Hall, and LD are probably unnecessary. Each is introduced and then barely reused. Writing the full labels would be clearer

- [ ] **Statut** : à traiter
- **Action / réponse** : 

---

### Commentaire 9 — pos 3535 (estimation incertaine)

**Texte visé par le commentaire :** “factual-only permission ($\kappa=0$)”

**Contexte élargi :**
> ...claims; we leave contract-aware response aggregation as an open research problem. We support the position with an author-coded mapping of forty evaluation resources and cases. In this sample, factuality benchmarks cluster around neutral language ($\sigma=0$) and factual-only permission ($\ ⟦kappa=0$), whereas creative-writing benchmarks cluster aroun⟧ d marked language ($\sigma=1$ or $2$) and task-implied invention ($\kappa=2$). The sampled literatures therefore cover different truth-contract profiles rather than the same task. The main missing test is a controlled benchmark that varies requested style and content permission...

- **elod.egyed-zsigmond** (23 July, 6:12 pm): c'est quoi kappa ?

- [ ] **Statut** : à traiter
- **Action / réponse** : 

---

### Commentaire 10 — pos 3661 (estimation incertaine)

**Texte visé par le commentaire :** “In this sample, factuality benchmarks cluster around neutral language ($\sigma=0$) and factual-only permission ($\kappa=0$), whereas creative-writing benchmarks cluster around marked language ($\sigma=1$ or $2$) and task-implied invention ($\kappa=2$).”

**Contexte élargi :**
> ...mapping of forty evaluation resources and cases. In this sample, factuality benchmarks cluster around neutral language ($\sigma=0$) and factual-only permission ($\kappa=0$), whereas creative-writing benchmarks cluster around marked language ($\sigma=1$ or $2$) and task-implied invention ( ⟦$\kappa=2$).⟧ The sampled literatures therefore cover different truth-contract profiles rather than the same task. The main missing test is a controlled benchmark that varies requested style and content permission independently. \end{abstract} \section{Introduction}\label{sec:intro} Large language models...

- **Martino Lovisetto** (24 July, 8:34 am): you define K_p as the content-permission policy but later describe permission using κ=0 and κ=2. Unless K_p and κ have different meanings, use one notation consistently

- [ ] **Statut** : à traiter
- **Action / réponse** : 

---


## Introduction

### Commentaire 11 — pos 4060 (estimation incertaine)

**Texte visé par le commentaire :** “facts \citep{ji_survey_2023,huang_survey_2025}.”

**Contexte élargi :**
> ...same task. The main missing test is a controlled benchmark that varies requested style and content permission independently. \end{abstract} \section{Introduction}\label{sec:intro} Large language models (LLMs) can produce fluent claims that are unsupported by evidence or contradicted by known ⟦facts \citep{ji_survey_2023,huang_survey_2025}.⟧ These errors limit the use of LLMs in high-stakes settings, therefore a large body of work aims to detect and reduce them \citep{lin_truthfulqa_2022,li_halueval_2023,wei_measuring_2024}. However, generation beyond the available evidence is not always an error. Fiction permits invention, whereas...

- **Pierre-Yves Genest** (22 July, 1:57 pm): suggestion: "commonly called hallucinations"

- [ ] **Statut** : à traiter
- **Action / réponse** : 

---

### Commentaire 12 — pos 4810 (estimation incertaine)

**Texte visé par le commentaire :** “not merely whether a statement is supported.”

**Contexte élargi :**
> ...\citep{franceschelli_creativity_2024,jiang_survey_2024,sui_confabulation_2024}. A medical assistant should not invent a diagnosis. A fiction-writing assistant must be able to invent characters and events. The relevant distinction is therefore whether the task permits that departure from support, ⟦not merely whether a statement is supported.⟧ Many current evaluation protocols do not represent this distinction explicitly. Factuality and faithfulness evaluations typically penalize unsupported claims under a fixed evidence source \citep{maynez_faithfulness_2020,bang_hallulens_2025}. Creativity evaluations reward novelty and...

- **elod.egyed-zsigmond** (23 July, 6:14 pm): in addition to (reformulation)

- [ ] **Statut** : à traiter
- **Action / réponse** : 

---

### Commentaire 13 — pos 6368

**Texte visé par le commentaire :** “truth contract.”

**Contexte élargi :**
> ...all current factuality systems make this error, but that many protocols do not expose the requested style level as a variable, so the error cannot be measured. \paragraph{Our position} Hallucination is not a context-free property of a sentence. It is a claim-level label relative to the task's ⟦truth contract.⟧ Here, a truth contract is a task-specific evaluation specification rather than an independent legal agreement. We write this contract as $\TC(p)=(O_p,\sigma_p,K_p)$. The prompt symbol $p$ denotes the relevant task context, including applicable system, user, domain, and evidence instructions. The...

- **Pierre-Yves Genest** (22 July, 2:00 pm): suggestion: je définirais en terme courant ce que veut dire truth contract.

- [ ] **Statut** : à traiter
- **Action / réponse** : 

---

### Commentaire 14 — pos 6384 (estimation incertaine)

**Texte visé par le commentaire :** “Here, a truth contract is a task-specific evaluation specification rather than an independent legal agreement.”

**Contexte élargi :**
> ...factuality systems make this error, but that many protocols do not expose the requested style level as a variable, so the error cannot be measured. \paragraph{Our position} Hallucination is not a context-free property of a sentence. It is a claim-level label relative to the task's truth contract. ⟦Here, a truth contract is a task-specific evaluation specifi⟧ cation rather than an independent legal agreement. We write this contract as $\TC(p)=(O_p,\sigma_p,K_p)$. The prompt symbol $p$ denotes the relevant task context, including applicable system, user, domain, and evidence instructions. The reference evidence $O_p$ specifies the standard of support and...

- **Pierre-Yves Genest** (22 July, 3:45 pm): nitpick: pas très utile

- [ ] **Statut** : à traiter
- **Action / réponse** : 

---

### Commentaire 15 — pos 6608

**Texte visé par le commentaire :** “including applicable system, user, domain, and evidence instructions.”

**Contexte élargi :**
> ...sentence. It is a claim-level label relative to the task's truth contract. Here, a truth contract is a task-specific evaluation specification rather than an independent legal agreement. We write this contract as $\TC(p)=(O_p,\sigma_p,K_p)$. The prompt symbol $p$ denotes the relevant task context, i ⟦ncluding applicable system, user, domain, and evidence instructions.⟧ The reference evidence $O_p$ specifies the standard of support and may include real-world or fictional-frame constraints used for adjudication. The requested style level $\sigma_p$ specifies how strongly the prompt asks for departure from neutral wording, with factual commitments preserved. The...

- **elod.egyed-zsigmond** (23 July, 6:20 pm): pas clair. Que sont ces instructions ?

- [ ] **Statut** : à traiter
- **Action / réponse** : 

---

### Commentaire 16 — pos 6677 (estimation incertaine)

**Texte visé par le commentaire :** “The reference evidence $O_p$ specifies the standard of suppo”

**Contexte élargi :**
> ...a truth contract is a task-specific evaluation specification rather than an independent legal agreement. We write this contract as $\TC(p)=(O_p,\sigma_p,K_p)$. The prompt symbol $p$ denotes the relevant task context, including applicable system, user, domain, and evidence instructions. ⟦The reference evidence $O_p$ specifies the standard of suppo⟧ rt and may include real-world or fictional-frame constraints used for adjudication. The requested style level $\sigma_p$ specifies how strongly the prompt asks for departure from neutral wording, with factual commitments preserved. The content-permission policy $K_p$ specifies the type, scope, and...

- **elod.egyed-zsigmond** (23 July, 6:21 pm): reformuler

- [ ] **Statut** : à traiter
- **Action / réponse** : 

---

### Commentaire 17 — pos 7096 (estimation incertaine)

**Texte visé par le commentaire :** “An unsupported claim is labeled as \Hall\ if it violates $K_p$; an evidence-unknown claim is labeled as  \LD\ if $K_p$ permits it and its presentation satisfies the contract.
These labels apply to individual claims; assessing a complete response requires a separate aggregation step that this paper does not fix.”

**Contexte élargi :**
> ...used for adjudication. The requested style level $\sigma_p$ specifies how strongly the prompt asks for departure from neutral wording, with factual commitments preserved. The content-permission policy $K_p$ specifies the type, scope, and required epistemic presentation of any permitted departure. ⟦An unsupported claim is labeled as \Hall\ if it violates $K_⟧ p$; an evidence-unknown claim is labeled as \LD\ if $K_p$ permits it and its presentation satisfies the contract. These labels apply to individual claims; assessing a complete response requires a separate aggregation step that this paper does not fix. The contract does not change what is true. It...

- **Martino Lovisetto** (24 July, 8:42 am): define acronyms here instead of in the abstract

- [ ] **Statut** : à traiter
- **Action / réponse** : 

---

### Commentaire 18 — pos 7543 (estimation incertaine)

**Texte visé par le commentaire :** “Figure~\ref{fig:flip} illustrates this position.”

**Contexte élargi :**
> ...satisfies the contract. These labels apply to individual claims; assessing a complete response requires a separate aggregation step that this paper does not fix. The contract does not change what is true. It determines whether the model's departure from the relevant evidence violates the task. ⟦Figure~\ref{fig:flip} illustrates this position.⟧ The figure uses a constructed example: \emph{Verdier} is an invented name introduced here, not a quotation from a dataset. It follows one claim wording extracted from a hypothetical model response and shows that its label depends on the prompt and truth contract. The wording is fixed, but each...

- **Pierre-Yves Genest** (22 July, 3:46 pm): thought: c'est peut-être moi qui ai pas tout compris, mais jamais on ne dit clairement qu'on évalue "la réponse du LLM", même dans ta Figure. Je pense que ça vaudrait la peine de le dire explicitement.

- [ ] **Statut** : à traiter
- **Action / réponse** : 

---


---

### Commentaire 20 — pos 8012 (estimation incertaine)

**Texte visé par le commentaire :** “figure}[t]”

**Contexte élargi :**
> ...follows one claim wording extracted from a hypothetical model response and shows that its label depends on the prompt and truth contract. The wording is fixed, but each prompt establishes a different discourse frame, so the two occurrences do not express the same contextualized claim. \begin{ ⟦figure}[t]⟧ \centering \resizebox{0.94\linewidth}{!}{% \begin{tikzpicture}[x=1cm,y=1cm] \node[input,text width=6.7cm] (s) at (0,0) {claim extracted from a model response:\\``the caf\'e \emph{Verdier} and its owner existed in 1920s Paris''}; \node[decision,text width=4.25cm] (qa) at (-3.0,-2.35)...

- **Pierre-Yves Genest** (22 July, 5:38 pm): thought: J'ai fais une contreproposition de figure (on met le prompt en haut, a réponse au milieu, et le jugement en bas ; je trouve que c'est plus logique à la lecture). Le style est pas bon mais c'est juste pour l'ordre https://claude.ai/public/artifacts/e64d74b1-ab5b-418f-8627-706536ee0231
- 

- [ ] **Statut** : à traiter
- **Action / réponse** : 

---

### Commentaire 21 — pos 8158 (estimation incertaine)

**Texte visé par le commentaire :** “racted from a model response:\\``the caf\'e \emph{Verdier} a”

**Contexte élargi :**
> ...wording is fixed, but each prompt establishes a different discourse frame, so the two occurrences do not express the same contextualized claim. \begin{figure}[t] \centering \resizebox{0.94\linewidth}{!}{% \begin{tikzpicture}[x=1cm,y=1cm] \node[input,text width=6.7cm] (s) at (0,0) {claim ext ⟦racted from a model response:\\``the caf\'e \emph{Verdier} a⟧ nd its owner existed in 1920s Paris''}; \node[decision,text width=4.25cm] (qa) at (-3.0,-2.35) {\textbf{Prompt:} ``Did caf\'e Verdier and its owner exist in 1920s Paris?''\\[-1pt]{\scriptsize $\TC(p)$ :\\$O_p=$ historical evidence\\$\kappa_p=0$: factual only}}; \node[decision,text...

- **elod.egyed-zsigmond** (23 July, 6:25 pm): refaire cette figure, ajouter l'oracle, mettre les prompts en haut et la réponse après
- **elod.egyed-zsigmond** (24 July, 8:25 am): Ecrire peut$etre un texte plus longue, le découper en claims pour introduire les définitions qui vie... ⚠️ *(message possiblement tronqué, vérifier dans Overleaf)*

- [ ] **Statut** : à traiter
- **Action / réponse** : 

---

### Commentaire 22 — pos 9570 (estimation incertaine)

**Texte visé par le commentaire :** “$K_p$ ”

**Contexte élargi :**
> ...claim wording, two contract-dependent labels.} The same constructed claim wording is evaluated under two prompts. Under the historical-QA prompt it is an unsupported real-world assertion and receives \Hall as label; under the fiction-writing prompt it is an in-frame invention permitted by ⟦$K_p$ and receives \LD as label.⟧ Strictly, each prompt changes the contextualized claim, so the figure shows contract dependence, not a contradiction about one fixed proposition. Both labels are claim-level, not verdicts for the complete response.} \label{fig:flip} \end{figure} \paragraph{Evidence and scope} We support the...

- **elod.egyed-zsigmond** (23 July, 6:28 pm): tu utilises plusieurs symboles pour le kappa: $K_p$ et $\kappa_p$ quel est la différence?

- [ ] **Statut** : à traiter
- **Action / réponse** : 

---

### Commentaire 23 — pos 9932 (estimation incertaine)

**Texte visé par le commentaire :** “forty hallucination and creativity evaluation resources”

**Contexte élargi :**
> ...the contextualized claim, so the figure shows contract dependence, not a contradiction about one fixed proposition. Both labels are claim-level, not verdicts for the complete response.} \label{fig:flip} \end{figure} \paragraph{Evidence and scope} We support the position in two ways. First, we map ⟦forty hallucination and creativity evaluation resources agai⟧ nst the components of the proposed contract. This purposive, author-coded mapping identifies a pattern in the sample rather than estimating prevalence in the full literature. Second, we apply the decision rule to five worked cases involving reference evidence, the content-permission policy,...

- **elod.egyed-zsigmond** (24 July, 9:03 am): préciser: lsisted in Appendix B

- [ ] **Statut** : à traiter
- **Action / réponse** : 

---

### Commentaire 24 — pos 10037 (estimation incertaine)

**Texte visé par le commentaire :** “This purposive, author-coded mapping identifies a pattern in the sample rather than estimating prevalence in the full literature.”

**Contexte élargi :**
> ...labels are claim-level, not verdicts for the complete response.} \label{fig:flip} \end{figure} \paragraph{Evidence and scope} We support the position in two ways. First, we map forty hallucination and creativity evaluation resources against the components of the proposed contract. ⟦This purposive, author-coded mapping identifies a pattern in⟧ the sample rather than estimating prevalence in the full literature. Second, we apply the decision rule to five worked cases involving reference evidence, the content-permission policy, epistemic presentation, scope, and $\sigma_p$-conditioned claim typing. These cases illustrate the intended...

- **elod.egyed-zsigmond** (23 July, 6:26 pm): reformuler

- [ ] **Statut** : à traiter
- **Action / réponse** : 

---

### Commentaire 25 — pos 10233 (estimation incertaine)

**Texte visé par le commentaire :** “reference evidence, the content-permission policy, epistemic presentation, scope, and $\sigma_p$-conditioned claim typing”

**Contexte élargi :**
> ...hallucination and creativity evaluation resources against the components of the proposed contract. This purposive, author-coded mapping identifies a pattern in the sample rather than estimating prevalence in the full literature. Second, we apply the decision rule to five worked cases involving ⟦reference evidence, the content-permission policy, epistemic⟧ presentation, scope, and $\sigma_p$-conditioned claim typing. These cases illustrate the intended behavior of the rule but do not establish annotation reliability or completeness. \paragraph{Contributions} This position paper makes three contributions. First, it introduces the truth contract...

- **elod.egyed-zsigmond** (23 July, 6:27 pm): bcp de ces notions ne sont pas introduites ou expliquées

- [ ] **Statut** : à traiter
- **Action / réponse** : 

---

### Commentaire 26 — pos 10408 (estimation incertaine)

**Texte visé par le commentaire :** “rule”

**Contexte élargi :**
> ...rather than estimating prevalence in the full literature. Second, we apply the decision rule to five worked cases involving reference evidence, the content-permission policy, epistemic presentation, scope, and $\sigma_p$-conditioned claim typing. These cases illustrate the intended behavior of the ⟦rule but do not establish annotation reliability or completeness.⟧ \paragraph{Contributions} This position paper makes three contributions. First, it introduces the truth contract $\TC(p)=(O_p,\sigma_p,K_p)$. The contract separates reference evidence, requested style level, and the content-permission policy, and distinguishes \Hall\ from \LD. Second, it maps a...

- **elod.egyed-zsigmond** (23 July, 6:27 pm): c'est quoi le "rule" ?

- [ ] **Statut** : à traiter
- **Action / réponse** : 

---

### Commentaire 27 — pos 11073 (estimation incertaine)

**Texte visé par le commentaire :** “\paragraph{Contributions}
This position paper makes three contributions.
First, it introduces the truth contract $\TC(p)=(O_p,\sigma_p,K_p)$.
The contract separates reference evidence, requested style level, and the content-permission policy, and distinguishes \Hall\ from \LD.
Second, it maps a sample of factuality and creativity protocols to identify where task permissions and form-conditioned factuality checks remain implicit.
Third, it proposes a research agenda for contract-aware benchmarks and mitigation methods that reduce \Hall\ without suppressing \LD\ or factual stylistic creativity.”

**Contexte élargi :**
> ...of factuality and creativity protocols to identify where task permissions and form-conditioned factuality checks remain implicit. Third, it proposes a research agenda for contract-aware benchmarks and mitigation methods that reduce \Hall\ without suppressing \LD\ or factual stylistic creativity ⟦.⟧ \section{Related Evaluation Paradigms}\label{sec:related} \subsection{Hallucination taxonomies and the missing contract layer} Hallucination surveys organize the phenomenon along several related but non-equivalent axes. \citet{ji_survey_2023} distinguish intrinsic hallucinations, which...

- **Martino Lovisetto** (24 July, 9:14 am): add a short paragraph to expliain what you discuss in each section of the paper. it helps the reader a lot

- [ ] **Statut** : à traiter
- **Action / réponse** : 

---


## Related Evaluation Paradigms > Hallucination taxonomies and the missing contract layer

### Commentaire 28 — pos 11693 (estimation incertaine)

**Texte visé par le commentaire :** “input”

**Contexte élargi :**
> ...hallucinations, which cannot be verified from it. \citet{huang_survey_2025} separate factuality hallucinations---factual contradiction or fabrication---from faithfulness hallucinations involving instruction, context, or logical inconsistency. \citet{zhang_sirens_2025} instead distinguish i ⟦nput-, context-, and fact-conflicting outputs.⟧ Other reviews organize causes across the model lifecycle or examine factuality and faithfulness metrics for open-ended generation \citep{wang_factuality_survey_2024,malin_faithfulness_review_2025,lamba_lifecycle_2026}. From a creativity perspective, \citet{jiang_survey_2024} distinguish divergent...

- **elod.egyed-zsigmond** (23 July, 6:45 pm): cela ressemble au kappa (non) ?

- [ ] **Statut** : à traiter
- **Action / réponse** : 

---

### Commentaire 29 — pos 12387 (estimation incertaine)

**Texte visé par le commentaire :** “$O_p$”

**Contexte élargi :**
> ...classify mismatches by their evidence relation, inconsistency type, source, cause, or evaluation setting. They do not, however, jointly represent the relevant evidence, requested style, and permitted divergence as explicit task variables. The truth contract adds a task-specific decision layer. ⟦$O_p$ identifies the evidence, $\sigma_p$ records the reques⟧ ted style, and $K_p$ defines the permitted content, scope, and presentation. Descriptive taxonomy and contract-relative label should therefore remain distinct. \subsection{Adjacent evaluation paradigms} \paragraph{Evidence relations} Faithfulness asks whether a claim is supported by provided...

- **elod.egyed-zsigmond** (23 July, 6:59 pm): ce O (oracle) reste un peu mistérieux, il faudra donner un pu deux exemples concrets dès le début

- [ ] **Statut** : à traiter
- **Action / réponse** : 

---

### Commentaire 30 — pos 12510 (estimation incertaine)

**Texte visé par le commentaire :** “presentation.”

**Contexte élargi :**
> ...however, jointly represent the relevant evidence, requested style, and permitted divergence as explicit task variables. The truth contract adds a task-specific decision layer. $O_p$ identifies the evidence, $\sigma_p$ records the requested style, and $K_p$ defines the permitted content, scope, and ⟦presentation.⟧ Descriptive taxonomy and contract-relative label should therefore remain distinct. \subsection{Adjacent evaluation paradigms} \paragraph{Evidence relations} Faithfulness asks whether a claim is supported by provided evidence, whereas factuality asks whether it is correct against an external...

- **elod.egyed-zsigmond** (23 July, 6:59 pm): K définit la "présentation" ? Je ne comprends pas

- [ ] **Statut** : à traiter
- **Action / réponse** : 

---


## Related Evaluation Paradigms > Adjacent evaluation paradigms

### Commentaire 31 — pos 12684 (estimation incertaine)

**Texte visé par le commentaire :** “Faithfulness asks whether a claim is supported by provided evidence, whereas factuality asks whether it is correct against an external reference ”

**Contexte élargi :**
> ...identifies the evidence, $\sigma_p$ records the requested style, and $K_p$ defines the permitted content, scope, and presentation. Descriptive taxonomy and contract-relative label should therefore remain distinct. \subsection{Adjacent evaluation paradigms} \paragraph{Evidence relations} F ⟦aithfulness asks whether a claim is supported by provided ev⟧ idence, whereas factuality asks whether it is correct against an external reference \citep{maynez_faithfulness_2020,kryscinski_evaluating_2020}. Both define evidence relations. The content-permission policy asks a different question: what may an output do when the reference evidence does not entail...

- **elod.egyed-zsigmond** (23 July, 7:01 pm): J'ai l'impression que cela embrouille le lecteur par rapport à O_p, il faut reformuler ou contextualiser par rapport à O_p

- [ ] **Statut** : à traiter
- **Action / réponse** : 

---

### Commentaire 32 — pos 13540

**Texte visé par le commentaire :** “defective.”

**Contexte élargi :**
> ...should consider the task rather than the output alone. However, general intent combines many requirements and does not isolate reference evidence, the content-permission policy, and epistemic presentation. Recent work distinguishes potentially valuable or ``intelligent'' hallucinations from ⟦defective ones \citep{jiang_survey_2024,sui_confabulation_2024,yang_hicbench_2025}.⟧ Our distinction does not rest on value. Permission is evaluated first: an ingenious fabricated medical fact remains \Hall, whereas an unhelpful but in-frame fictional invention remains \LD\ with low usefulness. \paragraph{Style-preserving evaluation} Foregrounding and style-transfer research...

- **elod.egyed-zsigmond** (23 July, 7:02 pm): je ne comprends pas le "definitive" ici ?

- [ ] **Statut** : à traiter
- **Action / réponse** : 

---

### Commentaire 33 — pos 13624 (estimation incertaine)

**Texte visé par le commentaire :** “Our distinction does not rest on value.”

**Contexte élargi :**
> ...combines many requirements and does not isolate reference evidence, the content-permission policy, and epistemic presentation. Recent work distinguishes potentially valuable or ``intelligent'' hallucinations from defective ones \citep{jiang_survey_2024,sui_confabulation_2024,yang_hicbench_2025}. ⟦Our distinction does not rest on value.⟧ Permission is evaluated first: an ingenious fabricated medical fact remains \Hall, whereas an unhelpful but in-frame fictional invention remains \LD\ with low usefulness. \paragraph{Style-preserving evaluation} Foregrounding and style-transfer research shows that marked form can be described and...

- **elod.egyed-zsigmond** (23 July, 7:02 pm): pas claire

- [ ] **Statut** : à traiter
- **Action / réponse** : 

---

### Commentaire 34 — pos 13819 (estimation incertaine)

**Texte visé par le commentaire :** “low usefulness.”

**Contexte élargi :**
> ...hallucinations from defective ones \citep{jiang_survey_2024,sui_confabulation_2024,yang_hicbench_2025}. Our distinction does not rest on value. Permission is evaluated first: an ingenious fabricated medical fact remains \Hall, whereas an unhelpful but in-frame fictional invention remains \LD\ with ⟦low usefulness.⟧ \paragraph{Style-preserving evaluation} Foregrounding and style-transfer research shows that marked form can be described and manipulated while attempting to preserve content \citep{leech_short_style_1981,vanpeer_stylistics_2020,pavlick_empirical_2016,rao_dear_2018,briakou_evaluating_2021}. Halluc...

- **elod.egyed-zsigmond** (23 July, 7:03 pm): cet annotation "low usefullness" est nouveau,  potentiellement intéressent mais il faut le détailler

- [ ] **Statut** : à traiter
- **Action / réponse** : 

---


## Truth Contracts and Claim-Level Labels > Overview: from a response span to a label

### Commentaire 35 — pos 15151

**Texte visé par le commentaire :** “SUP.”

**Contexte élargi :**
> ...and recovers two contextualized claims: chlorophyll absorbs light energy, and photosynthesis uses that energy to produce sugars. It then restates these claims in neutral canonical wording and compares them with the specified scientific evidence. If the evidence entails both claims, each receives \ ⟦SUP.⟧ The figurative realization also receives an \SV\ flag, but the requested poetic style neither creates nor excuses a truth-conditional claim. This example follows one fixed chain throughout the paper: \emph{response $\rightarrow$ response span $\rightarrow$ contextualized claim $\rightarrow$...

- **elod.egyed-zsigmond** (23 July, 7:05 pm): il faut introduire SUP

- [ ] **Statut** : à traiter
- **Action / réponse** : 

---

### Commentaire 36 — pos 15201 (estimation incertaine)

**Texte visé par le commentaire :** “SV\ flag”

**Contexte élargi :**
> ...absorbs light energy, and photosynthesis uses that energy to produce sugars. It then restates these claims in neutral canonical wording and compares them with the specified scientific evidence. If the evidence entails both claims, each receives \SUP. The figurative realization also receives an \ ⟦SV\ flag, but the requested poetic style neither creates nor⟧ excuses a truth-conditional claim. This example follows one fixed chain throughout the paper: \emph{response $\rightarrow$ response span $\rightarrow$ contextualized claim $\rightarrow$ canonical claim $\rightarrow$ evidence state $\rightarrow$ contract-relative label}. Table~\ref{tab:symbols}...

- **Pierre-Yves Genest** (22 July, 4:42 pm): ?

- [ ] **Statut** : à traiter
- **Action / réponse** : 

---

### Commentaire 37 — pos 15201 (estimation incertaine)

**Texte visé par le commentaire :** “SV\ ”

**Contexte élargi :**
> ...absorbs light energy, and photosynthesis uses that energy to produce sugars. It then restates these claims in neutral canonical wording and compares them with the specified scientific evidence. If the evidence entails both claims, each receives \SUP. The figurative realization also receives an \ ⟦SV\ flag, but the requested poetic style neither creates nor⟧ excuses a truth-conditional claim. This example follows one fixed chain throughout the paper: \emph{response $\rightarrow$ response span $\rightarrow$ contextualized claim $\rightarrow$ canonical claim $\rightarrow$ evidence state $\rightarrow$ contract-relative label}. Table~\ref{tab:symbols}...

- **elod.egyed-zsigmond** (23 July, 7:06 pm): ??

- [ ] **Statut** : à traiter
- **Action / réponse** : 

---

### Commentaire 38 — pos 15730 (estimation incertaine)

**Texte visé par le commentaire :** “Core objects in the truth-contract framework.”

**Contexte élargi :**
> ...$\rightarrow$ canonical claim $\rightarrow$ evidence state $\rightarrow$ contract-relative label}. Table~\ref{tab:symbols} lists the objects used in the formal definition. \begin{table}[t] \centering \footnotesize \setlength{\tabcolsep}{4pt} \renewcommand{\arraystretch}{1.08} \caption{\textbf{ ⟦Core objects in the truth-contract framework.⟧ }} \label{tab:symbols} \begin{tabularx}{\linewidth}{@{}P{0.24\linewidth}Y@{}} \toprule \textbf{Symbol} & \textbf{Meaning}\\ \midrule $p,y,s$ & task context, complete response, and response span\\ $O_p,\sigma_p$ & reference evidence and requested style level\\ $K_p=(\kappa_p,\Gamma_p,\rho_p)$ &...

- **elod.egyed-zsigmond** (23 July, 7:07 pm): je lettrai ce tableau bien avant

- [ ] **Statut** : à traiter
- **Action / réponse** : 

---

### Commentaire 39 — pos 15918 (estimation incertaine)

**Texte visé par le commentaire :** “task context,”

**Contexte élargi :**
> ...le}[t] \centering \footnotesize \setlength{\tabcolsep}{4pt} \renewcommand{\arraystretch}{1.08} \caption{\textbf{Core objects in the truth-contract framework.}} \label{tab:symbols} \begin{tabularx}{\linewidth}{@{}P{0.24\linewidth}Y@{}} \toprule \textbf{Symbol} & \textbf{Meaning}\\ \midrule $p,y,s$ & ⟦task context, complete response, and response span\\⟧ $O_p,\sigma_p$ & reference evidence and requested style level\\ $K_p=(\kappa_p,\Gamma_p,\rho_p)$ & permission level, scope, and presentation requirement\\ $\mathcal C(s,p),c^*$ & contextualized claims recovered from $s$, and one canonical claim\\ $\widehat\sigma(s,p),z(s,p)$ & observed style level...

- **elod.egyed-zsigmond** (23 July, 7:07 pm): il faudra dire "prompt"

- [ ] **Statut** : à traiter
- **Action / réponse** : 

---


## Truth Contracts and Claim-Level Labels > The truth contract

### Commentaire 40 — pos 16485

**Texte visé par le commentaire :** “contract}”

**Contexte élargi :**
> ...$s$, and one canonical claim\\ $\widehat\sigma(s,p),z(s,p)$ & observed style level and binary \SV\ flag\\ $E(c^*,O_p)$ & evidence state relative to $O_p$\\ $V(c^*\mid p),R(y\mid p)$ & claim label and separate response-level assessment\\ \bottomrule \end{tabularx} \end{table} \subsection{The truth ⟦contract}⟧ \textbf{Truth contract (\TC).} For prompt $p$, the truth contract is \[ \TC(p)=(O_p,\sigma_p,K_p), \qquad K_p=(\kappa_p,\Gamma_p,\rho_p). \] The three components answer different questions: what supports a claim, what style the task requests, and what evidence-unknown content the task...

- **Pierre-Yves Genest** (22 July, 4:49 pm): issue: les parties 3.4 et 3.5 sont  compliquées. Il y a pas mal de notation mathématique. Soit simplifier mathématiquement et employer un langage plus naturel, soit introduire un glossaire clair

- [ ] **Statut** : à traiter
- **Action / réponse** : 

---

### Commentaire 41 — pos 16497

**Texte visé par le commentaire :** “textbf{Truth contract (\TC).”

**Contexte élargi :**
> ...canonical claim\\ $\widehat\sigma(s,p),z(s,p)$ & observed style level and binary \SV\ flag\\ $E(c^*,O_p)$ & evidence state relative to $O_p$\\ $V(c^*\mid p),R(y\mid p)$ & claim label and separate response-level assessment\\ \bottomrule \end{tabularx} \end{table} \subsection{The truth contract} \ ⟦textbf{Truth contract (\TC).⟧ } For prompt $p$, the truth contract is \[ \TC(p)=(O_p,\sigma_p,K_p), \qquad K_p=(\kappa_p,\Gamma_p,\rho_p). \] The three components answer different questions: what supports a claim, what style the task requests, and what evidence-unknown content the task permits. Here, $p$ denotes the relevant...

- **Pierre-Yves Genest** (22 July, 5:15 pm): issue: je ne sais pas si c'est la 1e occurrence, mais c'est une mauvaise pratique d'utiliser \textbf pour faire des titres de paragraphes, il faut que tu utilises \paragraph{...}

- [ ] **Statut** : à traiter
- **Action / réponse** : 

---

### Commentaire 42 — pos 16553 (estimation incertaine)

**Texte visé par le commentaire :** “contract ”

**Contexte élargi :**
> ...style level and binary \SV\ flag\\ $E(c^*,O_p)$ & evidence state relative to $O_p$\\ $V(c^*\mid p),R(y\mid p)$ & claim label and separate response-level assessment\\ \bottomrule \end{tabularx} \end{table} \subsection{The truth contract} \textbf{Truth contract (\TC).} For prompt $p$, the truth ⟦contract is⟧ \[ \TC(p)=(O_p,\sigma_p,K_p), \qquad K_p=(\kappa_p,\Gamma_p,\rho_p). \] The three components answer different questions: what supports a claim, what style the task requests, and what evidence-unknown content the task permits. Here, $p$ denotes the relevant task context rather than only the...

- **elod.egyed-zsigmond** (23 July, 7:09 pm): et voilà, là tu parles de p comme prompt, alors que dans le tableau c'est "task context"

- [ ] **Statut** : à traiter
- **Action / réponse** : 

---

### Commentaire 43 — pos 16960 (estimation incertaine)

**Texte visé par le commentaire :** “Reference evidence ($O_p$).”

**Contexte élargi :**
> ...different questions: what supports a claim, what style the task requests, and what evidence-unknown content the task permits. Here, $p$ denotes the relevant task context rather than only the literal user-prompt string. We drop the subscript $p$ when the prompt is clear from context. \textbf{ ⟦Reference evidence ($O_p$).⟧ } $O_p$ is the reference information against which a claim is evaluated, such as a source document, retrieval set, database, gold labels, a specified external source, or declared fictional-frame constraints. The phrase ``world knowledge'' is only a shorthand; reproducible evaluation requires a...

- **Pierre-Yves Genest** (22 July, 4:31 pm): nitpick: Tu n'as pas de paragraphe qui défini sigma, c'est dans une partie différente

- [ ] **Statut** : à traiter
- **Action / réponse** : 

---

### Commentaire 44 — pos 17486

**Texte visé par le commentaire :** “\item $\kappa_p\in\{0,1,2\}$: the permission level, where $0$ is factual only, $1$ allows limited and explicitly marked divergence, and $2$ allows invention inside a declared frame;”

**Contexte élargi :**
> ...phrase ``world knowledge'' is only a shorthand; reproducible evaluation requires a concrete evidence source or an explicit adjudication procedure \citep{ji_survey_2023,bang_hallulens_2025}. \textbf{Content-permission policy ($K_p$).} $K_p$ specifies three properties: \begin{itemize} ⟦\item $\⟧ kappa_p\in\{0,1,2\}$: the permission level, where $0$ is factual only, $1$ allows limited and explicitly marked divergence, and $2$ allows invention inside a declared frame; \item $\Gamma_p$: the \emph{permission scope}, meaning the topics, entities, or fictional world in which evidence-unknown...

- **Pierre-Yves Genest** (22 July, 4:32 pm): thought: est-ce que kappa = 1 ne rentre pas en collision avec rho ?

- [ ] **Statut** : à traiter
- **Action / réponse** : 

---

### Commentaire 45 — pos 17494 (estimation incertaine)

**Texte visé par le commentaire :** “$\kappa_p\in\{0,1,2\}$”

**Contexte élargi :**
> ...phrase ``world knowledge'' is only a shorthand; reproducible evaluation requires a concrete evidence source or an explicit adjudication procedure \citep{ji_survey_2023,bang_hallulens_2025}. \textbf{Content-permission policy ($K_p$).} $K_p$ specifies three properties: \begin{itemize} \item $\ ⟦kappa_p\in\{0,1,2\}$: the permission level, where $0$ is fac⟧ tual only, $1$ allows limited and explicitly marked divergence, and $2$ allows invention inside a declared frame; \item $\Gamma_p$: the \emph{permission scope}, meaning the topics, entities, or fictional world in which evidence-unknown content may be introduced; \item $\rho_p$: the...

- **Pierre-Yves Genest** (22 July, 4:32 pm): issue: attention kappa est proche de K majuscule, il y a un risque de confusion

- [ ] **Statut** : à traiter
- **Action / réponse** : 

---

### Commentaire 46 — pos 17676 (estimation incertaine)

**Texte visé par le commentaire :** “$\Gamma_p$: the \emph{permission scope}, meaning the topics, entities, or fictional world in which evidence-unknown content may be introduced;”

**Contexte élargi :**
> ...ulens_2025}. \textbf{Content-permission policy ($K_p$).} $K_p$ specifies three properties: \begin{itemize} \item $\kappa_p\in\{0,1,2\}$: the permission level, where $0$ is factual only, $1$ allows limited and explicitly marked divergence, and $2$ allows invention inside a declared frame; \item ⟦$\Gamma_p$: the \emph{permission scope}, meaning the topics,⟧ entities, or fictional world in which evidence-unknown content may be introduced; \item $\rho_p$: the \emph{required epistemic presentation}, meaning how the response must signal the status of that content, for example with a hedge, an explicit hypothesis marker, or a declared fictional...

- **elod.egyed-zsigmond** (23 July, 7:29 pm): il faudra un exemple

- [ ] **Statut** : à traiter
- **Action / réponse** : 

---


## Truth Contracts and Claim-Level Labels > Requested style levels

### Commentaire 47 — pos 20364

**Texte visé par le commentaire :** “require empirical validation.”

**Contexte élargi :**
> ...unexpectedness is therefore not, by itself, evidence of factual error. Style is multi-dimensional, so this three-level scheme is a working discretization rather than a validated universal scale \citep{kang_style_2021,jin_deep_2022}. The boundaries, especially between $\sigma_p=1$ and $\sigma_p=2$, ⟦require empirical validation.⟧ The requested style level $\sigma_p$ must be distinguished from the observed style level $\widehat\sigma(s,p)$ in an output span $s$. For example, a prompt can request $\sigma_p=2$ while the model produces neutral prose with $\widehat\sigma(s,p)=0$. This mismatch is a style-compliance error, not...

- **elod.egyed-zsigmond** (24 July, 8:16 am): il faut citer ici les travaux de tâches CLEF, TREC et SemEval

- [ ] **Statut** : à traiter
- **Action / réponse** : 

---

### Commentaire 48 — pos 20395 (estimation incertaine)

**Texte visé par le commentaire :** “The requested style level $\sigma_p$ must be distinguished f”

**Contexte élargi :**
> ...by itself, evidence of factual error. Style is multi-dimensional, so this three-level scheme is a working discretization rather than a validated universal scale \citep{kang_style_2021,jin_deep_2022}. The boundaries, especially between $\sigma_p=1$ and $\sigma_p=2$, require empirical validation. ⟦The requested style level $\sigma_p$ must be distinguished f⟧ rom the observed style level $\widehat\sigma(s,p)$ in an output span $s$. For example, a prompt can request $\sigma_p=2$ while the model produces neutral prose with $\widehat\sigma(s,p)=0$. This mismatch is a style-compliance error, not a hallucination. The diagnostic role of $\sigma_p$ is...

- **Pierre-Yves Genest** (22 July, 4:35 pm): thought: pourquoi tu dis ça spécifiquement pour style ? C'est pas le cas pour tous les autres paramètres ?

- [ ] **Statut** : à traiter
- **Action / réponse** : 

---

### Commentaire 49 — pos 20645 (estimation incertaine)

**Texte visé par le commentaire :** “This mismatch is a style-compliance error, not a hallucination.”

**Contexte élargi :**
> ...and $\sigma_p=2$, require empirical validation. The requested style level $\sigma_p$ must be distinguished from the observed style level $\widehat\sigma(s,p)$ in an output span $s$. For example, a prompt can request $\sigma_p=2$ while the model produces neutral prose with $\widehat\sigma(s,p)=0$. ⟦This mismatch is a style-compliance error, not a hallucination.⟧ The diagnostic role of $\sigma_p$ is upstream of factual verification. The requested style level guides the interpretation of a span, while the observed style level records the form that the model produced. Claim extractors, entailment systems, and semantic metrics may react differently to...

- **Pierre-Yves Genest** (22 July, 4:35 pm): issue: en fait tu dis en substance le style n'a pas d'impact sur les hallucinations. Donc pourquoi l'inclure dans le truth contract ?
- **Pierre-Yves Genest** (22 July, 4:36 pm): Et je ne suis pas sûr que ton paragraphe du dessous justifie vraiment la nécessité de sigma. Si je comprends bien, tu dis les systèmes actuels réagissent mal à sigma donc il faut corriger les entrées.
- **Pierre-Yves Genest** (22 July, 4:38 pm): Et pour finir, si je réfléchis en terme d'évaluation des hallucinations/LD pur, j'ai pas besoin de sigma théorique mais de sigma réel

- [ ] **Statut** : à traiter
- **Action / réponse** : 

---

### Commentaire 50 — pos 21147 (estimation incertaine)

**Texte visé par le commentaire :** “As a result, stylistic form can change which claims an evaluator extracts and verifies even though $\sigma_p$ does not authorize new content.”

**Contexte élargi :**
> ...the observed style level records the form that the model produced. Claim extractors, entailment systems, and semantic metrics may react differently to literal and figurative realizations of the same claim \citep{chen_menli_2023,aynetdinov_semscore_2024,lai_multidimensional_2023,pauli_mind_2025}. ⟦As a result, stylistic form can change which claims an evalu⟧ ator extracts and verifies even though $\sigma_p$ does not authorize new content. \subsection{Unit of analysis and span typing} We use a claim-level unit because a response may mix supported, unsupported, and non-claim material \citep{min_factscore_2023,bayat_factbench_2024}. Let $s$ denote a...

- **elod.egyed-zsigmond** (24 July, 8:17 am): Pas très claire
- **Mathis Carlesso** (24 July, 10:39 am): abordé dans l'état de l'art mais ca reste un pb ouvert

- [ ] **Statut** : à traiter
- **Action / réponse** : 

---


## Truth Contracts and Claim-Level Labels > Unit of analysis and span typing

### Commentaire 51 — pos 21346 (estimation incertaine)

**Texte visé par le commentaire :** “claim-level unit because a response may mix supported”

**Contexte élargi :**
> ...claim \citep{chen_menli_2023,aynetdinov_semscore_2024,lai_multidimensional_2023,pauli_mind_2025}. As a result, stylistic form can change which claims an evaluator extracts and verifies even though $\sigma_p$ does not authorize new content. \subsection{Unit of analysis and span typing} We use a ⟦claim-level unit because a response may mix supported, unsup⟧ ported, and non-claim material \citep{min_factscore_2023,bayat_factbench_2024}. Let $s$ denote a response span. Interpreting $s$ in task context $p$ yields a set of contextualized truth-conditional claims $\mathcal C(s,p)$. The same wording can therefore yield different claims in fiction, metaphor,...

- **elod.egyed-zsigmond** (24 July, 8:18 am): A mon avis ce découpage est utile pour ot K (truth regime) et le gamma, pour le style un peu moins

- [ ] **Statut** : à traiter
- **Action / réponse** : 

---

### Commentaire 52 — pos 21489

**Texte visé par le commentaire :** “$s$ denote a response span.”

**Contexte élargi :**
> ...claims an evaluator extracts and verifies even though $\sigma_p$ does not authorize new content. \subsection{Unit of analysis and span typing} We use a claim-level unit because a response may mix supported, unsupported, and non-claim material \citep{min_factscore_2023,bayat_factbench_2024}. Let ⟦$s$ denote a response span.⟧ Interpreting $s$ in task context $p$ yields a set of contextualized truth-conditional claims $\mathcal C(s,p)$. The same wording can therefore yield different claims in fiction, metaphor, and hypothetical language. For verification, an annotator restates each recovered claim as a neutral...

- **Pierre-Yves Genest** (22 July, 4:39 pm): thought: A définir avant (introduction). Tu en aurais déjà besoin pour ta figure 1. Egalement, pourquoi S et pas A (answer) ou R (response)

- [ ] **Statut** : à traiter
- **Action / réponse** : 

---

### Commentaire 53 — pos 21552

**Texte visé par le commentaire :** “p$ yields a set of contextualized truth-conditional claims $\mathcal C(s,p)$.”

**Contexte élargi :**
> ...does not authorize new content. \subsection{Unit of analysis and span typing} We use a claim-level unit because a response may mix supported, unsupported, and non-claim material \citep{min_factscore_2023,bayat_factbench_2024}. Let $s$ denote a response span. Interpreting $s$ in task context $ ⟦p$ yields a set of contextualized truth-conditional claims $\mathcal C(s,p)$.⟧ The same wording can therefore yield different claims in fiction, metaphor, and hypothetical language. For verification, an annotator restates each recovered claim as a neutral \emph{canonical claim} $c^*$ while preserving its factual commitment. The evaluator also records the observed style...

- **Pierre-Yves Genest** (22 July, 4:40 pm): nitpick : en général dans les papiers, le prompt est plutôt représenté par un P majuscule

- [ ] **Statut** : à traiter
- **Action / réponse** : 

---

### Commentaire 54 — pos 21630 (estimation incertaine)

**Texte visé par le commentaire :** “The same wording can therefore yield different claims in fic”

**Contexte élargi :**
> ...use a claim-level unit because a response may mix supported, unsupported, and non-claim material \citep{min_factscore_2023,bayat_factbench_2024}. Let $s$ denote a response span. Interpreting $s$ in task context $p$ yields a set of contextualized truth-conditional claims $\mathcal C(s,p)$. ⟦The same wording can therefore yield different claims in fic⟧ tion, metaphor, and hypothetical language. For verification, an annotator restates each recovered claim as a neutral \emph{canonical claim} $c^*$ while preserving its factual commitment. The evaluator also records the observed style level $\widehat\sigma(s,p)\in\{0,1,2\}$ and a binary \SV\ flag...

- **Pierre-Yves Genest** (22 July, 4:47 pm): thought: a justifier

- [ ] **Statut** : à traiter
- **Action / réponse** : 

---

### Commentaire 55 — pos 21940 (estimation incertaine)

**Texte visé par le commentaire :** “sigma(s,p)”

**Contexte élargi :**
> ...can therefore yield different claims in fiction, metaphor, and hypothetical language. For verification, an annotator restates each recovered claim as a neutral \emph{canonical claim} $c^*$ while preserving its factual commitment. The evaluator also records the observed style level $\widehat\ ⟦sigma(s,p)\in\{0,1,2\}$ and a binary \SV\ flag $z(s,p)\in\{0⟧ ,1\}$ for an independently identifiable stylistic contribution. Together, $\mathcal C(s,p)$ and $z(s,p)$ define four span types: \begin{itemize} \item \emph{other}: $\mathcal C=\varnothing$ and $z=0$; the span is outside claim and style evaluation; \item \emph{SV-only}: $\mathcal C=\varnothing$...

- **Pierre-Yves Genest** (22 July, 4:47 pm): thought: cf ce que j'ai dit avant. En fait sigma prompt on s'en fiche, c'est sigma réponse qui compte

- [ ] **Statut** : à traiter
- **Action / réponse** : 

---


## Truth Contracts and Claim-Level Labels > Evidence state and claim label

### Commentaire 56 — pos 24279 (estimation incertaine)

**Texte visé par le commentaire :** “Gamma_p$.”

**Contexte élargi :**
> ...last value means that $O_p$ neither supports nor contradicts the claim; it is not a statement about all possible knowledge. Evidence state alone does not determine the contractual claim label. Let $L(c^*,K_p)\in\{0,1\}$ indicate whether $c^*$ is permitted within $\ ⟦Gamma_p$.⟧ Let $M(c^*,s,K_p)\in\{0,1\}$ indicate whether span $s$ presents $c^*$ as required by $\rho_p$. Then \[ V(c^*\mid p)= \begin{cases} \SUP & \text{if }E(c^*,O_p)=\textsc{entailed},\\[1mm] \LD & \text{if }E(c^*,O_p)=\textsc{unknown},\ L=1,\ M=1,\\[1mm] \Hall & \text{otherwise.} \end{cases} \] \SUP\...

- **Pierre-Yves Genest** (22 July, 4:50 pm): thought: je réintroduirais le terme "anglais" derrière gamma et rho, pour mieux comprendre intuitivement la logique derrière

- [ ] **Statut** : à traiter
- **Action / réponse** : 

---

### Commentaire 57 — pos 24579 (estimation incertaine)

**Texte visé par le commentaire :** “\SUP\ means \emph{supported}: $O_p$ entails the claim.
\Hall\ means \emph{hallucination}: the claim is contradicted, or it is evidence-unknown without the required permission, scope, or presentation.
\LD\ means \emph{licensed divergence}:”

**Contexte élargi :**
> ...$M(c^*,s,K_p)\in\{0,1\}$ indicate whether span $s$ presents $c^*$ as required by $\rho_p$. Then \[ V(c^*\mid p)= \begin{cases} \SUP & \text{if }E(c^*,O_p)=\textsc{entailed},\\[1mm] \LD & \text{if }E(c^*,O_p)=\textsc{unknown},\ L=1,\ M=1,\\[1mm] \Hall & \text{otherwise.} \end{cases} \] ⟦\SUP\ means \emph{supported}: $O_p$ entails the claim.⟧ \Hall\ means \emph{hallucination}: the claim is contradicted, or it is evidence-unknown without the required permission, scope, or presentation. \LD\ means \emph{licensed divergence}: $O_p$ does not establish the claim, but $K_p$ explicitly allows that type of content inside $\Gamma_p$ and under...

- **elod.egyed-zsigmond** (24 July, 8:28 am): il faut mettre ces définitions avant

- [ ] **Statut** : à traiter
- **Action / réponse** : 

---

### Commentaire 58 — pos 25027 (estimation incertaine)

**Texte visé par le commentaire :** “external world.”

**Contexte élargi :**
> ...the required permission, scope, or presentation. \LD\ means \emph{licensed divergence}: $O_p$ does not establish the claim, but $K_p$ explicitly allows that type of content inside $\Gamma_p$ and under $\rho_p$. An \LD\ label records contractual permission, not proof that the claim is true in the ⟦external world.⟧ By default, a claim that contradicts $O_p$ receives \Hall. For fiction, $O_p$ includes the declared fictional frame and its constraints; disagreement with the real world alone does not make an in-frame invention contradicted. If an entailed claim violates a requested hedge or style, it remains...

- **elod.egyed-zsigmond** (24 July, 8:29 am): wrt to O_p plutôt

- [ ] **Statut** : à traiter
- **Action / réponse** : 

---

### Commentaire 59 — pos 25403 (estimation incertaine)

**Texte visé par le commentaire :** “Usefulness $U(c^*,p)$ is reported as a separate task-dependent score over \LD\ claims.”

**Contexte élargi :**
> ...fiction, $O_p$ includes the declared fictional frame and its constraints; disagreement with the real world alone does not make an in-frame invention contradicted. If an entailed claim violates a requested hedge or style, it remains \SUP\ but is additionally flagged with a task-compliance error. ⟦Usefulness $U(c^*,p)$ is reported as a separate task-dependent score over \LD\ claims.⟧ A low usefulness score does not change \LD\ into \Hall. An explicit refusal or a statement such as ``the available evidence is insufficient'' is evaluated as a meta-claim about the evidence. It is not automatically treated as asserting the embedded unsupported claim. This distinction prevents...

- **elod.egyed-zsigmond** (24 July, 8:30 am): détailler cela. Tu n''abordez pas l'alignement de la réponse avec le prompt

- [ ] **Statut** : à traiter
- **Action / réponse** : 

---

### Commentaire 60 — pos 26550 (estimation incertaine)

**Texte visé par le commentaire :** “We write $R(y\mid p)$ for”

**Contexte élargi :**
> ..._factscore_2023,bayat_factbench_2024}. These aggregations answer different questions: one severe \Hall\ may matter more than several minor supported claims, while a creative response can contain no \Hall\ yet still provide too little useful \LD. Figure~\ref{fig:decision} summarizes the procedure. W ⟦e write $R(y\mid p)$ for a contract-aware response-level assessment.⟧ Its aggregation rule should state how it combines claim labels with coverage, severity, usefulness, and style compliance under $\TC(p)$; designing that rule is an open research problem. \begin{figure*}[t] \centering \resizebox{0.95\linewidth}{!}{% \begin{tikzpicture}[x=1cm,y=1cm]...

- **elod.egyed-zsigmond** (24 July, 8:36 am): détailler un peu

- [ ] **Statut** : à traiter
- **Action / réponse** : 

---

### Commentaire 61 — pos 26959 (estimation incertaine)

**Texte visé par le commentaire :** “model response ($y$)};”

**Contexte élargi :**
> ...combines claim labels with coverage, severity, usefulness, and style compliance under $\TC(p)$; designing that rule is an open research problem. \begin{figure*}[t] \centering \resizebox{0.95\linewidth}{!}{% \begin{tikzpicture}[x=1cm,y=1cm] \node[input,text width=5.7cm] (response) at (0,0) { ⟦model response ($y$)};⟧ \node[decision,text width=6.2cm] (contract) at (0,-1.35) {read the truth contract $\TC(p)=(O_p,\sigma_p,K_p)$\\[-1pt] {\scriptsize with $K_p=(\kappa_p,\Gamma_p,\rho_p)$}}; \node[decision,text width=6.2cm] (label) at (0,-2.70) {type each span $s$ as claim-only, \SV-only, mixed, or...

- **elod.egyed-zsigmond** (24 July, 8:31 am): le prompt n'est pas un input ?

- [ ] **Statut** : à traiter
- **Action / réponse** : 

---

### Commentaire 62 — pos 30276 (estimation incertaine)

**Texte visé par le commentaire :** “Contract-aware span-to-claim hallucination evaluation workflow.”

**Contexte élargi :**
> ...(contradicted.south) |- ([xshift=3.5cm]responselevel.north); \draw[arrow,dashed,color=gray!55] (licensed.south) to ([xshift=-1.8cm]responselevel.north); \draw[arrow,dashed,color=gray!55] (unlicensed.south) to ([xshift=1.8cm]responselevel.north); \end{tikzpicture}} \caption{\textbf{ ⟦Contract-aware span-to-claim hallucination evaluation workflow.⟧ } The evaluator first types each response span as claim-only, \SV-only, mixed, or other. Each recovered canonical claim is then compared with $O_p$. Entailed claims receive \SUP, contradicted claims receive \Hall, and evidence-unknown claims receive \LD\ only when $K_p$ permits their content,...

- **elod.egyed-zsigmond** (24 July, 8:33 am): préciser que cela n'est pas une évaluation complète de la réponse... (il manque l'alignement, le respect du style, 

- [ ] **Statut** : à traiter
- **Action / réponse** : 

---


## Evidence from a Purposive Resource Mapping > Mapping protocol

### Commentaire 63 — pos 36035 (estimation incertaine)

**Texte visé par le commentaire :** “Appendix~\ref{app:mapping} expresses these observations in the framework's terms.”

**Contexte élargi :**
> ...claim content? \item Does it vary or score content permission $\kappa$? \item Does it represent the permission scope $\Gamma$? \item Does it score the presentation requirement $\rho$? \item Does it test stylistic marking as a source of factuality-measurement error? \end{enumerate} ⟦Appendix~\ref{app:mapping} expresses these observations in the framework's terms.⟧ Each resource receives a task-level profile for all six questions. We use $\kappa=0$ for factual-only tasks, $\kappa=1$ for limited divergence constrained by explicit marking, feasibility, tests, or soundness, and $\kappa=2$ for invention inside a declared task frame. The appendix uses...

- **Pierre-Yves Genest** (22 July, 4:53 pm): thought: une raison particulière de le mettre en appendice ?
- **elod.egyed-zsigmond** (24 July, 8:40 am): d'accord, la description de l'appendix ici est trop longue

- [ ] **Statut** : à traiter
- **Action / réponse** : 

---

### Commentaire 64 — pos 36757 (estimation incertaine)

**Texte visé par le commentaire :** “The mapping was coded in a single pass by one author, so the inferred task profiles are interpretive annotations rather than measurements reported by the original resources.”

**Contexte élargi :**
> ...\emph{partial} when only part of a component is represented, and \emph{not scored} when the protocol does not separately evaluate that field. The level estimates the breadth of permitted departure; it does not measure benchmark quality or replace the scope and presentation components of $K$. ⟦The mapping was coded in a single pass by one author, so the⟧ inferred task profiles are interpretive annotations rather than measurements reported by the original resources. Independent recoding and a public codebook would be required before treating it as a validated resource, and our conclusions are limited to this sample. Appendix~\ref{app:mapping} lists...

- **Pierre-Yves Genest** (22 July, 4:54 pm): issue: a supprimer, ne dévalorise pas ton travail. Tu peux dire que ça a été annoté manuellement point.

- [ ] **Statut** : à traiter
- **Action / réponse** : 

---


## Evidence from a Purposive Resource Mapping > Observed pattern in the sample

### Commentaire 65 — pos 37435 (estimation incertaine)

**Texte visé par le commentaire :** “Factuality cluster: low $\sigma$, low $\kappa$}”

**Contexte élargi :**
> ...profiles and defines every code used in the tables. \subsection{Observed pattern in the sample} The complete resource-level coding appears in Appendix Tables~\ref{tab:full-mapping-factual-a}--\ref{tab:full-mapping-creative}; the following patterns summarize our coding of this sample. \paragraph{ ⟦Factuality cluster: low $\sigma$, low $\kappa$}⟧ In our coding, the twenty-four strict factuality and faithfulness resources generally fix reference evidence, assume neutral wording ($\sigma=0$), and treat unsupported claims as errors under an inferred $\kappa=0$ policy. The two closest intent or hallucination-taxonomy resources represent part of...

- **Pierre-Yves Genest** (22 July, 4:54 pm): suggestion: Il y aurait pas moyen que tu fasse un tableau/figure cluster ou tu mets chaque dataset ? Comme ça on aurait une vision synthétique

- [ ] **Statut** : à traiter
- **Action / réponse** : 

---

### Commentaire 66 — pos 38358 (estimation incertaine)

**Texte visé par le commentaire :** “five constrained creative-problem-solving resources instead”

**Contexte élargi :**
> ...language ($\sigma=1$ or $2$) and imply $\kappa=2$. They generally treat the permission policy $K=(\kappa,\Gamma,\rho)$ as part of the task rather than as an independently varied evaluation variable. Divergent-thinking resources also imply $\kappa=2$ but often do not control linguistic style. The ⟦five constrained creative-problem-solving resources instead⟧ combine mostly neutral form with a partial $\kappa=1$ policy based on feasibility, tests, or correctness. \paragraph{The apparent contradiction is a coverage gap} In this sample, the two clusters cover different regions of the truth-contract space rather than conflicting measurements of one...

- **elod.egyed-zsigmond** (24 July, 9:00 am): tu réfères à quoi ici les fives?

- [ ] **Statut** : à traiter
- **Action / réponse** : 

---

### Commentaire 67 — pos 43097 (estimation incertaine)

**Texte visé par le commentaire :** “Conceptual task-design space.”

**Contexte élargi :**
> ...at (-0.16,0.5*\rh){$\kappa_p=0$: factual only}; \node[font=\scriptsize,anchor=east] at (-0.16,1.5*\rh){$\kappa_p=1$: limited divergence}; \node[font=\scriptsize,anchor=east] at (-0.16,2.5*\rh){$\kappa_p=2$: in-frame invention}; \end{tikzpicture}} \caption{\textbf{ ⟦Conceptual task-design space.⟧ } The grid crosses three content-permission levels with the three requested style levels, $\sigma_p\in\{0,1,2\}$. Each cell is an illustrative task profile, not an empirical frequency or quality ranking. A higher $\kappa_p$ broadens the type of departure that a task may permit, but scope and...

- **elod.egyed-zsigmond** (24 July, 8:59 am): je me demande si cette figure est nécessaire ... 

- [ ] **Statut** : à traiter
- **Action / réponse** : 

---


## Worked Cases

### Commentaire 68 — pos 43852 (estimation incertaine)

**Texte visé par le commentaire :** “Worked Cases}\label{sec:cases}”

**Contexte élargi :**
> ...shading groups permission levels, but its intensity does not encode a quantitative measure. The outlined $\sigma_p=2,\ \kappa_p=0$ cell marks the diagnostic gap identified in our sample: strongly marked language under a factual-only contract.} \label{fig:profiles} \end{figure*} \section{ ⟦Worked Cases}\label{sec:cases}⟧ The following cases illustrate how one or more contract components affect the analysis. They are conceptual demonstrations rather than measurements. Case A uses a documented summarization pattern; Cases B--E are constructed contrasts involving frame, permission, scope, presentation, and...

- **Pierre-Yves Genest** (22 July, 4:56 pm): thought: je pense que c'est une très bonne partie qui permet de bien illustrer le propos, mais je ne comprends pas bien les cas ci-dessous. Je pense qu'on gagnerait à mettre visuellement des vrais exemples plutôt que des expériences de pensées

- [ ] **Statut** : à traiter
- **Action / réponse** : 

---


## Research Agenda

### Commentaire 69 — pos 46933 (estimation incertaine)

**Texte visé par le commentaire :** “Research Agenda}\label{sec:agenda}”

**Contexte élargi :**
> ...literal pseudo-claim extracted from the figurative wording is a claim-recovery error, not a factual defect in the matched claim. Together, Cases A--E isolate the role of reference evidence, discourse frame, epistemic presentation, permission scope, and style-conditioned claim recovery. \section{ ⟦Research Agenda}\label{sec:agenda}⟧ The framework motivates six connected priorities that form a validation sequence: annotation, benchmark construction, pipeline diagnosis, aggregation, mitigation, and generalization. \textbf{1. Contract annotation, inference, and reliability.} Benchmarks should annotate the reference evidence...

- **Pierre-Yves Genest** (22 July, 4:58 pm): issue: le research agenda vient un peu comme un cheveu sur la soupe. L'idéal est que chaque point que tu évoques en dessous ait déjà été présenté précédemment. Exemple : il faut un dataset => dans la partie dataset tu dois te plaindre qu'aucun n'est convaincant, etc.

- [ ] **Statut** : à traiter
- **Action / réponse** : 

---

### Commentaire 70 — pos 47154 (estimation incertaine)

**Texte visé par le commentaire :** “\textbf{1. Contract annotation, inference, and reliability.}
Benchmarks should annotate the reference evidence $O_p$, the three-level requested style level $\sigma_p$, the observed style level $\widehat\sigma$, permission level $\kappa_p$, scope, and epistemic presentation separately.”

**Contexte élargi :**
> ...permission scope, and style-conditioned claim recovery. \section{Research Agenda}\label{sec:agenda} The framework motivates six connected priorities that form a validation sequence: annotation, benchmark construction, pipeline diagnosis, aggregation, mitigation, and generalization. \ ⟦textbf{1.⟧ Contract annotation, inference, and reliability.} Benchmarks should annotate the reference evidence $O_p$, the three-level requested style level $\sigma_p$, the observed style level $\widehat\sigma$, permission level $\kappa_p$, scope, and epistemic presentation separately. A public codebook...

- **Pierre-Yves Genest** (22 July, 5:14 pm): thought: une critique pourrait être qu'une telle annotation est très complexe

- [ ] **Statut** : à traiter
- **Action / réponse** : 

---


## Conclusion

### Commentaire 71 — pos 55225

**Texte visé par le commentaire :** “Conclusion}\label{sec:conclusion}”

**Contexte élargi :**
> ...codebook would strengthen estimates of how often each truth-contract profile occurs in the broader literature. These boundaries define the next validation steps, and they leave the paper's central distinction fully testable: evidential support, content permission, and requested style. \section{ ⟦Conclusion}\label{sec:conclusion}⟧ Hallucination is a claim-level label relative to a task's reference evidence, requested style, and content-permission policy. The truth contract $\TC(p)=(O_p,\sigma_p,K_p)$ makes these variables explicit without changing what is true. An evidence-unknown claim receives \LD\ only when its content,...

- **Pierre-Yves Genest** (22 July, 5:09 pm): issue: conclusion a revoir.
1) Si tu commences par la définition d'hallucination, il faut dire qu'elle est partielle et pas convaincante.
2) Je pense que la conclusion devrait être plus longue.

- [ ] **Statut** : à traiter
- **Action / réponse** : 

---

### Commentaire 72 — pos 55260 (estimation incertaine)

**Texte visé par le commentaire :** “Hallucination is a claim-level label relative to a task's reference evidence, requested style, and content-permission policy.”

**Contexte élargi :**
> ...of how often each truth-contract profile occurs in the broader literature. These boundaries define the next validation steps, and they leave the paper's central distinction fully testable: evidential support, content permission, and requested style. \section{Conclusion}\label{sec:conclusion} ⟦Hallucination is a claim-level label relative to a task's re⟧ ference evidence, requested style, and content-permission policy. The truth contract $\TC(p)=(O_p,\sigma_p,K_p)$ makes these variables explicit without changing what is true. An evidence-unknown claim receives \LD\ only when its content, scope, and presentation are permitted; otherwise it receives...

- **Martino Lovisetto** (24 July, 8:37 am): maybe strat by saying something like "in this position paper, we argued that..."

- [ ] **Statut** : à traiter
- **Action / réponse** : 

---

### Commentaire 73 — pos 55734 (estimation incertaine)

**Texte visé par le commentaire :** “purposive sample, these variables are rarely represented tog”

**Contexte élargi :**
> ...these variables explicit without changing what is true. An evidence-unknown claim receives \LD\ only when its content, scope, and presentation are permitted; otherwise it receives \Hall. Usefulness, severity, style compliance, and response-level aggregation remain separate assessments. In our ⟦purposive sample, these variables are rarely represented tog⟧ ether, and the worked cases illustrate their distinct roles. The main validation priorities are reliable contract annotation, style-robust claim matching, transparent aggregation, and mitigation that reduces \Hall\ while preserving \LD\ and factually grounded style. \appendix \appendixsection{Addi...

- **Martino Lovisetto** (24 July, 8:36 am): recall the size of the sample

- [ ] **Statut** : à traiter
- **Action / réponse** : 

---

### Commentaire 74 — pos 60002

**Texte visé par le commentaire :** “Factuality and faithfulness resources in the purposive mapping (part I).”

**Contexte élargi :**
> ...inferred from the original protocols, not labels reported by those resources. They require a public codebook and independent recoding before release as a validated dataset. \begin{table*}[t] \centering \footnotesize \setlength{\tabcolsep}{5pt} \renewcommand{\arraystretch}{1.08} \caption{\textbf{ ⟦Factuality and faithfulness resources in the purposive mapping (part I).⟧ } The table shows the five structural dimensions recorded in the mapping: $O$, $\sigma$, $\kappa$, $\Gamma$, and $\rho$. The recurring author-coded profile is fixed evidence, implicit $\sigma=0$, inferred $\kappa=0$, no applicable permission scope, and no separate scoring of...

- **elod.egyed-zsigmond** (24 July, 9:02 am): numéroter les ressources pour voir qu'il y a 40

- [ ] **Statut** : à traiter
- **Action / réponse** : 

---
