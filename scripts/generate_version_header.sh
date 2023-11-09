#!/usr/bin/env bash
echo "in gamescope version script $1"
export VERSION=`git describe --dirty --broken`
echo "#define GAMESCOPE_VERSION \"$VERSION\"" > $1
