#!/bin/bash
# Requirements for building this Docker image
# * Maven must be available in the path
# * Must have installed coreutils from brew and accesible in the path

set -o nounset
set -o errexit

OLD_PWD="$PWD"
SCRIPT_DIR=`readlink -f $(dirname $0)`
STRATIO_VERSION="2.1.8.2"

docker build -t talberto/cassandra-lucene-index:$STRATIO_VERSION $SCRIPT_DIR
