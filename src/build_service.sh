#!/bin/bash

set -o errexit

SCRIPTDIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

docker build -t istio/examples-hoge-v1 --build-arg service_version=v1 "${SCRIPTDIR}"
docker build -t istio/examples-hoge-v2 --build-arg service_version=v2 "${SCRIPTDIR}"
