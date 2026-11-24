---
name: charte-neon-arcade
description: "Charte graphique « Néon Arcade » de l'équipe : couleurs, typographie, composants et ton des textes. À utiliser dès qu'on crée ou modifie une interface : page HTML, feuille de style, composant, texte affiché à l'écran. Ne s'applique pas à la logique métier, aux tests ni aux scripts sans interface."
---

# Charte Néon Arcade

Une salle d'arcade des années 80 : fond nuit, tubes néon, tout clignote un peu.

## Avant d'écrire du code d'interface

1. Annonce « Charte appliquée : Néon Arcade ».
2. Présente ton plan de design en 5 lignes : palette, typographie, composants, ton des textes, élément signature.
3. Copie le fichier `assets/tokens.css` de ce skill dans le projet sous le nom `charte.css`, charge-le avant toute autre feuille de style, et n'utilise que ses variables pour les couleurs, les polices, les rayons et les bordures.
4. Insère le logo `assets/logo.svg` de ce skill, en ligne, dans l'en-tête de la page.

## Les 5 règles signature

Elles se vérifient d'un coup d'œil sur une capture d'écran.

1. **Couleurs** : fond bleu nuit `#0B0B1A`, accents magenta `#FF2BD6` et cyan `#00F0FF`, aucune autre teinte.
2. **Typographie** : police à chasse fixe partout, titres EN CAPITALES avec des lettres espacées.
3. **Boutons** : rectangulaires sans arrondi, fond magenta, halo lumineux autour (ombre néon), libellés en capitales.
4. **Ton** : tutoiement de salle d'arcade. Lexique imposé : action d'ajout « NOUVELLE PARTIE », état vide « Aucune quête en cours. Insère une pièce. », erreur précédée de « GAME OVER : », compteur « SCORE : {n} à finir ».
5. **Signature** : bandeau « ◆ INSERT COIN ◆ » en cyan tout en haut de la page, qui clignote doucement (animation CSS coupée si `prefers-reduced-motion`).

## Composants

- Champs de saisie : fond `--charte-surface`, bord cyan de 2 px, texte clair.
- Listes : chaque élément est une ligne bordée de cyan.
- Élément terminé : texte barré et atténué, précédé de « ✔ ».
- Erreurs : texte `--charte-danger`, jamais de fenêtre d'alerte du navigateur.

## Interdits

- Coins arrondis.
- Couleurs pastel et dégradés doux.
- Police à empattement.
- Aucune ressource externe : ni police web, ni CDN, ni image distante.
- Aucune couleur écrite en dur hors de `charte.css`. Si une teinte manque, prends la variable la plus proche et signale-le.

## Avant de conclure

Affiche un tableau de conformité : une ligne par règle signature, avec « conforme » ou « écart », et l'endroit de la page où cela se voit.
