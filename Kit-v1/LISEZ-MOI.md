# Kit du jour 2 : « Développer avec l'IA », version 1

Tout ce que vous utilisez aujourd'hui, à réemployer sur vos projets. Ce kit est un **assortiment** : vous prenez ce qu'il vous faut et vous le placez vous-même au bon endroit. Chaque dossier porte le numéro de l'exercice où vous l'utilisez pour la première fois. Avant chaque exercice, une slide montre ce qu'il faut poser, et où.

**Avant d'installer quoi que ce soit, lisez-le.** Un skill, un sous-agent ou un hook s'audite comme une dépendance : il donne des consignes à votre agent, parfois des droits. Ceux-ci tiennent en une page chacun.

## Les dossiers

| Dossier | Exercice | Contenu | Variantes |
|---|---|---|---|
| `1-skills/` | 1, puis 2 et 3 | 14 chartes graphiques, le skill `interview-avant-plan`, le prompt de départ, le besoin. Votre charte et l'interview vous suivent dans ShopLegacy | par outil |
| `1-hooks-et-permissions/` | 1, puis 2 et 3 | Un journal des commandes et des skills, et des règles de permission d'exemple que vous compléterez | par outil, et par système pour Claude Code |
| `2-scan-secrets/` | 2 | Le scan des secrets, à lancer dans votre terminal | par système |
| `3-sous-agent/` | 3 | Le sous-agent `analyste-tests` | par outil |

Chaque dossier a son `LISEZ-MOI.md` : ce que c'est, où le placer, ce qui ne marche pas partout.

## Où placer quoi, en bref

| Brique | Claude Code | OpenCode | Cline | Continue |
|---|---|---|---|---|
| Skill | `.claude/skills/<nom>/` | `.opencode/skills/<nom>/` ou `.claude/skills/<nom>/` | `.cline/skills/<nom>/` ou `.claude/skills/<nom>/` | Pas de skills : `.continue/rules/` et `.continue/prompts/` |
| Journal et règles | `.claude/settings.json` | `.opencode/plugins/` et `opencode.jsonc` | Un hook : `.cline/hooks/PreToolUse.sh` (ligne de commande) ou `.clinerules/hooks/PreToolUse` (extension) | Ni hook, ni refus fiable |
| Sous-agent | `.claude/agents/<nom>.md` | `.opencode/agents/<nom>.md` | Pas de fichier documenté | Pas de sous-agent |

Les chemins sont relatifs à la racine de votre projet. Pour avoir une brique dans tous vos projets, placez-la dans votre dossier personnel (`~/.claude/`, `~/.config/opencode/`, `~/.cline/`). Sous Windows, `~` est `C:\Users\prenom.nom`.

Deux choix à faire en ouvrant le kit : **votre outil** (et sa version, pour OpenCode), et **votre système** (Windows ou Linux/macOS) pour les réglages de Claude Code et le scan des secrets.

## Skill, ou autre chose ?

| Votre besoin | La bonne brique |
|---|---|
| Vrai tout le temps dans ce projet | Les instructions du projet (`AGENTS.md`, `CLAUDE.md`) |
| Vrai pour un dossier seulement | Une règle à chemin |
| Une façon de répondre, pour toute la session | Un style de sortie (`/output-style concise` dans Claude Code) |
| Un savoir-faire utile dans une situation précise | **Un skill** |
| Un regard neuf, ou une recherche qui n'encombre pas la conversation | Un sous-agent |
| Ce qui doit être garanti | Une règle de permission ou un hook |

Deux tests avant d'écrire un skill :

1. **L'agent le ferait-il déjà sans moi ?** Si oui, le skill ne sert à rien.
2. **Dans quelle situation précise doit-il se charger ?** Si la réponse est « tout le temps », ce n'est pas un skill.

## Ce qui a été vérifié

- **Claude Code 2.1.328, Windows** : skills, sous-agent, règles de permission, hooks (essais du 19 novembre). La version Linux des hooks l'a été par Git Bash, pas sur une machine Linux.
- **OpenCode 1.19.6 et 2.3.2, Cline 3.0.75, Continue 1.5.47** : CLI dans un conteneur Linux avec un modèle local (essais du 23 et du 24 novembre). Ce sont des essais de mécanique (le fichier est chargé, la règle s'applique), pas de qualité des réponses.
- **Pas essayé** : Windows hors Claude Code, les extensions VS Code et JetBrains, OpenCode Desktop, une machine Linux ou macOS réelle.
- Continue n'est plus maintenu (dépôt en lecture seule depuis l'été 2026).

Signalez ce qui ne marche pas chez vous.
