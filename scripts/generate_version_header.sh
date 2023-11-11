#!/bin/sh
if [[ -z "${GAMESCOPE_VERSION}" ]]; then
  if git status &>/dev/null; then
      export VERSION=`git describe --dirty --broken`
  else
      export VERSION="Check your package manager for the version"
  fi
else
  export VERSION=${GAMESCOPE_VERSION}
fi
echo "#define GAMESCOPE_VERSION \"$VERSION\"" > $1
