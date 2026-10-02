#!/bin/sh
# Wraps index.html as a standalone page for phone/Bonjour.html.
cd "$(dirname "$0")"
{
cat <<'EOF'
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover">
<meta name="theme-color" content="#EDF1F7">
<style>:root{padding-top:env(safe-area-inset-top,0px);padding-bottom:env(safe-area-inset-bottom,0px)}body{margin:0}</style>
EOF
cat index.html
echo '</html>'
} > phone/Bonjour.html
echo "Built phone/Bonjour.html"
