#!/usr/bin/env bash
# Regenerates assets/resume/Md_Siam_Hossain_Sarker_Resume.pdf from assets/resume/resume.html
# using headless Chrome. Run from anywhere — paths are resolved relative to the repo root.

set -euo pipefail

REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
PORT=8765
CHROME="/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"
SRC_URL="http://localhost:${PORT}/assets/resume/resume.html"
OUT="${REPO_ROOT}/assets/resume/Md_Siam_Hossain_Sarker_Resume.pdf"

if [[ ! -x "$CHROME" ]]; then
  echo "Chrome not found at: $CHROME" >&2
  exit 1
fi

cd "$REPO_ROOT"
python3 -m http.server "$PORT" > /tmp/build-resume-pdf-server.log 2>&1 &
SERVER_PID=$!
trap "kill $SERVER_PID 2>/dev/null || true" EXIT

sleep 1
if ! curl -fsS -o /dev/null "$SRC_URL"; then
  echo "Local server didn't come up on port $PORT" >&2
  exit 1
fi

"$CHROME" --headless --disable-gpu \
  --print-to-pdf="$OUT" \
  --print-to-pdf-no-header \
  --no-pdf-header-footer \
  --virtual-time-budget=10000 \
  "$SRC_URL" 2>/dev/null

if [[ ! -s "$OUT" ]]; then
  echo "PDF generation failed" >&2
  exit 1
fi

SIZE_KB=$(( $(stat -f%z "$OUT") / 1024 ))
echo "Built: $OUT (${SIZE_KB} KB)"
