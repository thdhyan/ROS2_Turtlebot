#!/bin/bash
set -e

# Set the default build type
BUILD_TYPE=RelWithDebInfo
# export MAKEFLAGS="-j 2"
colcon build \
        --merge-install \
        --symlink-install \
        --executor parallel \
        --parallel-workers 4 \
        # --make-flags $MAKEFLAGS \
        --cmake-args "-DCMAKE_BUILD_TYPE=$BUILD_TYPE" "-DCMAKE_EXPORT_COMPILE_COMMANDS=On" \
        -Wall -Wextra -Wpedantic
