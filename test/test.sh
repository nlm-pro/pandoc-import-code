rm files/test-out.md
pandoc files/test.md --filter pandoc-import-code -t gfm -o files/test-out.md

if cmp --silent files/test-out.md files/assert.md; then
  echo "SUCCESS"
  exit 0
else
  echo "FAILED: output is different from the one experted"
  exit 1
fi
