---
name: "Charte Minimal suisse"
globs: ["**/*.html", "**/*.css", "**/*.js"]
description: "Charte graphique Minimal suisse, à appliquer à toute interface"
---

# Charte Minimal suisse

Une affiche typographique : une grille, du blanc, un seul rouge.

## Avant d'écrire du code d'interface

1. Annonce « Charte appliquée : Minimal suisse ».
2. Présente ton plan de design en 5 lignes : palette, typographie, composants, ton des textes, élément signature.
3. Crée dans le projet le fichier `charte.css` avec exactement les variables ci-dessous, charge-le avant toute autre feuille de style, et n'utilise que ces variables pour les couleurs, les polices, les rayons et les bordures.

```css
/* Charte Minimal suisse : variables à utiliser telles quelles.
   Copier ce fichier dans le projet sous le nom charte.css et le charger en premier. */
:root {
  --charte-fond: #FFFFFF;
  --charte-surface: #FFFFFF;
  --charte-texte: #000000;
  --charte-texte-doux: #595959;
  --charte-accent: #E30613;
  --charte-sur-accent: #FFFFFF;
  --charte-accent-2: #000000;
  --charte-accent-3: #000000;
  --charte-bord: #000000;
  --charte-danger: #E30613;
  --charte-police-titres: Helvetica, Arial, sans-serif;
  --charte-police-texte: Helvetica, Arial, sans-serif;
  --charte-rayon: 0px;
  --charte-epaisseur-bord: 2px;
  --charte-ombre: none;
}
```

## Les 5 règles signature

Elles se vérifient d'un coup d'œil sur une capture d'écran.

1. **Couleurs** : blanc, noir, et une seule touche de rouge `#E30613`.
2. **Typographie** : Helvetica ou Arial, tout aligné à gauche sur une grille, titres en gras, rien de centré.
3. **Boutons** : rectangulaires et pleins, sans bord ni ombre : rouge pour l'action principale, noir pour les autres.
4. **Ton** : infinitif neutre, quatre mots au plus par libellé, aucune ponctuation décorative. Lexique imposé : action d'ajout « Ajouter », état vide « Aucune tâche », erreur précédée de « Erreur : », compteur « {n} restante(s) ».
5. **Signature** : le compteur est un très grand nombre (96 px au moins, en gras) en haut à gauche : c'est l'élément dominant de la page.

## Composants

- Champs de saisie : un trait noir de 2 px dessous.
- Listes : lignes séparées par un filet noir de 1 px.
- Élément terminé : texte gris barré.
- Erreurs : texte rouge, sans cadre.

## Interdits

- Texte centré.
- Coins arrondis, ombres et italique.
- Icônes décoratives.
- Aucune ressource externe : ni police web, ni CDN, ni image distante.
- Aucune couleur écrite en dur hors de `charte.css`. Si une teinte manque, prends la variable la plus proche et signale-le.

## Avant de conclure

Affiche un tableau de conformité : une ligne par règle signature, avec « conforme » ou « écart », et l'endroit de la page où cela se voit.
