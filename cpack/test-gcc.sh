#!/bin/bash

#
# Copyright (C) 2024 Patrick Rotsaert
# Distributed under the Boost Software License, Version 1.0.
# (See accompanying file LICENSE or copy at
# http://www.boost.org/LICENSE_1_0.txt)
#

set -e

THISDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

ZOO_BUILD_DIR="${THISDIR}"/out/zoo-build
ZOO_INSTALLDIR="${THISDIR}"/out/zoo-install

"${THISDIR}"/../subdir/zoo/dist.sh --build-dir="${ZOO_BUILD_DIR}" --cxx=g++

TARBALL="$(ls -tr "${ZOO_BUILD_DIR}"/libzoo-*.tar.gz | tail -n1)"

[ ! -d "${ZOO_INSTALLDIR}" ] || rm -rf "${ZOO_INSTALLDIR}"
mkdir -p "${ZOO_INSTALLDIR}"

tar -C "${ZOO_INSTALLDIR}" --strip-components=1 -xf "${TARBALL}"

for linkage in shared static; do
	for type in debug release; do
		preset=gcc-${linkage}-${type}
		cmake -S "${THISDIR}" --preset ${preset}
		cmake --build "${THISDIR}"/out/build/${preset}
	done
done
