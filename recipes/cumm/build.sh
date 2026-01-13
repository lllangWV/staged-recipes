#!/bin/bash
set -ex

# Disable JIT compilation to build C++ extensions at package build time
export CUMM_DISABLE_JIT=1

# Set CUDA version for cumm build system
export CUMM_CUDA_VERSION="${cuda_compiler_version}"

# Install the package
${PYTHON} -m pip install . -vv --no-deps --no-build-isolation
