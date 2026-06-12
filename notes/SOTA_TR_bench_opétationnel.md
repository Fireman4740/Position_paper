
Rapport complet pour lancer la recherche
Contexte : Thèse Alteca · Mathis Carlesso Trajectoire : T1 — Annotation TR systématique et vérification opérationnelle Objectif : Opérationnaliser TR(p) = (O, σ, κ) — annoter les 12 469 outputs en claims, démontrer où la détection d'hallucinations actuelle (HalluLens-style) échoue sur les régimes créatifs (métaphores, hypothèses balisées, analogies).


1. Vue d'ensemble : Pourquoi T1 est original malgré un SOTA mature
Le paradoxe de T1 est le suivant : les pipelines de décomposition en claims et de vérification NLI sont techniquement matures (FActScore 2023, SAFE/LongFact 2024, VERISCORE 2024, VeriFastScore 2025). Mais ils partagent tous un angle mort conceptuel : ils supposent un oracle unique O à κ = 0 (aucune invention autorisée) et σ = quelconque.
Ce que T1 apporte de nouveau :

Étiqueter le régime TR(p) = (O, σ, κ) explicitement par claim, pas seulement l'output. 
Cartographier où HalluLens échoue : métaphores (haute σ), hypothèses balisées (PD mature sous κ > 0), style poétique (σ élevée mais κ = 0). 
Produire la première taxonomie empirique des zones tractables vs indéterminables pour la distinction PD/H. 
C'est une contribution conceptuelle dans un espace techniquement outillé — ce qui est une position confortable pour une thèse : on hérite des outils sans en être dépendant.


2. PILIER 1 — Décomposition en claims atomiques (claim extraction)
2.1 Fondations
FActScore (Min, Krishna, Lyu, Lewis et al. ; EMNLP 2023 ; arXiv:2305.14251) Le standard de référence. Décompose une réponse en claims atomiques indépendamment vérifiables. Utilise un LLM en few-shot pour extraire les claims, puis un modèle retrieval + NLI pour les vérifier contre Wikipedia. Résultat : 58% de factualité pour ChatGPT sur des biographies, avec < 2% d'erreur sur l'automatisation vs humains.

Apport pour T1 : protocole de décomposition repris directement ; à modifier pour ajouter le tag de régime (O, σ, κ) à chaque claim extrait. 
Limitation pour T1 : suppose que chaque claim est vérifiable — ce qui n'est pas le cas sous κ > 0 (claims inventés sous licence). Il faut ajouter une étape de "is this claim truth-conditional under TR?" avant la vérification. 
Long-Form Factuality / SAFE / LongFact (Wei, Yang, Song et al. ; NeurIPS 2024 ; arXiv:2403.18802 ; Google DeepMind) Extension à grande échelle de FActScore. SAFE utilise un LLM pour décomposer + un agent multi-step avec Google Search pour vérifier. Accord avec les annotateurs humains : 72%, gagne 76% des désaccords. 20× moins cher que l'annotation humaine. LongFact = 38 topics, milliers de questions.

