# Scan des secrets, à lancer dans VOTRE terminal AVANT d'ouvrir le projet dans un agent.
# Ce qui s'affiche ici reste sur votre poste : l'agent ne le voit pas.
# Usage : placez-vous à la racine du dépôt à contrôler, puis appelez ce script par son chemin,
#         par exemple  & C:\kit-participants\garanties\scan-secrets.ps1

$motif = 'password|passwd|secret|api[_-]?key|token|credential|private[_-]?key'

Write-Host "`n== 1. Dans les fichiers suivis par Git ==" -ForegroundColor Yellow
git grep -nIiE $motif -- . ':!*.lock' ':!package-lock.json'

Write-Host "`n== 2. Fichiers non suivis au nom suspect ==" -ForegroundColor Yellow
git ls-files --others --exclude-standard |
  Select-String -Pattern '\.env|secret|credential|\.pem$|\.key$|\.pfx$' |
  ForEach-Object { $_.Line }

Write-Host "`n== 3. Fichiers d'environnement présents ==" -ForegroundColor Yellow
Get-ChildItem -Recurse -Force -File -Filter '.env*' -ErrorAction SilentlyContinue |
  Where-Object { $_.FullName -notmatch '\\node_modules\\|\\\.git\\' } |
  ForEach-Object { $_.FullName }

Write-Host "`nChaque fichier listé est à protéger par une règle deny, ou à sortir du dépôt." -ForegroundColor Yellow
