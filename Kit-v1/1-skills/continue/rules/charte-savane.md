---
name: "Charte Savane"
globs: ["**/*.html", "**/*.css", "**/*.js"]
description: "Charte graphique Savane, à appliquer à toute interface"
---

# Charte Savane

Une étoffe de savane : terre cuite, ocre, olive, des frises de triangles.

## Avant d'écrire du code d'interface

1. Annonce « Charte appliquée : Savane ».
2. Présente ton plan de design en 5 lignes : palette, typographie, composants, ton des textes, élément signature.
3. Crée dans le projet le fichier `charte.css` avec exactement les variables ci-dessous, charge-le avant toute autre feuille de style, et n'utilise que ces variables pour les couleurs, les polices, les rayons et les bordures.

```css
/* Charte Savane : variables à utiliser telles quelles.
   Copier ce fichier dans le projet sous le nom charte.css et le charger en premier. */
:root {
  --charte-fond: #FEFAE0;
  --charte-surface: #FFFFFF;
  --charte-texte: #283618;
  --charte-texte-doux: #56612F;
  --charte-accent: #9C4F12;
  --charte-sur-accent: #FEFAE0;
  --charte-accent-2: #DDA15E;
  --charte-accent-3: #606C38;
  --charte-bord: #606C38;
  --charte-danger: #9B1C1C;
  --charte-police-titres: Georgia, "Times New Roman", serif;
  --charte-police-texte: Verdana, Geneva, sans-serif;
  --charte-rayon: 8px;
  --charte-epaisseur-bord: 2px;
  --charte-ombre: none;
}
```

## Les 5 règles signature

Elles se vérifient d'un coup d'œil sur une capture d'écran.

1. **Couleurs** : crème `#FEFAE0`, terre cuite `#9C4F12`, olive `#606C38`, ocre `#DDA15E`.
2. **Typographie** : titres en Georgia gras, texte en Verdana.
3. **Boutons** : terre cuite, coins à 8 px, soulignés d'un bord bas ocre de 4 px.
4. **Ton** : tutoiement chaleureux, avec une image de la nature dans chaque message. Lexique imposé : action d'ajout « Semer une tâche », état vide « La savane est calme : rien à faire. », erreur précédée de « Fausse piste : », compteur « {n} piste(s) à suivre ».
5. **Signature** : frise de triangles ocre et terre cuite, dessinée en CSS, sous l'en-tête, et proverbe « Petit à petit, la liste se vide. » en pied de page.

## Composants

- Champs de saisie : blancs, bord olive, coins à 8 px.
- Listes : cartes blanches à bord olive.
- Élément terminé : texte barré, fond ocre clair.
- Erreurs : texte `--charte-danger` sous le champ.

## Interdits

- Bleu et noir pur.
- Couleurs fluo.
- Angles vifs.
- Aucune ressource externe : ni police web, ni CDN, ni image distante.
- Aucune couleur écrite en dur hors de `charte.css`. Si une teinte manque, prends la variable la plus proche et signale-le.

## Avant de conclure

Affiche un tableau de conformité : une ligne par règle signature, avec « conforme » ou « écart », et l'endroit de la page où cela se voit.
