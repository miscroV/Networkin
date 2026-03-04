!/bin/sh
# *****************************************************************************
# * Project: Template
# * File: run.sh
# * Author: MiscroV
# * Created: 2026-3-4
# * Description: recompile and then run the project using the given name project.
# *****************************************************************************

# Exit on failure
set -e
project='Template'

# Build the project 
(
cd "$(dirname "$0")"
cmake -S . -DPROJECT_NAME_VAR=$project -B build
cmake --build build
)

# Run the executable with any provided arguments
exec $(dirname "$0")/build/$project "$@"