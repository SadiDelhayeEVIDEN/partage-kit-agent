#!/usr/bin/env bash
# Scan des secrets, à lancer dans VOTRE terminal AVANT d'ouvrir le projet dans un agent.
# Ce qui s'affiche ici reste sur votre poste : l'agent ne le voit pas.
# Usage : placez-vous à la racine du dépôt à contrôler, puis appelez ce script par son chemin,
#         par exemple  bash <dossier du kit>/2-scan-secrets/linux/scan-secrets.sh

MOTIF='password|passwd|secret|api[_-]?key|token|credential|private[_-]?key'

printf '\n== 1. Dans les fichiers suivis par Git ==\n'
git grep -nIiE "$MOTIF" -- . ':!*.lock' ':!package-lock.json'

printf '\n== 2. Fichiers non suivis au nom suspect ==\n'
git ls-files --others --exclude-standard | grep -iE '\.env|secret|credential|\.pem$|\.key$|\.pfx$'

printf '\n== 3. Fichiers d'"'"'environnement présents ==\n'
find . -name '.env*' -type f -not -path './node_modules/*' -not -path './.git/*'

printf '\nChaque fichier listé est à protéger par une règle deny, ou à sortir du dépôt.\n'
