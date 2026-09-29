# Revue indépendante de `mainV5.tex` face à la base locale

Date : 28 septembre 2026  
Relecteur : agent en contexte neuf, GPT-5.6-sol ; rédaction de la révision courante par GPT-6. L’auteur et le modèle de rédaction de la base ne sont pas établis. Cette séparation ne certifie pas à elle seule le protocole Hermes `-m attack`.  
Nature : revue scientifique et éditoriale, sans modification des manuscrits

## Périmètre et méthode

La comparaison porte sur :

- la copie figée au début de la revue de `réécriture_papier/truth_contract_position_paper.tex` (2 227 lignes) ;
- `réécriture_papier/CL_elod_version/mainV5.tex` (2 309 lignes) ;
- les 31 fils attachés à `mainV5.tex` dans `CommentaireV2_review/MainV5.json`.

La base a été copiée dans `/tmp/truth_contract_position_paper.review_snapshot_20260928.tex` avant la comparaison afin que des modifications concurrentes du fichier de travail ne changent pas le référentiel de cette revue. Le diff brut contient 272 insertions et 190 suppressions. La version `mainV5` est manifestement collaborative : le JSON contient des commentaires d’Elod Egyed-Zsigmond, Mathis Carlesso, Martino Lovisetto et Pierre-Yves Genest. Les changements ci-dessous sont donc attribués à **la version `mainV5`**, pas à une personne déterminée.

Aucune recherche externe n’a été nécessaire pour constater les différences internes, les régressions de cohérence et les claims non étayés. Les références bibliographiques n’ont pas été réauditées source par source dans cette passe. Aucun manuscrit LaTeX n’a été modifié et aucune compilation n’a été lancée.

## Conclusion exécutive

`mainV5` contient quelques intentions éditoriales utiles, mais ne doit pas être fusionné en bloc. La base locale est globalement plus précise, plus prudente et plus cohérente avec la thèse du papier.

Décisions principales :

1. **Retenir et réécrire** les améliorations de navigation : annonce de la figure du musée, clarification de certains renvois, introduction explicite des cinq cas, titre plus descriptif de la sous-section de codage, et nouvelle figure des groupes de tâches.
2. **Écarter** les suppressions de garde-fous : ordre de fixation du contrat, gestion des instructions conflictuelles, impossibilité d’élargir le scope après génération, spécification reproductible de l’oracle, distinction entre `unknown` et échec d’évaluation, limites de la sélection et caractère non validé du mapping.
3. **Écarter** la série `decree → Rosetta stone`. Elle corrompt l’exemple : une stèle « bears a Rosetta stone from 196 BCE » n’a pas de sens, et la contradiction temporelle ne porte plus sur le décret. La version attribue en outre le fragment illustratif à Wikipedia alors que le texte reconnaît ailleurs qu’il ne s’agit pas d’une citation documentée.
4. **Écarter** le renommage partiel de l’état d’évidence de `$E$` vers `$ES$`. `mainV5` laisse encore `$(q^*,E)` dans la définition de `\Gamma`, ce qui crée deux notations concurrentes sans bénéfice conceptuel.
5. **Conserver la distinction entre le contexte et sa projection contractuelle** : `$p$` peut légitimement désigner le contexte complet ; `$\TC(p)$` est la projection de ce contexte vers `(O,\Gamma,\mu)`. Il ne faut pas reprendre sans examen l’affirmation selon laquelle « p n’est pas un task context ».
6. **Suspendre toute décision sur la règle des labels**. `AGENTS.md` réserve la licensed divergence aux états `unknown`, alors que les deux manuscrits autorisent aussi certaines contradictions explicitement permises et marquées. Cette contradiction a été soumise à l’utilisateur et ne doit pas être tranchée dans cette revue.

## Point bloquant à décision humaine : contradicted et licensed divergence

Les sources internes ne donnent pas la même règle :

- `AGENTS.md` : `contradicted → hallucination` ; seul `unknown` peut devenir licensed divergence si le scope et le marking sont satisfaits ;
- base figée et `mainV5` : les lignes de décision « Unknown or contradicted » soumettent les deux états au permission scope et au required status marking ; un alternate-history task peut donc produire une licensed divergence tout en conservant l’état `contradicted`.

