#!/bin/sh

set -ex

INPUT_BRANCH=${INPUT_BRANCH:-master}
CMD_ARGS=""

if [[ ! -z "$INPUT_INSTALL_PLUGINS" ]]; then
  npm i -g $INPUT_INSTALL_PLUGINS
fi

if [ "$INPUT_DRY_RUN" = true ]; then
  CMD_ARGS=" --dry-run"
fi

semantic-release --branch $INPUT_BRANCH $CMD_ARGS
