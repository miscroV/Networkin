!/bin/sh

# Exit on failure
set -e

# Build the project 
(
cd "$(dirname "$0")"
cmake -S . -B build
cmake --build build
)

# Run the executable with any provided arguments
exec $(dirname "$0")/build/networkin "$@"