Apport pour T1 : méthode de décomposition à l'échelle ; F1 (precision/recall) comme métrique agrégée — pertinent quand les claims inventés (κ > 0) ne sont pas vérifiables (ils ne devraient pas être comptés comme "faux" s'ils sont licenciés). 
Limitation pour T1 : Google Search comme oracle — à remplacer par Wikipedia (oracle de R6 existant) pour la comparabilité. 
VeriFact (Liu, Zhang, Munir et al. ; 2025 ; arXiv:2505.09701 ; UMass) Amélioration de FActScore : identifie les dépendances inter-propositions (faits relationnels perdus lors de l'atomisation naive). Introduit FactRBench : évaluation precision + recall.

Apport pour T1 : la dépendance inter-claims est critique pour les outputs stylistiques (un claim métaphorique peut être contextuellement dépendant du claim précédent). Solution : fenêtre glissante de contexte ±2 claims. 
Limitation pour T1 : les faits relationnels complexes (relations causales dans des métaphores) restent difficiles à vérifier. 
VeriFastScore (Rajendhran, Zadeh, Sarte, Li, Iyyer ; 2025 ; arXiv:2505.16973 ; UMass) Fine-tune Llama3.1 8B pour extraire ET vérifier simultanément (6,6× plus rapide que VeriScore, corrélation r=0,80 au niveau exemple). Montre que la décomposition et la vérification en séquence ne sont pas alignées (atomicité ≠ granularité optimale pour le vérificateur).

Apport pour T1 : passage à VeriFastScore recommandé pour la campagne complète (1000+ claims). Le modèle est public sur HuggingFace. 
"Optimizing Decomposition for Optimal Claim Verification" (Lu, Ziems, Dang, Jiang ; 2025 ; arXiv:2503.15354) Formule le problème de décomposition optimale comme un problème bilevel. Propose Dynamic Decomposition via RL : le vérificateur donne un feedback sur la granularité des claims. Améliore la confiance de vérification de +0,07 et l'accuracy de +0,12.

Apport pour T1 : justification théorique que l'atomicité n'est pas fixe — elle dépend du régime. Un claim métaphorique peut nécessiter une granularité différente d'un claim factuel. Direct soutien à l'idée que σ et κ changent la granularité optimale. 
JointCQ (Xu, Zhang, Zhang, Wang, Wan ; 2025 ; arXiv:2510.19310) Framework joint : extraire les claims ET générer les requêtes de recherche en une seule passe. Fine-tune un LLM sur des données synthétiques filtrées. Résout le problème de "perte de contexte lors de l'extraction".

Apport pour T1 : alternative à FActScore pour la décomposition — à évaluer sur un pilote de 200 prompts. 
2.2 Problèmes d'atomicité documentés
"Dissecting Atomic Facts: Visual Analytics for Improving Fact Annotations in Language Model Evaluation" (Schmidt, Keim ; 2025 ; arXiv:2509.01460) Critical pour T1. Étude visuelle-analytique montrant des désaccords élevés entre annotateurs sur ce qui constitue un "claim atomique". Causes : ambiguïté des frontières entre claims, dépendances implicites, claims composites.

Implication directe pour T1 : si les annotateurs NLP experts ont des désaccords sur l'atomicité factuelle, le désaccord sera encore plus élevé sur la dimension "utile vs non-utile" de PD. Argument pour la stratification hiérarchique de l'annotation (d'abord l'atomicité, ensuite le régime). 
"An Analysis of Multilingual FActScore" (Vu, Krumdick, Reddy, Dernoncourt, Lai ; 2024 ; arXiv:2406.19415) Montre que FActScore varie selon la langue : la couverture de Wikipedia (oracle) est inégale.

Implication pour T1 : si on étend à d'autres langues, l'oracle O doit changer. Pertinent uniquement si extension multilingue prévue. 
2.3 Outils et implémentations disponibles

Outil	Type	Disponibilité	Usage pour T1
FActScore	Pipeline Python	GitHub (sewon)	Point de départ ; à forker et modifier
SAFE/LongFact	Pipeline Python + API	GitHub (google-deepmind)	Vérification à grande échelle
VeriFastScore	Modèle fine-tuné	HuggingFace	Vérification rapide production
ANAH-v2	Annotateur 7B	GitHub (InternLM)	LLM-as-judge pour claim-level
CORE	Réduction claims tautologiques	Papier seulement	Qualité des claims extraits
GraphEval	KG + NLI	GitHub (Graphcore)	Vérification fine-grained alternative



3. PILIER 2 — Vérification NLI (oracle O)
3.1 Pipeline NLI standard
La vérification d'un claim se fait en 3 étapes :

Retrieval : trouver des passages pertinents dans l'oracle O (Wikipedia dense retrieval, BM25, Google Search). 
NLI verdict : étiqueter claim + passage(s) comme Entailment (Supported) / Contradiction (Hallucinated) / Neutral (Unverifiable). 
Agrégation : hallucination_rate = n_hallucinated / n_verified (en excluant Neutral). 
HalluLens (Bang, Ji, Schelten, Hartshorn, Fowler, Zhang, Cancedda, Fung ; ACL 2025 ; arXiv:2504.17550 ; Meta/HKUST) Le benchmark actuel de référence. Sépare H extrinsèque (vs données d'entraînement) de H intrinsèque (vs input). Trois nouvelles tâches : LongWiki, PreciseQA, NonExistentRefusal. Génération dynamique de test sets pour éviter la contamination.

Oracle de R6 : pipeline de T1 doit être comparable à HalluLens pour produire les rankings comparatifs. 
Lacune pour T1 : aucun axis σ/κ. "Hallucination" = toute déviation de l'oracle, quelle que soit la permission accordée par le prompt. 
MENLI (Chen, Eger ; 2023 ; arXiv:2208.07316) NLI robuste aux variations stylistiques. Utilise des métriques NLG entraînées sur NLI.

Critique pour T1 : si MENLI est robuste au style, l'utiliser pour le stress test σ (vérifier que des paraphrases stylistiques ne génèrent pas de faux positifs H). 
Halu-J (Wang, Chern, Chern, Liu ; 2024 ; arXiv:2407.12943) LLM-juge 7B avec sélection d'evidence pertinente + critiques détaillées. Performe mieux que GPT-4o sur la détection multi-evidence.

Apport pour T1 : alternative au pipeline NLI standard quand l'oracle O est complexe (documents structurés, tables). 
ANAH-v2 (Gu, Ji, Zhang, Lyu, Lin, Chen ; 2024 ; arXiv:2407.04693) Framework itératif d'auto-entraînement pour annoter les hallucinations à l'échelle. Un annotateur 7B surpasse GPT-4 sur HaluEval et HalluQA. NLI +12 points sur HaluEval.

Apport pour T1 : scalabilité de l'annotation. Pour les 1000-1500 claims de T1, ANAH-v2-style self-training peut créer un annotateur adapté au régime TR. 
GraphEval (Sansford, Richardson, Maretic, Saada ; 2024 ; arXiv:2407.10793) Représente les claims comme triples dans un knowledge graph. Localise les triples hallucinés spécifiquement. Améliore l'accuracy NLI en ciblant les sous-structures problématiques.

Apport pour T1 : particulièrement utile pour les claims relationnels (ex : "A a causé B" = deux claims imbriqués) qui sont courants dans les régimes à haute σ. 
FactBench/VERIFY (Bayat, Zhang, Munir, Wang ; 2024 ; arXiv:2410.22257) Catégorise les claims comme supported / unsupported / undecidable (3 classes, pas 2). La classe "undecidable" est cruciale pour T1.

Critique pour T1 : la classe "undecidable" est le proxy naturel des claims sous κ > 0. Un claim inventé sous licence (PD) ne devrait pas être "hallucinated" mais "undecidable" ou "licensed-invention". Cette 3e classe est la contribution conceptuelle centrale de T1 par rapport à l'état de l'art. 
HalluHard (Fan, Delsad, Flammarion, Andriushchenko ; 2026 ; arXiv:2602.01031) Benchmark multi-turn difficile (950 seed questions, 4 domaines). Groundedness via citations inline obligatoires. Modèles les plus forts : ~30% hallucination même avec web search.

Apport pour T1 : les domaines haute stakes (médical, légal) = κ ≈ 0 par définition. Bon contrôle négatif pour calibrer la zone κ = 0 de T1. 
3.2 Limites du NLI standard pour T1

Problème	Description	Impact sur T1	Solution proposée
Absence de classe κ>0	NLI ne reconnaît pas les claims inventés sous licence	Faux positifs sur PD matériaux	Ajouter label "licensed-invention" avant NLI
Sensibilité au style	BERT-based NLI classifie les métaphores comme "non-entailment"	Faux positifs sur σ élevée	Utiliser MENLI + stress test σ
Oracle Wikipedia limité	Claims sur des entités rares ou récentes non couverts	Faux négatifs sur H	Hybrid retrieval (Wikipedia + Google)
Vérification binaire	Supported/Hallucinated rate = overestimate sous créatif	Surestimation H sous κ>0	Ajouter "unverifiable" comme classe standard
LLM-as-judge instabilité	Biais de confirmation (MARCH 2026), biais d'apologie	Verdicts inconsistants	Jury multi-LLM (≥3 juges)



4. PILIER 3 — Annotation du Régime TR (σ et κ)
4.1 Défis spécifiques à l'annotation de σ et κ
La dimension σ (latitude stylistique) et κ (licence d'invention) n'ont aucun précédent direct dans la littérature. La contribution de T1 est d'opérationnaliser ces deux dimensions pour l'annotation.
σ (latitude stylistique) : degree auquel la forme peut varier sans changer la proposition. Questions qui guident l'annotation :

"Ce claim contient-il une métaphore, une analogie, ou une figure de style ?" 
"La proposition factuelle sous-jacente serait-elle vraie si on le reformulait littéralement ?" 
"L'écart par rapport aux faits est-il purement formel (paraphrase, hyperbole) ou propositionnel (nouvelle info) ?" 
κ (licence d'invention) : degree auquel le prompt autorise la création de contenu truth-conditional nouveau. Questions qui guident l'annotation :

"Le prompt demande-t-il explicitement de la fiction, une hypothèse, une alternative ?" 
"Ce claim serait-il acceptable dans une tâche qui n'autorise aucune invention ?" 
"Si le claim est faux selon Wikipedia, est-ce que le prompt l'avait prévu et autorisé ?" 
Dimension critique — "useful" (PD) : la dimension qui risque κ < 0,70 :

"Ce claim inventé sous licence κ > 0 est-il utile pour accomplir la tâche ?" 
"Un expert du domaine jugerait-il cette invention comme apportant de la valeur ?" 
4.2 État de l'art sur l'annotation de dimensions subjectives comparables
HIC-Bench (Yang, Yuan, Cai, Jiang, Hu ; 2025 ; arXiv:2512.21635) Le papier le plus proche de T1. Catégorise les hallucinations en "Intelligent Hallucinations (IH)" vs "Defective Hallucinations (DH)" — équivalent approximatif de PD vs H. Utilise TTCT (Originality, Feasibility, Value) + dimensions de plausibilité scientifique et déviation factuelle.

Différence critique avec T1 : HIC-Bench ne distingue pas σ de κ, et n'encode pas le contrat du prompt (TR). Un claim peut être IH pour HIC mais H pour TR si κ = 0. 
Apport pour T1 : les dimensions TTCT (Originality, Feasibility, Value) peuvent opérationnaliser la dimension "utile" de PD. Recommandation : adopter ces 3 dimensions pour évaluer PD dans le manuel d'annotation. 
"Does Less Hallucination Mean Less Creativity?" (Banerjee, Wangsajaya, Alsagoff et al. ; Dec 2025 ; arXiv:2512.11509) Papier le plus directement pertinent pour T1. Montre empiriquement via linear probes que PD et H occupent des espaces distincts dans les représentations internes des LLMs. Les mitigation au niveau vérification (CoVe) préservent la divergence créative ; DoLa la supprime.

Apport pour T1 : validation externe que la distinction PD/H est réelle et pas seulement conceptuelle. Utilisable comme justification de la thèse. 
Shakespearean Sparks (He, Zhang, Cheng ; 2025 ; arXiv:2503.02851) HCL framework quantifie hallucination et créativité par couche de décodage. Identifie une couche optimale par modèle. Confidence maximale à cette couche.

Apport pour T1 : les modèles diffèrent sur leur "couche optimale". Utile pour choisir quels modèles étudier en priorité dans T1 (ceux avec des comportements les plus différents sur H vs PD). 
4.3 Opérationnalisation proposée — les 5 labels de T1
Sur la base de la littérature, T1 devrait utiliser 5 labels au niveau claim :

Label	Définition	Vérification NLI	Tractabilité attendue
S — Supported	Claim truth-conditional, vérifié par oracle O	Entailment	κ = 0.80–0.90
H — Hallucination	Claim truth-conditional, non supporté ou faux	Contradiction	κ = 0.75–0.85
PD — Productive Divergence	Claim inventé, licencié par κ > 0, utile	Non applicable	κ = 0.55–0.70
U — Unverifiable	Claim non vérifiable par oracle (ni S ni H)	Neutral	κ = 0.65–0.75
SV — Stylistic Variation	Variation purement formelle, pas de nouvelle proposition	N/A	κ = 0.70–0.80

La prédiction est que PD aura le κ le plus bas. C'est la contribution de T1 : montrer quantitativement que cette zone est à la fois réelle et difficile à annoter, et proposer des mécanismes pour la gérer.


5. PILIER 4 — Accord inter-annotateurs et gestion du désaccord
5.1 Métriques standard

Métrique	Formule	Quand utiliser	Cible T1
Cohen's κ	(Po - Pe) / (1 - Pe)	2 annotateurs, classes nominales	κ ≥ 0,70 pour S, H, U, SV
Fleiss' κ	Extension à N annotateurs	≥ 3 annotateurs	Pilote : 3 annotateurs
Krippendorff's α	Plus robuste aux données manquantes	Annotations incomplètes ou ordinales	Utiliser pour PD (ordinal)
ICC (Intraclass Correlation)	Corrélation intraclasse	Scores continus (ex : degré de PD)	Évaluation "useful"
Percentage agreement	Po	Communication simple, non corrigé	Baseline rapide

Références pratiques :

Artstein & Poesio 2008 — revue complète : κ < 0,60 = pauvre ; 0,60–0,79 = modéré ; ≥ 0,80 = fort. 
Landis & Koch 1977 — échelle classique pour κ. 
Koo & Li 2016 (ICC) — guide ICC : ICC < 0,50 = pauvre ; 0,50–0,75 = modéré ; 0,75–0,90 = bon ; > 0,90 = excellent. 
5.2 La littérature récente sur la gestion du désaccord
"Can Large Language Models Capture Human Annotator Disagreements?" (Ni, Fan, Zouhar et al. ; 2025 ; arXiv:2506.19467) Les LLMs peinent à modéliser les désaccords humains (RLVR dégrade la performance sur le désaccord). La prédiction de la distribution de labels (pas du label majoritaire) est un problème ouvert.

Implication pour T1 : ne pas utiliser un LLM seul comme annotateur pour PD. Toujours avoir des annotateurs humains pour valider la zone PD. 
"You Are What You Annotate" (Deng, Zhang, Liu, Wu, Wang, Mihalcea ; 2023 ; arXiv:2305.14663 ; TID-8 dataset) Crée des embeddings d'annotateurs et d'annotations pour modéliser la subjectivité. Améliore les modèles sur 6/8 datasets de désaccord inhérent. Propose TID-8 comme benchmark de référence pour les tâches avec désaccord intrinsèque.

Implication pour T1 : si κ PD < 0,70, envisager de modéliser les profils d'annotateurs plutôt que de forcer le consensus. 
"Using Natural Language Explanations to Rescale Human Judgments" (Wadhwa, Chen, Li, Durrett ; 2023 ; arXiv:2305.14770) Les annotateurs donnent une explication NL + un score Likert. Un LLM re-scale les scores selon la rubrique. Résultat : pas de perte d'accord, scores plus proches du ground truth.

Apport pour T1 : pour la dimension "useful" de PD, demander aux annotateurs d'expliquer pourquoi en 1 phrase. Utilisé ensuite pour calibrer le rubric. 
"Understanding Human Label Variation in NLI through Explanation" (Jiang, Tan, de Marneffe ; 2023 ; arXiv:2304.12443 ; LiveNLI) 122 instances NLI avec ≥ 10 annotations chacune + highlights + free-text. Chain-of-thought sur les explications pour prédire la distribution. GPT-3 reste sous-performant.

Implication pour T1 : même 10 annotations ne suffisent pas pour prédire la distribution de désaccord. Plan réaliste : 3 annotateurs + adjudication pour les cas difficiles. 
"MAFALDA" (Helwe, Calamai, Paris, Clavel, Suchanek ; 2023 ; arXiv:2311.09761) Schéma d'annotation adapté aux tâches subjectives. Méthode d'évaluation pour la subjectivité.

Apport pour T1 : modèle d'annotation pour créer un schéma adapté à PD/H/SV. 
"Are LLMs Better than Reported? Detecting Label Errors" (Nahum, Calderon, Keller, Szpektor, Reichart ; 2024 ; arXiv:2410.18889) Ensemble de LLMs pour détecter les erreurs de labels dans des datasets existants. Révèle que beaucoup d'"erreurs LLM" sont en réalité des erreurs d'annotation. Correction : shift significatif vers le haut des performances rapportées.

Implication pour T1 : les erreurs d'annotation sur PD peuvent artificiellement abaisser les métriques. Toujours vérifier manuellement les cas PD mal étiquetés avant de conclure que κ est faible. 
5.3 Stratégie d'annotation recommandée pour T1
Phase 1 : Annotation uniforme (M0–M2) 3 annotateurs experts (master NLP / doctorants) + manuel strict + calibration sur 50 exemples. Calculer κ par catégorie. Identifier où κ < 0,70.
Phase 2 : Analyse des désaccords (M2–M3) Pour chaque claim à désaccord, demander une explication NL (Wadhwa et al. 2023). Classifier les causes de désaccord :

Ambiguïté du prompt (TR mal spécifié) → réviser le manuel 
Ambiguïté du claim (frontière floue) → passer en soft labels 
Désaccord de valeur (qu'est-ce qui est "utile" ?) → c'est la contribution de T1 
Phase 3 : Soft labels pour PD (M3–M5) Si κ < 0,70 sur "useful" : adopter des soft labels (distribution des votes plutôt que consensus). Signaler le désaccord lui-même comme résultat scientifique.
Option alternative : annotation hiérarchique

Étape 1 : claim est-il truth-conditional ? (κ attendu ≥ 0,85) 
Étape 2 : si oui, est-il supporté par O ? (κ attendu ≥ 0,80) 
Étape 3 : si non supporté, le TR autorise-t-il l'invention ? (κ attendu ≥ 0,75) 
Étape 4 : si invention autorisée, est-elle utile ? (κ attendu 0,55–0,70) 
Cette structure permet de publier les étapes 1–3 même si l'étape 4 échoue.


6. PILIER 5 — Stress test σ (dimension stylistique)
6.1 Pourquoi tester σ séparément
Le stress test σ vise à montrer que les pipelines de détection H actuels génèrent des faux positifs sur les variations stylistiques (métaphore, hyperbole, voix poétique).
Hypothèse à tester :

Pour un claim X et sa version stylistiquement transformée X', les deux véhiculent la même proposition factuelle P. HalluLens classe X comme Supported et X' comme Hallucinated (faux positif σ). T1 montre que ce faux positif est dû à l'ignorance de σ dans l'oracle.


6.2 Littérature sur la robustesse des évaluations au style
"A Meta-Evaluation of Style and Attribute Transfer Metrics" (Pauli, Augenstein, Assent ; 2025 ; arXiv:2502.15022) Montre que les métriques de préservation de contenu (BERTScore, ROUGE) sont conditionnelles sur le style shift. Un transfert de style valide peut être marqué comme perte de contenu par les métriques standards. Propose une évaluation zero-shot basée sur la probabilité du token.

Critique pour T1 : la même fragilité existe dans les pipelines NLI — une paraphrase poétique d'un fait peut être classée "contradiction" par un NLI entraîné sur du texte neutre. 
"Text Fact Transfer" (Balepur, Huang, Chang ; 2023 ; arXiv:2310.14486) Distingue "text style transfer" (changer le style, garder le contenu) de "text fact transfer" (changer le contenu, garder le style). Montre que les LLMs confondent souvent les deux.

Apport pour T1 : l'axe style/fait est exactement σ/κ. Les auteurs proposent ModQGA pour minimiser l'hallucination lors du style transfer — utilisable comme baseline. 
"Reformulating Unsupervised Style Transfer as Paraphrase Generation" (Krishna, Wieting, Iyyer ; 2020 ; arXiv:2010.05700) Les systèmes de style transfer sont souvent évalués avec des métriques gameable. Propose des variantes fixes des métriques.

Apport pour T1 : inspiration pour les métriques du stress test σ. Utiliser des métriques non-gameable (sémantique + propositionnel, pas syntaxique). 
SemScore (Aynetdinov, Akbik ; 2024 ; arXiv:2401.17072) Évaluation sémantique d'instruction-tuned LLMs via similarité textuelle sémantique. Sensible aux variations stylistiques.

Usage direct dans T1 : comparer SemScore(X, X') sur les paires stylistiques pour mesurer la préservation sémantique — complément aux verdicts NLI. 
CheckList (Ribeiro, Wu, Guestrin, Singh ; 2020 ; ACL 2020) Tests comportementaux systématiques pour NLP via templates + perturbations. Minimum Functionality Tests, Invariance Tests, Directional Expectation Tests.

Apport pour T1 : les Invariance Tests de CheckList sont exactement le stress test σ. Pour un claim factuel X, appliquer des transformations stylistiques et vérifier que le verdict NLI reste Supported. 
6.3 Design du stress test σ (Sous-projet P1B)
Protocol suggéré :

Prendre 100 claims catégorisés Supported (S) dans le corpus. 
Générer 3 variantes stylistiques par claim : métaphore / voix poétique / argot scientifique. 
Vérifier que les variantes sont sémantiquement équivalentes (SemScore > 0,85). 
Ré-évaluer avec HalluLens + MENLI. 
Mesurer : taux de faux positifs H sur les variantes stylistiques. 
Résultat attendu : HalluLens génère X% de faux positifs sur les métaphores ; MENLI est plus robuste. Cette mesure justifie T1 empiriquement et fournit un résultat publiable même si le reste de la campagne d'annotation est difficile.


7. PILIER 6 — Gestion des LLM-as-judge (fiabilité des évaluateurs)
7.1 Problèmes documentés
MARCH (Li et al. ; 2026 ; arXiv:2603.24579) Identification du biais de confirmation dans LLM-as-judge : le vérificateur reproduit les erreurs du générateur. Solution : pipeline multi-agent avec asymétrie d'information (le vérificateur ne voit pas l'output original).

Implication pour T1 : ne jamais donner au LLM-juge l'output complet lors de la vérification d'un claim. Donner uniquement le claim isolé + passages retrieval. 
Verdict (Kalra, Tang ; 2025 ; arXiv:2502.18018) Library open-source pour scaler le compute du juge. Composition de modules : vérification, débat, agrégation. Performances compétitives avec des juges fine-tunés de grande taille.

Usage direct pour T1 : pipeline multi-juge (3 LLMs en panel) pour augmenter la fiabilité sans fine-tuning coûteux. 
"Safer or Luckier? LLMs as Safety Evaluators Are Not Robust to Artifacts" (Chen, Goldfarb-Tarrant ; 2025 ; arXiv:2503.09347) Les LLM-juges sont biaisés par le style apologétique (+98% de biais) ou verbeux. Jury multi-modèles améliore la robustesse mais ne l'élimine pas.

Implication critique pour T1 : les outputs créatifs ont souvent des styles marqués (voix forte, registre inhabituel) → risque élevé de biais dans le LLM-juge. Solution impérative : jury de 3 juges LLMs différents pour chaque claim PD/H borderline. 
JudgeBiasBench (Zhou, Huang, Zhang et al. ; 2026 ; arXiv:2603.08091) Benchmark de biais pour LLM-juges : 12 types de biais, 4 dimensions. Les juges actuels montrent des patterns de biais significatifs.

Pour T1 : vérifier que les LLM-juges utilisés pour annoter PD/H ne sont pas biaisés vers les styles créatifs ou formels. 
BiasScope (Lai, Ou, Wang et al. ; 2026 ; arXiv:2602.09383) Framework automatique pour découvrir des biais inconnus dans LLM-juges. Taux d'erreur > 50% sur JudgeBench-Pro même pour les modèles puissants.

Implication pour T1 : même les meilleurs LLM-juges font > 50% d'erreurs sur les cas difficiles. Le corpus PD/H de T1 sera justement composé de cas difficiles → annotation humaine obligatoire pour validation. 
7.2 Recommandations pratiques pour T1

Étape	Méthode	LLM-juge	Humain
Claim extraction	FActScore + JointCQ	Optionnel pour validation	Validation sur 10%
Classif. S / H / U	Pipeline NLI (HalluLens-style)	Oui (3 LLMs)	Pour désaccords
Classif. SV vs claims	GPT-4o + rubric	Oui (1 LLM)	Validation sur 20%
Classif. PD / H sur κ>0	Panel 3 LLMs + Verdict	Oui (3 LLMs)	Obligatoire (100%)
Dimension "useful"	Rubric TTCT (HIC-Bench)	Secondaire	Principal (100%)



8. HIC-Bench — Le concurrent direct à suivre de près
HIC-Bench (Yang, Yuan, Cai, Jiang, Hu ; arXiv:2512.21635 ; Dec 2025) C'est la seule publication qui fait la distinction IH (Intelligent Hallucinations) / DH (Defective Hallucinations) — analog à PD/H de T1.
Similitudes avec T1 :

Multi-dimensional scoring : Originality, Feasibility, Value (TTCT) + plausibilité scientifique + déviation factuelle. 
10 domaines scientifiques. 
LLM-juges + annotateurs humains pour validation IH/DH. 
Relation non-linéaire entre IH et DH. 
Différences critiques (avantages de T1) :

HIC-Bench n'encode pas le contrat du prompt (TR). Un claim peut être IH mais H sous TR si κ = 0 dans le prompt. 
Pas de dimension σ (latitude stylistique) — HIC-Bench ignore les métaphores. 
Pas de variable oracle O — l'oracle est implicite. 
Pas de comparaison avec HalluLens ou benchmarks existants. 
Stratégie de positionnement : T1 peut directement citer HIC-Bench comme travail parallèle avec la différence clé :

"HIC-Bench fait la distinction IH/DH sans encoder le contrat du prompt. Notre framework TR montre que la même distinction dépend de ce que le prompt autorise — le même output peut être IH sous un TR permissif et DH sous un TR strict."




9. Corpus existant R6 — Ce que T1 peut exploiter directement
9.1 Rappel des caractéristiques de R6

12 469 outputs de 10 modèles × 3 tâches × 3 niveaux CI × 3 longueurs × 5 températures. 
310 357 claims vérifiés avec HalluLens. 
Taux de hallucination moyen : 60% (Supported : 36,4% ; Hallucinated : 50,8% ; No claim : 12,7%). 
Résultats clés : format +21,4% H ; CI +12,8% H ; température ≈ 0 H. 
9.2 Ce que T1 fait avec R6
Étape 1 — Annotation TR sur sous-ensemble (M0–M3) Prendre un sous-ensemble stratifié de R6 : 1000–1500 claims × 3 niveaux CI × 3 tâches. Sur-représenter les outputs VERY_CREATIVE (là où PD est le plus probable).
Étape 2 — Reclassification avec les 5 labels T1 (M3–M5) Pour chaque claim annoté, assigner un label parmi {S, H, PD, U, SV}. Comparer le verdict original HalluLens (S/H) avec le nouveau verdict T1 (S/H/PD/U/SV).
Étape 3 — Analyse des déviations (M5–M7) Calculer :

Taux de faux positifs H dans HalluLens (claims classés H par HalluLens mais PD ou SV sous T1). 
Distribution des 5 labels par (tâche, CI, format). 
Zones de tractabilité : quelles combinaisons (tâche × CI × format) ont κ > 0,70 ? 
Étape 4 — Comparaison des rankings modèles (M7–M9) Recalculer les rankings de modèles sous T1 vs HalluLens. Métrique : τ de Kendall entre rankings. Si τ < 0,85 → T1 produit une information nouvelle non capturée par HalluLens.
9.3 Corpus additionnels à envisager pour la validation externe

Corpus	Taille	Caractéristique pertinente	Usage pour T1
HIC-Bench	Inconnu	IH/DH annotations + TTCT	Comparaison inter-cadres
LitBench	2 480 comparaisons	Créativité narrative humaine	Validation externe sur créatif
CreativityPrism	8 376 (sous-ensemble R6)	TTCT scores existants	Corrélation PD × TTCT
RAGTruth	15k	Annotations word-level H	Comparaison granularité
HalluHard	950	Multi-turn, domaines haute stakes	Validation zone κ ≈ 0



10. Plan d'expérience détaillé T1
10.1 Phase 0 — Préparation du Manuel d'annotation (M0–M1)
Livrables :

Manuel v1 : définitions opérationnelles de S, H, PD, U, SV avec exemples (30+ exemples par catégorie, couvrant les 3 tâches de R6). 
Questions d'annotation (voir section 4.1). 
Rubrique TTCT pour la dimension "useful" de PD (Originality, Feasibility, Value). 
Formulaire d'annotation : claim + context ±2 claims + prompt → label + confiance + explication. 
Ressources de référence pour la rédaction :

Protocole HalluLens (annexe B de Bang et al. 2025) comme point de départ. 
Rubrique HIC-Bench (Yang et al. 2025) pour la dimension "useful". 
Guidelines MAFALDA (Helwe et al. 2023) pour la subjectivité. 
10.2 Phase 1 — Pilote d'annotation (M1–M2)
Setup :

200 prompts × 3 annotateurs = 600 verdicts. 
Stratification : 66 FACTUAL + 67 HYBRID + 67 VERY_CREATIVE × 3 tâches. 
Annotateurs : 2 doctorants NLP + 1 expert domaine. 
Métriques à calculer :

κ de Fleiss par label (S, H, PD, U, SV). 
κ par dimension (grounded vs useful). 
Taux de désaccord par combinaison (tâche × CI). 
Temps par claim (pour estimer budget campagne complète). 
Critère de passage : κ ≥ 0,70 sur S, H, U, SV. κ ≥ 0,60 sur PD (tolérance). Si κ PD < 0,60 sur la dimension "useful" : basculer vers soft labels.
10.3 Phase 2 — Campagne complète (M3–M5)
Volume cible : 1 000–1 500 claims annotés. Stratification :

40% VERY_CREATIVE (zone la plus intéressante pour PD). 
30% HYBRID. 
30% FACTUAL (contrôle). 
Sur-représenter LESSON_PLAN (tâche avec H-rate le plus élevé à 73,6%). 
Options de scaling :

Option A : 3 annotateurs humains sur tout le corpus (coûteux mais gold standard). 
Option B : LLM-as-judge (panel 3 LLMs) + annotation humaine sur 20% + tous les cas PD. 
Option C : Hybrid — humain sur pilote + ANAH-v2 self-training pour scale up. 
Recommandation : Option B pour M3–M5, avec validation humaine systématique sur PD.
10.4 Phase 3 — Analyse et rédaction (M5–M9)
Analyse statistique :

GLM : effet du TR (κ, σ) sur la distribution des 5 labels. 
GLMM : variance intra-prompt vs inter-prompt. 
Test de Mann-Whitney U : comparaison H-rate HalluLens vs H-rate T1 par condition. 
Tau de Kendall : comparaison rankings modèles. 
Hypothèses pré-enregistrées :

H1 : HalluLens sur-estime H sous VERY_CREATIVE × haute σ (métaphores, styles marqués). 
H2 : HalluLens ne reconnaît pas PD — pas de class "licensed-invention". Mesurable. 
H3 : Sous FACTUAL × κ = 0, T1 et HalluLens convergent (τ > 0,90). 
H4 : Sous VERY_CREATIVE × haute σ, T1 et HalluLens divergent (τ < 0,70). 
H5 : La zone de tractabilité PD/H corrèle avec la structure du format (LESSON_PLAN : basse tractabilité ; NEWS_ARTICLE : haute tractabilité via contraintes journalistiques). 


11. Outils recommandés pour T1
11.1 Stack technique

Composant	Outil recommandé	Alternative	Justification
Claim extraction	FActScore pipeline (forké)	JointCQ, VeriFact	Standard établi, modifiable
Dense retrieval	gtr-t5-large (R6 existant)	DRAGON+, BM25 hybride	Comparabilité avec R6
NLI vérification	HalluLens protocol (LLM-based)	DeBERTa NLI, minicheck	Flexibilité sur les classes
LLM-juge	Panel : GPT-4o + Llama3.3 + Qwen3	Verdict library (Kalra 2025)	Diversité des juges
Annotation interface	Label Studio (open-source)	Prodigy, Argilla	Gratuit, configurable
Métriques IAA	NLTK/sklearn (κ), krippendorff-py	statsmodels	Standard Python
Soft labels	scikit-learn (distribution)	TID-8 tools	Compatible sklearn
Analyse statistique	R (lme4, GLM) ou Python (statsmodels)	Identique à R6	Comparabilité avec R6

11.2 Annotation tool — Label Studio
Label Studio (open-source) permet de créer une interface d'annotation customisée avec :

Affichage du claim + contexte ±2 claims + prompt entier. 
Sélection du label TR (S/H/PD/U/SV) + confiance (1-5) + explication NL (champ texte). 
Export JSON compatible avec les métriques IAA Python. 
Configuration suggérée :

Projet Label Studio avec 3 annotateurs en parallèle (blind annotation). 
Calcul automatique du κ après chaque batch de 50 claims. 
File de reconciliation pour les désaccords (4e annotateur expert = adjudication). 


12. Stratégie de publication
12.1 Scénario nominal (κ PD ≥ 0,70)
Papier P1 — "Beyond Hallucination or Not: Annotating Truth Regimes in LLM Outputs"

Venue cible : ACL 2026 ou EMNLP 2026. 
Contribution : dataset TR-annotated (1000–1500 claims) + manuel d'annotation + preuve que HalluLens sur-estime H sous régimes créatifs. 
Papier P1B — Stress test σ (court)

Venue cible : Workshop GENEVAL@EMNLP ou GEM. 
Contribution : benchmark de faux positifs stylistiques dans les pipelines NLI standards. 
12.2 Scénario de repli (κ PD < 0,70)
Reformulation : "La zone PD/H est indéterminable au-delà de cette frontière — voici comment caractériser l'indétermination et pourquoi c'est un résultat scientifique."

H2 devient la contribution centrale : soft labels + carte des zones tractables/non-tractables. 
Papier sur "Annotating Epistemic Ambiguity in LLM Outputs under Varying Permission Regimes". 
12.3 Lien avec les trajectoires suivantes

T1 fournit le dataset d'annotation pour T2 (tâche PD vérifiable — sélectionner les cas où κ > 0,70 pour la tâche-cible). 
T1 fournit les paires (PD, H) pour T3 (CreativeSteer — utiliser les claims extrêmes clairement annotés comme paires d'entraînement). 
T1 fournit la mesure de confiance pour T4 (métacognition — les claims U/non-tractables sont exactement ceux où le modèle devrait hedger). 


13. Résumé exécutif — Pourquoi T1 est solide
Forces :

Corpus existant de 12 469 outputs + 310 357 claims : infrastructure déjà construite. 
SOTA mature sur la décomposition et la vérification : on hérite sans réinventer. 
HIC-Bench (Dec 2025) valide que la distinction IH/DH est publiable. 
Banerjee et al. (Dec 2025) valide empiriquement que PD ≠ H dans les représentations. 
Lacune conceptuelle claire : aucun pipeline encode σ/κ — T1 est le premier. 
Risques :

κ < 0,70 sur PD : gérable par soft labels + reformulation (section 5.3). 
Rankings T1 ≈ Rankings HalluLens (τ > 0,85) : repositionner sur "précision de l'erreur" plutôt que sur le ranking. Toujours publiable. 
Budget annotation : 1000 claims × 3 annotateurs × ~3 min/claim = ~150h. Tarif master NLP (~20€/h) = 3 000€ pour l'annotation humaine. Faisable. 
Différenciation : La phrase de différenciation clé à mettre dans l'intro du papier :

"Every existing hallucination pipeline assumes a single fixed oracle and zero invention license. We introduce the first annotation layer that makes the truth regime explicit: what the prompt authorized determines whether a deviation is a hallucination or a productive divergence. This layer changes model rankings."




Rapport T1 — v1.0 — Sources : HuggingFace Papers Hub (2023–2026), arXiv. Prêt à utiliser comme base pour le deck PowerPoint et le pré-enregistrement OSF.
