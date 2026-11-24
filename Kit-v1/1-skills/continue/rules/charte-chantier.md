---
name: "Charte Chantier"
globs: ["**/*.html", "**/*.css", "**/*.js"]
description: "Charte graphique Chantier, à appliquer à toute interface"
---

# Charte Chantier

Un panneau de chantier : jaune sécurité, noir épais, consignes criées.

## Avant d'écrire du code d'interface

1. Annonce « Charte appliquée : Chantier ».
2. Présente ton plan de design en 5 lignes : palette, typographie, composants, ton des textes, élément signature.
3. Crée dans le projet le fichier `charte.css` avec exactement les variables ci-dessous, charge-le avant toute autre feuille de style, et n'utilise que ces variables pour les couleurs, les polices, les rayons et les bordures.

```css
/* Charte Chantier : variables à utiliser telles quelles.
   Copier ce fichier dans le projet sous le nom charte.css et le charger en premier. */
:root {
  --charte-fond: #FFD100;
  --charte-surface: #FFFFFF;
  --charte-texte: #111111;
  --charte-texte-doux: #3A3A3A;
  --charte-accent: #111111;
  --charte-sur-accent: #FFD100;
  --charte-accent-2: #FF6B00;
  --charte-accent-3: #FF6B00;
  --charte-bord: #111111;
  --charte-danger: #C1121F;
  --charte-police-titres: Impact, "Arial Black", sans-serif;
  --charte-police-texte: Arial, Helvetica, sans-serif;
  --charte-rayon: 0px;
  --charte-epaisseur-bord: 4px;
  --charte-ombre: 6px 6px 0 #111111;
}
```

## Les 5 règles signature

Elles se vérifient d'un coup d'œil sur une capture d'écran.

1. **Couleurs** : jaune sécurité `#FFD100` en fond de page, noir `#111111` pour tout le reste, cartes blanches.
2. **Typographie** : titres en Impact et en capitales, texte en Arial gras.
3. **Boutons** : noirs, texte jaune, bord de 4 px, ombre décalée de 6 px sans flou, aucun arrondi.
4. **Ton** : tutoiement de chef de chantier, phrases courtes à l'impératif. Lexique imposé : action d'ajout « POSER », état vide « Chantier vide. Pose ta première tâche. », erreur précédée de « STOP : », compteur « {n} tâche(s) en cours de chantier ».
5. **Signature** : bande hachurée jaune et noire (rayures diagonales à 45°) en haut et en bas de la page, et panneau « ZONE DE TRAVAUX » dans l'en-tête.

## Composants

- Champs de saisie : blancs, bord noir de 4 px.
- Listes : cartes blanches à bord noir épais et ombre décalée.
- Élément terminé : texte barré et tampon « FINI ».
- Erreurs : panneau blanc à bord rouge.

## Interdits

- Coins arrondis.
- Ombres floues et dégradés (hors hachures).
- Titres en minuscules.
- Aucune ressource externe : ni police web, ni CDN, ni image distante.
- Aucune couleur écrite en dur hors de `charte.css`. Si une teinte manque, prends la variable la plus proche et signale-le.

## Avant de conclure

Affiche un tableau de conformité : une ligne par règle signature, avec « conforme » ou « écart », et l'endroit de la page où cela se voit.
