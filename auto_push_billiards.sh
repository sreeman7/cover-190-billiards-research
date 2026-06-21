#!/bin/bash

REPO="$HOME/Desktop/cover-190-billiards-research"
SOURCE="/Applications/BilliardViewer.app/Contents/Resources/cover"

cd "$REPO" || exit

echo "Watching BilliardViewer cover files..."

fswatch -o "$SOURCE"/*.txt | while read event
do
  echo "Change detected. Syncing..."

  mkdir -p "$REPO/app-output"
  cp "$SOURCE"/*.txt "$REPO/app-output/"

  git add app-output/*.txt

  if git diff --cached --quiet; then
    echo "No real file changes."
  else
    git commit -m "Auto update cover output $(date '+%Y-%m-%d %H:%M:%S')"
    git push
    echo "Pushed to GitHub."
  fi
done
