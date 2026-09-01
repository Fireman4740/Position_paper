# Synthèse vérifiable des commentaires Overleaf — `main_position.tex`

## Objet du document

Ce document fait le rapprochement entre les 31 fils de commentaires du fichier
`overleaf_comments_cl_soumission_main_tex_2026-09-01.json` et les passages du
manuscrit local `main_position.tex`. Il sert de support de vérification avant
toute modification du papier.

Le JSON décrit le fichier Overleaf comme `main.tex`; dans le dépôt local, les
positions `dataPos` correspondent directement à `main_position.tex`. Les lignes
indiquées ci-dessous sont donc les lignes du fichier local au moment de
l’extraction. Aucun passage de `main_position.tex` n’est modifié par ce
document.

Le JSON contient 31 fils et 32 messages. Tous les messages sont attribués à
Mathis Carlesso. Le second message du fil 31 est explicitement marqué comme
tronqué (`possiblyTruncated: true`) et sa fin n’est pas reconstruite ici.

## Vue d’ensemble

| Partie du papier | Commentaires | Demande dominante |
|---|---:|---|
| Framework Overview | 01–08 | Simplifier l’explication de `q^*`, `m^*`, du span et de la règle, en réutilisant la pierre de Rosette. |
| Truth contract, claim recovery, labels, style | 09–19 | Clarifier les contraintes, les distinctions conceptuelles et l’utilité du paramètre de style. |
| Related Work | 20 | Mieux relier factualité et créativité. |
| Resource Mapping | 21 | Raccourcir la légende et le reading guide. |
| Worked Cases | 22–25 | Remplacer les exemples par celui de la pierre de Rosette et ajouter une transition. |
| Discussion | 26–31 | Raccourcir, sourcer et nuancer plusieurs passages; resserrer les limites. |

## 1. Framework Overview — commentaires 01 à 08

### Commentaire 01 — définition de `q^*`

- **Position:** `dataPos=23506`, lignes 450–452.
- **Passage attaché:**

  > The evaluator then canonicalizes the claim into two components. The normalized content $q^*$ records what is claimed, including entities, predicates, negation, quantities, and temporal scope.

- **Commentaire brut:** « Mieux expliquer q* »
- **Ce qu’il faut modifier ou vérifier:** expliquer `q^*` avec des mots plus simples et rattacher immédiatement la définition à l’exemple de la phrase sur la stèle complète près d’une entrée de temple. Le lecteur doit comprendre que `q^*` représente le contenu de l’affirmation, indépendamment de la manière dont elle est formulée.

### Commentaire 02 — définition de `m^*`

- **Position:** `dataPos=23634`, lignes 452–455.
- **Passage attaché:**

  > The observed status marking $m^*$ records how the response presents the claim, including epistemic modality and relevant discourse framing. Here, $m^*$ records that the placement is offered as possible rather than asserted as established.

- **Commentaire brut:** « expliquer avec des mots simple au exemple de concept est pas introduit. »
- **Ce qu’il faut modifier ou vérifier:** introduire `m^*` en langage simple, avec l’exemple de « one possible reconstruction ». Il faut rendre explicite que `m^*` décrit le statut présenté par la réponse — possible, hypothétique ou établi — et non le contenu factuel lui-même.

### Commentaire 03 — évidence inconnue

- **Position:** `dataPos=32023`, lignes 632–634.
- **Passage attaché:**

  > The excerpt neither entails nor contradicts the placement, so the evidence state is \textsc{unknown}.

- **Commentaire brut:** « reformule simplement n'utilise pas le nor »
- **Ce qu’il faut modifier ou vérifier:** reformuler en anglais simple et supprimer la construction avec `nor`. Le sens à conserver est que l’extrait ne permet ni d’établir ni de réfuter l’emplacement.

### Commentaire 04 — observation du status marking

- **Position:** `dataPos=32308`, lignes 635–639.
- **Passage attaché:**

  > Its observed status marking also satisfies the requirement to present that reconstruction as conjecture. The claim therefore receives the licensed-divergence label rather than the hallucination label.

