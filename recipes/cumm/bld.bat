@echo off
setlocal enabledelayedexpansion

:: Disable JIT compilation to build C++ extensions at package build time
set CUMM_DISABLE_JIT=1

:: Set CUDA version for cumm build system
set CUMM_CUDA_VERSION=%cuda_compiler_version%

:: Install the package
%PYTHON% -m pip install . -vv --no-deps --no-build-isolation
if errorlevel 1 exit 1
