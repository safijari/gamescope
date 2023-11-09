#!/usr/bin/env bash
export VERSION=`git describe --dirty --broken`
echo "#define GAMESCOPE_VERSION \"$VERSION\"" > $1
