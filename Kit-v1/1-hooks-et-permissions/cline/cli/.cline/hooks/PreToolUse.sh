#!/bin/sh
# Cline : journal des commandes et des skills, et refus des fichiers protégés.
#
# Ligne de commande : ce fichier va dans .cline/hooks/PreToolUse.sh. Lancez Cline avec --act ou --plan :
#   les hooks sont désactivés en --yolo.
# Extension VS Code : le même fichier va dans .clinerules/hooks/PreToolUse (sans extension),
#   et « Enable Hooks » doit être coché dans les réglages de Cline.
# Linux et macOS : rendez-le exécutable (chmod +x). Windows : non documenté, non essayé.
#
# Cline transmet l'appel d'outil en JSON sur l'entrée standard. Le hook répond {"cancel": false} pour le
# laisser passer, {"cancel": true, ...} pour l'arrêter : dans ce cas, Cline arrête aussi la tâche en cours.
# Journaux : .cline/journal-commandes.log et .cline/journal-skills.log, à la racine du projet.

# Fichiers ni lus, ni modifiés, ni cités dans une commande. Un motif (grep -E) par ligne.
# Exercice 2 : ajoutez une ligne par fichier que le scan a trouvé, par exemple  config/settings\.js
PROTEGES='(^|[^[:alnum:]_.-])\.env([^[:alnum:]_.-]|$)
(^|[^[:alnum:]_.-])secrets/
config/credentials\.'

# Fichiers qu'on peut lire, mais pas modifier. Exercice 3 : ajoutez le dossier des tests, par exemple  tests/
FIGES=''

entree=$(cat)
outil=$(printf '%s' "$entree" | grep -oE '"toolName" *: *"[a-z_]+"' | head -n 1 | sed 's/.*"\([a-z_]*\)"$/\1/')
racine=$(printf '%s' "$entree" | grep -oE '"workspaceRoots" *: *\[ *"[^"]*"' | head -n 1 | sed 's/.*"\([^"]*\)"$/\1/')
[ -n "$racine" ] || racine=$PWD

journal() {
  mkdir -p "$racine/.cline"
  printf '%s %s\n' "$(date '+%Y-%m-%d %H:%M:%S')" "$(printf '%s' "$entree" | tr '\n' ' ')" >> "$racine/.cline/$1"
}

# Affiche le premier motif de la liste $1 trouvé dans l'appel d'outil.
trouve() {
  printf '%s\n' "$1" | while IFS= read -r motif; do
    if [ -n "$motif" ] && printf '%s' "$entree" | grep -qE -- "$motif"; then
      printf '%s\n' "$motif"
      break
    fi
  done
}

refuser() {
  printf '{"cancel": true, "errorMessage": "Bloqué par le hook du projet : %s."}\n' "$1"
  exit 0
}

case "$outil" in
  run_commands) journal journal-commandes.log ;;
  skills)       journal journal-skills.log ;;
esac

case "$outil" in
  read_files|editor|apply_patch|run_commands)
    [ -n "$(trouve "$PROTEGES")" ] && refuser "fichier protégé" ;;
esac

case "$outil" in
  editor|apply_patch)
    [ -n "$(trouve "$FIGES")" ] && refuser "fichier figé, lecture seule" ;;
esac

echo '{"cancel": false}'
