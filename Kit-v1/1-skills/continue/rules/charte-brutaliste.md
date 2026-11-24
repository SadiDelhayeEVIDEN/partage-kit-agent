---
name: "Charte Brutaliste"
globs: ["**/*.html", "**/*.css", "**/*.js"]
description: "Charte graphique Brutaliste, à appliquer à toute interface"
---

# Charte Brutaliste

Le web brut de 1996 : Times New Roman, liens bleus, aucun habillage.

## Avant d'écrire du code d'interface

1. Annonce « Charte appliquée : Brutaliste ».
2. Présente ton plan de design en 5 lignes : palette, typographie, composants, ton des textes, élément signature.
3. Crée dans le projet le fichier `charte.css` avec exactement les variables ci-dessous, charge-le avant toute autre feuille de style, et n'utilise que ces variables pour les couleurs, les polices, les rayons et les bordures.

```css
/* Charte Brutaliste : variables à utiliser telles quelles.
   Copier ce fichier dans le projet sous le nom charte.css et le charger en premier. */
:root {
  --charte-fond: #FFFFFF;
  --charte-surface: #FFFFFF;
  --charte-texte: #000000;
  --charte-texte-doux: #333333;
  --charte-accent: #0000EE;
  --charte-sur-accent: #FFFFFF;
  --charte-accent-2: #FFFF00;
  --charte-accent-3: #FFFF00;
  --charte-bord: #000000;
  --charte-danger: #D40000;
  --charte-police-titres: "Times New Roman", Times, serif;
  --charte-police-texte: "Times New Roman", Times, serif;
  --charte-rayon: 0px;
  --charte-epaisseur-bord: 3px;
  --charte-ombre: none;
}
```

## Les 5 règles signature

Elles se vérifient d'un coup d'œil sur une capture d'écran.

1. **Couleurs** : blanc, noir, bleu lien `#0000EE` et surlignage jaune `#FFFF00`. Rien d'autre.
2. **Typographie** : Times New Roman partout ; le titre de page est énorme (96 px au moins), en minuscules, collé au bord gauche.
3. **Boutons** : les actions sont des liens bleus soulignés, pas des boutons habillés ; seul le bouton d'ajout a un cadre noir de 3 px, sans fond.
4. **Ton** : brut : minuscules, aucune formule de politesse, un point à la fin de chaque libellé. Lexique imposé : action d'ajout « ajouter. », état vide « rien. », erreur précédée de « non. », compteur « {n} à faire. ».
5. **Signature** : le titre de la page est « todo. », et l'élément survolé ou en cours de saisie est surligné en jaune `#FFFF00`.

## Composants

- Champs de saisie : cadre noir de 3 px, aucun texte d'aide décoratif.
- Listes : liste à puces standard du navigateur, pas de cartes.
- Élément terminé : texte barré.
- Erreurs : texte rouge en gras.

## Interdits

- Coins arrondis, ombres et dégradés.
- Icônes et emoji.
- Majuscules et texte centré.
- Aucune ressource externe : ni police web, ni CDN, ni image distante.
- Aucune couleur écrite en dur hors de `charte.css`. Si une teinte manque, prends la variable la plus proche et signale-le.

## Avant de conclure

Affiche un tableau de conformité : une ligne par règle signature, avec « conforme » ou « écart », et l'endroit de la page où cela se voit.
