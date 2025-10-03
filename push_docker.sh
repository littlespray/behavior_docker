#!/usr/bin/env bash
set -e -o pipefail

docker push cosmosbddppqdev/omnigibson:latest
docker push cosmosbddppqdev/omnigibson:$(sed -ne "s/.*version= *['\"]\([^'\"]*\)['\"] *.*/\1/p" setup.py)
# docker push stanfordvl/omnigibson-dev:latest
