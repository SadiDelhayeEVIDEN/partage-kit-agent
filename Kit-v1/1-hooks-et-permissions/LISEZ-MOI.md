# 1-hooks-et-permissions : dès l'exercice 1

Les réglages de votre agent, à poser une fois par projet : dans `todolist` à l'exercice 1, puis dans ShopLegacy à l'exercice 2. Ils font deux choses.

- **Un journal.** Avant chaque commande et avant chaque skill que l'agent utilise, une ligne est ajoutée à un journal : la date, puis ce que l'outil transmet. C'est un hook : une commande que l'outil lance **à chaque fois**, sans que le modèle puisse l'oublier. Vous ouvrirez ce journal pendant l'exercice 1, puis aux suivants.
- **Des règles de permission d'exemple.** Ce qui est refusé quoi qu'il arrive (`.env`, `secrets/`), ce qui demande votre accord, ce qui passe sans demande (la commande de test). Vous les modifierez vous-même : à l'exercice 2, une règle par fichier que le scan trouve ; à l'exercice 3, une règle qui fige les tests.

**Lisez les fichiers avant de les installer.** Un hook s'exécute avec vos droits.

## Où les déposer

À la racine du projet. Prenez la version de **votre outil**, et pour Claude Code celle de **votre système**.

| Outil | Depuis ce dossier | Où dans le projet | Journaux produits |
|---|---|---|---|
| Claude Code, Windows | `claude-code/windows/.claude/settings.json` | `.claude/settings.json` | `.claude/journal-commandes.log`, `.claude/journal-skills.log` |
| Claude Code, Linux ou macOS | `claude-code/linux/.claude/settings.json` | `.claude/settings.json` | idem |
| OpenCode 1 (paquet `opencode-ai`) | `opencode/v1/` : `.opencode/plugins/journal.js` et `opencode.jsonc` | les mêmes chemins | `.opencode/journal-commandes.log`, `.opencode/journal-skills.log` |
| OpenCode 2 (paquet `@opencode/cli`) | `opencode/v2/` : `.opencode/plugins/journal/` (le dossier) et `opencode.jsonc` | les mêmes chemins | idem |
| Cline, ligne de commande | `cline/cli/.cline/hooks/PreToolUse.sh` | `.cline/hooks/PreToolUse.sh` | `.cline/journal-commandes.log`, `.cline/journal-skills.log` |
| Cline, extension VS Code | `cline/extension/.clinerules/hooks/PreToolUse` | `.clinerules/hooks/PreToolUse`, puis cochez « Enable Hooks » dans les réglages de Cline | idem |
| Continue | rien | | Ni hook ni règle de refus fiable |

Votre version d'OpenCode : `opencode --version`. Si le projet a déjà un `.claude/settings.json` ou un `opencode.jsonc`, fusionnez plutôt que d'écraser. Un JSON invalide (virgule en trop, barre oblique inverse non doublée) fait ignorer tout le fichier : ouvrez-le dans votre éditeur pour vérifier.

Ajoutez les journaux à votre `.gitignore` : `.claude/*.log`, `.opencode/*.log`, `.cline/*.log`.

## Les modifier en cours de journée

| Étape | Claude Code (`settings.json`) | OpenCode 1 (`opencode.jsonc`) | OpenCode 2 (`opencode.jsonc`) | Cline (le hook) |
|---|---|---|---|---|
| 2.1, un fichier trouvé par le scan | `"Read(./chemin)"` dans `deny` | `"*chemin": "deny"` sous `read` | `{ "action": "read", "resource": "*chemin", "effect": "deny" }` | une ligne dans `PROTEGES` |
| 2.4, autoriser votre commande de test | `"Bash(<commande> *)"` et `"PowerShell(<commande> *)"` dans `allow` | `"<commande>*": "allow"` sous `bash` | `{ "action": "shell", "resource": "<commande>*", "effect": "allow" }` | Pas de liste : réglages Auto Approve |
| 3.4, figer les tests | `"Edit(./tests/**)"` dans `deny` | `"*tests/*": "deny"` sous `edit` | `{ "action": "edit", "resource": "*tests/*", "effect": "deny" }` | `tests/` dans `FIGES` |

Remplacez `tests/` par le dossier de tests de votre projet. Avec OpenCode, la dernière règle qui correspond l'emporte : ajoutez vos règles à la fin.

## Remarques par outil

- **Claude Code.** Un skill que vous appelez vous-même par `/nom` n'apparaît pas dans le journal : seul ce que l'agent décide passe par l'outil Skill. Les hooks et les règles `allow` d'un dossier jamais approuvé ne s'appliquent pas : acceptez l'approbation à l'ouverture du dossier. Sous Windows, Claude Code lance les commandes tantôt par Bash, tantôt par PowerShell : chaque règle de commande est écrite pour les deux.
- **OpenCode.** Le plugin tourne dans OpenCode, sans Node à installer. Au premier lancement, OpenCode 1 a téléchargé son paquet de plugins dans `.opencode/node_modules/` : il lui faut l'accès au registre npm. L'outil de commande s'appelle `bash` en version 1 et `shell` en version 2 : chaque plugin le sait. En version 1, un skill appelé par `@nom` apparaît dans le journal ; en version 2, au labo, le modèle a lu le fichier du skill sans passer par l'outil, et rien n'est apparu.
- **Cline.** Le hook répond `{"cancel": false}` pour laisser passer un appel. Quand il en refuse un, Cline arrête aussi la tâche en cours : envoyez un nouveau message pour continuer. En ligne de commande, il ne s'exécute qu'avec `--act` ou `--plan` (désactivé en `--yolo`). Sous Linux et macOS, rendez-le exécutable : `chmod +x`. Sous Windows, son fonctionnement n'est ni documenté ni essayé. Un skill appelé par `/nom` apparaît dans le journal.
- **Continue.** Pas de hook. Le refus d'un fichier précis n'a pas fonctionné au labo : sortez le secret du dépôt.

## Ce qui a été essayé

- Claude Code 2.1.328 sous Windows (19 novembre) : hooks et règles ; la version Linux par Git Bash seulement.
- En ligne de commande, dans un conteneur Linux, avec un modèle local (24 novembre 2026) : OpenCode 1.19.6 et 2.3.2 (journal, refus de lecture de `secrets/`), Cline 3.0.75 (journal, refus).
- Pas essayé : Windows hors Claude Code, les extensions VS Code et JetBrains (dont le hook Cline de l'extension, écrit d'après sa documentation), OpenCode Desktop.
