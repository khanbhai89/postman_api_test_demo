#/bin/bash

# stop on first error
set -e;

docker build -t newman-local .
