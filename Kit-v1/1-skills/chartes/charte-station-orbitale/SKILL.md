---
name: charte-station-orbitale
description: "Charte graphique « Station orbitale » de l'équipe : couleurs, typographie, composants et ton des textes. À utiliser dès qu'on crée ou modifie une interface : page HTML, feuille de style, composant, texte affiché à l'écran. Ne s'applique pas à la logique métier, aux tests ni aux scripts sans interface."
---

# Charte Station orbitale

Un journal de bord de mission spatiale : télémétrie, horodatages, phraséologie radio.

## Avant d'écrire du code d'interface

1. Annonce « Charte appliquée : Station orbitale ».
2. Présente ton plan de design en 5 lignes : palette, typographie, composants, ton des textes, élément signature.
3. Copie le fichier `assets/tokens.css` de ce skill dans le projet sous le nom `charte.css`, charge-le avant toute autre feuille de style, et n'utilise que ses variables pour les couleurs, les polices, les rayons et les bordures.
4. Insère le logo `assets/logo.svg` de ce skill, en ligne, dans l'en-tête de la page.

## Les 5 règles signature

Elles se vérifient d'un coup d'œil sur une capture d'écran.

1. **Couleurs** : bleu nuit `#0B1020`, orange `#FF6A00` pour les actions, bleu glacier `#7FDBFF` pour les données.
2. **Typographie** : titres et données chiffrées en chasse fixe et en capitales, texte courant en Segoe UI.
3. **Boutons** : orange, coins à 6 px, libellé en capitales précédé de « ▶ ».
4. **Ton** : phraséologie radio : phrases nominales, closes par « Terminé. ». Lexique imposé : action d'ajout « ▶ ENGAGER », état vide « Journal de mission vide. En attente d'ordres. Terminé. », erreur précédée de « Anomalie : », compteur « {n} opération(s) en cours ».
5. **Signature** : en-tête « JOURNAL DE MISSION », et chaque élément porte un horodatage « T+hh:mm » (temps écoulé depuis sa création).

## Composants

- Champs de saisie : fond `--charte-surface`, bord fin.
- Listes : lignes de télémétrie en trois colonnes (horodatage, intitulé, état).
- Élément terminé : état « ACCOMPLI » en bleu glacier.
- Erreurs : encadré à bord orange.

## Interdits

- Emoji.
- Police à empattement.
- Couleurs pastel.
- Aucune ressource externe : ni police web, ni CDN, ni image distante.
- Aucune couleur écrite en dur hors de `charte.css`. Si une teinte manque, prends la variable la plus proche et signale-le.

## Avant de conclure

Affiche un tableau de conformité : une ligne par règle signature, avec « conforme » ou « écart », et l'endroit de la page où cela se voit.
