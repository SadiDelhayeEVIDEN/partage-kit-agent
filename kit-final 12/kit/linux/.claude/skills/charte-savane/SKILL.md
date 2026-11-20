---
name: charte-savane
description: "Charte graphique « Savane » de l'équipe : couleurs, typographie, composants et ton des textes. À utiliser dès qu'on crée ou modifie une interface : page HTML, feuille de style, composant, texte affiché à l'écran. Ne s'applique pas à la logique métier, aux tests ni aux scripts sans interface."
---

# Charte Savane

Une étoffe de savane : terre cuite, ocre, olive, des frises de triangles.

## Avant d'écrire du code d'interface

1. Annonce « Charte appliquée : Savane ».
2. Présente ton plan de design en 5 lignes : palette, typographie, composants, ton des textes, élément signature.
3. Copie le fichier `assets/tokens.css` de ce skill dans le projet sous le nom `charte.css`, charge-le avant toute autre feuille de style, et n'utilise que ses variables pour les couleurs, les polices, les rayons et les bordures.
4. Insère le logo `assets/logo.svg` de ce skill, en ligne, dans l'en-tête de la page.

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
