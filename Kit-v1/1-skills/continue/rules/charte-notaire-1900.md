---
name: "Charte Notaire 1900"
globs: ["**/*.html", "**/*.css", "**/*.js"]
description: "Charte graphique Notaire 1900, à appliquer à toute interface"
---

# Charte Notaire 1900

Une étude notariale de 1900 : papier ivoire, encre brune, solennité.

## Avant d'écrire du code d'interface

1. Annonce « Charte appliquée : Notaire 1900 ».
2. Présente ton plan de design en 5 lignes : palette, typographie, composants, ton des textes, élément signature.
3. Crée dans le projet le fichier `charte.css` avec exactement les variables ci-dessous, charge-le avant toute autre feuille de style, et n'utilise que ces variables pour les couleurs, les polices, les rayons et les bordures.

```css
/* Charte Notaire 1900 : variables à utiliser telles quelles.
   Copier ce fichier dans le projet sous le nom charte.css et le charger en premier. */
:root {
  --charte-fond: #F4ECD8;
  --charte-surface: #FBF6E9;
  --charte-texte: #2B1D0E;
  --charte-texte-doux: #6B5A45;
  --charte-accent: #7A1F2B;
  --charte-sur-accent: #FBF6E9;
  --charte-accent-2: #8C6D1F;
  --charte-accent-3: #8C6D1F;
  --charte-bord: #2B1D0E;
  --charte-danger: #9B1C1C;
  --charte-police-titres: Georgia, "Times New Roman", serif;
  --charte-police-texte: Georgia, "Times New Roman", serif;
  --charte-rayon: 0px;
  --charte-epaisseur-bord: 1px;
  --charte-ombre: none;
}
```

## Les 5 règles signature

Elles se vérifient d'un coup d'œil sur une capture d'écran.

1. **Couleurs** : papier ivoire `#F4ECD8`, encre `#2B1D0E`, bordeaux `#7A1F2B` réservé aux actions.
2. **Typographie** : Georgia partout, titres centrés en petites capitales.
3. **Boutons** : rectangulaires, bordeaux, entourés d'un double filet (bord `double` de 3 px), libellé en petites capitales.
4. **Ton** : vouvoiement solennel d'étude notariale, jamais d'exclamation. Lexique imposé : action d'ajout « Consigner », état vide « Aucun acte n'est inscrit au registre à ce jour. », erreur précédée de « Nous regrettons : », compteur « {n} acte(s) en instance ».
5. **Signature** : en-tête « Étude de Maître Todo — Registre des actes » souligné d'un double filet, et éléments de liste numérotés en chiffres romains (I, II, III).

## Composants

- Champs de saisie : fond transparent, un simple trait d'encre dessous.
- Listes : lignes séparées par un filet fin, numéro romain à gauche.
- Élément terminé : texte barré suivi de « — soldé » en italique.
- Erreurs : italique bordeaux, sous le champ concerné.

## Interdits

- Emoji et pictogrammes.
- Couleurs vives.
- Coins arrondis et police sans empattement.
- Aucune ressource externe : ni police web, ni CDN, ni image distante.
- Aucune couleur écrite en dur hors de `charte.css`. Si une teinte manque, prends la variable la plus proche et signale-le.

## Avant de conclure

Affiche un tableau de conformité : une ligne par règle signature, avec « conforme » ou « écart », et l'endroit de la page où cela se voit.
