#!/bin/zsh

REPO="$HOME/dev/forgedbyfreedom-wix-backend"
cd "$REPO" || exit 1

git add .

if ! git diff --cached --quiet; then
  MSG="Backup $(date '+%Y-%m-%d %H:%M:%S')"
  echo "Committing → $MSG"
  git commit -m "$MSG"
  git push
  echo "Backup done."
else
  echo "No changes – nothing to commit."
fi

