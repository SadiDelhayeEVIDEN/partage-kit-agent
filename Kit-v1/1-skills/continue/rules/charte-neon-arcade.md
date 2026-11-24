---
name: "Charte Néon Arcade"
globs: ["**/*.html", "**/*.css", "**/*.js"]
description: "Charte graphique Néon Arcade, à appliquer à toute interface"
---

# Charte Néon Arcade

Une salle d'arcade des années 80 : fond nuit, tubes néon, tout clignote un peu.

## Avant d'écrire du code d'interface

1. Annonce « Charte appliquée : Néon Arcade ».
2. Présente ton plan de design en 5 lignes : palette, typographie, composants, ton des textes, élément signature.
3. Crée dans le projet le fichier `charte.css` avec exactement les variables ci-dessous, charge-le avant toute autre feuille de style, et n'utilise que ces variables pour les couleurs, les polices, les rayons et les bordures.

```css
/* Charte Néon Arcade : variables à utiliser telles quelles.
   Copier ce fichier dans le projet sous le nom charte.css et le charger en premier. */
:root {
  --charte-fond: #0B0B1A;
  --charte-surface: #15152B;
  --charte-texte: #F2F2FF;
  --charte-texte-doux: #A9A9D6;
  --charte-accent: #FF2BD6;
  --charte-sur-accent: #0B0B1A;
  --charte-accent-2: #00F0FF;
  --charte-accent-3: #00F0FF;
  --charte-bord: #00F0FF;
  --charte-danger: #FF5C5C;
  --charte-police-titres: "Consolas", "Courier New", monospace;
  --charte-police-texte: "Consolas", "Courier New", monospace;
  --charte-rayon: 0px;
  --charte-epaisseur-bord: 2px;
  --charte-ombre: 0 0 14px #FF2BD6;
}
```

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
