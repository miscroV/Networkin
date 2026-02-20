cmake_minimum_required(VERSION 3.13)

project(networkin-c)

file(GLOB SOURCE_FILES "src/*.c" "inc/*.h")

set(CMAKE_C_STANDARD 99)

add_executable(networkin ${SOURCE_FILES})

target_include_directories(networkin PUBLIC inc)

