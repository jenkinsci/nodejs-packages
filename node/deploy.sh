#!/bin/bash -ex
# script to deploy the bundle for all the platforms. To actually deploy, run it like
#
#     $ CMD=deploy ./deploy.sh
#
# to test this locally during development do something like (with the actual PLATFORMS value for your computer),
#
#     $ PLATFORMS=linux-x64 ./deploy.sh
#
export CMD=${CMD:-install}
export PLATFORMS=${PLATFORMS:-linux-x86 linux-x64 sunos-x86 sunos-x64 darwin-x86 darwin-x64}

for v in ${PLATFORMS};
do
  mvn -Dclassifier=$v $CMD
done
