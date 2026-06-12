# État de l'art : Le foregrounding en stylistique — des fondements théoriques à la stylistique computationnelle et aux LLMs

## TL;DR
- Le **foregrounding** (mise en relief ; tchèque *aktualisace*) désigne la proéminence psychologique d'éléments textuels obtenue par **déviation** (irrégularité inattendue) et **parallélisme** (régularité inattendue) ; sa validité empirique est établie (van Peer 1986 ; Miall & Kuiken 1994), mais **aucune taxonomie unifiée** ni annotation fine en contexte LLM n'existe à ce jour.
- Côté computationnel, le foregrounding s'opérationnalise via la **surprisal/perplexité** d'un modèle de langue, mais la recherche récente (2024-2026) montre que **surprise ≠ créativité** : il faut distinguer la **surprise non-anomale productive** (foregrounding) du bruit/anomalie (hallucination factuelle), distinction que les benchmarks actuels (LitBench, CreativityPrism, WritingBench) ne capturent pas finement.
- La lacune majeure pour un travail NLP/LLM : **absence de paramétrisation formelle distinguant la latitude stylistique (σ) de la fidélité factuelle (κ)** — cette dichotomie n'existe pas dans la littérature et constitue une opportunité de contribution originale.

---

## Key Findings

1. **Origine théorique convergente.** Le concept naît du formalisme russe (Chklovski, *ostranenie*/défamiliarisation, 1917) et est formalisé par l'École de Prague (Mukařovský, Havránek) ; le terme anglais « foregrounding » est la traduction par Paul Garvin du tchèque *aktualisace*. Mukařovský (1964 [1932]) le définit comme la **déautomatisation** : « foregrounding means the violation of the scheme ».

2. **Deux mécanismes canoniques** : déviation (« unexpected irregularity ») et parallélisme (« unexpected regularity »), opérant à plusieurs niveaux linguistiques (phonologique, graphologique, morphologique, lexical, syntaxique, sémantique, pragmatique).

3. **Tension théorique structurante** : foregrounding comme **déviation par rapport à une norme linguistique** (tradition formaliste/Leech-Short) vs. foregrounding comme **saillance cognitive/psychologique** chez le lecteur (tradition empirique Miall-Kuiken-van Peer-Hakemulder).

4. **Validation empirique solide mais ancienne** : van Peer (1986) et Miall & Kuiken (1994) établissent que la densité de foregrounding prédit les temps de lecture et les jugements de « strikingness » et d'affect, indépendamment de la compétence littéraire.

5. **Opérationnalisation computationnelle émergente** : la perplexité/surprisal d'un LLM permet de quantifier la défamiliarisation (Kurzynski 2026), mais la distinction cruciale est entre **surprise non-anomale** (productive) et anomalie/erreur.

6. **Schémas d'annotation du style en NLP fragmentés** : StylePTB (21 transferts fins), GYAFC (formalité), STRAP (transfert par paraphrase), TTCW (créativité), Creativity Index (nouveauté n-gramme) — aucun n'annote explicitement le foregrounding.

7. **Critique récente forte** : la nouveauté n-gramme est **nécessaire mais non suffisante**. Saakyan et al. (« Death of the Novel(ty) », arXiv 2509.22641), sur 8 618 annotations d'experts-écrivains, établissent qu'« approximately 91% of top-quartile n-gram novel expressions are not judged as creative, cautioning against relying on n-gram novelty alone ».

---

## Details

### 1. Fondements théoriques du foregrounding

#### 1.1 Origines : formalisme russe et École de Prague
Le foregrounding plonge ses racines dans le **formalisme russe** : Viktor Chklovski (Shklovsky) théorise en 1917 la défamiliarisation (*ostranenie*, « making strange ») — l'art renouvelle la perception en rendant les formes familières étranges, prolongeant et complexifiant la perception. Chklovski lie déjà la défamiliarisation à l'affect : les procédés stylistiques « emphasize the emotional effect of an expression ».

