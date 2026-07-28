# Prompt fil rouge et figure prompt → claim

Réponse à la note d'encadrant « refaire la figure principale pour prompt → claim » + « fait un bon prompt pour thèse principale », et aux commentaires #21 (elod, message tronqué : *« écrire peut-être un texte plus long, le découper en claims pour introduire les définitions »*) et #61 (elod : *« le prompt n'est pas un input ? »*).

**Livrables** : `figures/fig_prompt_to_claim.tex` (TikZ, compile sans erreur) et `figures/apercu_fig_prompt_to_claim.png` (aperçu).

---

## 1. Pourquoi l'exemple actuel ne peut pas servir de fil rouge

L'exemple photosynthèse (« Explain photosynthesis like a poet, but keep the science accurate », `σ_p=2`, `κ_p=0`) a un défaut structurel : **avec `κ_p=0`, `Γ_p` est vide, donc `L(c*,K_p)=0` toujours, donc LD est inatteignable.** L'exemple ne peut produire que `SUP` et `SUP+SV`.

C'est pour cette raison mécanique que le papier doit recourir à un second exemple — Verdier / fig:flip — dès qu'il veut illustrer `LD`, et que les deux ne se composent jamais en un fil unique. Le lecteur voit deux mondes séparés au lieu d'un système.

Un fil rouge utile doit donc satisfaire quatre conditions :

1. `κ_p ≥ 1`, sinon LD est hors d'atteinte ;
2. `O_p` **concret et borné**, citable dans la figure — ce qui règle en même temps #29 et la note « bien définir `O_p` comme la source de l'oracle » ;
3. `Γ_p` et `ρ_p` visiblement à l'œuvre, avec au moins une violation de chacun ;
4. une réponse assez longue pour produire les quatre types de span (*claim-only*, *mixed*, *SV-only*, *other*) et les quatre issues (`SUP`, `SUP+SV`, `LD`, `Hall`).

## 2. Le prompt proposé

> **Prompt $p$ :** « Using the attached archive extract, write a short museum-panel text on the 1918 influenza epidemic in Lyon. Make it vivid for a general audience. Every historical statement must be faithful to the extract; where the extract is silent, you may add a plausible reconstruction, but mark it explicitly as conjecture. »

**Contrat induit :**

| Composante | Valeur | D'où elle vient dans le prompt |
|---|---|---|
| `O_p` | l'extrait d'archive joint | « Using the attached archive extract » |
| `σ_p` | 2 — fortement marqué | « museum-panel text », « vivid for a general audience » |
| `κ_p` | 1 — divergence limitée | « you may add a plausible reconstruction » |
| `Γ_p` | vie quotidienne et mesures de santé publique à Lyon, 1918-19 ; exclut les énoncés sur des individus identifiés | « where the extract is silent » borné par le sujet du panneau |
| `ρ_p` | la conjecture doit être marquée comme telle | « mark it explicitly as conjecture » |

**`O_p` (encadré dans la figure) :**

> *Registre de l'Hôtel-Dieu, Lyon, octobre 1918.* « 412 admissions for the week of 14 October. Municipal order of 22 October requires gauze masks in enclosed public spaces. Schools: no entry. »

Le « Schools: no entry » est délibéré : il rend le span sur les écoles authentiquement `unknown` plutôt que contredit.

## 3. La réponse et sa décomposition

> **Réponse $y$ :** « Panel 3 of 6 — Lyon, autumn 1918. In the week of 14 October, the Hôtel-Dieu registered 412 admissions. From 22 October the city breathed through gauze. Schools had probably already emptied before the order — the register does not say. Dr. Chapuis, the hospital's director, hid the true toll from the prefecture. The winter that would not lift. »

| Span | Type | Claim canonique `c*` | `E(c*,O_p)` | Label | Motif |
|---|---|---|---|---|---|
| `s_0` « Panel 3 of 6 » | *other* | — | — | — | ni claim ni marquage |
| `s_1` « …registered 412 admissions » | *claim-only* | 412 admissions, Hôtel-Dieu, semaine du 14 oct. 1918 | entailed | **SUP** | entraîné par `O_p` |
| `s_2` « the city breathed through gauze » | *mixed* (`z=1`) | port du masque de gaze exigé dans les espaces publics clos à partir du 22 oct. | entailed | **SUP + SV** | la métaphore n'ajoute aucun engagement véritatif |
| `s_3` « probably already emptied… » | *claim-only* | les écoles ont fermé avant le 22 oct. | unknown | **LD** | dans `Γ_p`, hedgé comme `ρ_p` l'exige |
| `s_4` « Dr. Chapuis hid the true toll » | *claim-only* | le directeur nommé a dissimulé le bilan | unknown | **Hall** | hors `Γ_p` **et** asserté sans marquage → viole `Γ_p` et `ρ_p` |
| `s_5` « The winter that would not lift. » | *SV-only* | — | — | — | forme marquée, aucun contenu véritatif |

