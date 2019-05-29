#!/bin/bash
set -a
. $HOME/service_state/config.sh
. $HOME/venv/bin/activate
set +a

"$@"