Je ne recommande ici ni l’une ni l’autre branche. Une fois la décision humaine prise, il faudra la propager ensemble dans l’abstract, la prose, l’équation de scope, la table de décision, les figures, les cas et les annexes. Une correction locale créerait une incohérence scientifique.

## Revue par groupe de changements

### G1 — Figure d’ouverture : `excerpt` devient `fragment`

**Décision : retenir seulement le terme neutre, après correction de la provenance.**

`fragment` peut éviter de laisser croire à une citation longue ou exacte. Cependant, `mainV5` conserve « Wikipedia article “Rosetta Stone” » et remplace dans le pseudo-extrait `decree` par `Rosetta stone`. Le papier dit simultanément que le passage n’est pas une citation directe documentée. Il faut choisir une provenance honnête : soit un extrait vérifié et cité exactement, soit un **illustrative source passage** construit, sans attribution à Wikipedia ni hyperlien présenté comme source du texte.

### G2 — Régression factuelle `decree → Rosetta stone`

**Décision : écarter intégralement.**

Les changements touchent la figure d’ouverture, le framework, la récupération de claims, la table de décision, la grande figure, le cas E et les explications. La phrase « bears a Rosetta stone from 196 BCE » remplace à tort le décret par l’objet lui-même. « The Rosetta stone dates from 1799 » confond date de découverte et date de production ; l’exemple de contradiction de la base portait clairement sur « The decree dates from 1799 » face au décret de 196 BCE. La régression détruit la logique du test et doit être retirée partout, de manière atomique.

### G3 — Caption de la première figure

**Décision : retenir la précision “the same generated text”, reformuler le reste.**

Cette précision répond bien à l’ambiguïté « comparaison de quoi avec quoi ? ». La caption de `mainV5` reste toutefois grammaticalement inégale (« With the creative task ») et commente la phrase sur le requested style au lieu de la garder visible. La version finale devrait nommer explicitement les invariants et la variable : même source, même réponse et même marking ; permission scope différent entre deux prompts.

### G4 — Contributions et roadmap

**Décision : garder la base, avec une clarification locale.**

`mainV5` introduit « analyzed resource sand », « trhough 5 », un chiffre arabe isolé et une phrase surchargée. Le remplacement de « asks whether » par « studies whether » renforce aussi le statut empirique : le papier propose un agenda, il ne conduit pas encore ces études. La base est plus calibrée. Une reformulation peut préciser « comparison of forty-one selected resources » et « five constructed cases » sans reprendre les erreurs de `mainV5`.

### G5 — Ouverture du framework et transition vers l’exemple

**Décision : retenir l’intention, réécrire.**

Le renvoi à la figure du musée et l’annonce d’une source de référence répondent aux fils demandant davantage de contexte. En revanche, « The reference tells us what can be considered as grounded » est moins précis que la séparation entre evidence, permission et marking ; « with regards to » est lourd ; « claim and source are the same » mélange le claim avec la preuve. Conserver la base conceptuelle et ajouter une phrase d’orientation vers la figure suffit.

### G6 — Définition du truth contract et relation entre `$p$` et `$\TC(p)$`

**Décision : conserver le modèle de la base et expliciter la projection.**

