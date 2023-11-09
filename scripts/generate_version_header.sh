#!/usr/bin/env bash
export VERSION=`git describe --dirty --broken`
echo "#DEFINE VERSION "$VERSION > $1