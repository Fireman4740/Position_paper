# Tableaux des ressources : simplification et déplacement

Demande : retirer les exposants, rendre les cellules compréhensibles, remonter les tableaux détaillés dans le corps.

## Modifications appliquées

- Les 41 ressources sont maintenant dans la section **4.3 Resource Tables**, tableaux **3–5**, pages **16–20** du PDF.
- Les exposants A/M/P ont été retirés. La profondeur de l’audit reste disponible dans le registre de sources séparé ; les limites de lecture restent expliquées dans Selection and Scope.
- Quatre colonnes explicites : **Resource**, **What is checked, and against what?**, **Other evaluation criteria**, **Allowed content: our reading**.
- `not separately represented` devient **No extra quality measure identified**, expliqué avant les tableaux : aucun critère supplémentaire de qualité identifié dans les documents examinés au-delà du contrôle de preuve/correction.
- `Γ: IE` devient **Only supported content (inferred)**. Les autres codes de permission sont également rédigés en toutes lettres, sans confondre manque d’information et absence de permission.
- Les codes de style S: NC, NC/NA et SC ont disparu des cellules. L’observation commune est expliquée dans le texte ; WritingBench conserve sa mention explicite du style évalué.
- Les préfixes abstraits et redondants (« mixed », « quality or preference rubric », etc.) sont remplacés par les critères concrets déjà consignés.
- Police agrandie de footnotesize à small ; en-têtes répétés lors des changements de page.
- Le tableau synthétique des noms et l’ancienne annexe Resource Mapping sont supprimés pour éviter les doublons. Les références croisées et la légende de la figure 3 sont mises à jour.
- L’annexe AA-Omniscience devient l’annexe B. Les citations et IDs des 41 ressources sont conservés.
- Le titre préexistant « Exemple » et son label sec:cases ont été conservés ; un alias sec:examples répare les renvois qui l’utilisaient déjà.

## Réponse à la demande

Les tableaux peuvent être lus directement dans le corps du papier, sans déchiffrer une légende de codes ni consulter une annexe. Les cellules indiquent concrètement les critères et les limites de notre lecture. Aucune nouvelle donnée de benchmark n’a été ajoutée.

## Vérification

Compilation `make check` puis `make pdf` : **38 pages**, aucune erreur, aucune citation manquante sur 94 clés, aucune référence indéfinie ni boîte Overfull. Présence des 41 IDs, tous dans le corps. Tableaux inspectés visuellement aux pages 16, 17, 19 et 20. Le warning de classe hyperref sur pdfpagelabels reste présent.

- [Diff de la modification](modifications.patch).
- [Contrôles structurés](verification.json).
- [Audit détaillé des sources, conservé hors des tableaux](../audit_sources_41.md).
