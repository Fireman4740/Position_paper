# Propositions de reformulation — commentaires d'Elöd sur mainV7 (export Overleaf du 22/10)

Source : `bd38ec2e-lasl-elod.json` (47 fils, tous d'Elöd) ancrés sur `truth_contract_position_paper.tex` (= mainV7). Les numéros de ligne renvoient à ce fichier. Les diagnostics sont en français, les réécritures en anglais (LaTeX prêt à coller). Rien n'est appliqué au manuscrit.

Consignes appliquées : une idée par paragraphe, définitions avant usage, vocabulaire existant conservé (*truth contract, task oracle, permission scope, required / observed status marking, evidence state, claim label, claim trace, examples*), puces pour les distinctions, exemples hors musée quand le musée n'apporte rien, pas de style dans le mapping, pas de réserves répétées.

---

## 0. Trois décisions à trancher avant d'appliquer

**D1 — Oracle supposé correct (commentaires #9, #15, #16).** Elöd demande de supposer l'oracle correct et de retirer les « failures » du corps du texte. Proposition : une phrase d'hypothèse explicite en §3.1 (voir #9), puis suppression en cascade :
- l. 905 « For each claim it successfully checks » → « For each claim »
- l. 1025–1026 (« If the intended meaning remains unclear… ») → supprimer
- l. 1049–1050 « Successful verification returns » → « Verification returns »
- l. 1070–1072 et l. 1075–1076 → supprimer (voir #15–#16)
- l. 1216–1218 « after successful oracle processing; evaluation failures are handled… » → « Table~\ref{tab:claim-rule} summarizes the rule. »
- l. 1222 (caption tab:claim-rule) « after successful oracle processing » → supprimer
- l. 1268–1270 « Procedural failures are recorded alongside them, and the affected claims remain unlabeled. » → supprimer
- l. 1951–1953 et l. 1967–1969 → à reformuler en une seule limite : *« The framework assumes a correct oracle; in practice, claim recovery and evidence checks can fail, and Section~\ref{sec:agenda} proposes ways to measure these errors. »*
- Annexe A : garder « Failures of claim recovery » comme limite pratique, mais **l. 2101–2104 contredit Elöd** (« The failure must not be automatically converted to UNKNOWN » vs « si la source est indisponible, alors UNKNOWN »). À trancher : (a) adopter la convention d'Elöd et supprimer ces lignes, ou (b) garder la distinction en annexe en la présentant comme un cas où l'hypothèse d'oracle correct ne tient plus. Je recommande (b), plus rigoureux, mais c'est un choix à valider avec lui.

**D2 — Que se passe-t-il si μ est vide (#19, #21) ?** Il faut une convention. Proposition : *μ = ∅ → la vérification du marquage n'est pas appliquée ; un claim permis reçoit LD quelle que soit sa présentation.* Alternative : inférer μ du type de tâche (comme le symbole « Implied » du mapping). Les exemples de prompts courts (voir #21) supposent la première convention pour l'histoire, la seconde pour « Why might this experiment have failed? ». Choisis-en une et j'aligne l'exemple.

**D3 — Symboles du tableau 4 (#29–#33).** La consigne 9 demande de retirer les codes opaques. Proposition : remplacer •, ∘, ×, ∼ par des mots courts, avec deux valeurs distinctes pour la colonne marquage (aujourd'hui, ∘ a deux sens différents selon la colonne) :
- Permission : *Stated / Implied*
- Marquage : *Checked / Not checked*
- Les deux : *None / Per subtask*

Coût : redéfinir les macros l. 40–44 et ajouter `\Checked` / `\Unchecked` pour 6 entrées de la colonne marquage (IDs 2, 4, 28, 29, 30, 32).

---

## 1. Introduction

### #1 — l. 116 — « qu'est-ce "abstention" ? »
Terme non défini à sa première occurrence.
```latex
Results from AA-Omniscience benchmarks show persistent weaknesses in factual
accuracy and in abstention, that is, declining to answer when the model
does not know, and its August 26, 2026 leaderboard snapshot shows ...
```

### #2 — Figure 1, l. 166–168 (+ l. 182 et l. 266) — « trop spécifique… "you may add some plausible reconstructions" »
Le prompt devient réaliste ; il faut aligner la boîte de contrat et la boîte d'évaluation.
```latex
  ``Write a short museum label for children.
  Mark uncertainty clearly. You may add
  plausible reconstructions.''
```
```latex
  \textbf{The response may add:} plausible reconstructions\\[3pt]
```
```latex
  The task allows plausible reconstructions, and the response presents
  this one as a possibility.
```
Les mentions « exactly one reconstruction » (l. 1872, l. 2037) restent valables : ce sont des exemples de contraintes sur la réponse entière.

### #3 — l. 372–378 — « reformuler »
Le plan est une liste de renvois sans fil conducteur. Proposition qui dit ce que chaque section apporte :
```latex
The rest of the paper follows this argument.
Section~\ref{sec:related} reviews work on factuality, instruction
following, and creativity, and identifies what each line of work already
checks. Section~\ref{sec:framework} defines the truth contract and the rule
that assigns a label to each claim. Section~\ref{sec:methodology} examines
53 selected evaluation resources to see which fields of the contract they
already represent. Section~\ref{sec:examples} applies the rule to four
constructed examples. Section~\ref{sec:agenda} proposes the studies needed
to test the framework, and Section~\ref{sec:discussion} discusses what the
labels mean and the limits of the proposal.
```

---

## 2. Related Work

### #4 — l. 410–415 — « en quoi le truth contract présenté ici est différent du nôtre ? »
« The truth contract proposed here » se lit comme s'il s'agissait d'un contrat de FActScore/VeriScore. Il faut dire ce que ces méthodes font, ce qu'elles ne font pas, et ce que nous ajoutons.
```latex
These checking procedures can be reused in our framework to decide whether
the reference supports a claim. An evaluation protocol must still specify
which sources count as reference evidence and how to tell a contradiction
from missing evidence. Neither FActScore nor VeriScore, however, records
whether the task allows the response to go beyond the reference. Our truth
contract (Section~\ref{subsec:contract}) adds this information as a
separate field, the permission scope. Adding it does not change the
evidence check: a claim that the reference neither supports nor
contradicts stays that way, even when the task allows it.
```

### #5 et #6 — l. 626–632 — « introduire "controlled creativity" ou enlever » / « introduire ou enlever cette phrase »
« Controlled creativity » est le titre officiel de la tâche (page CLEF 2026 : *« Controlled Creativity: Identify and avoid hallucination »*). On peut donc l'introduire proprement. La phrase sur l'inventaire doit dire *pourquoi* ces deux travaux sont hors des 53 ressources, ou disparaître.
```latex
SimpleText 2026 Task~2, titled ``Controlled Creativity,'' asks systems to
identify and avoid hallucination when simplifying scientific text. It
separates the detection of new content, the classification of information
distortions, and grounded generation with or without explicit source
attribution \citep{simpletext_task2_2026}. Despite its title, the task
treats content absent from the source as an error to detect, not as
content the task permits. Neither StoryScore nor SimpleText is part of the
53 resources analyzed in Section~\ref{sec:methodology}[, because ...].
```
Si la raison est la date de publication (après la sélection), la compléter ; sinon, supprimer la dernière phrase.

---

## 3. Framework

### #7 — l. 678–684 — définition du claim, « reformuler, pas clair »
Le commentaire porte sur l'ancienne définition (commentée l. 679). La nouvelle (« declarative utterance… propositional content… explicit assertion ») est plus jargonneuse et contredit le cadre : un claim *proposé comme possibilité* n'est pas une assertion. Proposition qui définit par le rôle et justifie l'unité :
```latex
We evaluate the individual \emph{claims} in the response generated by the
model. A claim is one piece of information that the response states or
proposes about an object, a person, or an event. A claim can be compared
with evidence: the evidence may support it, contradict it, or say nothing
about it. A claim does not have to be presented as a fact; the response
may also propose it as a possibility or tell it as part of a story.
One sentence can contain several claims: ``The stone was found near
Rosetta in 1799'' gives a place and a date, which can be checked
separately. We use the claim as the unit of evaluation because one
response often mixes supported facts, permitted additions, and errors; a
single label for the whole response would hide this mix. Claims are
recovered in context so that their meaning and their presentation as fact,
possibility, or fiction are preserved.
```

### #8 — Figure 2, l. 784–785 (+ boîtes Γ et μ, l. 798 et l. 801) — « "You can add some plausible information clearly marked as hypothesis" »
```latex
    Keep historical statements faithful to the text fragment. Where it is
    silent, you may add plausible reconstructions, clearly marked as
    hypotheses.''};
```
```latex
    {$\Gamma$ \emph{permission scope}\\plausible historical\\reconstructions};
```
```latex
    {$\mu$ \emph{required status marking}\\reconstructions marked\\as hypotheses};
```
Cohérence : le texte alterne *conjecture / hypothesis / possibility*. Je propose de garder *possibility* dans la prose et *hypothesis* dans les prompts (l. 713 « as a conjecture » → « as a possibility » ; l. 1765 « conjecture cue » → « possibility cue »).

### #9 — l. 913–925 — « J'enlèverais ce paragraphe… il faut supposer que l'oracle est correct »
Supprimer l. 922–925 et rendre l'hypothèse explicite dans le paragraphe précédent (voir D1 pour la cascade).
```latex
In the museum example, the oracle uses only the constructed reference
fragment. That fragment does not specify where the complete stele stood,
so the proposed temple-entrance placement is \textsc{unknown}. A different
reference can give a different evidence state, as Example~A in
Section~\ref{sec:examples} illustrates. Permission to invent does not
change what the designated reference establishes.

Throughout this paper, we assume that the oracle is correct: it returns the
right evidence state for every claim. This assumption lets us focus on how
the evaluator then applies the permission scope and the required status
marking. Building oracles that approach this assumption in practice is part
of the research agenda (Section~\ref{sec:agenda}).
```

### #10 — Tableau 1, l. 985 — « Oracle » (sur « supplied data »)
Elöd signale un chevauchement : les données fournies sont de l'évidence de référence, donc côté oracle. Proposition : les documents fournis restent dans *p* (ils font partie de l'entrée) mais c'est *O* qui les désigne comme référence. À reporter aussi l. 715–716.
```latex
$p$ & Task context: prompt, instructions, dialogue history, domain constraints, and supplied documents\\
$O$ & Task oracle: reference evidence (for example, documents supplied in $p$) and checking procedure; for text, claim extraction, recovery, and verification\\
```
Variante plus simple si Elöd préfère : retirer « supplied data » de *p* et l'écrire seulement dans *O*.

### #11 et #12 — l. 1020–1032 — « dans la réponse, la source, où ? » / « cela vient d'où ? »
Les deux exemples ne disent pas qu'ils sont des phrases de réponse. Proposition en puces, avec un exemple hors musée pour le discours rapporté :
```latex
Recovery must preserve the original meaning, including who is speaking,
dates, quantities, negation, and words that change what is claimed. Two
cases show why:
\begin{itemize}
\item \emph{Reported content.} If a response says ``Some sailors believed
that the ship was cursed,'' the recovered claim is that some sailors held
this belief, not that the ship was cursed.
\item \emph{Statements about the source.} If a response says ``The museum
text does not say where the complete stele stood,'' the claim concerns the
source, not the stele. The oracle checks whether the source is indeed
silent on the placement; it checks a placement only if the response also
states or proposes one.
\end{itemize}
When an introduction or heading presents a passage as fiction or as a
possibility, recovery keeps this context with the claim.
```

### #13 et #14 — l. 1034–1042 — « ?? » sur « three scripts » et « components (claim, text fragment ?) »
« Components » n'est pas défini et « the three scripts » arrive sans référent. On nomme les claims de la figure et on explique pourquoi ils seraient séparés.
```latex
Not every phrase contains a claim: ``Now imagine the scene'' simply invites
the reader to imagine and is not evaluated. Recovery must also avoid
missing claims, adding content absent from the response, or merging
details that need separate judgments. For readability,
Figure~\ref{fig:claim-label-annotation} merges some details: the place and
date of discovery form one claim ($q^*_1$), and the three scripts of the
decree form another ($q^*_2$). In an actual annotation, each detail would
be a separate claim, because the reference could support one detail and
not the other, for example the date of discovery but not the place.
Appendix~\ref{app:diagnostics} lists these recovery errors. The next
section explains how the oracle checks the recovered claims against the
reference evidence.
```

### #15 et #16 — l. 1070–1082 — « il faut un exemple… normalement cela ne peut jamais arriver dans notre approche » / « clarifier avec un exemple »
Avec l'hypothèse d'oracle correct (#9), ces cas sortent du cadre. Supprimer l. 1070–1072 et réécrire le paragraphe de bilan sans « procedural failures », en nommant les claims :
```latex
At this stage, each recovered claim has its content $q^*$, the context
needed to interpret it, and its evidence state $\mathrm{ES}$. In
Figure~\ref{fig:claim-label-annotation}, the place and date of discovery
and the three scripts are \textsc{entailed}, the temple-entrance placement
is \textsc{unknown}, and the claim that the decree dates from 1799 is
\textsc{contradicted}. These states describe only the relation to the
evidence. The next section checks the same claims against the permission
scope and the required status marking.
```

### #17 et #18 — l. 1096–1103 — « Γ n'est pas un ensemble fini, comment vérifier l'appartenance ? » / « qu'appelles-tu "notation" ? »
Le texte laisse croire que Γ énumère des claims. Il faut dire que Γ est un petit ensemble de *règles*, donner des exemples, puis seulement la notation.
```latex
\paragraph{Permission check}
The permission scope $\Gamma$ is not a list of permitted claims. It is a
short set of rules taken from the task instructions
(Section~\ref{subsec:contract}). Each rule names a kind of content and the
evidence states in which this content may appear. For example:
\begin{itemize}
\item a museum task may allow plausible reconstructions of the stele's
original placement when the reference says nothing about it
(\textsc{unknown} claims);
\item an alternate-history task may allow the date of the decree to be
changed (\textsc{contradicted} claims);
\item a strict factual task has no such rule ($\Gamma=\varnothing$).
\end{itemize}
Checking permission means deciding whether one of these rules covers the
claim, as an annotator decides whether a sentence follows an instruction.
We write $(q^*,\mathrm{ES})\in\Gamma$ when a rule of $\Gamma$ covers the
recovered claim content $q^*$ in its evidence state $\mathrm{ES}$. The
evidence state is part of this test because a rule can allow a claim that
the reference leaves unknown without allowing one that the reference
contradicts: permission to reconstruct the placement does not include
permission to change the known date.
```
Le paragraphe suivant (l. 1105–1108) peut alors être réduit à sa dernière phrase, ou supprimé (il répète la première puce).

### #19 — l. 1114 — « que se passe-t-il si μ est vide ? »
Dépend de D2. Avec la convention recommandée :
```latex
\item \emph{Required status marking} $\mu$ comes from the task: how must
permitted content be presented? This is the status the response must
communicate.
```
puis, après la liste des deux records :
```latex
Some tasks say nothing about presentation. We then write $\mu=\varnothing$,
and the marking check is not applied: a permitted claim receives \LD{}
whatever its observed status marking.
```

### #20 et #21 — l. 1147–1151 — « n'est-ce pas un status marking plutôt que "heading" ? » / « présenter des exemples avec des prompts plus courts qui ne précisent rien »
**(a)** Elöd a raison : un titre « Hypothesis » *est* un marquage. La distinction à faire est entre le statut communiqué et la forme imposée.
```latex
A task may also prescribe a specific form of marking, for example a section
heading titled ``Hypothesis'' above each reconstruction. A heading is one
way to communicate status, but not the only one. If the response omits the
heading but writes ``One possibility is that...'', the status is still
communicated: the marking check passes, and the missing heading is
recorded as a separate formatting error. The marking check fails only when
the reconstruction is presented as a fact, with no heading and no other
cue. Example~C in Section~\ref{sec:examples} illustrates this difference.
```
**(b)** Exemples de prompts courts, à placer dans le paragraphe « Required status marking » de §3.1 (après l. 951), conditionnés à D2 :
```latex
Many prompts are short and specify neither permission nor marking. The
evaluator then derives the contract from the task type and records this
choice before evaluation:
\begin{itemize}
\item ``Summarize this article.'' The task permits no additions
($\Gamma=\varnothing$), so $\mu$ plays no role.
\item ``Write a short story set in ancient Egypt.'' The task permits
invented events and characters. The story itself presents them as fiction,
and no further marking is required ($\mu=\varnothing$).
\item ``Why might this experiment have failed?'' The task asks for possible
explanations, which the response should present as possibilities rather
than as established causes.
\end{itemize}
```

### #22 — l. 1179–1184 — « reformuler et clarifier »
Phrases cassées (« With "One possible reconstruction" so it receives… »). Proposition en puces, sans les codes de raison, qui ne sont définis qu'à la l. 1212 :
```latex
Figure~\ref{fig:claim-label-annotation} applies this rule to the museum task:
\begin{itemize}
\item The temple-entrance placement is \textsc{unknown}, the task permits
this reconstruction, and the words ``One possible reconstruction'' present
it as a possibility. It receives \LD{}. Had the response stated the
placement as a fact, the marking check would fail and the claim would
receive \Hall{}.
\item The claim that the decree dates from 1799 is \textsc{contradicted},
and the task does not permit changing the date. It receives \Hall{}.
Writing ``possibly'' before the date would not change this label: marking
cannot replace a missing permission.
\end{itemize}
```

### #23 — l. 1273–1275 — « sois plus précis, référence le sous-chapitre »
Ajouter un titre de paragraphe dédié en annexe (scinder l. 2040 : `\paragraph{Recovery coverage}`) et y renvoyer.
```latex
The trace should also show which claims of the response were not
recovered. The paragraph ``Recovery coverage'' in
Appendix~\ref{app:diagnostics} defines this measure: the share of the
response's claims that the evaluator recovers. Coverage does not say
whether the response answers the whole task; that question is discussed
in Section~\ref{subsec:global}.
```

---

## 4. Resource Mapping

### #24 — l. 1284 — titre : « Existing hallucination datasets overview »
« Datasets » contredirait l. 1295–1296 (« A dataset alone is not enough ») et le mapping inclut aussi des ressources de créativité. Proposition proche de l'idée d'Elöd :
```latex
\section{Overview of Existing Evaluation Resources}\label{sec:methodology}
```

### #25 — l. 1296–1299 — « pas clair où est la réponse des LLM ici »
```latex
For CNN/DailyMail, for example, the corpus supplies news articles and
reference summaries. A model writes its own summary of an article, and the
QAGS metric judges this generated summary by checking whether it is
consistent with the article \citep{hermann_teaching_2015,wang_asking_2020}.
```

### #26 — l. 1337 — « c'est quoi ces "rubrics" ? »
Première occurrence : la définir ici, une fois pour toutes (le terme revient l. 1374, l. 1690, l. 1846 et dans le tableau).
```latex
\item its task definition and scoring procedure are published, with
prompts, rubrics (the scoring criteria given to human or automatic judges),
or annotation guidelines when they exist;
```

### #27 — l. 1340–1345 — « on peut enlever ce paragraphe »
D'accord, mais garder la seule limite scientifique utile (pas d'estimation de prévalence) en fin du paragraphe précédent :
```latex
The selection aims to cover the range of permission scopes, not to list
every resource in the literature, so it does not measure how common each
design is.
```

### #28 — l. 1349 et l. 1360–1363 — « pas clair ce qu'est ce "unit" »
Définir à la l. 1349, puis réécrire la justification avec un cas concret :
```latex
For each resource, we record the \emph{evaluated unit}, that is, the part
of the output that the protocol scores: a final answer, a sentence, a
claim, a whole story, or a program. We then answer three questions, ...
```
```latex
The unit matters because a protocol checks only what it scores. If it
scores only the final answer to a question, the claims in the explanation
around that answer are never checked: a correct answer can come with an
invented justification.
```

### #29 à #33 — l. 1371–1383 — légende des symboles
Elöd : « contain at least one condition » ; « "status marking" ? » ; « requires a given presentation… pourquoi "protocol" et pas "task instructions" ? » ; « "accepts a presentation" pas clair » ; « no instructions or indications on the status marking ». Proposition intégrant ses formulations (avec D3 ; si les symboles sont gardés, remplacer simplement les mots en italique par les symboles) :
```latex
To keep the table short, each entry in the last two columns starts with a
short value, followed by a brief description:
\begin{itemize}
\item \textbf{Permission scope.} \emph{Stated}: the task instructions or
rubric contain at least one explicit condition on what the response may
add. \emph{Implied}: they contain no such condition, and we infer it from
the task type. PopQA, for example, never says that answers must not add
unsupported content, but a factual question with a single target answer
implies it \citep{mallen_when_2023}.
\item \textbf{Required status marking.} \emph{Checked}: the task
instructions ask for a given presentation, such as expressing uncertainty
when unsure, and the scoring checks it. \emph{Not checked}: the scoring
tolerates a presentation without asking for it, for example by not
penalizing a hedged answer, or the instructions ask for one that the
scoring does not check.
\item \textbf{Both columns.} \emph{None}: the protocol gives no instruction
or indication on this field. \emph{Per subtask}: the condition is set
separately for each subtask or query.
\end{itemize}
```
Caption du tableau 4 (l. 1484–1489) à aligner :
```latex
\caption{\textbf{Resource mapping by family.} Permission scope: Stated in
the task instructions, or Implied by the task type. Required status
marking: Checked by the scoring, or Not checked. None: no instruction or
indication on this field. Per subtask: set for each subtask or query.
Citations, abstention, and format appear under reference and check.}
```

### #34 — l. 1385 — « tu disais qu'aucune source ne couvrait les 3 conditions… » (commentaire tronqué)
Lecture : le constat (l. 1312–1316) arrive avant le critère qui le fonde, sans lien explicite. Proposition qui relie les deux :
```latex
Section~\ref{sec:methodology} opened with the observation that no selected
resource combines the three fields for the same claim. We now state the
criterion behind this observation. A resource applies the truth contract
when, for the same claim, it:
\begin{itemize}
\item records the evidence state of the claim, for example that the claim
is unknown in the reference;
\item states when the task permits an unknown or contradicted claim;
\item states which marking such a claim requires, and checks it.
\end{itemize}
A resource that never accepts an unknown or contradicted claim cannot meet
this criterion: its permission and marking checks can never change the
label of a claim. Section~\ref{subsec:gap} shows that none of the 53
resources meets it and discusses the closest cases.
```

### #35 — l. 1407–1408 — « pourquoi "this order" alors que le mixed est le dernier ? »
Expliquer que l'ordre des questions est un ordre de décision, pas l'ordre d'affichage :
```latex
We place each task category by asking three questions about its principal
task. The questions are asked in a fixed order, and the first positive
answer decides the family. Mixed suites are identified first because their
rules change from one subtask to the next, so the other two questions
cannot be answered for the suite as a whole. In the list below and in
Table~\ref{tab:resource-mapping}, they appear last because they combine
tasks from the other families.
```

### #36 — l. 1581–1589 — « pas clair » (« These rules can lead to a nonanswer »)
```latex
\paragraph{Supported content only}
These protocols check responses against reference evidence, but they score
units of different sizes: a supplied claim (ID~1), a sentence (IDs~10, 15,
and~18), a span (ID~23), or a final answer (e.g., IDs~3 and~5). When only
the final answer is scored, the other claims in the response receive no
evidence state. Some protocols also accept a response that gives no
factual answer: a hedged answer (IDs~2 and~4), or a statement that the
model cannot answer (IDs~15, 18, and~21). For example, when the supplied
passages do not contain the answer, ``The documents do not say'' is the
expected response. These rules decide whether to answer; they do not check
how each claim in an answer is presented.
```

### #37 — l. 1591–1603 — « flou, il faudra des exemples »
Un exemple concret par puce (exemples illustratifs, pas des items tirés des jeux de données) :
```latex
\paragraph{Regulated answers}
These protocols still expect supported content, but they add a rule about
how to answer. Intent evaluation (ID~24) checks the explicit constraints of
a request: a request for ``a vegetarian recipe without nuts'' excludes
some content even if it is true. The other categories regulate how the
answer is given:
\begin{itemize}
\item \emph{whether to answer}: declining to answer a question that has no
reliable answer (ID~27);
\item \emph{how confident the wording is}: writing ``probably'' when the
model is unsure (IDs~28--30);
\item \emph{where the content comes from}: citing the passage that supports
each statement (IDs~25 and~26);
\item \emph{which premise holds}: pointing out that ``Why did Einstein win
two Nobel Prizes?'' rests on a false assumption (ID~32), or answering under
a stated condition such as ``If the bridge had not been built, ...''
(ID~33).
\end{itemize}
```

### #38 — l. 1607–1608 — « claim / answer (?) » sur « its evaluation »
« Its » est ambigu. Expliciter l'unité :
```latex
Hedging can mark a claim as a possibility. For IDs~28--30, however, the
scoring compares the hedging of an answer with what the model is estimated
to know, not with the evidence state of the answer relative to a
designated reference.
```

### #39 à #41 — l. 1643–1650 — « rappeler les références » / « ref » / « ref »
```latex
\item HalluRAG \citep{ridder_hallurag_2025} and ALCE \citep{gao_alce_2023}
check evidence for sentences or statements. ...
\item LoGU \citep{yang_logu_2025} distinguishes factual correctness from
selective uncertainty for individual claims. ...
\item HIC-Bench \citep{yang_hicbench_2025}, NeoCoder
\citep{lu_benchmarking_2025}, and \citet{si_ideas_2025} evaluate new
content under task constraints, ...
\item TimeChara \citep{ahn_timechara_2024} checks a character's knowledge ...
```
Toutes les clés sont déjà utilisées dans le tableau 4.

### #42 et #43 — caption du tableau 5, l. 1660–1663 — « SotA methods approaching our proposal » / « enlever ou reformuler »
```latex
\caption{\textbf{State-of-the-art protocols closest to the truth contract.}
Each row shows what a protocol checks for each field of the truth contract.
``Not identified'': we found no such condition in the protocol. The last
row shows what the truth contract records for each claim.}
```

### #44 — l. 1683–1688 — « reformuler, décrédibilise notre approche »
Garder la limite (validation à faire), mais formuler d'abord l'apport, sans affirmer de supériorité :
```latex
These protocols show that each field of the truth contract already has
precedents, but in different tasks and for different units: a sentence, a
whole proposal, or a whole response. The truth contract brings the three
fields together for the same claim. An evaluation can then distinguish,
within one response, an error from an addition that the task permits and
that the response marks as required. Section~\ref{sec:agenda} describes
the studies needed to measure how reliably evaluators apply this
combination and what it adds to existing scores.
```

---

## 5. Examples

### #45 — caption de la figure 5, l. 1724–1725 — « enlever »
Supprimer « the sentence added in $O_2$ is a test input, not a historical assertion. » La phrase entière peut d'ailleurs partir : l. 1712 dit déjà que les evidence states sont stipulés.
```latex
... and the resulting label: G = grounded; H = hallucination;
LD = licensed divergence.}
```

### #46 — l. 1743–1744 — « enlever »
Supprimer : « The additional reference sentence supplies test evidence; it does not establish a historical fact about the original placement. »

### #47 — l. 1766–1769 — « non défini, qu'est-ce ? » (« Hypothesis heading »)
Avec la réécriture #20, le titre est défini en §3.4 ; on y renvoie et on dit ce qu'est l'exigence :
```latex
\par\textbf{Changed.} The first setting also requires each reconstruction
to appear under a section heading titled ``Hypothesis''
(Section~\ref{subsec:contract-checks}); the second requires no heading.
\par\textbf{Rule outcome.} The claim receives \LD{} in both settings,
because the words ``One possible reconstruction'' already present it as a
possibility. In the first setting, the missing heading is recorded as a
separate formatting error. This example shows why a claim label cannot
certify full instruction compliance. ...
```
À aligner dans l'introduction de la section (l. 1706–1708) : « but fails the additional requirement for a ``Hypothesis'' heading in one of them » → « but lacks the section heading titled ``Hypothesis'' that one of them requires ».

---

Source vérifiée pour #5 : page CLEF 2026 SimpleText (https://clef2026.clef-initiative.eu/labs/simpletext/), Task 2 « Controlled Creativity: Identify and avoid hallucination ».
