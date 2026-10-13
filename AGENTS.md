# Position Paper — contexte agent

Le manuscrit actif est la **source de vérité**, pas les notes ni les anciennes reviews.
Pour la révision validée le 12 octobre 2026, s’appuyer uniquement sur son contenu :
aucun ajout scientifique ou bibliographique fondé sur une source externe.

## Le papier

**Fichier actif :** `réécriture_papier/truth_contract_position_paper.tex`

**Titre :** Hallucination Is Relative: Evaluating LLM Divergence under Truth Contracts

`main_position.tex` et les anciennes versions ne sont pas les cibles de cette révision.
La figure des exemples est dans `réécriture_papier/figures/contract_interventions.tex`.

**Thèse :** l'hallucination n'est pas une propriété binaire du texte. Elle est relative
au **truth contract** du prompt.

Le truth contract a trois champs : **task oracle** (reference evidence et
checking procedure), **permission scope**, **required status marking**.

| État vis-à-vis de l'évidence | Label |
|---|---|
| Entailed, explicitement exclu par une exigence d’invention | `hallucination` (H), reason `out-of-scope` |
| Entailed, sans cette exclusion | `grounded` (G) |
| Unknown ou contradicted, dans le scope **et** statut requis communiqué | `licensed divergence` (LD) |
| Unknown ou contradicted, hors scope **ou** statut requis non communiqué | `hallucination` (H) + reason code |

Convention validée : une contradiction explicitement autorisée et correctement
marquée peut recevoir LD, tout en restant `contradicted` vis-à-vis de la référence.
Une prémisse fictive adoptée comme référence peut au contraire rendre un claim
`entailed` : fixer ce choix avant l’évaluation, jamais après lecture de la réponse.

Le **required status marking** appartient à la tâche ; l’**observed status marking**
décrit la réponse (`established`, `hypothetical`, `fictional`) avec son indice
textuel ou contextuel. Le marquage n’élargit **jamais** le permission scope.
Le style reste une piste de robustesse dans l’agenda, jamais un axe du mapping.

Décision du 13 octobre 2026 : un fait étayé explicitement exclu par une exigence
d’invention reçoit H (`out-of-scope`), tout en restant `entailed`. Cette décision
remplace la séparation retenue le 12 octobre pour ce cas. `Entailed` décrit
l’évidence ; G/H/LD sont les labels issus des règles du contrat. Défendre cette
convention explicitement, sans prétendre qu’elle est la définition universelle
de l’hallucination. Une demande de fiction ne suffit pas, à elle seule, à interdire
les faits réels ; ne pas transformer toute omission ou erreur de format en H. Une omission purement formelle (ex. titre « Hypothesis » absent)
ne produit pas H si le statut requis est déjà communiqué. Une évaluation impossible
reste sans label ; ce n’est ni `unknown` ni H. Les labels ne certifient pas
la conformité de la réponse entière. La claim trace utilise des champs lisibles,
sans réintroduire le tuple à huit éléments.

## Skills Hermes disponibles

| Skill | Quand |
|---|---|
| `position-paper-writing` | Rédiger, étendre, resserrer une section |
| `position-paper-citation-audit` | Auditer citations et BibTeX |
| `position-paper-latex-build` | Compiler, déboguer le build |
| `position-paper-revision-review` | Répondre à un retour reviewer |

Chargement : `hermes --skills position-paper-writing` ou laisse Hermes les charger seul.

## Build

```bash
cd réécriture_papier
make check   # compile (vérification)
make pdf     # compile + copie le PDF dans le dossier actif
make clean   # purge build/
```

Stack : `latexmk -pdf -outdir=build`, classe `clv2025`, `natbib` +
`\bibliographystyle{compling}`. Utiliser le `Makefile` du dossier actif ;
ne pas reprendre un ancien nombre de pages ou état de compilation comme preuve.

## ⚠️ Macros — piège vérifié

