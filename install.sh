#!/usr/bin/env sh
# install.sh — build and install nebld via CMake
# Copyright (C) 2025-2026, Amlal El Mahrouss and Ne.app, licensed under BSD-3 license.

set -e

INSTALL_PREFIX="${PREFIX:-/usr/local}"
BUILD_DIR="build"
SOURCE_DIR="$(cd "$(dirname "$0")/private" && pwd)"

echo "=> Source dir : $SOURCE_DIR"
echo "=> Build dir  : $BUILD_DIR"
echo "=> Install to : $INSTALL_PREFIX"

cmake -S "$SOURCE_DIR" -B "$BUILD_DIR" \
  -DCMAKE_BUILD_TYPE=Release \
  -DCMAKE_INSTALL_PREFIX="$INSTALL_PREFIX"

cmake --build "$BUILD_DIR"

echo ""
echo "=> Build complete. Installing nebld to $INSTALL_PREFIX/bin ..."

mkdir -p "$INSTALL_PREFIX/bin"
cp "$BUILD_DIR/nebld" "$INSTALL_PREFIX/bin/"

echo "=> Done. Run 'nebld --help' to verify the installation."
