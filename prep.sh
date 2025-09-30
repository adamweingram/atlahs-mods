#!/usr/bin/env bash

set -e -x -o pipefail

pushd sim/LogGOPSim
make -j
popd
