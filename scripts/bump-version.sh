#!/usr/bin/env bash

set +x

git config user.email "contact@noelmace.com"
git config user.name "bump-version ci"

if cz bump; then
  git push --follow-tags
else
  echo "no new version to release"
fi
