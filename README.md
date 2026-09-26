# NeBld System

[![License: BSD-3.0](https://img.shields.io/badge/LICENSE-BSD--3.0-blue.svg)](LICENSE)

This build system is designed to be fast and easy-to-use and easy to install. Targeting general use for C/C++ projects as well.

## Requirements:

- GNU C++
- GNU Make

## Fast Install:

You can install directly nebuild from this command alone on POSIX:

```
curl -fsSL https://raw.githubusercontent.com/ne-app-open/nebld/refs/heads/develop/install.sh | sh
```

### And on Windows:

```
curl -fsSL https://raw.githubusercontent.com/ne-app-open/nebld/refs/heads/develop/install.sh && install.sh
```

## Guide (GNU Make):

## On Linux...

You do this:

```sh
make -f linux-gcc.make
```

## On Windows...

You do this:

```sh
make -f win64-msvc.make
```

Or for MSVC:

```sh
make -f win64-msvc.make
```

## Guide (NeBuild):

- Run `nebld` and pass the path to the manifest file to build from the sources:

```sh
nebld targets/osx.json
```

## Guide (CMake):

- Use CMake to build `nebld` from the sources:

```zsh
cmake -S . -B build
cmake --build build
```
###### Copyright (C) 2024-2026, Amlal El Mahrouss and NE.APP, licensed under the BSD 3 Clause license.
