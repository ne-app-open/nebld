# // ============================================================= //
# // NeBuild System.
# // Copyright (C) 2026, Ne.app, licensed under BSD-3 license.
# // ============================================================= //

message(STATUS "=> CommonCore: Building NeBld...")

execute_process(
    COMMAND cmake -B build-cc
    WORKING_DIRECTORY "${CMAKE_SOURCE_DIR}/../private/"
)

execute_process(
    COMMAND cmake --build build-cc
    WORKING_DIRECTORY "${CMAKE_SOURCE_DIR}/../private/"
)