L'**École de Prague** transforme cette intuition en cadre scientifique. Jan Mukařovský (1891-1975), dans « Standard Language and Poetic Language » (1964 [1932]), définit le foregrounding comme le contraire de l'automatisation : « Foregrounding is the opposite of automatization, that is, the deautomatization of an act ; automatization schematizes an event ; foregrounding means the violation of the scheme. » Il observe que dans les textes littéraires, le foregrounding est **systématique et hiérarchique** (un ensemble de traits domine les autres), alors que dans le langage courant il est aléatoire. Bohuslav Havránek complète avec la différenciation fonctionnelle de la langue standard. Le terme « foregrounding » lui-même fut introduit en Occident par **Paul Garvin** comme traduction du tchèque *aktualisace*.

#### 1.2 Déviation et parallélisme
Les stylisticiens britanniques (Leech ; Leech & Short) codifient deux mécanismes :
- **Déviation** : irrégularité inattendue, violation d'une norme linguistique.
- **Parallélisme** : régularité inattendue, introduction de régularités supplémentaires (Leech 1969 : « the introduction of extra regularities… into the language »).

Leech (1969) distingue **huit types de déviation** : lexicale, grammaticale, phonologique, graphologique, sémantique, dialectale, de registre, et de période historique. On distingue aussi la **déviation primaire** (par rapport à la norme linguistique générale) de la **déviation secondaire** (par rapport aux normes de la composition littéraire, le « canon poétique » — aussi appelée *defeated expectancy*).

#### 1.3 Niveaux du foregrounding
La tradition stylistique reconnaît un foregrounding à tous les niveaux linguistiques :
- **Phonologique** : allitération, assonance, consonance, rime, mètre.
- **Graphologique** : typographie, italiques, capitales, espacement, ponctuation déviante (van Peer 1993, « Typographic foregrounding », *Language and Literature* 2(1):49-61).
- **Morphologique/lexical** : néologismes, dérivations inhabituelles, choix lexicaux rares.
- **Syntaxique/grammatical** : inversion, ellipse, parallélisme syntaxique.
- **Sémantique** : métaphore, ironie, personnification, paradoxe, oxymore.
- **Pragmatique/discursif** : déviation au niveau du discours.

Simpson (2004, *Stylistics: A Resource Book for Students*) définit : « Foregrounding typically involves a stylistic distortion of some sort, either through an aspect of the text which deviates from a linguistic norm or, alternatively, where an aspect of the text is brought to the fore through repetition or parallelism. » Il souligne que les niveaux « interpenetrate and depend upon one another ».

La tradition empirique **collapse cette taxonomie en trois niveaux** : van Peer (1986, p. 63) « categorises elements of foregrounding according to three levels of linguistic description: phonology, grammar and semantics », schéma repris par Miall & Kuiken (1994).

#### 1.4 Théories cognitives et réponse affective du lecteur
La grande contribution moderne est le passage d'une définition **textuelle** (la déviation est dans le texte) à une définition **cognitivo-affective** (la saillance est dans la réponse du lecteur). Miall & Kuiken (1994) articulent une séquence : « foregrounding prompts defamiliarization, defamiliarization evokes affect, and affect guides 'refamiliarizing' interpretive efforts ». L'affect joue donc un rôle central : il ne s'agit pas seulement de remarquer la déviation, mais de ressentir, ralentir la lecture et réinterpréter.

Hakemulder (2004) étend la recherche aux effets sur la perception et l'appréciation esthétique. Frank Hakemulder définit le foregrounding comme « that which makes literature "literature" » (2020). van Peer, Hakemulder & Zyngier (2007, « Lines on feeling », *Language and Literature* 16(2):197-213) explorent le lien foregrounding–émotion–signification.

#### 1.5 Lien avec literariness, défamiliarisation, estrangement
Le foregrounding est souvent considéré comme le cœur de la **literariness** (ce qui distingue le langage littéraire). La défamiliarisation (*ostranenie*) et l'estrangement sont les effets visés. Simpson résume : foregrounding est « essentially a technique for "making strange"… a method of "defamiliarisation" ». Toutefois, Hakemulder (2004) nuance : les traits textuels examinés « are neither necessary nor sufficient for literariness » — ce qui ouvre une tension non résolue.