- **Commentaire brut:** « Explique comment il observe de statu marking, exemple »
- **Ce qu’il faut modifier ou vérifier:** expliquer comment l’évaluateur repère le status marking dans la réponse. L’exemple à expliciter est le marqueur « one possible reconstruction », qui montre que l’emplacement est présenté comme une conjecture et satisfait donc `\mu`.

### Commentaire 05 — permission scope vide

- **Position:** `dataPos=32582`, lignes 641–646.
- **Passage attaché:**

  > Under the strict-grounding task in Figure~\ref{fig:prompt-to-claim}, the permission scope is empty. The same claim would therefore receive the hallucination label with reason code \textsc{out-of-scope}, even though its evidence state would remain \textsc{unknown}.

- **Commentaire brut:** « Pourquoi empty ? expliquer . donne exemple de strict-grounding mot simple »
- **Ce qu’il faut modifier ou vérifier:** expliquer pourquoi la permission scope est vide dans le cas de strict grounding et définir ce que cela autorise concrètement. Ajouter un exemple simple montrant qu’une reconstruction inconnue reste hors scope même si elle est formulée prudemment.

### Commentaire 06 — phrase sur le style

- **Position:** `dataPos=32837`, lignes 644–646.
- **Passage attaché:**

  > Requested and observed writing style are compared separately. Style neither creates nor excuses a truth-conditional claim.

- **Commentaire brut:** « Reformule supprime l'utilisation de \"nor\" »
- **Ce qu’il faut modifier ou vérifier:** reformuler la seconde phrase sans employer `nor`, en conservant l’idée que le style est évalué séparément et ne transforme pas une affirmation en contenu autorisé.

### Commentaire 07 — raccord avec la figure

- **Position:** `dataPos=33312`, lignes 652–657.
- **Passage attaché:**

  > The evaluator selects a \emph{response span}, that is, a contiguous stretch of the response treated as one unit of interpretation, typically a clause or a sentence. It recovers the contextualized claims to which the span commits.

- **Commentaire brut:** « raccroche a l'exemple figure 2 »
- **Ce qu’il faut modifier ou vérifier:** relier explicitement les deux étapes de préparation à l’exemple de la figure référencée par `\ref{fig:prompt-to-claim}` (appelée « figure 2 » dans le commentaire). Le lecteur doit voir comment le span de l’exemple produit le claim contextualisé, puis `q^*` et `m^*`.

### Commentaire 08 — exemples pour `\Gamma` et `\mu`

- **Position:** `dataPos=33717`, lignes 661–664.
- **Passage attaché:**

  > An \textsc{unknown} claim proceeds to two checks: whether $q^*$ falls inside $\Gamma$ and, if it does, whether $m^*$ satisfies $\mu$. The evaluator then assigns the claim label and, for a violation, its reason code.

- **Commentaire brut:** « Ajoute des exemples dériver de l'exemple de la pierre de rosette entre parenthèse. pour q* qui tombe dans gamma et m* dans mu »
- **Ce qu’il faut modifier ou vérifier:** ajouter, entre parenthèses ou dans une courte phrase, des exemples dérivés de la pierre de Rosette: un `q^*` autorisé par `\Gamma` et un `m^*` qui satisfait `\mu`. L’objectif est de rendre les deux tests successifs concrets.

## 2. Truth contract, claim recovery, labels et style — commentaires 09 à 19

### Commentaire 09 — conflit entre instructions

- **Position:** `dataPos=35406`, lignes 695–699.
- **Passage attaché:**

  > When instructions conflict, the evaluator must state the precedence of system and user instructions and how applicable safety, legal, and domain constraints bound the permission scope from outside. A user request cannot override those constraints by redefining the task oracle or permission scope.

- **Commentaire brut:** « préciser et reformule pas claire de ce qui cela veut dire »
- **Ce qu’il faut modifier ou vérifier:** reformuler ce passage de façon plus claire et préciser la procédure lorsque des instructions entrent en conflit. Il faut faire comprendre que l’évaluation doit d’abord déterminer quelles instructions s’appliquent, puis fixer la permission scope dans ces limites.

