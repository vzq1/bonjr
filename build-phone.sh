#!/bin/sh
# Builds the hostable app from index.html:
#   phone/Bonjr.html  the app as one standalone page
#   docs/             the installable app (PWA): page, offline cache, manifest and icons
cd "$(dirname "$0")"
page() {
cat <<'HEAD'
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover">
<meta name="theme-color" content="#EDF1F7">
HEAD
if [ "$1" = pwa ]; then
cat <<'PWA'
<link rel="manifest" href="manifest.webmanifest">
<link rel="icon" type="image/png" sizes="192x192" href="icons/icon-192.png">
<link rel="apple-touch-icon" href="icons/apple-touch-icon.png">
<script>if ('serviceWorker' in navigator && (location.protocol === 'https:' || location.hostname === 'localhost')) addEventListener('load', () => navigator.serviceWorker.register('sw.js'));</script>
PWA
fi
cat <<'STYLE'
<style>:root{padding-top:env(safe-area-inset-top,0px);padding-bottom:env(safe-area-inset-bottom,0px)}body{margin:0}</style>
STYLE
cat index.html
echo '</html>'
}
page > phone/Bonjr.html
rm -rf docs && mkdir -p docs/icons
page pwa > docs/index.html
cp pwa/manifest.webmanifest docs/
cp pwa/icons/*.png docs/icons/
version=$(cat docs/index.html pwa/sw.js pwa/manifest.webmanifest pwa/icons/*.png | shasum -a 256 | cut -c1-12)
sed "s/__VERSION__/$version/" pwa/sw.js > docs/sw.js
touch docs/.nojekyll
echo "Built phone/Bonjr.html and docs/ (version $version)"
