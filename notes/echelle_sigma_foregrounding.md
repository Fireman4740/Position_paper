# Échelle de latitude stylistique σ pour TR-Bench — reconstruction depuis le construit

*Conçue de zéro pour la tâche : séparer l'hallucination (H) de la variation stylistique (SV) et de la divergence productive (PD) en conditionnant sur le régime de vérité. σ n'utilise pas la formalité (non discriminante côté output LLM) ; elle mesure la **mise en avant stylistique de la forme** (foregrounding) à proposition constante. Deux instances distinctes mais commensurables : **σ_prompt** (latitude autorisée par la demande) et **σ_output** (latitude réalisée par la réponse). SV est l'empreinte de σ au niveau du segment.*

---

## 1. Le construit : σ = degré de *foregrounding* stylistique

**Définition.** σ mesure à quel point la forme d'un énoncé **s'écarte d'une réalisation littérale et neutre de la même proposition**, pour produire un effet expressif, *sans changer les conditions de vérité*. C'est la notion de **foregrounding** (mise en avant) : l'écart délibéré par rapport à la norme linguistique attendue.

**Pourquoi ce construit plutôt que « figurativité » ou « formalité ».**
- La **formalité** est exclue : un LLM ne produit quasiment jamais d'argot/relâchement en sortie, donc l'axe formel n'est pas discriminant sur les outputs (il l'est seulement côté prompt utilisateur — traité en §6).
- Le **foregrounding** est le bon niveau d'abstraction : il subsume l'écart sémantique (figures de style), l'écart syntaxique (constructions marquées) et le parallélisme (rythme, répétition), tout en restant **orthogonal au contenu propositionnel**. C'est exactement « forme marquée vs forme neutre ».

**Ancrage académique.**
- *Théorie.* Shklovsky (1917), défamiliarisation (*ostranenie*) ; Mukařovský (1932), foregrounding / *aktualisace* (la langue poétique met la forme au premier plan) ; Leech & Short, *Style in Fiction* (1981/2007), foregrounding par **déviation** et **parallélisme**.
- *Forme vs proposition.* Frege (1892), sens vs référence : une même proposition (mêmes conditions de vérité) admet plusieurs formes de surface — fondement de « la forme varie, la proposition non ».
- *Figures comme écart formel non propositionnel.* Sperber & Wilson (théorie de la pertinence) : métaphore et hyperbole sont des ajustements de forme qui n'altèrent pas nécessairement la valeur de vérité.
- *Pont avec la créativité.* TTCT (Torrance) : l'**élaboration** (raffinement de la forme) est une dimension distincte de l'idéation (fluidité/flexibilité/originalité) ; σ est un gradient d'élaboration formelle, séparé de κ (l'invention de contenu).
- *Précédent empirique de fiabilité.* van Peer (1986), *Stylistics and Psychology: Investigations of Foregrounding* : les lecteurs **s'accordent** de façon significative sur les passages foregroundés — preuve que le foregrounding est annotable de manière fiable. C'est l'argument de validité d'annotation pour σ.

---

## 2. Les deux canaux de mesure du foregrounding (sans formalité)

Le foregrounding se réalise, dans des textes expositifs/narratifs comme les vôtres, par deux canaux observables et chacun adossé à un instrument validé :

- **Canal F — déviation sémantique / tropologique.** Substitution du littéral par métaphore, analogie, hyperbole, personnification, métonymie.
  *Instrument :* MIP/MIPVU (Pragglejaz 2007 ; Steen et al. 2010) — un mot est foregroundé quand son **sens contextuel contraste avec son sens de base**. Corpus de référence VUAMC ; fiabilité publiée Fleiss' κ ≈ 0,84.

