# Plan de restructuration — Position paper conceptuel, zéro expérience

But : un position paper dont la valeur repose entièrement sur le cadre (\TR, \Hallu/\PD),
l'audit de la littérature, et l'agenda. Toute trace de l'étude empirique (12 469 générations,
GLM/GLMM, médiation, CreativityPrism, fiabilité inter-juges, κ HIGH/LOW) est retirée.
L'expérience est reloggée dans un futur papier empirique séparé.

Principe directeur : ce que l'expérience prouvait (« le problème est réel, pas hypothétique »)
est repris par trois substituts non-empiriques — (1) une table d'audit de benchmarks,
(2) des exemples travaillés de bascule \Hallu↔\PD, (3) la decision rule appliquée à la main.

---

## 1. Structure cible (section par section)

| # | Section | Rôle | Origine |
|---|---------|------|---------|
| Abstract | — | Thèse + 3 contributions conceptuelles + « gap démontré par audit ». **Aucun chiffre.** | Réécrit |
| §1 | Introduction : le paradoxe créativité–hallucination | Pose le paradoxe, le gap diagnostique, la thèse, les 3 contributions | l.80–127, recadré |
| §2 | Terminologie et cadre conceptuel | L'asset. Définitions + table des régimes canoniques + decision rule + exemple travaillé. **À durcir.** | l.130–258, renforcé |
| §3 | Le gap diagnostique : l'évaluation ignore le régime de vérité | Related work **avec la table d'audit comme pièce maîtresse** | l.260–314, refondu |
| §4 | Appliquer le cadre : verdicts travaillés | **NOUVEAU** — le substitut à l'expérience (flips + rule à la main) | À créer |
| §5 | Agenda de recherche (open problems) | Le *payoff* : pourquoi publier le cadre maintenant | l.557–598, élargi |
| §6 | Discussion | Implications conceptuelles + limites *de la position* | l.600–611 gardé, reste réécrit |
| §7 | Conclusion | Synthèse, sans « our strict-regime study » | l.660–666, édité |
| App. A | Decision rule formelle | Promue / nettoyée | l.873–885 |
| App. B | (option) Formalisation légère | Contenu truth-conditionnel relatif à O ; σ/κ | À créer si besoin |

Longueur cible : corps ~10–14 p. (vs 27 p. actuelles avec annexes empiriques).

---

## 2. Mapping détaillé : que devient chaque élément actuel

### À GARDER (et rendre central)
- **Thèse** (l.109–115) : intacte, c'est le cœur.
- **Table des régimes canoniques** (`tab:canonical-truth-regimes`, l.211–243) : **conceptuelle**, reste — devient plus centrale.
- **Définitions** O / σ / κ / \Faith / \Acc / \Hallu / \PD (l.145–187) : gardées, à formaliser.
- **Decision rule** (l.190–192) + **claim-level labeling** (l.251–256) + **exemple travaillé photosynthèse** (l.194–198).
- **Contraste rapport-médical / poème** (l.184–186) : l'or du papier.
- **« authorized, not merely undecidable »** (l.278) : à rendre frontal (réponse au « ce n'est qu'un relabeling »).
- **§3.4 « Why universal suppression is neither feasible nor desirable »** (l.303–314) : argument conceptuel, reste.
- **FAITHQA / HIC-Bench** (l.298–299) : gardés, remontés en §1 pour verrouiller la nouveauté p.1.

### À TRANSFORMER
- **Abstract** (l.69–77) : retirer « 12,469 texts, 9 models, 310K claims », « +12.8 pts », « +21.4 ». Remplacer la phrase empirique par : le gap est établi en auditant les benchmarks existants et en appliquant la règle à la main.
- **§1 « Empirical motivation »** (l.117–122) : → **« Illustrative motivation »**. Remplacer les 3 findings chiffrés par un aperçu des bascules \Hallu↔\PD et de l'audit.
- **Contributions** (l.123–126) : la contribution 2 dit aujourd'hui « …and demonstrate it empirically: a strict-regime stress test… ». Remplacer par « …and demonstrate it by auditing existing benchmarks and applying the labeling rule to documented cases ». Garder 3 contributions (conceptual / diagnostic / programmatic).
- **§6 Discussion → « Implications for evaluation practice »** (l.605–611) : garder (conceptuel). Les trois verdicts *aligned / excessive-H / insufficient-PD* (l.607–609) restent. Retirer la phrase « writing format alone shifts… 20 pts » (empirique) → remplacer par un appui conceptuel.
- **Conclusion** (l.660–666) : retirer « Our strict-regime study does not solve… It shows why… ». Remplacer par « The audit and worked verdicts show why such evaluation is needed ».

### À CRÉER
- **Table d'audit de benchmarks** (remplace `tab:key-findings`) — voir §3 ci-dessous.
- **§4 verdicts travaillés** : 2–4 cas de bascule + rule appliquée à la main sur des items réels.
- **§6 limites *de la position*** : normativité (« what *should* be grounded ? »), inférence de \TR sous ambiguïté, \PD non encore opérationnalisée.

