# État de l'art : extraction de faits et évaluation de la factualité en génération long-form (2022-2026)

## TL;DR
- En long-form, l'extraction de faits s'est stabilisée autour du paradigme *Decompose-Then-Verify* (FActScore → SAFE → VeriScore → Claimify), mais les travaux récents (Gunjal & Durrett 2024 ; Wanner et al. 2024 ; Jiang et al. 2024 ; DnDScore 2024) montrent que ni l'atomicité maximale ni la décontextualisation ne suffisent isolément : il faut conjointement décontextualiser, filtrer les sous-claims non informatifs, et choisir une granularité « moléculaire » adaptée au vérificateur.
- Les jeux de données d'évaluation se scindent clairement en deux familles : (a) ceux qui annotent la qualité même de l'extraction/décomposition (WiCE, RoSE/ACU, ClaimDecomp, Claimify dataset, Factcheck-Bench) et (b) ceux qui fournissent les prompts long-form sur lesquels appliquer un pipeline complet (LongFact, FActScore-bios, HalluLens/LongWiki, WildHallucinations, FreshBooks, FactBench).
- Pour un pipeline HalluLens-style (extraction LLM → retrieval Wikipédia dense → NLI), la combinaison la plus robuste documentée dans la littérature 2025-2026 est : extraction VeriScore ou Claimify (claims vérifiables uniquement) → décontextualisation jointe DnD (Wanner et al. 2024) → filtrage Core (Jiang et al. 2024) → NLI fine-grained type MiniCheck/WiCE, le tout évalué via F1@K en suivant LongFact/LongWiki.

## Key Findings
1. **Paradigme dominant.** Tous les travaux long-form 2023-2026 reposent sur la décomposition de la réponse en unités sub-phrastiques (« atomic facts », « subclaims », « molecular facts », « ACUs », « verifiable claims ») suivie d'une vérification indépendante de chaque unité contre un oracle (Wikipédia, recherche web, document fourni). FActScore (Min et al., EMNLP 2023, arXiv:2305.14251) constitue la référence fondatrice, dont dérivent SAFE, VeriScore, D-FActScore, Claimify et HalluLens.
2. **Décontextualisation comme étape de premier plan.** Depuis Gunjal & Durrett (« Molecular Facts », Findings EMNLP 2024, arXiv:2406.20079) et Wanner et al. (DnDScore, arXiv:2412.13175), la décontextualisation n'est plus optionnelle : elle est traitée comme un sous-problème à part entière, avec ses critères de *décontextualité* et de *minimalité*, et ses interactions non triviales avec la décomposition.
3. **Modes d'échec spécifiques au long-form** désormais documentés : (i) inflation artificielle du score par sous-claims triviaux/répétés (Core, Jiang et al. 2024) ; (ii) ambiguïté d'entité produisant des « contradictions agrégées » (D-FActScore, Choi et al. 2024) ; (iii) extraction de claims non vérifiables (VeriScore) ; (iv) perte de contexte intra-phrase invalidant la vérification (DnDScore) ; (v) atomicité mal calibrée par rapport au vérificateur (Hu et al. 2024, arXiv:2411.02400).
4. **Datasets dédiés à l'évaluation de l'extraction** restent peu nombreux mais convergent : RoSE/ACU (Liu et al. 2023), WiCE (Kamoi et al. 2023), ClaimDecomp (Chen et al. 2022), Factcheck-Bench (Wang et al. 2024), et désormais le Claimify dataset (Metropolitansky & Larson 2025, 6 490 phrases annotées). Les benchmarks long-form pour la factualité globale (LongFact, HalluLens/LongWiki, WildHallucinations) annotent rarement directement la qualité de l'extraction.
5. **Tendance 2025-2026.** Passage à des extracteurs-vérificateurs jointes entraînés (VeriFastScore, FaStFact), à des cadres probabilistes (FactReasoner) ou multi-agents (MAD-Fact), et à l'optimisation conjointe décomposition-vérification (Lu et al. ACL 2025, arXiv:2503.15354).

## Details

### 1. Méthodes d'extraction de faits en contexte long-form

