---
name: "Charte Terminal vert"
globs: ["**/*.html", "**/*.css", "**/*.js"]
description: "Charte graphique Terminal vert, à appliquer à toute interface"
---

# Charte Terminal vert

Un terminal à phosphore vert : rien que du texte, aucune décoration.

## Avant d'écrire du code d'interface

1. Annonce « Charte appliquée : Terminal vert ».
2. Présente ton plan de design en 5 lignes : palette, typographie, composants, ton des textes, élément signature.
3. Crée dans le projet le fichier `charte.css` avec exactement les variables ci-dessous, charge-le avant toute autre feuille de style, et n'utilise que ces variables pour les couleurs, les polices, les rayons et les bordures.

```css
/* Charte Terminal vert : variables à utiliser telles quelles.
   Copier ce fichier dans le projet sous le nom charte.css et le charger en premier. */
:root {
  --charte-fond: #020B02;
  --charte-surface: #041404;
  --charte-texte: #33FF66;
  --charte-texte-doux: #1FAF45;
  --charte-accent: #33FF66;
  --charte-sur-accent: #020B02;
  --charte-accent-2: #B6FF00;
  --charte-accent-3: #B6FF00;
  --charte-bord: #33FF66;
  --charte-danger: #FF5555;
  --charte-police-titres: "Consolas", "Courier New", monospace;
  --charte-police-texte: "Consolas", "Courier New", monospace;
  --charte-rayon: 0px;
  --charte-epaisseur-bord: 1px;
  --charte-ombre: none;
}
```

## Les 5 règles signature

Elles se vérifient d'un coup d'œil sur une capture d'écran.

1. **Couleurs** : fond noir `#020B02`, tout le reste en vert phosphore `#33FF66`. Le rouge ne sert qu'aux erreurs.
2. **Typographie** : chasse fixe partout, même taille pour les titres et le texte, jamais de gras.
3. **Boutons** : écrits entre crochets, sans fond ni cadre : `[ AJOUTER ]`. Inversion vidéo au survol (fond vert, texte noir).
4. **Ton** : ligne de commande : infinitif, minuscules, pas de ponctuation finale, aucun caractère accentué (« tache », « terminee »). Lexique imposé : action d'ajout « [ AJOUTER ] », état vide « > aucune tache en file », erreur précédée de « ERR: », compteur « {n} tache(s) en file ».
5. **Signature** : invite « user@todo:~$ » devant le titre de la page, suivie d'un curseur « ▮ » clignotant.

## Composants

- Champs de saisie : précédés de l'invite « > », un trait vert dessous.
- Listes : lignes préfixées « [ ] » ou « [x] », sans puces ni cartes.
- Élément terminé : « [x] » et texte atténué (`--charte-texte-doux`).
- Erreurs : une ligne rouge préfixée « ERR: ».

## Interdits

- Images, icônes et emoji.
- Coins arrondis et ombres portées.
- Caractères accentués dans les textes d'interface.
- Aucune ressource externe : ni police web, ni CDN, ni image distante.
- Aucune couleur écrite en dur hors de `charte.css`. Si une teinte manque, prends la variable la plus proche et signale-le.

## Avant de conclure

Affiche un tableau de conformité : une ligne par règle signature, avec « conforme » ou « écart », et l'endroit de la page où cela se voit.
