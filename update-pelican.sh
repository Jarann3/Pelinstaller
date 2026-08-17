#!/bin/bash

set -e

echo "Updating Pelican Panel repository references..."

find . -type f -not -path './.git/*' -exec sed -i \
  's#pelican/panel#pelican/panel#g' {} +

echo "Done."
echo
echo "Changed:"
grep -Rni "pelican/panel" . --exclude-dir=.git || true

