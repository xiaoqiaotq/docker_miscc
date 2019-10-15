#!/bin/bash
set -e

function print_help {
  echo "Supported commands:"
  echo "   master     - Start a Kudu Master"
  echo "   tserver    - Start a Kudu TServer"
  echo "   kudu       - Run the Kudu CLI"
  echo "   help       - print useful information and exit"
  echo ""
  echo "Other commands can be specified to run shell commands."
  echo ""
  echo "Environment variables:"
  echo "KUDU_MASTERS:"
  echo "  Defines the kudu-master and kudu-tserver configured master addresses."
  echo "  Defaults to localhost."
  echo "DATA_DIR:"
  echo "  Defines the root data directory to use."
  echo "  Defaults to /var/lib/kudu."
  echo "MASTER_ARGS:"
  echo "  Defines the arguments passed to kudu-master."
  echo "  Defaults to the value of the DEFAULT_ARGS environment variable."
  echo "TSERVER_ARGS:"
  echo "  Defines the arguments passed to kudu-tserver."
  echo "  Defaults to the value of the DEFAULT_ARGS environment variable."
  echo "DEFAULT_ARGS:"
  echo "  Defines a recommended base set of arguments."
}

if [[ "$1" == "coordinator" ]]; then
  exec echo 'coordinator'
elif [[ "$1" == "worker" ]]; then
#  if [[ -n "$KUDU_MASTERS" ]]; then
#    TSERVER_ARGS="--tserver_master_addrs=$KUDU_MASTERS $TSERVER_ARGS"
#  else
#    TSERVER_ARGS="--tserver_master_addrs=localhost $TSERVER_ARGS"
#  fi
  exec echo 'worker'
elif [[ "$1" == "help" ]]; then
  print_help
  exit 0
fi

# Support calling anything else in the container.
exec "$@"