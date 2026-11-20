---
name: charte-brutaliste
description: "Charte graphique « Brutaliste » de l'équipe : couleurs, typographie, composants et ton des textes. À utiliser dès qu'on crée ou modifie une interface : page HTML, feuille de style, composant, texte affiché à l'écran. Ne s'applique pas à la logique métier, aux tests ni aux scripts sans interface."
---

# Charte Brutaliste

Le web brut de 1996 : Times New Roman, liens bleus, aucun habillage.

## Avant d'écrire du code d'interface

1. Annonce « Charte appliquée : Brutaliste ».
2. Présente ton plan de design en 5 lignes : palette, typographie, composants, ton des textes, élément signature.
3. Copie le fichier `assets/tokens.css` de ce skill dans le projet sous le nom `charte.css`, charge-le avant toute autre feuille de style, et n'utilise que ses variables pour les couleurs, les polices, les rayons et les bordures.
4. Insère le logo `assets/logo.svg` de ce skill, en ligne, dans l'en-tête de la page.

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
