#!/bin/sh

set -ex

if [[ ! -z "$EXTRA_PLUGINS" ]]; then
  npm i -g $EXTRA_PLUGINS
fi

echo $0
echo $1
echo $@

# Run semantic release command
semantic-release $@
