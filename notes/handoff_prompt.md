# Prompt de reprise — Position paper (version conceptuelle)

> Copie-colle le bloc ci-dessous dans une nouvelle conversation pour continuer le travail.
> Le dépôt est le dossier `Position_paper/` (manuscrit actif : `main_position.tex`).

---

## CONTEXTE PROJET

Je travaille sur un **position paper** (pas un papier empirique) intitulé :
**« Hallucination Is Relative: A Position on Truth-Regime-Aware Evaluation of LLM Divergence »**
Cible : template *Computational Linguistics* (`clv2025.cls`). Manuscrit actif : `main_position.tex` (~19 pages, compile proprement).

**Thèse.** L'hallucination n'est pas une propriété binaire du texte ; elle est relative au *truth regime* du prompt, `TR(p) = (O, σ, κ)` :
- `O` = oracle qui ancre la vérité (source, world knowledge, etc.)
- `σ` = latitude stylistique (forme, à proposition constante)
- `κ` = licence d'invention (du contenu truth-conditionnel nouveau est-il autorisé ?)
`H` (\Hallu) = violation du régime ; `PD` (\PD) = divergence productive licenciée par le régime et utile à la tâche.

**Macros LaTeX stables (NE PAS renommer)** : `\TR`, `\TRs`, `\PD`, `\Hallu` (=H), `\Faith` (=F), `\Acc` (=A). `\CI` a été retiré du vocabulaire. Helpers de rédaction : `\citetodo{}`, `\claimtodo{}`, `\TODO{}`.

## ÉTAT ACTUEL (déjà fait)

- Version **conceptuelle, sans expérience** (l'ancienne version empirique est dans `archive/main_position_empirical.tex`).
- Sections rédigées : Abstract ; §1 Intro (paradoxe créativité–hallucination) ; §2 Cadre (définitions O/σ/κ/F/A/H/PD, table des régimes canoniques, decision rule, exemple travaillé, ancrage *foregrounding* de σ) ; §3 Gap diagnostique + **Table 2 : audit de 40 benchmarks** classés par *ce qui est évalué* (hallucination vs créativité) et par *type de tâche*, sur (O,σ,κ) ; §4 *Worked verdicts* (3 cas H↔PD construits pour l'illustration) ; §5 Agenda (6 open problems) ; §6 Discussion + limites de la position ; §7 Conclusion ; Annexe A (decision rule formelle).
- `references.bib` : ~494 entrées ; toutes les clés citées résolvent ; **0 `\citetodo` restant**.
- Passe prose-hygiene faite : terminologie cohérente, acronymes glosés (TTCT/TTCW/RAG/QA), affiliation corrigée, macros mortes supprimées, **tous les tirets cadratins `---` retirés** de la prose (remplacés par `()` / virgules / `:`).

## RÈGLES DE RÉDACTION (impératif)

1. Ne jamais inventer de citations, chiffres, tableaux, datasets, résultats. Position paper = argument, pas données nouvelles.
2. Ne citer que des clés présentes dans `references.bib`. Sinon `\citetodo{description}` ou recherche (alphaXiv / web) puis proposer le BibTeX vérifié AVANT ajout.
3. **Pas de `---` (tiret cadratin)** dans la prose : utiliser `()`, virgules, ou reformuler. Garder les `--` corrects (titres composés, plages `1--3`).
4. Garder les macros du cadre stables ; anglais académique US ; une idée par paragraphe ; éviter le jargon IA (delve, underscore, leverage, pivotal…).
5. Calibrer : ne pas survendre. La thèse est conceptuelle ; l'évidence = audit + verdicts travaillés, pas une étude contrôlée.

## BUILD

```bash
pdflatex -interaction=nonstopmode main_position.tex && bibtex main_position && pdflatex main_position.tex && pdflatex main_position.tex
```
(ou `make pdf`). Artefacts de build gitignorés. Note : le sandbox ne peut pas *supprimer* de fichiers du dossier (utiliser `mv`, pas `rm`) ; un dossier `_scratch_builds/` regroupe d'anciens builds (supprimable localement).

## À FAIRE (priorités, du plus important au moins)

**Fond / review (à traiter pour soumission)**
1. **`PD` n'est pas opérationnalisée** — c'est le construit central neuf, mais aucun instrument de mesure n'est donné (concédé en §6). Décider : (a) esquisser un protocole de scoring de PD, ou (b) assumer explicitement que c'est l'open problem n°1. Un reviewer demandera « PD est-il mesurable ? ».
2. **Worked verdicts (§4) sont construits, pas issus d'un corpus annoté.** Envisager d'ancrer au moins un cas sur un item réel publié (ex. un exemple FRANK/HIC-Bench), pour parer le reproche « exemples ad hoc ».
3. **Colonne σ de la Table 2 = « -- » pour les 40 lignes.** C'est le constat (angle mort total), mais défendre explicitement que l'uniformité EST le résultat, sinon un reviewer la jugera vide. Idem colonne κ.
4. **Verrouiller la nouveauté vs FaithQA / HIC-Bench** : s'assurer que la différenciation (aucun n'encode (σ,κ)) est imparable, dès l'intro.
5. **Cadrage venue** : position/theme track. Décider la cible (ACL/EMNLP theme, ou CL position) et ajuster longueur/format.

**Hygiène / polissage**
6. **Citation-audit final** : `references.bib` contient des clés désormais inutilisées (cartes-modèles, stats de l'ancienne version empirique). Optionnel : élaguer, ou laisser (bib = surensemble, sans danger).
7. Décider d'ajouter **Leech & Short 1981** (ancrage théorique du foregrounding) à côté de `vanpeer_stylistics_2020`.
8. Vérifier les 3 séparateurs `%% -----` du préambule (cosmétiques, ne s'affichent pas) — supprimables.
9. Relecture finale : transitions, casse des titres (sections en Title Case, sous-sections en sentence case — uniformiser si le style CL l'exige).

**Optionnel (si réintégration d'empirique un jour)**
10. L'étude empirique reloggée dans `archive/` peut redevenir un papier séparé (manipulation σ à valider, tables GLM/GLMM à ajouter, contradiction TTCW à corriger — cf. review du cycle précédent).

## DEMANDE
Commence par : [PRÉCISER — ex. « traiter le point 1 (opérationnaliser PD) » ou « ancrer un worked verdict réel (point 2) » ou « citation-audit (point 6) »]. Lis d'abord `main_position.tex` et `notes/` en entier.
