!/bin/sh

# Compile the C program
set -e

(
cd "$(dirname "$0")"
cmake -S . -B build
cmake --build build
)

exec $(dirname "$0")/build/networkin "$@"