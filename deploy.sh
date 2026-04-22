#!/bin/bash
set -e
cd "$(dirname "$0")/site"
OUTPUT=$(vercel --prod --yes 2>&1)
URL=$(echo "$OUTPUT" | grep -oE 'https://investigative-pipeline-[a-z0-9]+-aaronlammers-projects\.vercel\.app' | head -1)
echo "Deployed: $URL"
vercel alias "$URL" lammer.app
echo "Aliased: lammer.app → $URL"
