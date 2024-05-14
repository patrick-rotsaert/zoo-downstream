#!/bin/bash

#
# Copyright (C) 2024 Patrick Rotsaert
# Distributed under the Boost Software License, Version 1.0.
# (See accompanying file LICENSE or copy at
# http://www.boost.org/LICENSE_1_0.txt)
#

THISDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

./subdir/test-gcc.sh
./fetchcontent/test-gcc.sh
./cpack/test-gcc.sh
