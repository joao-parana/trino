#!/bin/bash

set -e

# if we don't use clean in mvn we need to remove target dir in core/trino-server-rpm
rm -rf core/trino-server-rpm/target
# build all, but trino-docs
mvn install -DskipTests -pl '!:trino-docs'