#### 1.1. La filiation FActScore et l'atomisation par prompt LLM
**FActScore** (Min et al., EMNLP 2023, arXiv:2305.14251) définit l'unité de base — l'*atomic fact* (« short statement containing one piece of information ») — et le pipeline canonique : décomposition par InstructGPT/ChatGPT en phrases atomiques, vérification de chaque atome contre la Wikipédia anglaise via trois oracles (No-context LM, Retrieve→LM avec GTR, Nonparametric Probability). Évalué sur des biographies de personnes (500 entités, jusqu'à 6 500 générations couvrant 13 LMs), il établit la première mesure de précision factuelle à grain fin sur du texte long-form. Limites identifiées par la suite : le prompt d'extraction est optimisé pour les biographies, il ne résout pas les pronoms, et il extrait indistinctement faits et opinions.

**SAFE** (Wei et al., NeurIPS 2024, arXiv:2403.18802) généralise l'approche à l'open-domain en remplaçant l'oracle Wikipédia par Google Search. SAFE décompose la réponse en faits individuels, puis pour chaque fait orchestre un agent LLM qui formule des requêtes de recherche, examine les résultats et émet un verdict {Supported, Not Supported, Irrelevant}. Le passage au search ouvert est accompagné d'une métrique F1@K (K = nombre de faits attendu par l'utilisateur). Le papier rapporte que SAFE s'accorde avec les annotateurs humains dans 72 % des cas sur ~16 000 faits individuels, et qu'il « est plus de 20 fois moins coûteux que les annotateurs humains » (formulation exacte de l'abstract : *« SAFE is more than 20 times cheaper than human annotators »*).

**VeriScore** (Song, Kim, Iyyer, Findings EMNLP 2024, arXiv:2406.19276) corrige deux défauts hérités de FActScore/SAFE : extraction indiscriminée et non-résolution des références. VeriScore introduit une extraction *contextualisée par fenêtre glissante* : on présente à l'extracteur la phrase courante avec ±1 phrase de contexte et on lui demande de n'extraire que les *claims vérifiables* (factuels, non-opinions, autonomes). Il est appliqué sur huit domaines long-form (Biography, ELI5, AskHistorians, ShareGPT, LongFact, WritingPrompts, FreshQA et le nouveau **FreshBooks** : 200 prompts de continuation de paragraphes issus de 20 livres non-fictionnels publiés en 2023-2024). VeriScore peut être instancié avec un modèle ouvert fine-tuné, ce qui le rend reproductible.

**Claimify** (Metropolitansky & Larson, Microsoft Research, ACL 2025, arXiv:2502.10855) introduit un pipeline LLM multi-étapes (sentence splitting → selection → disambiguation → decomposition) avec un trait distinctif : Claimify n'extrait un claim que si l'interprétation source est jugée *non ambiguë avec haute confiance*. Le papier formalise pour la première fois un cadre d'évaluation de l'extraction sur quatre axes (couverture, décontextualisation, entailment, pertinence). Il est associé à un jeu de données public (`microsoft/claimify-dataset` sur Hugging Face) : 6 490 phrases issues de 396 réponses long-form de BingCheck (Li et al. 2024), chacune annotée binairement « contient un claim factuel vérifiable » avec exactement 59 % de phrases positives dans le set publié (le papier rapporte 63 % avant exclusions documentées en annexe F).

#### 1.2. La granularité comme problème de premier plan : du fait atomique au fait moléculaire
**Molecular Facts** (Gunjal & Durrett, Findings EMNLP 2024, arXiv:2406.20079) constitue le tournant conceptuel : les auteurs montrent qu'un fait pleinement atomique (du type « He was born in 1949 ») n'est pas la bonne représentation parce qu'il perd la résolution d'entité. Ils définissent deux critères concurrents — **décontextualité** (capacité à se tenir seul) et **minimalité** (peu d'information ajoutée) — et proposent une méthode de génération automatique (SIMPLE-DECONTEXT) qui identifie d'abord les ambiguïtés puis enrichit la claim. Sur des biographies à entités ambiguës, les molecular facts surpassent à la fois les atomic facts et les phrases pleines.

**DnDScore** (Wanner, Van Durme & Dredze, arXiv:2412.13175, déc. 2024) étudie systématiquement l'interaction entre décomposition et décontextualisation, et propose DnD, une méthode jointe qui produit simultanément le sous-claim atomique *et* sa version décontextualisée enrichie. Le scoring vérifie la version décontextualisée tout en attribuant le crédit à la sous-claim atomique, ce qui évite la sur-pénalisation des claims correctement décontextualisés mais devenus multi-propositionnels.

**A Closer Look at Claim Decomposition** (Wanner, Ebner, Jiang, Dredze, Van Durme, *SEM 2024, arXiv:2403.11903) propose la décomposition **R-ND** (Russellienne / néo-Davidsonienne), une méthode par prompting avec 21 exemples in-context où chaque sous-claim est soit une propriété d'un individu, soit une relation binaire entre individus (les événements étant traités comme des individus). Ils introduisent **DecompScore**, qui mesure la qualité de décomposition en testant si l'*original claim* implique chaque sous-claim (l'inverse de FActScore). R-ND atteint le DecompScore le plus élevé, exactement 42,3 (macro-moyenne sur 12 LMs, Tableau 2 du papier), devant D_Chen à 32,1, D_FActScore à 31,7 et D_WICE à 20,0.

#### 1.3. Filtrage et robustesse des sous-claims
**Core** (Jiang, Zhang, Weir, Ebner, Wanner, Sanders, Khashabi, Liu, Van Durme ; arXiv:2407.03572 ; ACL Findings 2025) observe que FActScore et dérivés peuvent être manipulés par injection de sous-claims triviaux ou répétés (« He is a person », « He existed ») qui gonflent artificiellement la précision. Core est un composant plug-and-play qui pondère chaque sous-claim par sa surprisal/unicité, puis sélectionne par optimisation un sous-ensemble informatif et non redondant. Appliqué à FActScore/SAFE/VeriScore, il rend l'évaluation stable sous attaque par dilution.

**D-FActScore** (Choi, Kim, Lee 2024 ; ACL Findings 2024, arXiv:2402.05629) résout le problème dual : des biographies dont chaque fait est individuellement vérifiable mais qui combinent l'information de deux entités homonymes (e.g. deux « Dick Hanley »). D-FActScore regroupe les faits référant à une même personne, sélectionne l'entité de la base de connaissances qui maximise le match, et ne vérifie que les faits contre la fiche de cette entité — abaissant le FActScore de 8 à 16 points sur le sous-jeu AmbigBio.

**Hu et al. — Decomposition Dilemmas** (arXiv:2411.02400, nov. 2024) démontre empiriquement qu'il existe un *trade-off accuracy–noise* dans la décomposition : décomposer aide les vérificateurs faibles (NLI peu performants) mais pénalise les vérificateurs forts (qui géraient déjà les claims complexes) ; l'effet dépend également de la longueur d'entrée. Cela invalide l'hypothèse implicite « décomposer est toujours bénéfique » et motive les approches adaptatives (Dynamic Decomposition, Lu et al. ACL 2025, arXiv:2503.15354), où un agent appris produit la granularité préférée par le vérificateur en aval.

#### 1.4. RARR et l'extraction post-hoc pour attribution
**RARR** (Gao et al., ACL 2023, arXiv:2210.08726) est antérieur à FActScore mais s'inscrit dans la même famille : il décompose une sortie LM en *aspects* via une série de questions, recherche des preuves via un moteur de recherche, puis post-édite la sortie pour la rendre attribuable tout en préservant le texte original. RARR définit la tâche d'*Editing for Attribution* avec un double critère attribution/préservation (F1AP), et reste la référence pour la correction post-hoc à grain de phrase.

#### 1.5. Évaluation de résumés et Atomic Content Units
Les **ACUs** (Atomic Content Units) de **RoSE** (Liu, Fabbri, Wu, Zhao, Liu, Joty, Wan, Liu, Radev ; arXiv:2212.07981 ; EMNLP 2023) précèdent FActScore historiquement (annotations sur CNNDM, XSum, SamSum) et établissent le protocole « décomposer le résumé de référence en faits atomiques, puis vérifier la couverture de chaque ACU par le résumé candidat ». Ils restent l'étalon-or pour évaluer la couverture informationnelle en résumé long, et ont directement inspiré l'unité atomique de FActScore.

#### 1.6. Approches récentes 2025-2026 : extracteurs-vérificateurs jointes et pipelines optimisés
- **VeriFastScore** (Rajendhran et al. 2025, arXiv:2505.16973) fine-tune Llama-3.1-8B-Instruct pour effectuer dans un seul forward pass l'extraction *et* la vérification de tous les claims vérifiables d'une réponse long-form, à partir de preuves Google consolidées au niveau phrase. L'abstract rapporte une corrélation Pearson r=0,80 (p<0,001) au niveau example, r=0,94 au niveau système, et une accélération globale de 6,6× (9,9× hors récupération de preuves) par rapport à VeriScore.
- **FaStFact** (arXiv:2510.12839, EMNLP Findings 2025) introduit l'extraction par chunks avec **pré-vérification à confiance** (le LLM tranche d'abord avec sa connaissance interne ; recherche externe seulement si confiance faible) et publie FaStFact-Bench : 400 paires QA long-form entièrement annotées.
- **FactReasoner** (Marinescu et al. 2025, arXiv:2502.18573) est un cadre neuro-symbolique : atomes extraits, contextes récupérés, puis modèle graphique probabiliste sur atomes et contextes encodant entailment/contradiction, marginalisation par Weighted Mini-Buckets ; ajoute une mesure d'entropie.
- **MAD-Fact** (arXiv:2510.22967) implémente un cadre multi-agents (Clerk décompose, Jury débat avec retrieval, Judge agrège) et introduit une hiérarchie d'importance des faits ; publie LongHalluQA (chinois, taille à vérifier).
- **Optimizing Decomposition** (Lu, Ziems, Dang, Jiang ; ACL 2025, arXiv:2503.15354) formule l'optimisation conjointe décomposition-vérification comme un problème bilevel NP-difficile et propose **DyDecomp**, une politique RL apprise qui produit une atomicité dynamique adaptée au vérificateur.
- **DecMetrics** (arXiv:2509.04483) introduit COMPLETENESS, CORRECTNESS et SEMANTIC ENTROPY comme métriques automatiques pour évaluer la qualité d'une décomposition.

### 2. Stratégies de décontextualisation pour réponses longues
La littérature 2024-2025 a fait émerger un consensus en trois temps :
1. **SAFE-DECONTEXT** (révision implicite à l'intérieur de SAFE) — modification minimale, mais souffre d'ambiguïtés résiduelles.
2. **SIMPLE-DECONTEXT** (Gunjal & Durrett 2024) — prompt en deux étapes : identifier d'abord les ambiguïtés, puis enrichir ; produit les claims les plus autonomes mais ajoute beaucoup d'information.
3. **DnD** (Wanner et al. 2024) — décomposition et décontextualisation conjointes, qui maintiennent l'équilibre minimalité/décontextualité ; la vérification opère sur la décontextualisée tout en attribuant le crédit à la sous-claim atomique.

Trois ordonnancements ont été comparés (Wanner et al. 2024) : décomposer puis décontextualiser, décontextualiser puis décomposer, ou jointement (DnD). DnD domine. Pour un pipeline HalluLens-style, l'ordonnancement DnD avec vérification NLI sur la décontextualisée est la pratique défendue.

### 3. Granularité et modes d'échec en long-form
Les modes d'échec recensés dans la littérature 2024-2025 :
- **Atomes inflationnistes / triviaux** : score gonflé par répétition (Jiang et al. 2024, Core).
- **Claims abandonnés (dropped claims)** : faits présents dans la réponse mais ignorés par l'extracteur (couverture faible) — métrique de couverture introduite par Claimify (Metropolitansky & Larson 2025).
- **Claims hallucinés par l'extracteur** : faits absents de la réponse mais générés par l'extracteur LLM — typiquement quand l'extracteur résout les ambiguës par hallucination (Claimify §3).
- **Erreurs de décontextualisation** : référence erronée, ambiguïté d'entité, sur-spécification (Gunjal & Durrett 2024 ; D-FActScore).
- **Aggregation fallacy** : faits individuellement vrais combinés en un paragraphe non factuel par mélange d'entités (D-FActScore, Choi et al. 2024).
- **Mismatch atomicité-vérificateur** : la décomposition ne correspond pas à la granularité que le vérificateur sait traiter (Hu et al. 2024 ; Lu et al. ACL 2025).
- **Extraction d'opinions/non-vérifiables** : faits non factuels traités comme factuels (VeriScore).

### 4. Jeux de données d'évaluation de l'extraction (qualité de la décomposition)

| Dataset | Année | Annotation centrale |
|---|---|---|
| **RoSE / ACU** | 2023 | ACUs écrites manuellement sur résumés de référence (CNNDM/XSum/SamSum), puis matching ACU↔résumé système |
| **WiCE** | 2023 | Sub-claims décomposés par GPT-3.5, chacun annoté en {Supported, Partial, Not-Supported} avec preuves Wikipédia |
| **ClaimDecomp** | 2022 | Sous-questions yes/no (littérales et implicites) annotées manuellement pour des claims politiques PolitiFact |
| **Factcheck-Bench** | 2024 | Annotations 8-étapes (décomposition, décontextualisation, check-worthiness, retrieval, stance, correction) au triple grain claim/sentence/document |
| **Claimify dataset** | 2025 | 6 490 phrases de BingCheck annotées binairement « contient un claim factuel vérifiable » (59 % positives) |
| **ClaimBuster** | 2020 | 23 533 phrases de débats présidentiels US (1960-2016), trois classes : CFS / UFS / NFS |

### 5. Benchmarks de factualité long-form (prompts + oracle)

| Dataset | Année | Type |
|---|---|---|
| **FActScore biographies** | 2023 | Bios de personnes Wikidata, oracle = Wikipédia |
| **LongFact** | 2024 | 2 280 prompts GPT-4-générés × 38 sujets ; LongFact-Objects / LongFact-Concepts |
| **HalluLens / LongWiki** | 2025 | 250 prompts dynamiques par run, sourcés de GoodWiki ; pipeline SAFE-like contraint à Wikipédia |
| **WildHallucinations** | 2024 | 7 919 entités du monde réel issues de WildChat ; 52 % sans page Wikipédia ; 118 785 générations de 15 LLMs |
| **FreshBooks** (VeriScore) | 2024 | 200 prompts de continuation de paragraphes de 20 livres récents |
| **FactBench** | 2025 | 1 000 prompts éliciteurs d'hallucination (LMSYS-Chat-1M), classés Easy/Moderate/Hard |
| **AVeriTeC** | 2023 | 4 568 claims réels fact-checkés par 50 organisations, QA + verdict |
| **FEVER** | 2018 | 185 445 claims modifiés à partir de phrases Wikipédia, labels S/R/NEI |
| **FEVEROUS** | 2021 | 87 026 claims, preuves sur sentences + tables |
| **Check-COVID** | 2023 | 1 504 claims COVID-19 vs CORD-19 |

### 6. Recommandation architecturale pour un pipeline HalluLens-style
Pour le cas d'usage explicite (extraction atomique LLM → retrieval Wikipédia dense → verdict NLI), la littérature converge sur l'architecture suivante :
1. **Extraction** : prompt VeriScore (claims vérifiables uniquement) OU pipeline Claimify (sélection + désambiguïsation explicite), avec fenêtre glissante ±1 phrase.
2. **Décontextualisation** : DnD (Wanner et al. 2024) — produire conjointement la sous-claim atomique et sa décontextualisée pour résoudre pronoms et entités ambiguës.
3. **Filtrage Core** : éliminer les sous-claims redondants/triviaux pour la robustesse aux dilutions.
4. **Retrieval dense Wikipédia** : GTR (FActScore) ou Contriever ; pour entités ambiguës, suivre la stratégie D-FActScore (entity linking préalable puis retrieval ciblé sur la fiche choisie).
5. **NLI verdict** : MiniCheck (Tang et al. 2024) ou un modèle DeBERTa-v3 fine-tuné sur WiCE, opérant sur la décontextualisée comme hypothèse.
6. **Métrique d'agrégation** : F1@K (SAFE) ou F1@32 (HalluLens/LongWiki), avec false-refusal-rate, et idéalement Core-adjusted FActScore pour la robustesse.

### Tableau comparatif 1 — Méthodes d'extraction

| Méthode | Technique d'extraction | Granularité | Décontextualisation | Oracle visé | Dataset associé | Année |
|---|---|---|---|---|---|---|
| FActScore (Min et al.) | Prompting InstructGPT/ChatGPT (sentence split + LLM atomization) | Atomic fact (≈ proposition) | Non explicite | Wikipédia (GTR retrieval) | Biographies Wikidata (500 entités, 6 500 générations) | 2023 |
| SAFE (Wei et al.) | LLM agent breakdown | Individual fact | Implicite (révision LLM) | Google Search | LongFact | 2024 |
| VeriScore (Song et al.) | Prompt avec contexte ±1 phrase ; extraction de claims **vérifiables** uniquement ; modèle ouvert fine-tunable | Verifiable claim | Oui (fenêtre glissante) | Web (Serper API) | 8+ domaines (Biography, ELI5, AskHistorians, ShareGPT, LongFact, FreshBooks…) | 2024 |
| Claimify (Metropolitansky & Larson) | Pipeline LLM 4 étapes : split → selection → disambiguation → decomposition ; n'extrait que si interprétation non ambiguë avec haute confiance | Verifiable factual claim | Oui (étape explicite de désambiguïsation) | Web (orienté Azure AI Groundedness) | Claimify dataset (6 490 phrases BingCheck) | 2025 |
| Molecular Facts (Gunjal & Durrett) | Prompt 2 étapes : identification d'ambiguïté + enrichissement (SIMPLE-DECONTEXT) | Molecular fact (décontextualité + minimalité) | Oui, premier plan | Wikipédia | AmbigBio (sous-jeu FActScore) | 2024 |
| DnDScore (Wanner et al.) | Décomposition et décontextualisation jointes (DnD) ; vérification sur la décontextualisée | Subclaim + version décontextualisée | Oui, conjointe | Document / Wikipédia | FActScore bios étendu | 2024 |
| Core (Jiang et al.) | Filtre plug-and-play par surprisal/unicité sur sous-claims existants | Conserve la granularité d'entrée | Hérité | Hérité (FActScore/SAFE/VeriScore) | FActScore-bios étendu, MMLU-bio | 2024-2025 |
| D-FActScore (Choi et al.) | FActScore + groupement par entité + entity linking | Atomic fact regroupé par entité | Non, mais désambiguïsation d'entité | Wikipédia (page de l'entité choisie) | AmbigBio | 2024 |
| RARR (Gao et al.) | Génération de questions (CoQA-like) + recherche + post-édition | Aspect / question | Implicite | Google Search | NQ, SQA, QReCC | 2023 |
| R-ND / DecompScore (Wanner et al. *SEM) | Prompt LLM avec 21 exemples Russelliens/néo-Davidsoniens | Proposition logique (propriété ou relation binaire) | Optionnelle | N/A (mesure de décomposition) | FActScore bios (12 LMs) | 2024 |
| Hu et al. — Decomposition Dilemmas | Analyse comparative de décomposeurs ; pas de méthode nouvelle | Variable | Variable | Variable | ClaimDecomp, FELM, BingChat | 2024-2025 |
| HalluLens / LongWiki (Bang et al.) | Pipeline SAFE-like avec recherche restreinte à Wikipédia | Atomic claim | Implicite (héritée de SAFE) | Wikipédia | LongWiki (250 prompts GoodWiki dynamiques) | 2025 |
| ACU / RoSE (Liu et al.) | Annotation humaine d'unités atomiques de contenu sur résumés de référence | Atomic Content Unit | Non | Résumé de référence | CNNDM, XSum, SamSum | 2023 |
| VeriFastScore (Rajendhran et al.) | Llama-3.1-8B fine-tuné pour extraction+vérification jointe en un forward pass | Verifiable claim | Implicite | Web (Google Search consolidé) | VeriScore data + Tulu3-Personas | 2025 |
| FactReasoner (Marinescu et al.) | Extraction atomique + modèle graphique probabiliste sur atomes/contextes | Atomic unit | Hérité | Wikipédia / Web | Biographies, AskHistorians, ELI5, FreshBooks, LongFact-Objects | 2025 |
| MAD-Fact (Ning et al.) | Multi-agents : Clerk (décompose) + Jury (débat avec retrieval) + Judge (agrège) | Atomic claim avec poids d'importance | Implicite | Web | LongHalluQA (CN) | 2025 |
| FaStFact | Extraction par chunks + pré-vérification à confiance | Atomic claim au niveau chunk | Implicite | Documents web crawlés | FaStFact-Bench (400 QA) | 2025 |
| DyDecomp / Lu et al. | Politique RL apprise produisant atomicité dynamique alignée au vérificateur | Adaptative | Optionnelle | Variable | ClaimDecomp, WiCE, FActScore | 2025 |

### Tableau comparatif 2 — Jeux de données

| Dataset | Taille | Domaine | Unité d'annotation | Ce qui est annoté | Année |
|---|---|---|---|---|---|
| FActScore biographies | 500 entités × 13 LMs ≈ 6 500 générations ; 183 entités en set humain | Biographies de personnes (Wikidata) | Atomic fact | Supported / Not-supported / Irrelevant contre Wikipédia | 2023 |
| LongFact | 2 280 prompts (1 140 Objects + 1 140 Concepts), 38 sujets | Open-domain fact-seeking | Prompt long-form | Aucune annotation gold — sert de jeu de prompts pour pipeline SAFE | 2024 |
| RoSE / ACU | CNNDM-Test 500 docs / 5 600 ACUs ; CNNDM-Valid 1 000 docs / 11 600 ACUs ; XSum 500/2 300 ; SamSum 500/2 300 | Résumé de nouvelles, dialogues | Atomic Content Unit | Présence ACU dans résumé système ; ~50 000 jugements individuels | 2023 |
| WiCE | ~1 967 claims / ~5 377 sub-claims (Train 1 260/3 470, Dev 349/949, Test 358/958) | Wikipédia citée | Sub-claim (décomposé via GPT-3.5 « Claim-Split ») | Supported / Partial / Not-Supported + phrases-preuves + tokens non supportés | 2023 |
| ClaimDecomp | 1 200 claims (800/200/200) ; 6 555 sous-questions | Claims politiques PolitiFact | Sous-question yes/no | Sous-questions littérales et implicites, plus 6 labels de véracité | 2022 |
| Factcheck-Bench | 94 documents, 311 phrases, 678 claims, 661 check-worthy claims, 3 305 preuves | Réponses ChatGPT (dolly-15k + in-house) | Claim / sentence / document | 8 sous-tâches : décompose, décontextualise, check-worthiness, retrieval, stance, correction, claim-correction, response-revision | 2024 |
| Claimify dataset | 6 490 phrases issues de 396 réponses (59 % positives) | Réponses Microsoft Copilot / Bing Chat | Phrase | Contient ou non un claim factuel vérifiable (binaire, haute/basse confiance) | 2025 |
| AVeriTeC | 4 568 claims (3 068 / 500 / 1 000) | Fact-checks par 50 organisations | Claim + paire QA + justification | Supported / Refuted / Conflicting / Not Enough Info ; 2,6 questions/claim ; κ=0,619 | 2023 |
| ClaimBuster | 23 533 phrases | Débats présidentiels US 1960-2016 | Phrase | CFS (5 318) / UFS (2 328) / NFS (14 635) | 2020 |
| Check-COVID | 1 504 claims (70/15/15) | News COVID-19 vs CORD-19 abstracts | Claim (extracted + composed) | SUPPORT (505) / REFUTE (504) / NEI (495) + rationales | 2023 |
| FEVER | 185 445 claims | Wikipédia altérée | Claim | SUPPORTED / REFUTED / NOT ENOUGH INFO + sentence-level evidence | 2018 |
| FEVEROUS | 87 026 claims | Wikipédia, texte + tables | Claim | Verdict + preuves multimodales (phrases + cellules) | 2021 |
| HalluLens / LongWiki | 250 prompts par run (dynamiques) | GoodWiki (44 754 pages) | Prompt long-form | Évaluation automatique SAFE-like contrainte à Wikipédia ; F1@32 | 2025 |
| WildHallucinations | 7 919 entités (abstract) / 7 917 (corps après dédup) ; 118 785 générations de 15 LLMs ; 52 % sans Wikipédia | Entités réelles WildChat | Atomic fact | WildFactScore / WildFactScore-Strict | 2024 |
| FreshBooks (VeriScore) | 200 prompts (20 livres × 10 paragraphes) | Livres non-fictionnels 2023-2024 | Prompt de continuation | Pas d'annotation gold ; sert de jeu de prompts pour VeriScore | 2024 |
| FactBench | 1 000 prompts (de 294K LMSYS-Chat-1M) | Open-domain hallucination-eliciting | Prompt | Tiered Easy/Moderate/Hard + content units verdicts (VERIFY pipeline) | 2025 |
| BingCheck (Li et al.) | 396 réponses (source du Claimify dataset) ; la version « > 3 800 claims » décrite dans arXiv:2305.14623 reste à vérifier | Réponses Bing Chat / Copilot | Réponse long-form | Factualité des claims | 2024 |
| FaStFact-Bench | 400 paires QA long-form | Domaines divers | Réponse long-form | Annotations factualité complètes | 2025 |
| LongHalluQA (MAD-Fact) | à vérifier | Chinois, long-form | à vérifier | Factualité long-form | 2025 |

## Recommendations

**Étape 1 — Backbone d'extraction immédiat.** Adopter Claimify ou VeriScore comme extracteur de base : ils filtrent les non-vérifiables et résolvent partiellement les pronoms par fenêtre glissante. Claimify a l'avantage du dataset d'évaluation associé (6 490 phrases annotées) ; VeriScore a l'avantage d'un modèle ouvert fine-tunable et d'une couverture multi-domaines.

**Étape 2 — Renforcement par décontextualisation jointe.** Ajouter DnD (Wanner et al. 2024) pour produire conjointement la sous-claim atomique et sa version décontextualisée. Le retrieval dense Wikipédia s'effectue sur la requête décontextualisée ; le NLI prend la décontextualisée comme hypothèse, mais le crédit factuel est attribué à la sous-claim atomique (évite la dilution).

**Étape 3 — Robustesse par Core.** Brancher Core en post-traitement pour filtrer les sous-claims redondants/triviaux. Critère de déclenchement : si la distribution des sous-claims a une entropie faible (beaucoup de répétitions) ou si la longueur moyenne des sous-claims est inférieure à 6 tokens, Core est nécessaire.

**Étape 4 — Désambiguïsation d'entité.** Si le pipeline cible des entités ambiguës (homonymie de personnes, lieux), implémenter la stratégie D-FActScore : entity linking préalable contre Wikidata, puis retrieval contraint à la fiche identifiée.

**Étape 5 — Évaluation.** Bench primaire sur HalluLens-LongWiki (250 prompts GoodWiki, métrique F1@32) pour rester comparable à la littérature ; bench secondaire sur WildHallucinations (entités hors Wikipédia, pour tester la robustesse) ; bench de contrôle sur les biographies FActScore pour reproductibilité historique.

**Seuils déclenchant un changement de stratégie** :
- Si la corrélation Pearson avec annotateurs humains sur un sous-échantillon de 100 prompts < 0,7, basculer vers VeriFastScore ou MiniCheck (vérificateur unifié).
- Si la fraction de claims abandonnés (dropped) > 15 %, augmenter la fenêtre de contexte de l'extracteur ou adopter Claimify (qui pénalise explicitement la perte de couverture).
- Si la fraction de claims hallucinés par l'extracteur > 5 %, durcir le critère de confiance Claimify (n'extraire que les claims avec haute confiance).
- Si l'évaluation est dominée par des entités hors-Wikipédia (cas WildHallucinations), passer à un oracle web augmenté (SAFE-style) ou accepter le NEI/abstention.

## Caveats
- La distinction entre la version 396-réponses du dataset BingCheck (citée par Claimify) et la version > 3 800 claims décrite dans Self-Checker (arXiv:2305.14623) reste ambiguë ; les deux pourraient être des releases différentes du même dataset (**à vérifier**).
- WildHallucinations rapporte 7 919 entités dans son abstract mais 7 917 dans le corps du texte (dédup supplémentaire) ; les deux nombres apparaissent légitimement dans le papier.
- La taille de LongHalluQA (MAD-Fact, arXiv:2510.22967) n'a pas pu être extraite des snippets disponibles (**à vérifier** dans le PDF).
- FEVER : la valeur canonique est 185 445 claims (Thorne et al. NAACL 2018) ; certaines reprises secondaires rapportent 185 441 — l'écart provient d'erreurs de transcription.
- Les chiffres de VeriScore sur FreshBooks (200 prompts, 20 livres × 10 paragraphes) sont issus du Tableau 1 du papier arXiv:2406.19276 ; le critère « VerRatio » (verifiable-to-total ratio) est intrinsèquement dépendant du modèle d'extraction utilisé.
- La littérature 2025-2026 est encore en évolution rapide : FaStFact, MAD-Fact, FactReasoner et DyDecomp sont publiés en 2025 et n'ont pas encore été reproduits indépendamment ; les claims de performance doivent être considérés comme préliminaires.
- Aucune de ces méthodes ne résout définitivement le problème de la distinction entre claims non vérifiables d'une *abstention légitime* (« je ne sais pas ») et *refus injustifié* — le False Refusal Rate de HalluLens reste la mesure la plus avancée pour cette dimension.
- Le Claimify dataset publié sur Hugging Face affiche 59 % de phrases positives ; le papier original rapporte 63 % avant exclusions documentées en annexe F — la divergence est attribuée par les auteurs à un filtrage post-annotation.