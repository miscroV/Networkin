# *****************************************************************************
# * Project: Template
# * File: Main CMakeLists.txt file
# * Author: MiscroV
# * Created: 2026-3-4
# * Description: Main Build for the Template project.
# *****************************************************************************

# ++ Required Base Variables --------------------------------------------------
cmake_minimum_required(VERSION 3.13)
set(CMAKE_C_STANDARD 99)

set(PROJECT_NAME_VAR "Template" CACHE STRING "Name of Executable")
project(${PROJECT_NAME_VAR})


# ++ Build Files and Dirs -----------------------------------------------------
set(SOURCE_FILES
    # Manually add all .c files needed for the executable.
    src/main.c
    src/lib0/lib.c
)
set(HEADER_DIRECTORIES
    # Manually add all header directories needed for linking to the executable.
    include/lib0
)

# ++ Executable Creation ------------------------------------------------------
add_executable(${CMAKE_PROJECT_NAME} ${SOURCE_FILES})
target_include_directories(${CMAKE_PROJECT_NAME} PRIVATE ${HEADER_DIRECTORIES})

