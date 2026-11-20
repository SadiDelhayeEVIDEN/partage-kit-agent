---
name: charte-notaire-1900
description: "Charte graphique « Notaire 1900 » de l'équipe : couleurs, typographie, composants et ton des textes. À utiliser dès qu'on crée ou modifie une interface : page HTML, feuille de style, composant, texte affiché à l'écran. Ne s'applique pas à la logique métier, aux tests ni aux scripts sans interface."
---

# Charte Notaire 1900

Une étude notariale de 1900 : papier ivoire, encre brune, solennité.

## Avant d'écrire du code d'interface

1. Annonce « Charte appliquée : Notaire 1900 ».
2. Présente ton plan de design en 5 lignes : palette, typographie, composants, ton des textes, élément signature.
3. Copie le fichier `assets/tokens.css` de ce skill dans le projet sous le nom `charte.css`, charge-le avant toute autre feuille de style, et n'utilise que ses variables pour les couleurs, les polices, les rayons et les bordures.
4. Insère le logo `assets/logo.svg` de ce skill, en ligne, dans l'en-tête de la page.

## Les 5 règles signature

Elles se vérifient d'un coup d'œil sur une capture d'écran.

1. **Couleurs** : papier ivoire `#F4ECD8`, encre `#2B1D0E`, bordeaux `#7A1F2B` réservé aux actions.
2. **Typographie** : Georgia partout, titres centrés en petites capitales.
3. **Boutons** : rectangulaires, bordeaux, entourés d'un double filet (bord `double` de 3 px), libellé en petites capitales.
4. **Ton** : vouvoiement solennel d'étude notariale, jamais d'exclamation. Lexique imposé : action d'ajout « Consigner », état vide « Aucun acte n'est inscrit au registre à ce jour. », erreur précédée de « Nous regrettons : », compteur « {n} acte(s) en instance ».
5. **Signature** : en-tête « Étude de Maître Todo — Registre des actes » souligné d'un double filet, et éléments de liste numérotés en chiffres romains (I, II, III).

## Composants

- Champs de saisie : fond transparent, un simple trait d'encre dessous.
- Listes : lignes séparées par un filet fin, numéro romain à gauche.
- Élément terminé : texte barré suivi de « — soldé » en italique.
- Erreurs : italique bordeaux, sous le champ concerné.

## Interdits

- Emoji et pictogrammes.
- Couleurs vives.
- Coins arrondis et police sans empattement.
- Aucune ressource externe : ni police web, ni CDN, ni image distante.
- Aucune couleur écrite en dur hors de `charte.css`. Si une teinte manque, prends la variable la plus proche et signale-le.

## Avant de conclure

Affiche un tableau de conformité : une ligne par règle signature, avec « conforme » ou « écart », et l'endroit de la page où cela se voit.
