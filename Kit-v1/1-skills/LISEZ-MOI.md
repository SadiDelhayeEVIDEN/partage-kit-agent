# 1-skills : exercice 1

Les 14 skills d'identité visuelle (un par participant, deux en réserve), le skill `interview-avant-plan` et le prompt qui lance l'exercice.

| Dossier ou fichier | Ce que c'est |
|---|---|
| `chartes/charte-<nom>/` | Un skill par charte : `SKILL.md` et `assets/`. Choisissez celui de votre nom dans la liste du formateur, et copiez le **dossier entier**. |
| `interview-avant-plan/` | Le skill qui interviewe avant de planifier. À copier de la même façon. |
| `prompt-exo1.txt` | Le prompt qui lance l'étape 1.2, pour Claude Code, Cline et Continue. |
| `prompt-exo1-version-OpenCode.txt` | Le même pour OpenCode, qui appelle un skill par `@` au lieu de `/`. |
| `besoin-todolist.md` | Le besoin du client en entier, à coller dans l'agent si vous voulez le lui donner (étape 1.2). |
| `continue/` | Pour Continue seulement : les chartes en règles (`rules/`) et l'interview en prompt (`prompts/`). |

## Où le déposer

À la racine du projet : `todolist` à l'exercice 1, puis ShopLegacy à l'exercice 2, où vous recopiez votre charte et l'interview. Claude Code, OpenCode et Cline lisent le même `SKILL.md`, sans modification.

| Outil | Skills (le dossier `charte-<nom>/` et `interview-avant-plan/`) | Appeler un skill |
|---|---|---|
| Claude Code | `.claude/skills/` | `/nom-du-skill` |
| OpenCode | `.opencode/skills/` (`.claude/skills/` est lu aussi) | `@nom-du-skill` |
| Cline | `.cline/skills/` (`.clinerules/skills/` et `.claude/skills/` sont lus aussi) | `/nom-du-skill` |
| Continue | Pas de skills. `continue/rules/charte-<nom>.md` dans `.continue/rules/`, `continue/prompts/interview-avant-plan.md` dans `.continue/prompts/` | `/interview-avant-plan` |

Pour avoir un skill dans tous vos projets, déposez-le dans votre dossier personnel : `~/.claude/skills/`, `~/.config/opencode/skills/`, `~/.cline/skills/`. Sous Windows, `~` est `C:\Users\prenom.nom`.

Un skill déposé pendant une session n'est pas toujours vu tout de suite : rechargez (`/reload-skills` dans Claude Code) ou ouvrez une session neuve. Cline, d'après sa documentation, détecte seul un skill déposé.

## Ce qui n'est pas pareil partout

- **Continue** n'a pas de skills : une charte y devient une règle toujours active, pas un savoir chargé à la demande.
- **Continue, prompt de l'exo 1** : `/interview-avant-plan` n'a pas été reconnu en ligne de commande non interactive (`cn -p`) au labo du 24 novembre.
- **OpenCode 2** : `@nom-du-skill` est la syntaxe que donne sa documentation. Au labo du 24 novembre, en ligne de commande avec un modèle local, le modèle a lu le fichier du skill au lieu de le charger par son outil ; l'interview a eu lieu quand même. Si rien ne se passe chez vous, écrivez : « Charge le skill interview-avant-plan et applique-le à ce besoin : … ».
