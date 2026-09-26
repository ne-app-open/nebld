#!/usr/bin/env sh
# install.sh — build and install nebld via CMake
# Copyright (C) 2025-2026, Amlal El Mahrouss and Ne.app, licensed under BSD-3 license.

set -e

GIT=git
OUT=nebld/x64-pc
FLAGS=clone

${GIT} ${FLAGS} https://github.com/ne-app-open/nebld ${OUT}
cd nebld

cd ${OUT}

BUILD_DIR="build"
SOURCE_DIR="$(cd "$(dirname "$0")/private" && pwd)"

echo "=> Source dir : $SOURCE_DIR"
echo "=> Build dir  : $BUILD_DIR"

cmake -S "$SOURCE_DIR" -G "MinGW Makefiles" -B "$BUILD_DIR" \
  -DCMAKE_BUILD_TYPE=Release

cmake --build "$BUILD_DIR"

echo ""
echo "=> Build complete."
