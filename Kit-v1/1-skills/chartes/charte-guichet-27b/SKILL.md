---
name: charte-guichet-27b
description: "Charte graphique « Guichet 27-B » de l'équipe : couleurs, typographie, composants et ton des textes. À utiliser dès qu'on crée ou modifie une interface : page HTML, feuille de style, composant, texte affiché à l'écran. Ne s'applique pas à la logique métier, aux tests ni aux scripts sans interface."
---

# Charte Guichet 27-B

Un formulaire administratif : cases numérotées, tampons, forme passive.

## Avant d'écrire du code d'interface

1. Annonce « Charte appliquée : Guichet 27-B ».
2. Présente ton plan de design en 5 lignes : palette, typographie, composants, ton des textes, élément signature.
3. Copie le fichier `assets/tokens.css` de ce skill dans le projet sous le nom `charte.css`, charge-le avant toute autre feuille de style, et n'utilise que ses variables pour les couleurs, les polices, les rayons et les bordures.
4. Insère le logo `assets/logo.svg` de ce skill, en ligne, dans l'en-tête de la page.

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
