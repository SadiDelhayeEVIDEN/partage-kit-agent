---
name: charte-pastel-douceur
description: "Charte graphique « Pastel Douceur » de l'équipe : couleurs, typographie, composants et ton des textes. À utiliser dès qu'on crée ou modifie une interface : page HTML, feuille de style, composant, texte affiché à l'écran. Ne s'applique pas à la logique métier, aux tests ni aux scripts sans interface."
---

# Charte Pastel Douceur

Une papeterie pastel : tout est rond, doux et encourageant.

## Avant d'écrire du code d'interface

1. Annonce « Charte appliquée : Pastel Douceur ».
2. Présente ton plan de design en 5 lignes : palette, typographie, composants, ton des textes, élément signature.
3. Copie le fichier `assets/tokens.css` de ce skill dans le projet sous le nom `charte.css`, charge-le avant toute autre feuille de style, et n'utilise que ses variables pour les couleurs, les polices, les rayons et les bordures.
4. Insère le logo `assets/logo.svg` de ce skill, en ligne, dans l'en-tête de la page.

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
