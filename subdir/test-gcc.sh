#!/bin/bash

#
# Copyright (C) 2024 Patrick Rotsaert
# Distributed under the Boost Software License, Version 1.0.
# (See accompanying file LICENSE or copy at
# http://www.boost.org/LICENSE_1_0.txt)
#

set -e

THISDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

for linkage in shared static; do
	for type in debug release; do
		preset=gcc-${linkage}-${type}
		cmake -S "${THISDIR}" --preset ${preset}
		cmake --build "${THISDIR}"/out/build/${preset}
	done
done