- **Canal V — déviation énonciative / implication (voix).** Subjectivisation, adresse, modalité expressive, lexique émotif/sensoriel ; à l'opposé de l'effacement énonciatif impersonnel.
  *Instrument :* Biber (1988), **Dimension 1 « Involved vs. Informational »** — faisceau de traits co-occurrents comptables automatiquement (pronoms 1ʳᵉ/2ᵉ pers., verbes privés, modalité, adverbes d'emphase côté impliqué ; densité nominale, prépositions, longueur de mots côté informationnel).

Ces deux canaux suffisent à couvrir le foregrounding pertinent pour des sorties LLM, sont mesurables sans étiquetage de registre, et se réécrivent littéralement sans changer la proposition.

---

## 3. L'échelle σ (0/1/2) — une seule échelle, deux usages

### 3.1 Définition des niveaux (critères observables sur le texte)
Chaque niveau combine le canal F et le canal V. C'est cette échelle qui sert **à la fois** pour σ_prompt et σ_output (elles sont ainsi directement comparables).

| σ | Foregrounding | Canal F (figures, MIPVU) | Canal V (voix, Biber D1) |
|---|---|---|---|
| **0 — littéral/neutre** | minimal | littéral ; seules métaphores mortes lexicalisées | impersonnel, effacement énonciatif, densité nominale |
| **1 — marqué modéré** | présent, conventionnel | figures éparses, surtout didactiques (analogie explicative) | présence modérée : adresse occasionnelle, évaluatif léger |
| **2 — fortement marqué** | saillant | figures fréquentes et/ou novatrices ; l'image structure le texte | voix d'auteur saillante, lexique émotif/sensoriel, modalité expressive |

### 3.2 Pourquoi trois niveaux (et pas deux ni cinq)
- **Pas deux** : une opposition binaire perd l'ancre médiane, qui est précisément la zone à enjeu (le « marqué modéré »), et reproduit l'écueil de la formalité binaire.
- **Pas cinq** (type Joos) : les pôles extrêmes d'une échelle à cinq niveaux (figé/rituel, intime quasi non-verbal) ne se réalisent pas dans des outputs LLM expositifs ; ils sont vides côté output.
- **Trois** est le bon grain : chaque canal (F et V) se discrétise naturellement en *absent / épars / dense*, et la matrice TR-Bench 3×3 exige trois niveaux. Un point d'ancrage médian explicite réduit l'ambiguïté d'annotation.

### 3.3 Composition F × V → σ (règle figée)
```
σ = 0   si  F = 0  ET  V = 0
σ = 2   si  F = 2  OU  V = 2
σ = 1   sinon
```
Le « OU » pour σ-2 reconnaît **deux routes vers le fortement marqué** : prose très imagée *ou* voix d'auteur saillante. Garder F et V séparés dans les données permet de tester **laquelle des deux** composantes gonfle l'hallucination mesurée.

---

## 4. σ_prompt vs σ_output : autorisée vs réalisée

Les deux se notent sur la même échelle 0/1/2, mais mesurent des objets différents.

### 4.1 σ_prompt — latitude **autorisée** par la demande (un plafond)
σ_prompt code **jusqu'où la demande permet d'aller**, pas ce qui est produit.

| σ_prompt | Ce que la demande fait |
|---|---|
| 0 | **Contraint** au littéral/neutre : la consigne interdit explicitement les images et la voix marquée (« réponds de façon neutre et factuelle »). |
| 1 | **Permet** une expressivité modérée (ou demande pédagogique/explicative ; ou consigne silencieuse sur le style → plafond par défaut modéré). |
| 2 | **Invite ou exige** une forme fortement marquée (« écris un texte évocateur », « raconte comme une scène »). |

- **Flag obligatoire `style_mandated ∈ {permis, exigé}`** : distingue une latitude simplement *autorisée* d'un style *imposé* par la tâche. Essentiel car σ_prompt est une *permission*, pas une prescription — sauf quand la tâche l'exige.
- **Règle pour la consigne silencieuse** : si la demande ne dit rien du style, coder σ_prompt depuis le défaut de tâche (p. ex. « donne la date de… » → 0 ; « explique… » → 1), avec `style_mandated = permis`.

### 4.2 σ_output — latitude **réalisée** par la réponse
σ_output applique l'échelle 3.1 au texte produit, via les canaux F et V (§2), agrégé depuis les segments SV (§5).

### 4.3 La relation entre les deux est l'objet d'étude
- **Conformité / manipulation check** : un output conforme vérifie σ_output ≤ σ_prompt (on peut sous-utiliser la latitude). Comparer σ_prompt et σ_output sur la même échelle donne directement la matrice de confusion prescrit × réalisé.
- **Zone de risque du confond** : sous κ-0, σ_output > σ_prompt (foregrounding non sollicité) est précisément là où l'expressivité ajoutée risque d'être lue comme « non supportée » par un vérificateur factuel — alors que, proposition préservée, c'est de la SV bénigne. Quantifier cela est la contribution centrale.

---

## 5. SV : l'empreinte de σ au niveau du segment

**Définition (la vôtre, rendue opératoire).** SV = un segment qui **ne crée aucun nouveau claim** mais **reformule un contenu par variation stylistique** (foregrounding F ou V) par rapport à sa formulation littérale.

- **Sous-tags** : `SV-F` (reformulation figurative) et `SV-V` (reformulation par voix/implication), chacun avec une intensité 1 ou 2. σ_output se **reconstruit par agrégation** des SV : c'est ce qui relie l'annotation claim-level à l'axe σ output-level.
- **SV n'est jamais une hallucination** : par construction il n'ajoute pas de proposition. Il est le témoin que la forme a varié sans toucher au contenu.
- **Conséquence d'évaluation** : un pipeline factuel qui compte les SV-F/SV-V comme « unsupported » produit des **faux positifs sur PD/SV** ; isoler les SV est ce qui révèle ce biais.

---

## 6. La porte d'invariance propositionnelle (sépare σ de κ)

À appliquer **avant** toute notation, pour ne jamais imputer à σ un ajout de contenu (qui relève de κ).

1. **Figure de style ?** (test MIPVU : sens contextuel ≠ sens de base.)
2. **Vérité préservée en réécriture littérale ?** « avancé à pas de géant » → « progressé rapidement » : proposition inchangée → **SV**.
3. **Écart formel ou propositionnel ?** Formel → **σ / SV**. Propositionnel (entité, chiffre, fait nouveau) → **κ**, hors σ → S / PD / H selon le régime.

### Arbre de décision (annotateur, niveau segment)
```
Segment s
│
├─ Q1. s introduit-il une PROPOSITION nouvelle (info/entité/chiffre) ?
│     ├─ Oui → relève de κ → S / PD / H
│     └─ Non → Q2
│
├─ Q2. s dévie-t-il du littéral ? (foregrounding)
│     ├─ Non → segment neutre (contribue σ=0)
│     └─ Oui → noter le canal et l'intensité :
│              • SV-F (figure)        intensité 1/2   ← MIPVU
│              • SV-V (voix/implication) intensité 1/2 ← Biber D1
│
└─ σ_output = composition (règle §3.3) des intensités F et V agrégées
```

---

## 7. Opérationnalisation dans TR-Bench

### Étage 0 — σ_prompt prescrit (gold), réécrit sans formalité
Réécrire le dict d'instructions de style (`t1bench/prompts.py`) en termes de foregrounding F + V, sans formalité :
```python
SIGMA = {
    0: ("Forme littérale et neutre : pas de métaphore, pas de voix d'auteur, "
        "ton impersonnel."),
    1: ("Forme modérément marquée : analogies didactiques, adresse occasionnelle, "
        "sans images fortes ni voix très marquée."),
    2: ("Forme fortement marquée : images et métaphores assumées, voix d'auteur "
        "saillante, rythme travaillé."),
}
```
Annoter chaque item avec `σ_prompt` et le flag `style_mandated`. Pour les cellules κ-0, vérifier (dans `validate_rewritten_prompt`) que l'indice de style survit à la naturalisation VIFS malgré `FORBIDDEN_PROMPT_MARKERS`.

### Étage 1 — σ_output réalisé (audit automatique)
Nouveau `t1bench/style_audit.py` + `03_audit_style.py`, par output :
1. `F̂` : taux de mots figurés via un tagueur MIPVU (modèle entraîné sur VUAMC / type DeepMet) → 0/1/2.
2. `V̂` : score d'implication Biber D1 sur POS + lexiques → 0/1/2.
3. `σ̂_output` : composition (§3.3).
4. **Matrice de confusion σ_prompt × σ̂_output** = manipulation check (le modèle a-t-il respecté la latitude prescrite ?).

### Étage 2 — porte de préservation (confirme que σ ne change pas la proposition)
Sur les triplets κ-0 générés en σ-0/1/2 pour un même item :
- **Entailment bidirectionnel** σ-0 ↔ σ-1/σ-2 via MIS (Babakov et al. 2022) ou MENLI (Chen & Eger 2023) : entailment fort dans les deux sens = aucune proposition ajoutée/perdue (les SV sont propositionnellement inertes).
- **Diff de faits atomiques** via FActScore (Min et al. 2023) : tout claim présent en σ-1/σ-2 mais absent en σ-0 = **fuite de κ** (à reclasser hors SV).

### Étage 3 — mesure du confond (contribution centrale)
Appliquer le vérificateur factuel aux trois niveaux des triplets κ-0 : la hausse du taux d'« unsupported » de σ-0 à σ-2 **à faits atomiques constants** mesure de combien le foregrounding seul gonfle l'hallucination mesurée.

### Étage 4 — calibration humaine
Pilote prompt-only (recouvrabilité de σ_prompt) **+** notation humaine de σ_output (canaux F et V séparés) sur ~10 % des outputs, vs `σ̂_output`. Fiabilité : **α de Krippendorff ordinal** par canal (F, V) puis sur σ composé. Seuils (Artstein & Poesio 2008) : **≥ 0,80 bon ; 0,67–0,80 provisoire ; < 0,67 réviser**. Annoter F et V séparément maximise l'accord ; le précédent van Peer (1986) soutient la faisabilité d'un accord significatif sur le foregrounding.

### Schéma
```
σ_prompt (gold, plafond + style_mandated) ──► prompt naturalisé (indice σ préservé)
        │   pilote prompt-only : σ_prompt recouvrable ?  (α ordinal)
        ▼
σ̂_output (F̂ = MIPVU ; V̂ = Biber D1)  ── confusion σ_prompt × σ̂_output = manipulation check
        │
        ▼
triplets κ-0 σ-0/1/2 ──► MIS/MENLI (invariance) + FActScore (fuite κ)
        │                  (SV = segments foregroundés, propositionnellement inertes)
        ▼
Δ(taux unsupported) à faits atomiques constants = confond foregrounding → H
```

---

## 8. Récapitulatif

| Élément | Choix | Ancre académique |
|---|---|---|
| Construit de σ | **foregrounding** (forme marquée vs neutre), à proposition constante | Shklovsky 1917 ; Mukařovský 1932 ; Leech & Short 1981 |
| Forme vs proposition | invariance vériconditionnelle | Frege 1892 ; Sperber & Wilson 1986/95 |
| Faisabilité d'annotation | accord lecteurs sur le foregrounding | van Peer 1986 |
| Canal F | figures, 0/1/2 | MIP/MIPVU — Pragglejaz 2007 ; Steen et al. 2010 (κ ≈ 0,84) |
| Canal V | voix/implication, 0/1/2 | Biber 1988, Dimension 1 |
| Caractère ordinal / 3 niveaux | gradient d'élaboration, ancre médiane | Torrance, TTCT |
| σ_prompt | latitude **autorisée** (plafond) + flag `style_mandated` | (construit propre au benchmark) |
| σ_output | latitude **réalisée**, agrégée depuis SV (F/V) | MIPVU + Biber D1 |
| SV | segment foregroundé sans nouveau claim, sous-tags SV-F/SV-V | (définition opératoire) |
| Préservation auto | entailment bidirectionnel | MIS — Babakov et al. 2022 ; MENLI — Chen & Eger 2023 |
| Fuite κ | diff de faits atomiques | FActScore — Min et al. 2023 |
| Fiabilité | α de Krippendorff ordinal ; 0,67/0,80 | Artstein & Poesio 2008 |
| Formalité | **hors σ** ; attribut du prompt seulement | Pavlick & Tetreault 2016 ; Heylighen & Dewaele 1999 |

---

## Références
- Babakov, N., Dale, D., Logacheva, V. & Panchenko, A. (2022). *A large-scale computational study of content preservation measures for text style transfer and paraphrase generation.* ACL SRW. (MIS)
- Biber, D. (1988). *Variation across Speech and Writing.* Cambridge University Press. (Dimension 1)
- Chen, Y. & Eger, S. (2023). *MENLI: Robust Evaluation Metrics from Natural Language Inference.* TACL 11:804-825.
- Artstein, R. & Poesio, M. (2008). *Inter-Coder Agreement for Computational Linguistics.* Computational Linguistics 34(4):555-596.
- Frege, G. (1892). *Über Sinn und Bedeutung.*
- Leech, G. & Short, M. (1981/2007). *Style in Fiction.* Longman/Pearson.
- Min, S. et al. (2023). *FActScore.* EMNLP. arXiv:2305.14251.
- Mukařovský, J. (1932/1964). *Standard Language and Poetic Language.* (foregrounding / aktualisace)
- Pragglejaz Group (2007). *MIP: A Method for Identifying Metaphorically Used Words in Discourse.* Metaphor and Symbol 22(1):1-39.
- Shklovsky, V. (1917). *Art as Technique* (défamiliarisation).
- Sperber, D. & Wilson, D. (1986/1995). *Relevance: Communication and Cognition.* Blackwell.
- Steen, G. et al. (2010). *A Method for Linguistic Metaphor Identification: From MIP to MIPVU.* John Benjamins. (VUAMC ; Fleiss' κ ≈ 0,84)
- Torrance, E. P. (1966/1974). *Torrance Tests of Creative Thinking.*
- van Peer, W. (1986). *Stylistics and Psychology: Investigations of Foregrounding.* Croom Helm.
- *Formalité du prompt uniquement* : Pavlick & Tetreault (2016), *TACL* 4:61-74 ; Heylighen & Dewaele (1999), *Formality of Language.*