### 2. Opérationnalisation et mesures computationnelles

#### 2.1 Surprisal et perplexité comme mesures de déviation
La piste la plus directe relie foregrounding et **surprisal** (théorie de la prédictibilité de Hale 2001 ; Levy 2008) : la difficulté de traitement est fonction de l'imprédictibilité du matériel linguistique. La surprisal d'un token, estimée par un LM, est un fort prédicteur des temps de lecture humains (Demberg & Keller 2008 ; Smith & Levy 2013). Cela fait écho direct au foregrounding : les segments déviants ralentissent la lecture.

**Attention méthodologique importante** : les modèles plus grands, à perplexité plus basse, fournissent paradoxalement une **moins bonne** estimation des temps de lecture humains (Oh et al. 2022 ; Shain et al.). Les grands Transformers « mémorisent » des séquences, faisant diverger leur surprisal des attentes humaines — prudence donc dans l'usage des LLM comme modèles cognitifs.

#### 2.2 Stylométrie cognitive et défamiliarisation
Le travail le plus abouti est celui de Maciej Kurzynski, « Cognitive stylometry: A computational study of defamiliarization in modern Chinese » (*Computational Humanities Research*, vol. 2, e1, 2026, DOI 10.1017/chr.2025.10020). Il pré-entraîne un GPT de 223M paramètres sur du chinois (corpus FineWeb Edu Chinese, tokeniseur au niveau du caractère, vocabulaire de 20 192 tokens), puis le fine-tune sur les *Œuvres choisies de Mao Zedong*. Sa thèse centrale : « propaganda backgrounds meaning through repetition (cognitive overfitting), literature foregrounds it through deviation (non-anomalous surprise) ».

La distinction-clé qu'il importe de **Patrick Colm Hogan (2016, *Beauty and Sublimity*)** est la **« non-anomalous surprise »** : « a sequence of completely random characters would certainly be unfamiliar and perplexing, but it would not defamiliarize. » Les pics de perplexité littéraire (métaphores, syntaxe classique, insertions de cantonais) sont surprenants mais **non anomaux** — « they are not anomalous, because the reader is able to recognize their meaning and function in the sequence once they occur ». Donnée quantitative : l'entropie des bigrammes du corpus Mao = 13,442 bits contre 14,331 bits pour les romans littéraires (sur échantillons de 100 000 n-grammes). Le style est redéfini comme « a measurable cognitive signature that orchestrates a reader's predictive processing by balancing familiar grounding with moments of meaningful deviation. »

#### 2.3 Détection AI et patterns de surprisal
Côté détection de texte généré, DivEye (arXiv 2509.18880) exploite que les textes humains présentent une **plus grande dispersion et des queues plus lourdes** de surprisal (variance, entropie, autocorrélation des transitions) que les sorties LLM, plus homogènes du fait de l'objectif de maximisation de vraisemblance. C'est une opérationnalisation indirecte du foregrounding comme variabilité stylistique.

### 3. Échelles et schémas d'annotation de style (focus prioritaire)

#### 3.1 Annotation empirique du foregrounding : les études fondatrices

**van Peer (1986), *Stylistics and Psychology: Investigations of Foregrounding*** (Croom Helm ; rééd. Routledge 2021, 220 p.). Première validation empirique. Trois échelles de notation par le lecteur : **strikingness, importance, discussion value (discussion-worthiness)**. Codage analytique sur trois niveaux (phonologie, grammaire, sémantique, p. 63). Stimuli : six poèmes courts ; environ 153 sujets. Résultat : les classements de strikingness par les lecteurs corrèlent significativement avec le classement préalable de densité de foregrounding établi par l'analyste, **indépendamment de la formation littéraire**. (Les coefficients exacts sont dans la monographie imprimée ; les sources secondaires parlent de « corrélation significative » et de notation « fiable ».)