### Commentaire 10 — « quelles contraintes ? »

- **Position:** `dataPos=35635`, lignes 695–698.
- **Passage attaché:**

  > ... how applicable safety, legal, and domain constraints bound the permission scope from outside.

- **Commentaire brut:** « quelles contraintes ? préciser »
- **Ce qu’il faut modifier ou vérifier:** préciser ce que recouvrent les contraintes de sécurité, juridiques et de domaine dans le cadre proposé, ou expliquer pourquoi elles sont mentionnées ici. Toute précision ajoutée devra rester appuyée par le papier ou par une source vérifiée.

### Commentaire 11 — exemple de permission scope

- **Position:** `dataPos=37468`, lignes 732–740.
- **Passage attaché:**

  > Return to the clinical assistant of Section~\ref{sec:intro}, now asked to list candidate explanations of a patient's symptoms. The task lets the response raise a possible diagnosis the record does not establish, and forbids it to supply a drug dose the record does not contain.

- **Commentaire brut:** « réutiliser l'exemple de la pierre de rosette »
- **Ce qu’il faut modifier ou vérifier:** remplacer l’exemple clinique par l’exemple de la pierre de Rosette, afin de garder un exemple cohérent avec le reste du Framework Overview. L’exemple doit montrer, comme ici, un contenu inconnu qui est autorisé et un autre qui ne l’est pas.

### Commentaire 12 — séparation entre autorisation et valeur

- **Position:** `dataPos=38839`, lignes 749–756.
- **Passage attaché:**

  > Permission scope records authorization, not value. The check therefore asks what the task allows, not what is worth saying: ... Section~\ref{subsec:creativity} situates this separation against creativity evaluation, which scores value on its own terms.

- **Commentaire brut:** « sépration entre quoi et quoi préciser »
- **Ce qu’il faut modifier ou vérifier:** nommer explicitement les deux dimensions séparées: l’autorisation contractuelle d’introduire un contenu et sa valeur/utilité créative. Il faut éviter que le lecteur comprenne que `licensed divergence` signifie qu’une invention est utile, bonne ou vraie.

### Commentaire 13 — exemple de required status marking

- **Position:** `dataPos=39155`, lignes 758–768.
- **Passage attaché:**

  > In the clinical task above, ``this may be early Lyme disease, but serology is required'' satisfies the required status marking, while ``this is early Lyme disease'' does not. The observed status marking $m^*$ is recovered from the complete response and task context...

- **Commentaire brut:** « Utilise l'exemple de pierre de rosette au lieux de l'exemple médicale »
- **Ce qu’il faut modifier ou vérifier:** remplacer la paire clinique par une paire formulée à partir de la pierre de Rosette: une reconstruction signalée comme possible/conjecturale, opposée à la même reconstruction présentée comme établie. Conserver la distinction entre `m^*` observé et `\mu` requis.

### Commentaire 14 — claim extraction vs claim recovery

- **Position:** `dataPos=40143`, lignes 780–785.
- **Passage attaché:**

  > We reserve two terms for two different operations. \emph{Claim extraction} refers to existing methods that segment a response into checkable units; Section~\ref{subsec:extraction} reviews them. \emph{Claim recovery} refers to the broader, context-sensitive step that attributes claims to the response before canonicalization...

- **Commentaire brut:** « préciser plus la différence entre les deux »
- **Ce qu’il faut modifier ou vérifier:** expliciter la différence entre segmentation/extraction d’unités et récupération contextuelle de ce à quoi la réponse s’engage. Un exemple court devrait montrer qu’un même segment peut nécessiter le contexte pour déterminer le claim réellement exprimé.

### Commentaire 15 — rappel de `q^*` et `m^*`

- **Position:** `dataPos=40510`, lignes 787–796.
- **Passage attaché:**

  > Before claim verification, the evaluator canonicalizes each recovered claim into two components, $q^*$ and $m^*$. The component $q^*$ records normalized truth-conditional content. ... The component $m^*$ records observed status marking...

