#!/usr/bin/env bash

set -e -x -o pipefail

# Set up submodules
git submodule update --init --recursive
# git submodule update --recursive --remote

# Check out the specific version of ASTRA-Sim mentioned in the ATLAHS paper
git -C apps/ai/astra-sim checkout ac477623e80aaca048e5353baa9d2cd1dc26dbcb

pushd sim/LogGOPSim
make -j
popd
