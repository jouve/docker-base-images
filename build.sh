#!/bin/bash

set -e

for d in debian postgres-base postgres-createcluster postgres nginx redis; do
  pushd $d
  make $1
  popd
done

