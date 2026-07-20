# Changelog — Révision majeure du 2026-07-18

Application des corrections du diagnostic encadrants + retrait de l'expérience.

## Conceptuel

- **Abstract** : remplacé par la version proposée (phrases courtes, « scoping audit », support ≠ vérité, stance explicite).
- **Thèse** : « not a binary property of text » → « not a context-free property of a claim ». Nouvelle formulation clé conservée : *The contract does not change what is true. It changes whether the model's departure violates the task.* (intro + conclusion, une seule répétition).
- **Oracle** : « fixes what counts as true » supprimé partout → « specifies the evidence against which claims are evaluated » / « defines the standard of support ».
- **LD sans utilité dans le verdict** : « it is LD if it serves the poem » et « can be LD: useful, … » corrigés — le verdict = licence + stance ; l'utilité est un score séparé.
- **Objectivité atténuée** : « objective, not subjective », « mechanically checkable », « verifiable constraint-style » → « explicit annotation checks », « can be assessed using human annotation or automated verification », « once the contract is annotated, the decision rule is explicit and reproducible ».
- **σ clarifié** comme variable de contrôle de mesure (O et κ déterminent le verdict sémantique).
- **« same output » → « same claim »** aux endroits claim-level (abstract, caption Table 1).
- **Formalisation ajoutée** (Appendix A) : prédicats S (support), L (scope), M (stance), fonction de verdict V(c|p), U(c,p)∈[0,1] séparé, thèse existentielle ∃c,p₁,p₂.
- **« productive divergence » supprimé** (et citations parry_team_2023, lingard_pulling_2017 désormais non citées — à purger de references.bib si souhaité).
- **Réponse à la critique « user intent »** ajoutée au paragraphe « What the contract is not ».

## Structure

- **Intro allégée** : « What the contract is not » déplacé en Section 2 (après κ) ; Table 1 (cards) déplacée en Section 2 après les définitions ; « How we establish the gap » remplacé par le paragraphe « How we support the position » (résout la tension anecdotal/illustrative/preliminary).
- **Audit reframé** : « illustrative audit of forty representative benchmarks » → « purposive scoping audit of forty evaluation resources » ; conclusion limitée : « In this sample, we found no protocol that explicitly conditions the hallucination verdict on the form or content license ». Colonnes du tableau inchangées (une restructuration en 5 colonnes booléennes exigerait un re-codage réel — voir « Décisions ouvertes »).
- **Agenda condensé 7 → 4** : (1) contract annotation and inference ; (2) reliable H/LD labeling ; (3) contract-aware benchmark design (excess-H metrics + robustesse stylistique + couche d'annotation + CLEF 2026) ; (4) mitigation preserving LD. Toutes les citations conservées.
- **Annexe expérimentale supprimée** (Option A) : Appendix B entier (setup, table, figure pgfplots, caveats, TODO non résolu) retiré ; remplacé en §3 par trois phrases de motivation prudentes. Préambule pgfplots retiré.

## Macros

- `\TR`→`\TC`, `\TRs`→`\TCs`, `\PD`→`\LD`, `\Hallu`→`\Hall` (définitions + toutes occurrences).

## Langue

- « first-class object » → « explicit evaluation variable » ; « contract-conditioned diagnosis » → « diagnosis conditioned on the task contract » ; « collateral damage » → « loss of creative quality » ; « the cell no benchmark fills » → « A missing evaluation setting » ; `labelled` → `labeled`.
- Phrase CLEF réparée (ponctuation + σ>0 incohérent → « κ=0 with a granted form license »).

## Vérification

- 3 passes pdflatex + bibtex : 0 erreur, 0 citation indéfinie, 0 référence indéfinie.

## Ajouts du second passage (même journée)

- **Citations parry_team_2023 / lingard_pulling_2017 réintégrées** : elles ne portaient que la locution « productive divergence » (supprimée pour garder un seul terme). Réutilisées comme support de l'utilité de LD : « The value of licensed departures from an established norm is not specific to NLP… » (§2, définition de LD).
- **Nouvelle Figure 1 (`fig:flip`)** : résumé visuel de la thèse en un exemple — même claim (« le café Verdier existait en 1920 »), deux contrats (QA historique κ=0 vs fiction κ=2), deux verdicts (H vs LD). Placée dans l'intro, référencée depuis le paragraphe de thèse et le Case B.
- **Figures vérifiées visuellement** (rendu PDF converti en PNG) : fig:flip, arbre de décision, cards Table 1, plan (σ,κ) — tout rend proprement.
- **Harmonisation notation/vocabulaire** :
  - Appendix A aligné sur le texte : $(O,\sigma,\kappa)$ sans indices $_p$ ; $L$ inclut explicitement $\kappa>0 \wedge c\in\mathrm{scope}(\kappa)$ ; verdict « supported » (au lieu de SUP) pour coller à l'arbre ; mapping explicite S = evidence state, L = license-pass, M = stance-pass.
  - « standard of support » unifié pour O (abstract/thèse/§2/header de l'arbre/conclusion).
  - Définition de κ alignée sur la thèse : contenu + scope + stance.
  - Agenda item 2 relié aux prédicats ($L$, $M$, $U$ de l'Appendix A).
- Recompilation : 0 erreur, 0 citation/référence indéfinie ; PDF copié en `main_position_personal.pdf`.

## Troisième passage — harmonisation notation (même journée)

- **Notation subscriptée adoptée partout pour la définition** : les 9 occurrences de `\TC(p)=(O,\sigma,\kappa)` → `\TC(p)=(O_p,\sigma_p,\kappa_p)` (abstract, thèse, contributions, §2, captions, conclusion, Appendix A).
- **Convention explicite ajoutée en §2** : « We write $O_p$, $\sigma_p$, and $\kappa_p$ for the components of $\TC(p)$, and drop the subscript $p$ when the prompt is clear from context. » — les mentions génériques $(O,\sigma,\kappa)$ restent donc valides.
- **Appendix A aligné sur la définition formelle demandée** : prédicats $S(c,O_p)$, $L(c,\kappa_p)$, $M(c,\kappa_p)$ ; verdict $\mathrm{SUP}$/\LD/\Hall ; phrase de mapping « SUP is the supported label of Figure (arbre) » ; $L$ garde la forme précise $\kappa_p>0 \wedge c\in\mathrm{scope}(\kappa_p)$.
- **Synonym drift corrigé** : « task contract » (3×) → « truth contract » ; gloss de « stance » ajouté dès la thèse (asserted as fact, or marked as a hypothesis).
- Recompilation complète (pdflatex ×3 + bibtex) : 0 erreur, 0 citation/référence indéfinie ; PDF racine mis à jour.

## Décisions ouvertes (à trancher par les auteurs)

1. **Titre** : inchangé. Options proposées par la review : « When Is Divergence a Hallucination? A Truth-Contract Framework for LLM Evaluation » ou « Hallucination Is Contract-Relative: A Framework for Evaluating LLM Divergence ».
2. **Tableau d'audit** : le passage aux 5 colonnes booléennes (Oracle explicit? / Form license manipulated? / …) exige un re-codage réel des 40 ressources (idéalement à 2 annotateurs + accord) — non fabriqué ici.
3. **references.bib** : purger parry_team_2023 et lingard_pulling_2017 si plus utilisées ailleurs.