Six spans, quatre types, quatre issues, un seul contrat. `s_4` est le span le plus utile : il montre que `Hall` peut survenir par **deux voies indépendantes**, ce qui justifie d'avoir séparé `Γ_p` de `ρ_p` — donc répond indirectement à #44.

## 4. Ce que la figure gagne à faire

Sept bandes horizontales, une colonne par claim, avec une gouttière de gauche qui nomme l'étape et sa notation :

```
task input        Prompt p ──────────────────── O_p (extrait d'archive, cité)
truth contract    σ_p=2 │ κ_p=1 │ Γ_p │ ρ_p
response y        [réponse complète, spans surlignés]
span typing       s_1 claim-only │ s_2 mixed │ s_3 claim-only │ s_4 claim-only
canonical claims  c_1* │ c_2* │ c_3* │ c_4*
evidence state    entailed │ entailed │ unknown │ unknown
contract label    SUP │ SUP+SV │ LD │ Hall
```

Trois bénéfices au-delà de l'illustration :

- **La figure devient le glossaire.** Chaque symbole apparaît à l'étape où il agit, dans l'ordre où le lecteur en a besoin. C'est la réponse la plus économique à « restructure pour remonter les def TC(p) » et au cluster « définir les symboles avant leur premier usage » : plutôt que de déplacer des paragraphes, on donne au lecteur une carte qu'il peut garder sous les yeux.
- **Le prompt redevient un input** (#61), et `O_p` est enfin montré comme une *source* citable et non comme un symbole (#29).
- **Les deux étages du pipeline sont visibles** : les annotations de droite localisent `σ_p` au niveau de la récupération des claims et `O_p`/`K_p` au niveau de la labellisation. C'est la réponse graphique au problème §A de la note de review — le fait que `σ_p` n'apparaisse pas dans `V(c*|p)`.

## 5. Articulation avec les figures existantes

Ne pas fusionner. Les trois font des travaux distincts et complémentaires :

| Figure | Démontre | Sort |
|---|---|---|
| `fig:flip` (Verdier) | **un libellé, deux contrats, deux verdicts** → la relativité au contrat | garder telle quelle, déjà refondue |
| `fig:prompt-to-claim` (nouvelle) | **un contrat, une réponse, quatre labels** → la couverture du framework | à insérer en §1 ou §2.1 |
| `fig:decision` | l'algorithme abstrait | garder ; retirer l'encadré « Running example » du bas, devenu redondant, et l'aligner sur le fil rouge Lyon |

Ordre de lecture visé : `fig:prompt-to-claim` en §1 (le lecteur voit tout le système sur un cas), `fig:flip` juste après (il voit que le label bouge avec le contrat), `fig:decision` en §2.5 (il voit la règle générale).

## 6. Où le fil rouge doit repasser

| Endroit | Usage |
|---|---|
| §1, après « Our position » | la figure complète, comme carte d'entrée |
| §2.1 Overview | remplacer le walkthrough photosynthèse par le walkthrough Lyon |
| §2.2 `Γ_p` / `ρ_p` | les exemples actuels (Lyme, doses inventées) restent bons — ou basculer sur `s_3`/`s_4` pour l'unité |
| `tab:contracts` | ajouter une carte Lyon ; garder les autres lignes qui couvrent `κ_p=0` et `κ_p=2` |
| §5 Worked Cases | Case C (présentation) et Case D (portée) peuvent être rejoués sur `s_3`/`s_4` au lieu d'être construits ex nihilo → réponse partielle à #68 |
| `fig:decision`, encadré du bas | remplacer l'exemple photosynthèse par Lyon |
| §Discussion | l'agrégation exhibée sur ce cas : « règle du pire cas → Hall ; règle proportionnelle → 3 claims sur 4 acceptables » (cf. §D de la note de review) |

## 7. Réserves

- **Exemple construit.** L'extrait d'archive et le nom « Chapuis » sont fabriqués. Il faut le dire en légende, comme le papier le fait déjà pour Verdier. Si vous préférez un ancrage réel, la même structure fonctionne avec un extrait authentique d'archive municipale — mais cela demande une vérification de source et c'est le seul point qui coûte du temps.
- **La figure est un brouillon fonctionnel**, pas une version finale : elle compile et la mise en page tient, mais la flèche `O_p` et les barres verticales bleues de droite demandent un ajustement esthétique.
- **`σ_p=2` avec `κ_p=1`** place le fil rouge dans une cellule que `fig:profiles` ne marque pas comme le « TARGET GAP » (qui est `σ_p=2, κ_p=0`). C'est cohérent — le fil rouge illustre le framework, il n'a pas à incarner le manque empirique — mais il faut éviter que le lecteur confonde les deux. Une phrase suffit.
