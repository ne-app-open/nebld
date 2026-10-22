# // ============================================================= //
# // NeBuild System.
# // Copyright (C) 2026, Ne.app, licensed under BSD-3 license.
# // ============================================================= //

cmake_minimum_required(VERSION 3.30)

option(_NEBLD_COMMONCORE_BUILD "=> Produces a CommonCore build of NeBld" OFF)

message(STATUS "=> CommonCore? ${_NEBLD_COMMONCORE_BUILD}")

if (DEFINED _NEBLD_COMMONCORE_BUILD)
    include(commoncore_build.cmake)
endif()
