# Application des commentaires V6 — 30 septembre 2026

Fichier édité : `réécriture_papier/truth_contract_position_paper.tex` uniquement. Le PDF et les fichiers de compilation ont été régénérés avec le build existant. L’état antérieur est sauvegardé dans `manuscrit_avant.tex`, les changements dans `modifications.patch`.

| Commentaires | Modifications réalisées / réponse proposée à l’encadrant |
|---|---|
| V6-01–02 | Le truth contract est nommé et la permission expliquée comme ce que la tâche autorise à ajouter ou modifier au-delà de l’évidence. |
| V6-03–04 | Observed status marking est expliqué en mots dans le Related Work ; les symboles avant définition sont remplacés par leur signification. |
| V6-05 | Le tableau de notation utilise les indices des claims pour ES, q* et m̂ ; les paramètres du contrat restent communs à la tâche. |
| V6-06, V6-12 | ESTABLISHED, HYPOTHETICAL et FICTIONAL sont définis en trois puces et composés avec `\textsc`, comme les evidence states. Figure 2, exemple et claim trace harmonisés. |
| V6-07 | Extraction et recovery sont explicitement nommées comme opérations du traitement de la réponse par l’oracle. |
| V6-08 | L’exemple UNKNOWN explique ce que l’extrait établit et pourquoi il ne tranche pas la position près de l’entrée du temple. |
| V6-09 | Non développé : la divergence déjà signalée entre la convention CONTRADICTED/LD du manuscrit et les instructions AGENTS reste à trancher. La règle scientifique et l’exemple existants sont conservés. |
| V6-10–11 | La claim trace est conservée et son utilité expliquée avant les huit paramètres. Renvoi corrigé vers la section 2.6 via son label ; titre raccourci. |
| V6-13 | Les noms des claim labels dans la liste et les evidence states du tableau suivent la typographie en petites capitales. |
| V6-14 | Section style raccourcie et recentrée sur sa distinction avec status marking. Les protocoles déjà présents dans la priorité 3 et l’annexe restent accessibles par renvoi ; aucune nouvelle évaluation de créativité revendiquée. |

Corrections locales supplémentaires : anglais de l’ouverture 3.2 ; définitions des evidence states rapportées à l’évidence ; phrase grammaticale pour les échecs d’évaluation ; affichage mathématique vide supprimé avant le tuple.

Aucune référence, ressource, donnée, expérience ou règle de décision nouvelle. Les trois labels décrivent la présentation des claims ; ils ne remplacent ni les evidence states ni les claim labels. Les cas ambigus restent traités comme échecs de récupération.

## Compilation et rendu

`make -C réécriture_papier pdf` : succès, 40 pages. Aucun avertissement de référence/citation indéfinie ni débordement de boîte dans le journal final. Un avertissement hyperref préexistant demeure (`pdfpagelabels` désactivé). Pages 10–14 inspectées visuellement : définitions, exemple UNKNOWN, table de décision, figure 2 et claim trace lisibles. Les trois labels sont page 10 ; les huit paramètres et leur équation restent regroupés page 14.

Les réponses ci-dessus sont consignées pour le suivi, sans envoi à l’encadrant. Les cinq messages tronqués de l’export n’ont pas été reconstitués.
