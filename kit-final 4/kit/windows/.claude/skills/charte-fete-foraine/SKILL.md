---
name: charte-fete-foraine
description: "Charte graphique « Fête foraine » de l'équipe : couleurs, typographie, composants et ton des textes. À utiliser dès qu'on crée ou modifie une interface : page HTML, feuille de style, composant, texte affiché à l'écran. Ne s'applique pas à la logique métier, aux tests ni aux scripts sans interface."
---

# Charte Fête foraine

Un stand de foire : chapiteau rayé, lettres penchées, tout se crie.

## Avant d'écrire du code d'interface

1. Annonce « Charte appliquée : Fête foraine ».
2. Présente ton plan de design en 5 lignes : palette, typographie, composants, ton des textes, élément signature.
3. Copie le fichier `assets/tokens.css` de ce skill dans le projet sous le nom `charte.css`, charge-le avant toute autre feuille de style, et n'utilise que ses variables pour les couleurs, les polices, les rayons et les bordures.
4. Insère le logo `assets/logo.svg` de ce skill, en ligne, dans l'en-tête de la page.

## Les 5 règles signature

Elles se vérifient d'un coup d'œil sur une capture d'écran.

1. **Couleurs** : rouge `#D62839`, jaune `#FFD166` et bleu `#118AB2` sur fond crème `#FFF8E7`.
2. **Typographie** : titres en Impact, en capitales, légèrement penchés (rotation de −2°).
3. **Boutons** : rouges, arrondis à 14 px, bord noir de 3 px, ombre noire décalée de 4 px, libellé en capitales terminé par « ! ».
4. **Ton** : bonimenteur : on s'adresse à la foule au vouvoiement, et chaque phrase finit par une exclamation. Lexique imposé : action d'ajout « AJOUTEZ ! », état vide « Approchez, approchez ! La liste est vide ! », erreur précédée de « Raté ! », compteur « Encore {n} à décrocher ! ».
5. **Signature** : bannière « ★ LA GRANDE LISTE ★ » sur un fond de rayures de chapiteau, rouges et crème, verticales.

## Composants

- Champs de saisie : blancs, arrondis, bord noir de 3 px.
- Listes : cartes dont le fond alterne entre blanc et jaune.
- Élément terminé : texte barré suivi de « ★ GAGNÉ ».
- Erreurs : bulle jaune à bord rouge.

## Interdits

- Gris et teintes ternes.
- Phrases sans exclamation.
- Angles droits.
- Aucune ressource externe : ni police web, ni CDN, ni image distante.
- Aucune couleur écrite en dur hors de `charte.css`. Si une teinte manque, prends la variable la plus proche et signale-le.

## Avant de conclure

Affiche un tableau de conformité : une ligne par règle signature, avec « conforme » ou « écart », et l'endroit de la page où cela se voit.