**Miall & Kuiken (1994), « Foregrounding, defamiliarization, and affect: Response to literary stories »** (*Poetics* 22(5):389-407, DOI 10.1016/0304-422X(94)00011-5). Étude empirique la plus citée. Comme le résume l'abstract verbatim : « These possibilities were tested in four studies in which segment by segment reading times and ratings were collected from readers of a short story. In each study, foregrounded segments of the story were associated with increased reading times, greater strikingness ratings, and greater affect ratings. Response to foregrounding appeared to be independent of literary competence or experience. » **Quatre études, trois nouvelles** : *The Trout* de Sean O'Faolain (84 segments), *The Wrong House* de Katherine Mansfield (86 segments), *A Summing Up* de Virginia Woolf (77 segments). Environ **198 participants** au total (étudiants en littérature anglaise + étudiants en psychologie de faible compétence littéraire).
- **Variables dépendantes** : temps de lecture segment par segment (auto-rythmé, en centièmes de seconde) ; ratings sur **échelle de Likert à 5 points** (1 = « not at all striking », 5 = « extremely striking ») pour strikingness, affect/feeling, importance, discussion value, imagery.
- **Indice de foregrounding** : trois juges indépendants codent les traits phonétiques, grammaticaux, sémantiques ; fréquences par syllabe → z-scores → moyenne à poids égal des trois niveaux.
- **Fiabilité inter-juges** (donnée cruciale) : corrélations moyennes des fréquences de traits par segment : *The Trout* r(82) = 0,516 ; *The Wrong House* r(84) = 0,577 ; *A Summing Up* r(75) = 0,531 (tous p < 0,001).
- **Résultats** : foregrounding × temps de lecture jusqu'à r ≈ 0,39 ; foregrounding × strikingness jusqu'à r ≈ 0,51 (partielle) ; foregrounding × affect jusqu'à r ≈ 0,38. Les composantes **phonétique et sémantique** sont les prédicteurs fiables ; la composante **grammaticale est généralement non corrélée** (sauf dans la nouvelle de Woolf). Effets **indépendants de la compétence littéraire**.

**Hakemulder (2004), « Foregrounding and Its Effect on Readers' Perception »** (*Discourse Processes* 38(2):193-218, DOI 10.1207/s15326950dp3802_3). Paradigme de **relecture** : comparaison de textes littéraires originaux vs versions manipulées à faible foregrounding, notation de l'appréciation esthétique après 1re et 2e lecture. Résultat : le foregrounding produit des scores d'appréciation esthétique plus élevés à la seconde lecture. (Étude de perception/manipulation, non de fiabilité de codage.)

**Zyngier, van Peer & Hakemulder (2007), « Complexity and Foregrounding: In the Eye of the Beholder? »** (*Poetics Today* 28(4):653-682, DOI 10.1215/03335372-2007-011). Expérience interculturelle (Brésil, Égypte, Pays-Bas) : hypothèse que les textes complexes sont mieux notés à la 2e lecture ; confirmée pour un seul groupe, soulevant la question de la « culture de lecture ».

**Sopčák (2007)** poursuit cette tradition empirique sur la défamiliarisation et le processus de lecture.

**Synthèse fiabilité** : la figure la plus citable est l'**accord inter-juges r ≈ 0,52-0,58 (p < 0,001)** de Miall & Kuiken pour des analystes entraînés codant la densité de foregrounding. Consensus : les analystes s'accordent bien sur la densité/le rang du foregrounding par segment, mais moins sur **quel trait individuel** le déclenche (fiable au niveau agrégé, plus bruité au niveau du token). Aucun Cohen's κ / ICC standardisé n'existe à travers les études classiques — c'est une limite reconnue.

#### 3.2 Schémas d'annotation du style en NLP — tableau comparatif

