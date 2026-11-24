---
name: "Charte Journal papier"
globs: ["**/*.html", "**/*.css", "**/*.js"]
description: "Charte graphique Journal papier, à appliquer à toute interface"
---

# Charte Journal papier

La une d'un quotidien : noir sur blanc, des filets, une seule touche de rouge.

## Avant d'écrire du code d'interface

1. Annonce « Charte appliquée : Journal papier ».
2. Présente ton plan de design en 5 lignes : palette, typographie, composants, ton des textes, élément signature.
3. Crée dans le projet le fichier `charte.css` avec exactement les variables ci-dessous, charge-le avant toute autre feuille de style, et n'utilise que ces variables pour les couleurs, les polices, les rayons et les bordures.

```css
/* Charte Journal papier : variables à utiliser telles quelles.
   Copier ce fichier dans le projet sous le nom charte.css et le charger en premier. */
:root {
  --charte-fond: #FFFFFF;
  --charte-surface: #F7F7F2;
  --charte-texte: #111111;
  --charte-texte-doux: #555555;
  --charte-accent: #C1121F;
  --charte-sur-accent: #FFFFFF;
  --charte-accent-2: #111111;
  --charte-accent-3: #111111;
  --charte-bord: #111111;
  --charte-danger: #C1121F;
  --charte-police-titres: Georgia, "Times New Roman", serif;
  --charte-police-texte: Georgia, "Times New Roman", serif;
  --charte-rayon: 0px;
  --charte-epaisseur-bord: 1px;
  --charte-ombre: none;
}
```

## Les 5 règles signature

Elles se vérifient d'un coup d'œil sur une capture d'écran.

1. **Couleurs** : noir sur blanc strict, une seule touche de rouge `#C1121F` réservée au bouton principal et aux erreurs.
2. **Typographie** : titres en Georgia gras, très grands (48 px au moins) et serrés ; texte courant justifié.
3. **Boutons** : le bouton principal est rouge, plein et rectangulaire ; les actions secondaires sont du texte souligné, sans cadre.
4. **Ton** : titre de presse, à la troisième personne, sans « tu » ni « vous ». Lexique imposé : action d'ajout « Publier », état vide « Rien à signaler : aucune tâche à la une. », erreur précédée de « Rectificatif : », compteur « {n} tâche(s) à la une ».
5. **Signature** : manchette « LE QUOTIDIEN DES TÂCHES » entre un filet épais et un filet fin, avec la date du jour en toutes lettres dessous.

## Composants

- Champs de saisie : un trait noir dessous, rien d'autre.
- Listes : brèves séparées par des filets, chacune précédée de « Brève n° k ».
- Élément terminé : texte barré suivi de « (classé) ».
- Erreurs : italique rouge.

## Interdits

- Toute couleur autre que noir, blanc et ce rouge.
- Coins arrondis et ombres.
- Emoji.
- Aucune ressource externe : ni police web, ni CDN, ni image distante.
- Aucune couleur écrite en dur hors de `charte.css`. Si une teinte manque, prends la variable la plus proche et signale-le.

## Avant de conclure

Affiche un tableau de conformité : une ligne par règle signature, avec « conforme » ou « écart », et l'endroit de la page où cela se voit.
