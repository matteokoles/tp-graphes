#!/bin/bash
tok=$(cat ~/token.gh)

curl -L \
  -H "Accept: application/vnd.github+json" \
  -H "Authorization: Bearer $tok" \
  -H "X-GitHub-Api-Version: 2022-11-28" \
  --output artifact.zip \
  https://api.github.com/repos/matteokoles/tp-graphes/actions/artifacts/11021657104/zip
unzip -o artifact.zip