- **Commentaire brut:** « Faire un rappel plus court et simple avec les meme mots de la définition q* et m* line 450 - 460 »
- **Ce qu’il faut modifier ou vérifier:** raccourcir ce rappel et reprendre les mots simples de la première définition autour des lignes 450–460. Éviter de redéfinir `q^*` et `m^*` avec une formulation plus longue ou différente.

### Commentaire 16 — définition de « span »

- **Position:** `dataPos=42047`, lignes 817–820.
- **Passage attaché:**

  > Some spans yield no truth-conditional claim at all. Such a span receives no claim label, and the absence of a label is a normal outcome rather than one of the failures defined in Appendix~\ref{app:diagnostics}.

- **Commentaire brut:** « Rexpliquer simplement avec un exemple pour bien que le lecteur ce qu'est un span et le problème »
- **Ce qu’il faut modifier ou vérifier:** rappeler simplement ce qu’est un span, puis donner un exemple d’un segment qui ne contient pas d’engagement vérifiable. Expliquer pourquoi il ne reçoit pas de label et pourquoi cette absence n’est pas automatiquement une erreur.

### Commentaire 17 — evidence state et claim label

- **Position:** `dataPos=44493`, lignes 863–875.
- **Passage attaché:**

  > An evidence state describes the relation between a claim and the task oracle; a claim label describes the standing of that claim under the task. ... That is why a claim label carries a reason code and an evidence state does not.

- **Commentaire brut:** « explique cela dés la première a parisiton de "an evidence" »
- **Ce qu’il faut modifier ou vérifier:** introduire cette distinction dès la première occurrence de « evidence state », et non seulement dans ce passage récapitulatif. Le lecteur doit comprendre tôt que `entailed/contradicted/unknown` décrivent la relation à l’oracle, alors que le claim label intègre aussi la permission scope et le required status marking.

### Commentaire 18 — refus et méta-claim

- **Position:** `dataPos=47973`, lignes 926–930.
- **Passage attaché:**

  > An explicit refusal or a statement such as ``the available evidence is insufficient'' is evaluated as a meta-claim about the evidence. It is not automatically treated as asserting the embedded proposition.

- **Commentaire brut:** « Comprend ce passage il faut mieux expliquer et détailler »
- **Ce qu’il faut modifier ou vérifier:** expliquer plus clairement la différence entre une phrase qui parle de l’état de l’évidence et une phrase qui affirme la proposition intégrée. Ajouter un exemple simple de refus/abstention pour montrer pourquoi il ne faut pas le classer automatiquement comme hallucination.

### Commentaire 19 — utilité du paramètre de style

- **Position:** `dataPos=50429`, lignes 968–972.
- **Passage attaché:**

  > Because style is multi-dimensional, the three levels form a working discretization rather than a validated universal scale. The boundaries, especially between levels 1 and 2, require empirical validation.

- **Commentaire brut:** « Je pense que l'on devrait mieux argumenter son utilité et son lien avec LD ou dans métaphore peuvent etre des LD dans certain de claims extraction. Le but de se paramètre aussi d'evaluer les hallucination failfulness et que l'on montre dans les ressources que la fontrière entre fact et fiction est fin et qu'il faut un paramètre pour le déterminer pour pouvoir calibre nos système de détection des hallucination en fonction du style »
- **Ce qu’il faut modifier ou vérifier:** mieux justifier l’utilité de la variable de style et son lien avec `licensed divergence` et la récupération des claims. Le passage doit notamment clarifier qu’une métaphore peut ou non correspondre à une divergence autorisée selon le claim contextualisé, et expliquer en quoi un niveau de style aide à étudier la frontière entre formulation factuelle et formulation fictionnelle, ainsi qu’à tester/calibrer des détecteurs de factualité et de faithfulness. La justification doit rester présentée comme une motivation ou une hypothèse testable, pas comme un résultat déjà démontré.

## 3. Related Work — commentaire 20

### Commentaire 20 — factualité et créativité