| Schéma / ressource | Type d'annotation | Granularité | Taille / notes |
|---|---|---|---|
| **StylePTB** (Lyu et al., NAACL 2021) | Transferts stylistiques fins, 4 catégories (lexical, syntaxique, sémantique, thématique) | 21 transferts atomiques + 32 compositions | 59 767 paires (transferts simples) + 35 887 (compositions) ; basé sur Penn Treebank |
| **GYAFC** (Rao & Tetreault, NAACL 2018) | Formalité (informel ↔ formel) | Phrase | Plus grand corpus parallèle de formalité ; domaines Yahoo Answers (Divertissement & Musique, Famille & Relations) |
| **STRAP** (Krishna et al., EMNLP 2020) | Transfert de style reformulé comme paraphrase | Document/phrase | Modèles de paraphrase diverse → pseudo-parallèle ; base de l'attribution/imitation d'auteur |
| **Authorship attribution / style embeddings** | Identité d'auteur (syntaxe, lexique, ponctuation) | Document | Wegmann et al. ; embeddings d'authorship |
| **TTCW** (Chakrabarty et al., CHI 2024) | Créativité comme produit, 14 tests binaires, 4 dimensions Torrance (Fluency, Flexibility, Originality, Elaboration) | Nouvelle/histoire | 48 histoires (12 pros New Yorker + 36 LLM), 10 experts ; accord modéré par test, fort en agrégé |
| **Creativity Index / DJ Search** (Lu et al., 2024-2025, arXiv 2410.04265) | Nouveauté linguistique par reconstruction depuis le web (verbatim + near-verbatim via WMD) | Texte | Auteurs humains 66,2 % plus créatifs que LLM ; RLHF réduit l'indice de 30,1 % |
| **CreativityPrism** (Hou et al., 2025-2026, arXiv 2510.20091) | Créativité décomposée : qualité, nouveauté, diversité | 9 tâches, 3 domaines, 20 métriques | 17 LLM évalués ; nouveauté faiblement corrélée à qualité/diversité |

#### 3.3 Annotation de la créativité stylistique
- **TTCT (Torrance)** : test process-oriented de pensée créative (fluency, flexibility, originality, elaboration), 1966.
- **TTCW (Torrance Test of Creative Writing)** : adaptation product-oriented (Chakrabarty et al. 2024) utilisant la **Consensual Assessment Technique (CAT)** — jugements agrégés d'experts. 14 tests binaires. Constat majeur (CHI 2024) : les textes d'experts du *New Yorker* passent environ 84,7 % des tests TTCW, contre aussi peu que 9 % (ChatGPT/GPT-3.5) et ~30 % (Claude V1.3) — soit « LLM-generated stories pass 3-10X less TTCW tests than stories written by professionals ». De plus, aucun LLM-juge ne corrèle positivement avec les évaluations expertes.
- **CAT (Amabile)** : technique de référence en psychologie de la créativité, fiable mais coûteuse en main-d'œuvre.

#### 3.4 Métriques automatiques corrélées au foregrounding/créativité
- **distinct-n / Dist-N** : diversité n-gramme (proxy de diversité lexicale).
- **MAUVE** : divergence distributionnelle texte humain/machine.
- **SemDis** (Beaty & Johnson 2021) : distance sémantique automatisée ; prédit fortement les ratings humains de créativité dans l'AUT (Alternate Uses Task). Plateforme ouverte (semdis.wlu.psu.edu), cinq espaces sémantiques. Toutefois, des LLM fine-tunés surpassent désormais SemDis (r = 0,12 vs r = 0,26 pour OCS sur le plus grand dataset AUT multi-juges).
- **DAT Score** : distance sémantique entre noms (divergent association).
- **n-gram originality** : proportion de n-grammes non vus dans le corpus d'entraînement (McCoy et al. ; Merrill et al.).

