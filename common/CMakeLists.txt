# // ============================================================= //
# // NeBuild System.
# // Copyright (C) 2026, Ne.app, licensed under BSD-3 license.
# // ============================================================= //

cmake_minimum_required(VERSION 3.30)

project(nebld-cc VERSION 0.1 LANGUAGES CXX)

option(_NEBLD_COMMONCORE_BUILD "=> Produces a CommonCore build of NeBld")

message(STATUS "=> CommonCore? ${_NEBLD_COMMONCORE_BUILD}")

if (_NEBLD_COMMONCORE_BUILD STREQUAL "ON")
    include(commoncore_build.cmake)
endif()