**Ces macros n'existent pas dans ce repo. Les écrire casse la compilation :**

```
\TR  \PD  \Hallu  \Faith  \Acc  \CI  \TRs  \citetodo{}  \claimtodo{}
```

Les macros de labels du manuscrit actif sont `\TC`, `\LD`, `\Hall` et `\Grd`.
Elles sont utilisées. Ne pas introduire `\SUP` ni renommer les labels sans décision explicite.

Pour marquer une preuve manquante :

```latex
% TODO(cite): claim non sourcé — chercher une référence pour X
```

Vérifie toujours : `rg -n 'newcommand' réécriture_papier/truth_contract_position_paper.tex`

## ⚠️ Terminologie migrée

| Ancien (notes périmées) | Actuel |
|---|---|
| truth regime | **truth contract** |
| productive divergence | **licensed divergence** |


`notes/active-paper-context.md` décrit l'ancien état (macros disparues, `plainnat`
au lieu de `compling`). Ne t'y fie pas : lis le `.tex`.

## Règles non négociables

1. **N'invente jamais** un résultat, un nombre, une table, une figure, une citation
   ou une entrée BibTeX.
2. **Ne cite que des clés présentes** dans `réécriture_papier/references.bib`.
   Vérifier les clés réellement utilisées ; ne pas se fier aux anciens décomptes.
3. Preuve absente → `% TODO(cite):`, jamais une supposition.
4. Garde les claims **calibrés**. Le papier est prudent par construction (« purposive
   mapping », « not a prevalence estimate ») — préserve cette prudence.
5. Ne modifie pas la science pour faire taire un warning LaTeX.

> Une référence fabriquée dans un papier **sur les hallucinations** est un autogoal
> dont on ne se relève pas en rebuttal.

## Protocole avant rédaction — obligatoire

Ne saute jamais directement à la prose :

1. Mini-plan en 4–8 points
2. 2–6 claims que la section défend
3. Preuves requises, et lesquelles existent déjà
4. Critiques de reviewer anticipées + réfutations

Puis attends l’accord humain. Ensuite seulement, le patch LaTeX.
L’accord donné couvre les corrections locales du plan validé, l’allègement
de la claim trace et le rétablissement demandé le 13 octobre de l’exclusion
des faits étayés ; ne pas redemander cet accord pendant leur mise en œuvre.

## Review — trois règles dures

1. **Session neuve** (`hermes -z`), jamais en continuation de l'écriture.
2. **Famille de modèle différente** de celle qui a rédigé (`-m attack`).
3. Aucun `% TODO(cite)` rempli de mémoire — `web_search` ou rien.

> Le risque de cette phase n'est pas la capacité, c'est la **complaisance**.
> Un modèle qui t'a regardé écrire le papier sera d'accord avec le papier.

## Style

Anglais académique US, humain, vulgarisateur et clair, en conservant la lisibilité
de mainV5. Modifier seulement ce qui est nécessaire et préserver la thèse.
Un paragraphe, une idée ; progression linéaire ; phrases simples et concrètes.
Définir concepts et symboles avant usage. Garder les termes existants et utiliser
des puces pour les distinctions complexes. Employer « examples » dans la prose.
Conserver les mêmes catégories de tâches dans le texte, les tableaux et les figures.
Simplifier tableaux et notation ; éviter codes opaques, commentaires de travail de
LLM, digressions et réserves répétées. Garder les limites scientifiques nécessaires.
Borner le mapping aux protocoles et unités examinés, sans nouveauté ou supériorité
non démontrée. Dans le mapping, conserver la colonne « Required status marking » et la limiter
au statut de fait, possibilité ou fiction. Décrire citations, abstention et format
dans « Reference and check ». Ne pas réintroduire « Presentation requirements »
comme nom de colonne ni assimiler une non-réponse au marquage d’un claim proposé.
Pas de transitions formulaïques ni de citation spam.
