---
name: "Charte Bord de mer"
globs: ["**/*.html", "**/*.css", "**/*.js"]
description: "Charte graphique Bord de mer, à appliquer à toute interface"
---

# Charte Bord de mer

Une cabine de plage : sable, marinière, corail.

## Avant d'écrire du code d'interface

1. Annonce « Charte appliquée : Bord de mer ».
2. Présente ton plan de design en 5 lignes : palette, typographie, composants, ton des textes, élément signature.
3. Crée dans le projet le fichier `charte.css` avec exactement les variables ci-dessous, charge-le avant toute autre feuille de style, et n'utilise que ces variables pour les couleurs, les polices, les rayons et les bordures.

```css
/* Charte Bord de mer : variables à utiliser telles quelles.
   Copier ce fichier dans le projet sous le nom charte.css et le charger en premier. */
:root {
  --charte-fond: #F5E6CA;
  --charte-surface: #FFFFFF;
  --charte-texte: #0B3954;
  --charte-texte-doux: #2F5D78;
  --charte-accent: #FF6B6B;
  --charte-sur-accent: #062A40;
  --charte-accent-2: #1E88A8;
  --charte-accent-3: #1E88A8;
  --charte-bord: #0B3954;
  --charte-danger: #B3261E;
  --charte-police-titres: "Trebuchet MS", Verdana, sans-serif;
  --charte-police-texte: Verdana, Geneva, sans-serif;
  --charte-rayon: 12px;
  --charte-epaisseur-bord: 2px;
  --charte-ombre: 0 4px 0 #0B3954;
}
```

## Les 5 règles signature

Elles se vérifient d'un coup d'œil sur une capture d'écran.

1. **Couleurs** : sable `#F5E6CA`, bleu marine `#0B3954`, corail `#FF6B6B`.
2. **Typographie** : titres en Trebuchet MS gras, bleu marine ; texte en Verdana.
3. **Boutons** : corail, coins arrondis à 12 px, avec un liseré marine dessous (ombre pleine de 4 px, sans flou).
4. **Ton** : tutoiement de vacances, vocabulaire marin. Lexique imposé : action d'ajout « Larguer une tâche », état vide « Mer d'huile : rien à l'horizon. », erreur précédée de « Avis de tempête : », compteur « Marée du jour : {n} tâche(s) ».
5. **Signature** : bandeau de rayures marinière (marine et blanc, horizontales) en haut de la page, et une vague dessinée en CSS ou en SVG en bas.

## Composants

- Champs de saisie : blancs, arrondis, bord marine.
- Listes : cartes blanches arrondies.
- Élément terminé : texte barré précédé d'une ancre « ⚓ ».
- Erreurs : encadré à fond corail clair.

## Interdits

- Noir pur.
- Police à empattement.
- Angles vifs.
- Aucune ressource externe : ni police web, ni CDN, ni image distante.
- Aucune couleur écrite en dur hors de `charte.css`. Si une teinte manque, prends la variable la plus proche et signale-le.

## Avant de conclure

Affiche un tableau de conformité : une ligne par règle signature, avec « conforme » ou « écart », et l'endroit de la page où cela se voit.
