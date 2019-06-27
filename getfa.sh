#!/bin/bash

set -ex
icons="twitter github"
dest=fontawesome
url=https://raw.githubusercontent.com/FortAwesome/Font-Awesome/master/svgs/brands
mkdir -p "${dest}"
for icon in $icons; do
  icon="${icon}.svg"
  wget -O "${dest}/${icon}" "${url}/${icon}"
done
