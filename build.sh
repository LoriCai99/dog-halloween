#!/bin/sh
# Wraps dog-costume.html (the Claude Artifact source) in a full HTML document as index.html for static hosting.
set -e
cd "$(dirname "$0")"
{
  printf '%s\n' '<!doctype html>' '<html lang="zh-CN">' '<head>' '<meta charset="utf-8">' \
    '<meta name="viewport" content="width=device-width,initial-scale=1,viewport-fit=cover">' \
    '<style>body{margin:0}img{max-width:100%}[hidden]{display:none!important}</style>' '</head>' '<body>'
  cat dog-costume.html
  printf '\n%s\n' '</body>' '</html>'
} > index.html
echo "built index.html"