- **Position:** `dataPos=52448`, lignes 999–1009.
- **Passage attaché:**

  > Factuality and source-faithfulness evaluation relate claims to evidence. Claim-level evaluation defines the unit of analysis. Instruction-following evaluation represents task constraints. Creativity research separately evaluates novelty, usefulness, and response quality. The truth contract addresses the remaining question for a claim that the task oracle leaves \textsc{unknown}.

- **Commentaire brut:** « Il y a un problème avec les taches qui nessaice de la factialité et de la creativté qui sont des caractéristiques etudier séparément alors qu'elle sont lier par essence »
- **Ce qu’il faut modifier ou vérifier:** mieux argumenter que les tâches de factualité/faithfulness et de créativité sont souvent traitées séparément alors qu’elles peuvent concerner le même contenu généré. Expliquer que le truth contract sert précisément à distinguer une invention autorisée d’une hallucination, tout en laissant la valeur créative être évaluée séparément.

## 4. Resource Mapping — commentaire 21

### Commentaire 21 — caption et reading guide

- **Position:** `dataPos=76416`, ligne 1466; le commentaire vise aussi la caption, lignes 1484–1502.
- **Passage attaché au point Overleaf:**

  > \textbf{Reading guide.} The horizontal placement groups nominal task profiles; it is not an ordinal permission scale. Vertical offsets prevent overlap and do not define ordered categories; ...

- **Caption concernée:**

  > \textbf{Selected resources by nominal task profile and treatment of requested style-marking level.} ... Positions, box sizes, colors, and overlaps do not encode measured distance, prevalence, model performance, or an ordinal permission scale.

- **Commentaire brut:** « Il faut réduire le texte dans la caption et reading guide faire plus simple et direct »
- **Ce qu’il faut modifier ou vérifier:** raccourcir simultanément le reading guide et la légende, en gardant uniquement les informations nécessaires pour lire la figure: placement horizontal nominal, décalage vertical purement graphique, traitement du style demandé, et absence de codage quantitatif. Les répétitions entre le reading guide et la caption sont les premières candidates à la suppression.

## 5. Worked Cases — commentaires 22 à 25

### Commentaire 22 — Case B

- **Position:** `dataPos=90258`, lignes 1748–1767.
- **Passage attaché:**

  > \paragraph{Case B (multi-factor): a contextualization boundary across historical and fictional frames} This case is not a single-factor contrast: changing the discourse frame also changes the task oracle, the permission scope, and the contextualized claim. ... The fixed string is ``Caf\'e Verdier existed in 1920s Paris.''

- **Commentaire brut:** « reprendre exemple pierre de rosette »
- **Ce qu’il faut modifier ou vérifier:** reprendre l’exemple de la pierre de Rosette au lieu de l’exemple construit du Café Verdier. Il faut toutefois conserver l’objectif de Case B: montrer qu’un changement de cadre discursif modifie le claim contextualisé, l’oracle et la permission scope.

### Commentaire 23 — Case C

- **Position:** `dataPos=91680`, lignes 1769–1785.
- **Passage attaché:**

  > \paragraph{Case C: changing the observed status marking} This controlled contrast restates the clinical pair from Section~\ref{subsec:contract}. ... ``This is early Lyme disease'' receives the hallucination label ... whereas ``this may be early Lyme disease, but serology is required'' receives the licensed-divergence label.

- **Commentaire brut:** « reutiliser plutot l'exemple de la pierre de rosette »
- **Ce qu’il faut modifier ou vérifier:** remplacer la paire clinique par une paire issue de l’exemple de la pierre de Rosette, en gardant constants `O`, `\Gamma`, `\mu`, le contenu `q^*` et l’état d’évidence, et en changeant uniquement le marquage observé `m^*`.

### Commentaire 24 — Case D

- **Position:** `dataPos=92673`, lignes 1787–1803.
- **Passage attaché:**

  > \paragraph{Case D: testing a scope boundary} This case continues the fiction task of Case~B ... ``Caf\'e Verdier stood on the rue de Seine'' against ``Ernest Hemingway drank at Caf\'e Verdier.''

