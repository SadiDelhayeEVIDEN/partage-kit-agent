---
name: "Charte Guichet 27-B"
globs: ["**/*.html", "**/*.css", "**/*.js"]
description: "Charte graphique Guichet 27-B, à appliquer à toute interface"
---

# Charte Guichet 27-B

Un formulaire administratif : cases numérotées, tampons, forme passive.

## Avant d'écrire du code d'interface

1. Annonce « Charte appliquée : Guichet 27-B ».
2. Présente ton plan de design en 5 lignes : palette, typographie, composants, ton des textes, élément signature.
3. Crée dans le projet le fichier `charte.css` avec exactement les variables ci-dessous, charge-le avant toute autre feuille de style, et n'utilise que ces variables pour les couleurs, les polices, les rayons et les bordures.

```css
/* Charte Guichet 27-B : variables à utiliser telles quelles.
   Copier ce fichier dans le projet sous le nom charte.css et le charger en premier. */
:root {
  --charte-fond: #ECECEC;
  --charte-surface: #FFFFFF;
  --charte-texte: #1C1C1C;
  --charte-texte-doux: #505050;
  --charte-accent: #1A3A8F;
  --charte-sur-accent: #FFFFFF;
  --charte-accent-2: #B00020;
  --charte-accent-3: #B00020;
  --charte-bord: #7A7A7A;
  --charte-danger: #B00020;
  --charte-police-titres: Arial, Helvetica, sans-serif;
  --charte-police-texte: "Courier New", Courier, monospace;
  --charte-rayon: 2px;
  --charte-epaisseur-bord: 1px;
  --charte-ombre: none;
}
```

## Les 5 règles signature

Elles se vérifient d'un coup d'œil sur une capture d'écran.

1. **Couleurs** : gris administratif `#ECECEC`, bleu stylo `#1A3A8F`, rouge `#B00020` réservé aux tampons et aux erreurs.
2. **Typographie** : libellés en Arial et en petites capitales, contenus saisis en Courier New.
3. **Boutons** : rectangulaires, bleus, coins à 2 px, libellé en capitales précédé d'une case « ☐ ».
4. **Ton** : vouvoiement administratif, forme passive, champs obligatoires signalés par « (*) ». Lexique imposé : action d'ajout « ☐ ENREGISTRER LA DEMANDE », état vide « Aucune déclaration n'a été déposée à ce guichet. », erreur précédée de « Demande irrecevable : », compteur « {n} dossier(s) en cours d'instruction ».
5. **Signature** : en-tête « Formulaire 27-B — Déclaration de tâche » avec un numéro de dossier, et tampon rouge incliné « TRAITÉ » sur chaque élément terminé.

## Composants

- Champs de saisie : cases encadrées, libellé au-dessus, numéro de case devant (« 1. Intitulé (*) »).
- Listes : tableau à bordures, une ligne par élément.
- Élément terminé : tampon « TRAITÉ », texte non barré.
- Erreurs : encadré rouge au-dessus du formulaire.

## Interdits

- Emoji et couleurs vives.
- Arrondis de plus de 2 px.
- Tutoiement.
- Aucune ressource externe : ni police web, ni CDN, ni image distante.
- Aucune couleur écrite en dur hors de `charte.css`. Si une teinte manque, prends la variable la plus proche et signale-le.

## Avant de conclure

Affiche un tableau de conformité : une ligne par règle signature, avec « conforme » ou « écart », et l'endroit de la page où cela se voit.
