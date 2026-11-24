---
name: "Charte Luxe Noir & Or"
globs: ["**/*.html", "**/*.css", "**/*.js"]
description: "Charte graphique Luxe Noir & Or, à appliquer à toute interface"
---

# Charte Luxe Noir & Or

Une maison de haute joaillerie : noir profond, or, beaucoup de vide.

## Avant d'écrire du code d'interface

1. Annonce « Charte appliquée : Luxe Noir & Or ».
2. Présente ton plan de design en 5 lignes : palette, typographie, composants, ton des textes, élément signature.
3. Crée dans le projet le fichier `charte.css` avec exactement les variables ci-dessous, charge-le avant toute autre feuille de style, et n'utilise que ces variables pour les couleurs, les polices, les rayons et les bordures.

```css
/* Charte Luxe Noir & Or : variables à utiliser telles quelles.
   Copier ce fichier dans le projet sous le nom charte.css et le charger en premier. */
:root {
  --charte-fond: #0A0A0A;
  --charte-surface: #141414;
  --charte-texte: #EDE6D6;
  --charte-texte-doux: #A89F8D;
  --charte-accent: #C9A227;
  --charte-sur-accent: #0A0A0A;
  --charte-accent-2: #EDE6D6;
  --charte-accent-3: #EDE6D6;
  --charte-bord: #C9A227;
  --charte-danger: #E07A5F;
  --charte-police-titres: Georgia, "Times New Roman", serif;
  --charte-police-texte: Georgia, "Times New Roman", serif;
  --charte-rayon: 0px;
  --charte-epaisseur-bord: 1px;
  --charte-ombre: none;
}
```

## Les 5 règles signature

Elles se vérifient d'un coup d'œil sur une capture d'écran.

1. **Couleurs** : noir `#0A0A0A` et or `#C9A227`, texte ivoire. De larges marges vides.
2. **Typographie** : titres en Georgia italique, sous-titres en capitales très espacées (0,2 em au moins), jamais de gras.
3. **Boutons** : « fantômes » : contour or de 1 px, fond transparent, libellé or en capitales espacées ; le fond devient or au survol.
4. **Ton** : vouvoiement raffiné, jamais de point d'exclamation. Lexique imposé : action d'ajout « Ajouter à la sélection », état vide « Votre sélection est encore vierge. », erreur précédée de « Nous sommes navrés, », compteur « {n} pièce(s) en attente de vos soins ».
5. **Signature** : monogramme « T » dans un cercle or, centré en tête de page, avec la devise « L'art de ne rien oublier » en italique dessous.

## Composants

- Champs de saisie : un filet or dessous, rien d'autre.
- Listes : grandes marges, filets or très fins entre les éléments.
- Élément terminé : texte atténué précédé d'une étoile « ✦ ».
- Erreurs : italique, couleur `--charte-danger`.

## Interdits

- Couleurs vives et emoji.
- Coins arrondis et texte en gras.
- Points d'exclamation.
- Aucune ressource externe : ni police web, ni CDN, ni image distante.
- Aucune couleur écrite en dur hors de `charte.css`. Si une teinte manque, prends la variable la plus proche et signale-le.

## Avant de conclure

Affiche un tableau de conformité : une ligne par règle signature, avec « conforme » ou « écart », et l'endroit de la page où cela se voit.