- **Commentaire brut:** « reutiliser plutot l'exemple de la pierre de rosette si possible »
- **Ce qu’il faut modifier ou vérifier:** réutiliser la pierre de Rosette si cela permet de conserver clairement la frontière de `\Gamma`: une invention à l’intérieur du cadre autorisé contre une attribution réelle ou un contenu extérieur au scope. La structure du contraste doit rester inchangée.

### Commentaire 25 — transition vers l’agenda

- **Position:** `dataPos=95191`, lignes 1829–1831.
- **Passage attaché:**

  > Together, the cases isolate changes in the task oracle, discourse frame, observed status marking, permission scope, and surface realization. Their predictions define tests for the annotation and benchmark studies below.

- **Commentaire brut:** « ajoute un transition vers l'agenda de recherche »
- **Ce qu’il faut modifier ou vérifier:** ajouter une transition explicite entre les contrastes des Worked Cases et les priorités de la Research Agenda. La transition doit rappeler que les cas fournissent les hypothèses/tests que l’agenda va opérationnaliser, sans introduire une nouvelle contribution.

## 6. Discussion — commentaires 26 à 31

### Commentaire 26 — raccourcir « What Is Relative and What Is Not »

- **Position:** `dataPos=107746`, lignes 2050–2058.
- **Passage attaché:**

  > The term \emph{relative} has a restricted evaluative meaning in this paper. The truth of a proposition is not task-relative, but its classification as a contract violation can be. ... A licensed-divergence label records permission and compliant presentation; it does not establish the truth of the claim.

- **Commentaire brut:** « raccourcir ce passage »
- **Ce qu’il faut modifier ou vérifier:** resserrer ce rappel de la relativité évaluative. Conserver les deux idées indispensables: le contrat change l’étiquette d’évaluation et non la vérité de la proposition; `licensed divergence` indique une autorisation et un marquage conforme, pas une vérité établie.

### Commentaire 27 — source et explication dans le passage sur les bornes

- **Position:** `dataPos=108932`, lignes 2072–2087.
- **Passage attaché:**

  > These lower bounds concern what is unavoidable in principle; they do not describe current deployment error rates. Scale and recency are also not sufficient proxies for those rates. AA-Omniscience tests closed-book factual reliability ...

- **Commentaire brut:** « il faut source et explication »
- **Ce qu’il faut modifier ou vérifier:** ajouter ou vérifier les sources et expliquer le lien logique entre les bornes théoriques, les taux d’erreur en déploiement et l’observation empirique sur AA-Omniscience. Les claims sur l’insuffisance de l’échelle, de la capacité générale et de la récence comme proxies doivent rester précisément bornés par les sources disponibles.

### Commentaire 28 — détail sur AA-Omniscience

- **Position:** `dataPos=109114`, lignes 2074–2079.
- **Passage attaché:**

  > AA-Omniscience tests closed-book factual reliability by asking models to answer when confident and abstain otherwise. Its Omniscience Index subtracts incorrect from correct answers across all items. It also reports a benchmark-specific hallucination rate...

- **Commentaire brut:** « Pas besoin d'autant détailler »
- **Ce qu’il faut modifier ou vérifier:** réduire la description méthodologique d’AA-Omniscience à ce qui est nécessaire pour soutenir le point de la Discussion. Éviter de détailler l’index et le calcul du taux si ces détails ne sont pas indispensables à l’argument.

### Commentaire 29 — nuancer l’observation empirique

- **Position:** `dataPos=109497`, lignes 2080–2087.
- **Passage attaché:**

  > Its launch analysis found that contemporaneous overall capability did not reliably predict a low hallucination rate and that larger open-weight models did not consistently hallucinate less. An August 2026 leaderboard snapshot likewise shows wide dispersion ... We draw only this conclusion: scale, general capability, and recency are not sufficient proxies for factual reliability.

- **Commentaire brut:** « nunance ce n'ai qu'une observation simplifier le texte et raccourcir »
- **Ce qu’il faut modifier ou vérifier:** présenter ce passage comme une observation limitée, issue d’une analyse et d’un instantané de leaderboard, et non comme une loi générale ni comme une conclusion causale. Simplifier et raccourcir le texte en conservant cette nuance.

