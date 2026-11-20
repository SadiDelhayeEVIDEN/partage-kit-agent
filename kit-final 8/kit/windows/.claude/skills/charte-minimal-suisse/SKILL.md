---
name: charte-minimal-suisse
description: "Charte graphique « Minimal suisse » de l'équipe : couleurs, typographie, composants et ton des textes. À utiliser dès qu'on crée ou modifie une interface : page HTML, feuille de style, composant, texte affiché à l'écran. Ne s'applique pas à la logique métier, aux tests ni aux scripts sans interface."
---

# Charte Minimal suisse

Une affiche typographique : une grille, du blanc, un seul rouge.

## Avant d'écrire du code d'interface

1. Annonce « Charte appliquée : Minimal suisse ».
2. Présente ton plan de design en 5 lignes : palette, typographie, composants, ton des textes, élément signature.
3. Copie le fichier `assets/tokens.css` de ce skill dans le projet sous le nom `charte.css`, charge-le avant toute autre feuille de style, et n'utilise que ses variables pour les couleurs, les polices, les rayons et les bordures.
4. Insère le logo `assets/logo.svg` de ce skill, en ligne, dans l'en-tête de la page.

## Les 5 règles signature

Elles se vérifient d'un coup d'œil sur une capture d'écran.

1. **Couleurs** : blanc, noir, et une seule touche de rouge `#E30613`.
2. **Typographie** : Helvetica ou Arial, tout aligné à gauche sur une grille, titres en gras, rien de centré.
3. **Boutons** : rectangulaires et pleins, sans bord ni ombre : rouge pour l'action principale, noir pour les autres.
4. **Ton** : infinitif neutre, quatre mots au plus par libellé, aucune ponctuation décorative. Lexique imposé : action d'ajout « Ajouter », état vide « Aucune tâche », erreur précédée de « Erreur : », compteur « {n} restante(s) ».
5. **Signature** : le compteur est un très grand nombre (96 px au moins, en gras) en haut à gauche : c'est l'élément dominant de la page.

## Composants

- Champs de saisie : un trait noir de 2 px dessous.
- Listes : lignes séparées par un filet noir de 1 px.
- Élément terminé : texte gris barré.
- Erreurs : texte rouge, sans cadre.

## Interdits

- Texte centré.
- Coins arrondis, ombres et italique.
- Icônes décoratives.
- Aucune ressource externe : ni police web, ni CDN, ni image distante.
- Aucune couleur écrite en dur hors de `charte.css`. Si une teinte manque, prends la variable la plus proche et signale-le.

## Avant de conclure

Affiche un tableau de conformité : une ligne par règle signature, avec « conforme » ou « écart », et l'endroit de la page où cela se voit.
