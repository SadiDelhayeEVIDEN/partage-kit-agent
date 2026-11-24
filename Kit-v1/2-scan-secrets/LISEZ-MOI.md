# 2-scan-secrets : exercice 2

Un script qui liste les fichiers où traîne une clé, un mot de passe ou un jeton. **Il ne se copie pas dans le projet** : vous le lancez dans votre terminal, avant d'ouvrir l'agent, depuis la racine du dépôt à contrôler, en donnant son chemin. Ce qui s'affiche reste sur votre poste : l'agent ne le voit pas.

| Système | Commande |
|---|---|
| Windows (PowerShell) | `& "<dossier du kit>\2-scan-secrets\windows\scan-secrets.ps1"` |
| Linux, macOS, Git Bash | `bash "<dossier du kit>/2-scan-secrets/linux/scan-secrets.sh"` |

Le script demande Git. Il ne modifie rien.

Pour chaque fichier trouvé, ajoutez une règle de refus dans les réglages posés à l'exercice 1 : le tableau « Les modifier en cours de journée » de `../1-hooks-et-permissions/LISEZ-MOI.md` donne la forme pour chaque outil.

## Ce qu'une règle arrête, et ce qu'elle laisse passer

Vous le constaterez à l'étape 2.1. Un refus de lecture arrête l'outil de lecture, mais `git grep` ou une commande de terminal peut encore afficher le secret : une règle sur un fichier n'est pas une règle sur son contenu. Constaté avec Claude Code (19 novembre), avec le hook de Cline et avec OpenCode 2 (24 novembre). Le secret de ShopLegacy est factice : ne faites jamais ces essais sur un vrai secret.
