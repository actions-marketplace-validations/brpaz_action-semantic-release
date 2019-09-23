#!/bin/sh -l

if [[ ! -z "$EXTRA_PLUGINS" ]]; then
  npm i -g $EXTRA_PLUGINS
fi

# Run semantic release command
semantic-release "$@"
