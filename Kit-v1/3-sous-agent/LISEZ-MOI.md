# 3-sous-agent : exercice 3

## Le sous-agent `analyste-tests` (étape 3.3)

Un relecteur de tests qui travaille dans un contexte neuf et ne peut rien modifier. Il est fourni : posez-le dans ShopLegacy avant l'étape 3.3.

| Outil | Fichier | Où il va |
|---|---|---|
| Claude Code | `analyste-tests/claude-code/analyste-tests.md` | `.claude/agents/analyste-tests.md` |
| OpenCode | `analyste-tests/opencode/analyste-tests.md` | `.opencode/agents/analyste-tests.md` |
| Cline | rien | Pas de fichier de sous-agent documenté (en ligne de commande, Cline a un sous-agent intégré, `spawn_agent` ; ses extensions VS Code et JetBrains n'en ont pas). Vous jouez l'analyste à la main : voir ci-dessous |
| Continue | rien | Pas de sous-agent. Vous jouez l'analyste à la main : voir ci-dessous |

**Sans fichier de sous-agent (Cline, Continue)**, à l'étape 3.3 :

1. Ouvrez une conversation neuve (une nouvelle tâche avec Cline), en mode Plan.
2. Collez-y la consigne de l'analyste : le texte de `analyste-tests/claude-code/analyste-tests.md` qui suit le second `---`.
3. Demandez : « Relis les tests de <dossier des tests>, avec docs/besoin.md. »

## Les règles de l'étape 3.4

Interdire la modification du dossier de tests, dans les réglages posés à l'exercice 1 : `Edit(./<dossier des tests>/**)` dans `deny` avec Claude Code. Pour OpenCode et Cline, voir le tableau « Les modifier en cours de journée » de `../1-hooks-et-permissions/LISEZ-MOI.md`.

## La revue avant fusion (étape 3.5)

Rien à installer avec Claude Code : `/code-review` est intégré. Avec les autres outils, relisez le diff dans une conversation neuve en mode Plan.

## Ce qui a été essayé

Sous-agent : Claude Code 2.1.328, Windows (19 novembre). Fichier OpenCode : écrit d'après la documentation, pas essayé.