### À SUPPRIMER (tout l'appareil empirique)
- §4 entière « Diagnostic Evidence » (l.317–455) : pipeline figure, Table 1, findings chiffrés, interaction OR.
- §« Evaluator Reliability » (l.549–555).
- §6.2 « What drives measured hallucination » (l.613–628) : ICC, température, OR.
- §6.3 Limitations actuelles (l.630–658) : binary verification, KB scope, format-oracle, κ HIGH/LOW.
- **Annexes A–H** (l.677–1275) sauf la decision rule formelle (l.873–885, à promouvoir).
- **Figures** `fig:pipeline`, `fig:creativity-effect`, `fig:length-effect`.
- **Macros / clés devenues inutiles** : `\hallu`, `\OR`, `\ICC` ; clés de cartes-modèles (gpt52, gemini3, grok, qwen, nemotron, mistral, mimo, deepseek, llama33) ; clés stats (nelder, hosmer, breslow, bates, baron_kenny, imai, efron, benjamini*) ; `xiaomi2026mimov2flash` etc. → après coupe, relancer le check de clés.

---

## 3. Le substitut clé : la table d'audit de benchmarks

Remplace le rôle « preuve que le gap est réel » de l'ancienne Table 1. Une ligne par benchmark,
trois questions : l'oracle O est-il explicite ? σ est-il annoté ? κ est-il annoté ?

| Benchmark | Oracle O | σ annoté ? | κ annoté ? | Verdict |
|---|---|---|---|---|
| HalluLens (bang_2025) | world knowledge, fixé | non | non (κ supposé bas) | implicite |
| FAITHQA (hao_2025) | contraintes de la requête | non | non | partiel (intent, pas σ/κ) |
| HIC-Bench (yang_2025) | — | non | non (split intelligent/defective non contractuel) | partiel |
| CreativityPrism (hou_2025) | aucun oracle factuel | n/a | non (nouveauté maximisée) | absent |
| FactBench (bayat_2024) | world knowledge | non | non (verdict undecidable ≠ authorized) | implicite |
| TruthfulQA (lin_2022) | world knowledge | non | non | implicite |
| FEVER (thorne_2018) | sources fournies | non | non | implicite |

→ Toutes les clés sont déjà dans `references.bib` (vérifié). Conclusion analytique : aucun
benchmark n'encode (O,σ,κ) comme variable. C'est l'évidence, documentée et citable, sans génération.

---

## 4. Renforcements obligatoires (l'argument porte désormais tout le poids)

1. **Ancrer σ** — surfacer une clause de *foregrounding* (depuis `echelle_sigma_foregrounding.md`) et
   justifier « trois niveaux » (pas deux : perd l'ancre médiane ; pas cinq : pôles vides côté LLM).
   ⚠️ **Ajouter au `.bib` d'abord** : Leech & Short 1981 ; van Peer 1986. (grep actuel = 0.)
2. **Formaliser le cadre** — définir « contenu truth-conditionnel relatif à O », poser σ (forme, proposition
   constante) et κ (introduction de contenu) sans ambiguïté, rendre la decision rule auto-suffisante.
3. **§2 : concéder que \TR est une idéalisation** — le contrat vit aussi dans le system prompt / contexte de
   déploiement ; renvoyer à l'open problem « inférence de \TR ».
4. **Fil RLHF / alignement** — une phrase : l'alignement (refus, hedging, abstention) *est* un enforcement
   implicite du régime ; pertinent et nuance la thèse « l'évaluation ignore le régime ».
5. **Désamorcer « ce n'est qu'un relabeling »** frontalement, tôt — appuyé sur (l.278) + la table d'audit.
6. **Agenda en *payoff*** — c'est lui qui justifie de publier le cadre sans l'avoir validé empiriquement.

---

## 5. Risque principal et parade

Reviewer dur : « proposition de vocabulaire + observation bibliographique — est-ce assez ? »
Parade : (a) la decision rule appliquée à la main qui *change des verdicts* réels (§4) montre que le
cadre fait un travail, pas seulement nomme ; (b) « authorized, not merely undecidable » distingue le
cadre d'une simple typologie ; (c) la table d'audit prouve que le gap n'est pas un homme de paille.

---

## 6. Séquence de travail proposée

1. ~~Plan~~ (ce document).
2. Abstract + §1 réécrits (sans chiffres, 3 contributions, FAITHQA/HIC-Bench remontés).
3. §3 refondu autour de la table d'audit.
4. §4 « verdicts travaillés » créé (2–4 flips + rule à la main).
5. §2 durci (formalisation + ancrage σ + concession idéalisation).
6. §5 agenda élargi ; §6/§7 réduits au conceptuel.
7. Coupe des annexes empiriques + des clés `.bib` orphelines ; `make check` + audit de citations.
8. Ajout Leech&Short 1981 / van Peer 1986 au `.bib`.