### Commentaire 30 — nécessité et longueur de « Response-Level Interpretation »

- **Position:** `dataPos=110650`, lignes 2100–2139.
- **Passage attaché:**

  > \subsection{Response-Level Interpretation} Appendix~\ref{app:diagnostics} defines the ordered content-verdict rule ... This subsection states what that record does \emph{not} establish ...

- **Commentaire brut:** « Je sais pas si cette partie est vraiment nessaire et doit etre aussi long »
- **Ce qu’il faut modifier ou vérifier:** décider si cette sous-section est nécessaire à la compréhension du papier; si elle est conservée, la raccourcir fortement. Garder seulement les garde-fous indispensables pour éviter de lire `contract-compliant`, `indeterminate`, la sévérité ou un score agrégé comme une mesure directe de vérité, de qualité globale ou de fiabilité.

### Commentaire 31 — limitations et safeguards

- **Position:** `dataPos=113095`, lignes 2141–2188.
- **Passage attaché:**

  > The proposal has seven immediate limitations. First, claim-level labels do not establish response-level validity, coherence, completeness, or relevance. ... The framework is a claim-centered evaluation procedure with a structured response-level interpretation; it is not a universal measure of truth, reasoning, creativity, usefulness, or safety.

- **Messages bruts:**

  1. « reduire au miniun les limites pour ne pas dénigrer notre travaille »
  2. « Montrer les limites de l'état actuelle de la recherche bien faire les différences entre nos potentie... » `[message tronqué dans le JSON]`

- **Ce qu’il faut modifier ou vérifier:** réduire la longueur et le ton auto-dépréciatif de la section. Faire clairement la différence entre les limites de l’état actuel de la recherche, les limites de la proposition elle-même et les extensions prévues. Conserver les limites nécessaires à une lecture honnête, mais éviter de présenter le cadre comme invalidé par le fait qu’il reste à valider.
- **Point non récupérable:** la fin du deuxième message n’est pas disponible dans le JSON; elle devra être vérifiée dans Overleaf si cette précision est nécessaire.

## Chevauchements à traiter lors de la future modification

1. **Définitions initiales et rappel:** les commentaires 01–02 demandent une première explication simple de `q^*` et `m^*`; le commentaire 15 demande que le rappel de la section Claim Recovery reprenne cette même formulation, en plus court.
2. **Règle d’évaluation:** les commentaires 03–08 portent sur un même enchaînement d’exemple. Une réécriture cohérente doit traiter ensemble `unknown`, `\Gamma`, `\mu`, le status marking et le raccord à la figure.
3. **Permission et marquage:** les commentaires 11 et 13 demandent de remplacer les deux exemples cliniques par la pierre de Rosette; il faut éviter de créer deux exemples Rosetta différents sans raison.
4. **Worked Cases:** les commentaires 22–24 demandent le même changement d’exemple pour les Cases B, C et D; il faudra vérifier que chaque cas conserve bien son facteur manipulé.
5. **Discussion empirique:** les commentaires 27–29 se recouvrent dans le même paragraphe. Ils appellent une seule révision: sourcer, raccourcir et présenter l’instantané comme une observation limitée.
6. **Discussion finale:** les commentaires 30–31 invitent à resserrer les garde-fous et les limites sans supprimer les distinctions nécessaires à la calibration scientifique du papier.

## Points à vérifier avant modification du `.tex`

- Confirmer dans Overleaf si la numérotation de `\ref{fig:prompt-to-claim}` correspond bien à la « figure 2 » mentionnée au commentaire 07.
- Vérifier dans Overleaf la fin du deuxième message du fil 31, tronqué dans l’export JSON.
- Pour toute nouvelle source demandée au commentaire 27, faire un audit bibliographique avant d’ajouter une citation; ne pas compléter une référence de mémoire.
- Après les modifications futures, relire les termes `truth contract`, `licensed divergence`, `form license`, `content license`, `q^*`, `m^*`, `\Gamma` et `\mu` pour éviter une dérive terminologique.
