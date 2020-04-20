#!/bin/bash

set -e

# sudo apt-get install libdb5.3++-dev libjemalloc-dev libmysqld-dev libaio-dev

git submodule update --init --recursive

pushd silo
git am ../silo.patch || true
git am ../preemption.patch || true
make dbtest -j
popd
