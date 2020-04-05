#!/usr/bin/env bash

set +x
set -e

OUTPUT_FILE="test/files/test-out.md"

if [ -e "${OUTPUT_FILE}" ]; then
  rm "${OUTPUT_FILE}"
fi

pandoc test/files/test.md --filter pandoc-import-code -t gfm -o "${OUTPUT_FILE}"

if cmp "${OUTPUT_FILE}" test/files/assert.md; then
  echo "SUCCESS"
  exit 0
else
  echo "FAILED: output is different from the one experted"
  exit 1
fi
