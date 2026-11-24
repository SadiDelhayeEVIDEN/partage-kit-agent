---
name: "Charte Pastel Douceur"
globs: ["**/*.html", "**/*.css", "**/*.js"]
description: "Charte graphique Pastel Douceur, à appliquer à toute interface"
---

# Charte Pastel Douceur

Une papeterie pastel : tout est rond, doux et encourageant.

## Avant d'écrire du code d'interface

1. Annonce « Charte appliquée : Pastel Douceur ».
2. Présente ton plan de design en 5 lignes : palette, typographie, composants, ton des textes, élément signature.
3. Crée dans le projet le fichier `charte.css` avec exactement les variables ci-dessous, charge-le avant toute autre feuille de style, et n'utilise que ces variables pour les couleurs, les polices, les rayons et les bordures.

```css
/* Charte Pastel Douceur : variables à utiliser telles quelles.
   Copier ce fichier dans le projet sous le nom charte.css et le charger en premier. */
:root {
  --charte-fond: #FFF0F5;
  --charte-surface: #FFFFFF;
  --charte-texte: #4A3B52;
  --charte-texte-doux: #75647F;
  --charte-accent: #F7B6D2;
  --charte-sur-accent: #4A3B52;
  --charte-accent-2: #BDEBD3;
  --charte-accent-3: #E3D4F5;
  --charte-bord: #E3D4F5;
  --charte-danger: #B3261E;
  --charte-police-titres: "Trebuchet MS", Verdana, sans-serif;
  --charte-police-texte: "Trebuchet MS", Verdana, sans-serif;
  --charte-rayon: 20px;
  --charte-epaisseur-bord: 2px;
  --charte-ombre: 0 6px 18px rgba(177, 94, 134, 0.18);
}
```

## Les 5 règles signature

Elles se vérifient d'un coup d'œil sur une capture d'écran.

1. **Couleurs** : fonds pastel uniquement, rose `#FFF0F5`, menthe `#BDEBD3`, lavande `#E3D4F5` ; texte prune `#4A3B52`.
2. **Typographie** : Trebuchet MS, titres en minuscules et en graisse normale.
3. **Boutons** : en forme de pilule (arrondi total), rose pastel `#F7B6D2`, texte prune, ombre douce.
4. **Ton** : tutoiement bienveillant, avec un emoji par message et jamais deux. Lexique imposé : action d'ajout « ajouter 🌸 », état vide « Rien de prévu, profite 🌿 », erreur précédée de « Oups 🙈 », compteur « plus que {n}, tu y es presque ✨ ».
5. **Signature** : message d'encouragement sous le compteur, qui change selon l'avancement et devient « Tout est fait, bravo 🎉 » quand la liste est terminée.

## Composants

- Champs de saisie : très arrondis, bord lavande.
- Listes : cartes blanches arrondies à ombre douce.
- Élément terminé : fond menthe et coche « ✓ ».
- Erreurs : bulle rose sous le champ.

## Interdits

- Noir pur et angles droits.
- Mots tout en majuscules.
- Plus d'un emoji par message.
- Aucune ressource externe : ni police web, ni CDN, ni image distante.
- Aucune couleur écrite en dur hors de `charte.css`. Si une teinte manque, prends la variable la plus proche et signale-le.

## Avant de conclure

Affiche un tableau de conformité : une ligne par règle signature, avec « conforme » ou « écart », et l'endroit de la page où cela se voit.