#### 3.5 Grilles multi-dimensionnelles psycholinguistiques
- **LIWC (Linguistic Inquiry and Word Count)** : marqueurs stylistiques et psychologiques par catégories lexicales.
- **MRC Psycholinguistic Database** : attributs psycholinguistiques (concrétude, imageabilité, familiarité, âge d'acquisition) utiles pour repérer la concrétude/abstraction (un facteur de déviation sémantique).
- **Biber Multi-Dimensional Analysis (MDA)** : analyse stylométrique multidimensionnelle (Biber 1988 ; Nini et al. 2019), utilisée pour mesurer la cohérence stylistique des LLM (arXiv 2509.10179, Milička et al.).

#### 3.6 Limites des schémas actuels
- **Subjectivité** : la créativité et le foregrounding restent des jugements ; LLM-as-judge n'est consistant qu'à ~40 % sur 3 runs (Lu et al. 2026), avec une corrélation de Pearson avec les humains de seulement ~0,159 (max 0,234 pour GPT-4o).
- **Dépendance culturelle** : Zyngier et al. (2007) montrent que les effets varient selon la « culture de lecture ».
- **Granularité** : Hakemulder note le « lack of a systematic inventory of devices and their relative importance ».

### 4. Foregrounding en génération de texte et LLMs

#### 4.1 Comment les LLMs produisent/reproduisent le foregrounding
Les LLM, optimisés par maximisation de vraisemblance, tendent vers des sorties **plus prévisibles et homogènes** (faible surprisal, queues légères de distribution — DivEye). Le RLHF aggrave cette homogénéisation : selon Lu et al. (« AI as Humanity's Salieri », arXiv 2410.04265), « RLHF… dramatically reduces the Creativity Index of LLMs, by an average of 30.1% » (p = 1,3×10⁻¹², N = 600), tandis que le Creativity Index des auteurs humains professionnels est « 66.2% higher than that of LLMs », un écart « consistent across various domains—novel snippets, modern poems, and speech transcripts—at both verbatim and semantic levels ». Cela suggère un **déficit structurel de foregrounding** : les LLM « rétro-fondent » (backgrounding) plutôt qu'ils ne mettent en relief.

#### 4.2 Évaluations récentes de la créativité stylistique
- **LitBench** (Fein et al., arXiv 2507.00769, 1er juillet 2025) : premier benchmark standardisé d'évaluation de l'écriture créative. Test set de 2 480 comparaisons d'histoires débiaisées, étiquetées humainement (Reddit r/WritingPrompts) + corpus d'entraînement de 43 827 paires. Claude-3.7-Sonnet = meilleur juge off-the-shelf (73 % d'accord humain) ; reward models entraînés (Bradley-Terry, génératif) = 78 %.
- **CreativityPrism** (Hou et al., arXiv 2510.20091, oct. 2025 / rév. fév. 2026) : décompose la créativité en **qualité, nouveauté, diversité** ; 9 tâches, 3 domaines (pensée divergente, écriture créative, raisonnement logique), 20 métriques, 17 LLM. Résultat clé : la **nouveauté corrèle faiblement** avec qualité et diversité — la performance créative ne généralise pas entre dimensions ni domaines. Écart net propriétaire/open-source.
- **WritingBench** (Wu et al., arXiv 2503.05244, NeurIPS 2025) : 6 domaines, 100 sous-domaines ; cadre d'évaluation **query-dependent** générant des critères spécifiques à l'instance + modèle critique fine-tuné évaluant style, format, longueur.

#### 4.3 Stylistic latitude (σ) et foregrounding
La notion de « latitude stylistique » paramétrée (σ) n'existe pas formellement. Le seul candidat-paramètre est la **température**, mais Peeperkorn et al. (« Is Temperature the Creativity Parameter of LLMs? », arXiv 2405.00492, ICCC 2024) montrent, sur Llama-2-Chat, que « temperature is weakly correlated with novelty, and unsurprisingly, moderately correlated with incoherence, but there is no relationship with either cohesion or typicality ». La variance de sortie des LLM se décompose : pour la qualité/originalité, les prompts expliquent 36,43 % de la variance, le choix de modèle 40,94 %, la variance intra-LLM 10,56 % (Haase et al., arXiv 2601.21339).

#### 4.4 Style transfer et foregrounding
StylePTB et STRAP fournissent l'infrastructure de manipulation stylistique fine, mais traitent le style comme transfert d'attribut (formalité, sentiment, temps, voix), **non comme mise en relief esthétique**. STRAP reformule le transfert comme génération de paraphrase (paraphrase diverse → paraphrase inverse vers le style cible).

#### 4.5 Distinguer déviation licite vs déviation factuelle non souhaitée
C'est le **problème central** pour les LLM. He et al., « Shakespearean Sparks: The Dance of Hallucination and Creativity in LLMs' Decoding Layers » (arXiv 2503.02851, mars 2025), proposent le framework **HCL** : hallucination = taux d'erreur ; créativité = diversité des réponses **correctes** (clusters sémantiques, seuil cosinus τ=0,8). Résultats : (1) « Creativity comes with hallucination » — quand la température passe de 0,6 à 1,0, créativité et hallucination augmentent proportionnellement ; (2) les modèles plus forts (LLaMA-2-13B) sont plus créatifs ET plus sujets à l'hallucination ; (3) la **couche finale n'est pas optimale** — les couches intermédiaires précoces (couche 4 pour LLaMA-3.2-1B, couche 8 pour LLaMA-2-7B) optimisent le compromis. Trade-off « consistent across layer depth, model type, and model size ».

Travail connexe : « Does Less Hallucination Mean Less Creativity? » (arXiv 2512.11509, AAAI 2026) : CoVe améliore la pensée divergente, DoLa la supprime, RAG est neutre. Conclusion : « Excessive hallucination control may produce models that are precise but limited in imagination, whereas too much generative freedom can lead to factual drift. »

La distinction conceptuelle déviation stylistique licite (foregrounding) / dérive factuelle (hallucination) est donc reconnue mais **non opérationnalisée comme deux paramètres séparés**.

### 5. Positionnement et lacunes

#### Ce que la littérature couvre bien
- Théorie du foregrounding (déviation/parallélisme, niveaux linguistiques) : mature et stable.
- Validation empirique de l'effet foregrounding → temps de lecture/affect/strikingness : solide (van Peer, Miall & Kuiken).
- Métriques de nouveauté/diversité computationnelles : abondantes (Creativity Index, SemDis, distinct-n, MAUVE).
- Benchmarks d'écriture créative LLM : en pleine expansion (LitBench, CreativityPrism, WritingBench).

#### Lacunes spécifiques pour les LLM
1. **Absence de taxonomie unifiée** : les niveaux du foregrounding (stylistique) et les schémas d'annotation NLP (StylePTB, TTCW, etc.) ne sont pas reliés ; aucun pont entre la tradition empirique de l'ELS (Empirical Literary Studies) et le NLP.
2. **Manque d'annotation à grain fin du foregrounding en contexte LLM** : le seul travail proche est Saakyan et al. (« Death of the Novel(ty) », arXiv 2509.22641, ICLR 2026) qui annote au niveau de l'expression (novelty perçue / sensicality / pragmaticality) avec 26 écrivains professionnels (8 618 annotations) — analogue computationnel le plus direct du foregrounding, sans utiliser le terme. Donnée frappante : « approximately 91% of top-quartile n-gram novel expressions are not judged as creative ». La log-perplexité standardisée reste néanmoins significativement associée à la créativité perçue (Odds Ratio ≈ 1,96 par écart-type, p < 0,001).
3. **Critique de la nouveauté n-gramme** : Lu et al. (« Rethinking Creativity Evaluation », arXiv 2508.05470) montrent que le Creativity Index reflète surtout la **diversité lexicale**, pas l'originalité conceptuelle ; les métriques actuelles « emphasize stylistic novelty while neglecting conceptual novelty ».
4. **Absence de distinction σ/κ dans les benchmarks** : aucune paramétrisation formelle séparant la latitude stylistique (σ — déviation productive valorisée) de la fidélité factuelle (κ — fidélité au contenu, où la déviation est une erreur) n'existe dans la littérature. Les seules séparations adjacentes sont creator/editor (framework RACE, arXiv 2604.04932) et novelty/pragmaticality (Saakyan). Cette dichotomie σ/κ serait donc une **contribution originale**.

---

## Recommendations

**Étape 1 — Construire un pont taxonomique (immédiat).** Mapper explicitement les niveaux du foregrounding (phonologique, graphologique, lexical, syntaxique, sémantique, pragmatique de Leech & Short / Simpson) sur les catégories de StylePTB (lexical, syntaxique, sémantique, thématique) et les dimensions Torrance de TTCW. Cela fournit la taxonomie unifiée manquante. Seuil de réussite : couverture ≥ 90 % des procédés stylistiques classiques par le schéma intégré.

**Étape 2 — Opérationnaliser la surprise non-anomale (court terme).** Implémenter une mesure de foregrounding qui distingue surprise productive et anomalie, en combinant : (a) surprisal d'un LM calibré (pics de perplexité), (b) un filtre de « sensicality/pragmaticality » (recognizabilité du sens en contexte, à la Saakyan), pour exclure le bruit. Benchmark de validation : corréler avec les ratings humains de strikingness (cible r ≥ 0,5, niveau Miall & Kuiken).

**Étape 3 — Formaliser et tester la distinction σ/κ (cœur de la contribution).** Définir σ (latitude stylistique : degré de déviation stylistique tolérée/valorisée) et κ (fidélité factuelle/contenu) comme deux axes orthogonaux d'évaluation. Pour les tâches créatives, σ élevé est désirable ; pour les tâches factuelles, κ élevé domine. S'appuyer sur HCL (He et al.) pour la localisation par couche et sur la décomposition de variance (Haase et al.). Benchmark : montrer que σ et κ se dissocient empiriquement (corrélation faible attendue, à l'image de novelty vs quality dans CreativityPrism).

**Étape 4 — Annotation fine à valider (moyen terme).** Constituer un jeu de données annoté du foregrounding au niveau du segment/expression, avec des annotateurs experts, en visant un accord inter-annotateurs ICC/κ rapporté explicitement (cible : κ ≥ 0,6 au niveau agrégé). Combler la lacune de standardisation de fiabilité des études classiques. À titre de repère, Saakyan et al. obtiennent un free-marginal κ de 0,78 (nouveauté perçue) et 0,72 (pragmaticalité).

**Seuils qui changeraient ces recommandations** : si un benchmark établi adoptait nativement la distinction σ/κ, l'étape 3 deviendrait une réplication plutôt qu'une contribution ; si LLM-as-judge dépassait 70 % de consistance et corrélait fortement (r > 0,5) avec les experts sur le foregrounding, l'annotation humaine coûteuse (étape 4) pourrait être partiellement automatisée.

---

## Caveats
- **Coefficients exacts de van Peer (1986)** : les corrélations précises par poème sont dans la monographie imprimée ; les sources accessibles ne rapportent que « significatif »/« fiable ».
- **Absence de κ/ICC standardisé** dans les études classiques de foregrounding ; la meilleure figure concrète reste l'inter-juges r ≈ 0,52-0,58 de Miall & Kuiken. Hakemulder (2004) et Zyngier et al. (2007) sont des études de réponse-lecteur/manipulation, **non** des études de fiabilité de codage — leur usage comme sources de κ serait une mésattribution.
- **« Shakespearean Sparks » (He et al.)** définit la créativité étroitement (diversité de réponses correctes en QA fermé) et n'est qu'en préprint v1 (mars 2025) ; généralisation à l'écriture créative ouverte non démontrée.
- **Kurzynski (2026)** sélectionne ses passages littéraires « subjectivement » (choisis pour signification esthétique), ce qui limite la généralisabilité.
- **La distinction σ/κ est, à ce jour, absente de la littérature** — à présenter comme proposition originale, non comme état établi. Le symbole κ apparaît dans la littérature uniquement comme kappa de fiabilité inter-annotateurs, sans rapport avec la fidélité factuelle.
- **Prudence sur la surprisal des grands LLM** comme proxy cognitif : les modèles à très basse perplexité s'écartent des attentes humaines (effet de mémorisation).
- Plusieurs sources récentes (CreativityPrism rév. fév. 2026, Saakyan ICLR 2026, Lu v4 jan. 2026) sont très récentes et en cours de stabilisation.