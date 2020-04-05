#!/usr/bin/env bash

set +x

if cz bump; then
  git push --follow-tags
else
  echo "no new version to release"
fi