`mainV5` dit correctement que le truth contract est une fonction du contexte complet, puis liste ses champs avant l’équation. Le commentaire « p n’est pas un task context, TC(p) l’est » n’est pas convaincant : si `$p$` est le contexte complet, `$\TC(p)$` est sa projection contractuelle, pas le contexte lui-même. La formulation recommandée est conceptuellement : « Let `$p$` denote the complete task context. The truth contract projects the evaluation-relevant conditions of `$p$` into `$\TC(p)=(O,\Gamma,\mu)$. » L’ordre liste/équation est une préférence de lecture, pas un changement scientifique.

### G7 — Fixation du contrat et instructions conflictuelles

**Décision : écarter les suppressions de `mainV5`.**

`mainV5` commente l’interdiction d’ajuster le contrat après lecture de la sortie, remplace la procédure en cas d’instructions conflictuelles par l’hypothèse qu’elles sont cohérentes, et commente l’interdiction d’élargir le scope après génération. Ces suppressions ouvrent précisément la porte à un relabeling opportuniste. Elles réduisent la falsifiabilité et la reproductibilité du cadre. La base doit rester.

### G8 — Définition de l’oracle

**Décision : garder la base ; ajouter une clarification courte sur l’implémentation.**

La base définit déjà l’oracle textuel comme couvrant extraction, recovery et verification. `mainV5` ajoute « an response of an LLM », « canonical claim content », puis commente que les oracles non textuels n’ont pas besoin d’extraire des claims. Il supprime surtout l’explication selon laquelle l’oracle peut lire le contexte sans transformer une permission d’inventer en preuve. Cette phrase est essentielle. On peut clarifier que l’oracle ou son implémentation peut être humain, automatique ou hybride, mais il ne faut pas réduire l’oracle à une boîte noire supposée correcte.

### G9 — Reproductibilité de l’oracle et échecs procéduraux

**Décision : écarter les suppressions ; écarter l’hypothèse d’un oracle correct.**

`mainV5` commente la nécessité de spécifier sources, versions, conditions d’usage, temporalité et conflits. Il remplace ensuite la distinction entre `unknown` et échec d’évaluation par « We suppose that the oracle is correct ». Cette hypothèse masque les erreurs que le cadre doit justement rendre observables. La base sépare correctement : un oracle appliqué avec succès peut retourner `unknown`; une source inaccessible, un conflit non résolu ou un claim ambigu produit un échec et laisse le claim non labellisé.

### G10 — Notation `$E$ → $ES$`

**Décision : écarter.**

Le renommage n’est pas complet : `mainV5` conserve `$(q^*,E)\in\Gamma` et `$(q^*,E)\notin\Gamma` dans la définition, mais utilise `$ES$` dans la table. Cette incohérence est plus coûteuse que l’éventuelle lisibilité gagnée. `$E$` est déjà défini sans ambiguïté dans la table de notation.

### G11 — Claim trace et agrégation

**Décision : conserver la base et compléter proprement.**

`mainV5` remplace une définition complète par un placeholder littéral « For example, ... » et retire recovery coverage et les evaluation failures. Ces suppressions sont inacceptables. Le commentaire demandant une définition formelle et un exemple est néanmoins pertinent : une future révision peut donner le schéma du claim trace puis renvoyer à la figure 2 pour une instance concrète. La proposition doit distinguer la décision de permission `$\Gamma$` de l’observed marking `$\widehat m$`; « permission scope and marking decisions (`$\widehat m$`) » les mélange.

### G12 — Requested style, observed style et place de l’encadré

**Décision : conserver la frontière visuelle dans la figure et renforcer la sous-section style.**

La mention « Outside the truth contract » est utile exactement là où la figure montre les trois champs du contrat. La déplacer entièrement ferait perdre cette lecture locale. La sous-section style peut la reprendre et l’expliquer. Les changements grammaticaux de `mainV5` (« styles », « metaphors », « The exemple Case E ») n’apportent pas de gain. Le requested style ne doit jamais être reformulé comme permission.

### G13 — Related work : FactCC et claims de fiabilité

**Décision : garder la base.**

Le déplacement de la citation FactCC produit une apposition non ponctuée et ne change pas le fond. Plus grave, `mainV5` commente la phrase prudente « Whether our separation ... can be applied reliably remains to be tested. » Cette limite doit rester. Aucun résultat présenté dans le papier ne démontre encore la fiabilité de cette séparation.

### G14 — Créativité, qualité, factualité et “usefulness”

**Décision : écarter le paragraphe ajouté par `mainV5`.**

La base distingue proprement permission, qualité créative, factualité et informativeness. `mainV5` introduit sans démonstration que « these papers » définissent permission et “usefulness”, avec une citation placée après plusieurs phrases, et emploie « liked by a human evaluator » comme substitut imprécis à une évaluation de qualité. Sans audit source par source, cette attribution ne doit pas entrer dans le manuscrit.

### G15 — Portée du resource mapping

**Décision : écarter les généralisations et conserver les limites de la base.**

« This list covers LLM hallucination datasets found at the time of writing » suggère une couverture de champ que la méthode de découverte ne documente pas. Le papier revendique une purposive mapping, pas une revue exhaustive ni une prevalence estimate. `mainV5` commente aussi « It does not test whether our labeling rule works in practice » et la limite sur l’absence de procédure de sélection. Ces phrases doivent rester visibles.

### G16 — Catégories de tâches et titre de sous-section

**Décision : retenir le titre, écarter le texte incomplet.**

`Resource analysis criteria` est plus informatif que `What the Coding Records`, bien que `Coding dimensions and descriptive results` serait encore plus exact. En revanche, la phrase « factuality evaluation, intent evaluation, intent evaluation, tool use ... TODO » est incomplète, dupliquée et non publiable. Le paragraphe de la base définit déjà les groupes et leur non-rôle dans la règle de labellisation.

### G17 — Description des six ressources sans oracle identifié

**Décision : conserver la base.**

« Six resources don't specify how factuality is evaluated » transforme un résultat de codage prudent (« the coding identifies none that establishes or contradicts claims ») en défaut attribué directement aux ressources. Cela va au-delà des preuves disponibles et emploie une contraction peu adaptée au registre académique. La base garde correctement l’incertitude du codage.

### G18 — Sous-section sur la variation de style

**Décision : retenir le nouveau titre et la nouvelle figure, après corrections scientifiques.**

`Style Variation as a Separate Observation` clarifie la fonction de la sous-section. La figure inline de `mainV5` est plus autonome que l’ancien cluster : elle indique que les positions ne sont pas quantitatives, donne des exemples et rappelle le besoin de vérification indépendante. Elle peut être retenue sous quatre conditions :

1. conserver comme invariants le **claim content** et l’**observed status marking**, en plus du contrat ; `mainV5` remplace à un endroit claim content par permission scope, ce qui ne définit plus une variation de style seule ;
2. ne pas présenter la boîte rouge des factual tasks comme preuve d’une lacune générale hors de la sélection ;
3. garder explicitement « current coding » et « needs independent verification » ;
4. vérifier la lisibilité de la police après compilation, la figure utilisant beaucoup de texte en `\footnotesize`.

### G19 — Introduction des cas

**Décision : retenir la phrase d’introduction, compléter localement chaque cas.**

« We present five cases » répond partiellement au commentaire demandant une entrée moins brusque. Le singulier français `Exemple` doit effectivement devenir l’anglais `Examples`, pas `Exemples`. Chaque cas peut commencer par une phrase indiquant sa variable manipulée avant les blocs Purpose/Fixed/Changed. Les cas doivent rester annoncés comme construits, pas comme sorties expérimentales.

### G20 — Cas A et macro de label

**Décision : retenir le contexte XSum, corriger la forme.**

Préciser que XSum est une ressource de summarization aide le lecteur. La formulation de `mainV5` a toutefois une apposition fautive et un espace avant le point. Pour le label, utiliser `\Grd{}` dans le texte, pas `$\Grd$`; la macro produit déjà du small caps textuel. La modification ne doit pas préjuger du conflit plus large sur les labels.

### G21 — Cas B et cas E

**Décision : retenir “context” pour B, écarter la régression de E.**

`factual context` décrit mieux ce qui change que `factual account`, à condition de rappeler que B modifie plusieurs conditions à la fois. Dans E, « decree on the Rosetta stone » peut préciser le support, mais toute substitution de la date du décret par la date de la pierre doit être annulée.

### G22 — Research agenda et table récapitulative

**Décision : reformuler l’ouverture ; conserver la table si elle reste une carte de lecture.**

Dire que l’agenda « contains three main questions » ne répond pas au commentaire « pas assez précis ». La précision attendue est le lien entre les trois questions et les sept priorités, avec unités, comparaisons et résultats attendus. La table a un intérêt si elle donne ce mapping en un regard ; si elle répète mot pour mot les paragraphes, elle doit être resserrée. Son intérêt est organisationnel, pas probatoire.

### G23 — Appendix : vocabulaire de codage et caption

**Décision : retenir les micro-clarifications après correction.**

« The task types are » peut introduire la liste, mais il faut garder « they do not rank them ». La nouvelle caption « resources with the selected purposive mapping values » est plus lourde et moins naturelle que la base. Conserver `resources in the selected purposive mapping`.

## Risques scientifiques et éditoriaux classés

### Critiques

- **Règle de labels contradictoire entre instructions et manuscrits.** Tant que la décision humaine n’est pas prise, toute consolidation de la table de décision est prématurée.
- **Corruption de l’exemple Rosetta.** Le remplacement de `decree` par `Rosetta stone` change l’objet daté et rend plusieurs claims faux ou incohérents.
- **Attribution non vérifiée à Wikipedia.** Le passage est présenté comme un fragment d’article alors que le manuscrit le décrit comme illustration non verbatim.
- **Suppression des mécanismes d’échec de l’oracle.** Supposer l’oracle correct empêche de distinguer ignorance de la source, erreur d’extraction et échec de procédure.
- **Généralisation de la sélection.** `mainV5` transforme un échantillon purposif en couverture implicite des datasets disponibles, sans procédure de recherche documentée.

### Élevés

- **Contrat ajustable après coup.** Les suppressions sur l’ordre de fixation et l’élargissement post-génération affaiblissent le concept central.
- **Claim de littérature non audité.** Le paragraphe sur permission/usefulness attribue des notions aux articles cités sans ancrage précis.
- **Test de style mal défini.** Remplacer l’invariant claim content par permission scope autorise des différences sémantiques entre versions.
- **Notation mixte `$E$`/`$ES$`.** La formalisation de `\Gamma` et la table de décision n’emploient plus le même symbole.
- **Placeholder publié.** « For example, ... » et le `TODO` des catégories rendent `mainV5` non soumissible en l’état.

### Modérés

- Renforcement non justifié de « asks » vers « studies » dans le research agenda.
- Effacement de limites explicites sur la fiabilité du claim recovery et sur la validation du coding.
- Plusieurs phrases de `mainV5` ont une grammaire ou une terminologie instable (`an response`, `result result`, `exemple`, `wether`, `resource sand`, `trhough`).
- La nouvelle figure de groupes peut devenir illisible à la taille finale et nécessite une vérification visuelle.

## Couverture des 31 fils de `MainV5.json`

Le tableau suivant couvre chaque fil attaché à `mainV5.tex`. Le fil 23 est tronqué dans le JSON après « Remplacer les noms de catégories pa... » ; aucune fin n’est reconstruite.

| Fil | Demande synthétique | État dans `mainV5` | Décision de revue |
|---:|---|---|---|
| 1 | « comparaison de quoi avec quoi ? » | Roadmap réécrite, mais avec typos et objet encore vague | Reformuler : comparaison de 41 ressources sélectionnées selon les champs du contrat |
| 2 | « examples » | Ajout de « 5 constructed cases » | Retenir en toutes lettres et préciser qu’ils ne sont pas expérimentaux |
| 3 | appréciation générale + typos | Plusieurs nouvelles typos | Corriger avant toute reprise ; aucun changement scientifique demandé |
| 4 | début du framework trop brusque ; quelle référence ? | Nouvelle phrase sur la référence | Retenir l’intention, définir explicitement le passage source illustratif |
| 5 | déplacer au début de section | Contexte partiellement déplacé | Garder une phrase d’orientation au début du framework |
| 6 | transition entre deux paragraphes | Transition toujours faible | Relier séparation evidence/permission au musée par une phrase causale |
| 7 | davantage de contexte | Renvoi à la figure ajouté | Retenir le renvoi, sans alourdir |
| 8 | détailler | Exemple du musée légèrement développé | Préciser invariants et variable changée plutôt que multiplier les phrases |
| 9 | clarifier `departures` | Terme maintenu | Définir une fois comme « content not established by the reference evidence » ; garder ensuite le terme technique si utile |
| 10 | trop d’éléments non introduits par rapport aux trois composants | Composants déplacés avant l’équation | Retenir la progression, sans supprimer les garde-fous qui suivent |
| 11 | `deviation ?` | Aucun traitement net | Employer `departure from the reference evidence`, défini explicitement |
| 12 | « p n’est pas task context, TC(p) l’est » | `mainV5` dit que TC est fonction de p | Ne pas reprendre l’objection telle quelle : p = contexte ; TC(p) = projection contractuelle |
| 13 | reformuler la temporalité après appel LLM | Hypothèse de cohérence ajoutée | Conserver surtout « fixed before reading the response » et interdire l’ajustement post hoc |
| 14 | phrase jugée sans intérêt | La phrase sur contraintes externes reste | Garder seulement si le scope réglementaire est assumé ; sinon resserrer, sans retirer les garde-fous centraux |
| 15 | l’oracle évaluant une réponse doit extraire les claims | `mainV5` ajoute « capable of extracting » | La base le dit déjà ; clarifier qu’il s’agit du cas textuel |
| 16 | redondance | Phrase sur prompt/oracle commentée | Restaurer la distinction, qui évite de confondre permission et preuve |
| 17 | oracle trop détaillé / souhait de boîte noire | Détails de reproductibilité commentés | Écarter : une boîte noire non spécifiée rend le cadre non reproductible ; resserrer la prose, pas le contenu |
| 18 | notion introduite sans explication | Ajout d’une hypothèse d’oracle correct | Écarter ; définir les procedural failures et les distinguer de `unknown` |
| 19 | enlever puis déplacer vers style | Élément « Outside the truth contract » reste dans la figure | Le garder dans la figure et l’expliquer aussi dans la sous-section style |
| 20 | définir formellement le claim trace avec exemple figure 2 | Placeholder « For example, ... » | À faire proprement ; restaurer la définition complète et ajouter schéma + renvoi |
| 21 | « As presented in figure 2 » | Renvoi absent à cet endroit | Ajouter un renvoi local dans le paragraphe claim trace |
| 22 | evaluator : humain ou programme ? | Non clarifié localement | Dire humain, automatique ou hybride, conformément à la définition existante de l’oracle |
| 23 | catégories peu claires ; décrire identification ; suite tronquée | TODO incomplet et catégorie dupliquée | Écarter `mainV5`; conserver les définitions de la base et documenter la procédure réelle seulement si disponible |
| 24 | lister les ressources dans le corps | Nouvelle figure donne quelques exemples et numéros | Retenir la solution intermédiaire : groupes + exemples + renvoi aux tables ; éviter 41 noms dans la prose |
| 25 | « lesquels ? » / préciser | Base et `mainV5` indiquent rows 37–41 | Considérer répondu ; nommer aussi les types de checks concernés |
| 26 | déplacer en perspectives/research agenda | Paragraphe de limite reste sur place | Garder une limite courte dans mapping, développer la question empirique dans agenda |
| 27 | homogénéiser label/nombre et employer des chiffres | Non traité | Standardiser toutes les phrases de résultats sur un patron unique après validation des comptes |
| 28 | introduire chaque cas A–E | Introduction globale seulement | Ajouter une phrase de cadrage propre à chaque cas |
| 29 | changer la police | Label passé à `$\Grd$` | Utiliser `\Grd{}` en mode texte ; vérifier la police compilée |
| 30 | agenda pas assez précis | « asks » devient « contains » | Non résolu ; relier les 3 questions aux 7 priorités et aux tests proposés |
| 31 | intérêt du tableau d’agenda | Caption légèrement reformulée | Conserver seulement comme carte questions → priorités ; resserrer s’il duplique la prose |

## Ordre recommandé pour une intégration ultérieure

1. Obtenir la décision humaine sur le traitement de `contradicted`.
2. Restaurer un exemple Rosetta cohérent et une provenance honnête.
3. Restaurer tous les garde-fous sur la fixation du contrat, l’oracle et les échecs procéduraux.
4. Revenir à une notation d’état d’évidence unique.
5. Intégrer seulement les améliorations éditoriales retenues : transitions, renvois, titres, cas et figure de groupes.
6. Résoudre les 31 fils avec une réponse explicite par fil, y compris les refus argumentés.
7. Faire ensuite un audit de citations ciblé sur les claims ajoutés ou déplacés, puis une compilation et une vérification visuelle des figures.

## Verdict global

La version `mainV5` est une bonne source de **questions de relecture** et de quelques idées de présentation, mais une mauvaise source de remplacement textuel global. Les apports les plus prometteurs sont la nouvelle figure des groupes de tâches, l’introduction plus explicite des cas, certains renvois et certains titres. Les suppressions de limites, la redéfinition implicite de l’oracle, la généralisation de la sélection, les changements Rosetta et la notation partielle doivent être rejetés. L’intégration doit rester sélective et subordonnée à la décision humaine sur la règle des labels.
