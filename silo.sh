#!/bin/bash

set -e

git submodule update --init --recursive

pushd silo
git apply ../silo.patch || true
make dbtest -j
popd
