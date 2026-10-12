#!/bin/bash
tok=$(cat ~/token.gh)
OWNER=matteokoles
REPO=tp-graphes

while read -r id; do
    echo "Téléchargement de l'artefact $id"
    curl -sL \
      -H "Accept: application/vnd.github+json" \
      -H "Authorization: Bearer $tok" \
      -H "X-GitHub-Api-Version: 2022-11-28" \
      --output "artifact_$id.zip" \
      "https://api.github.com/repos/$OWNER/$REPO/actions/artifacts/$id/zip"
    unzip -o "artifact_$id.zip" -d "artifact_$id"
done < liste-id.txt
