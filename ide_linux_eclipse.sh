#!/bin/bash
rm -rf ProjectBuild
mkdir ProjectBuild
cd ProjectBuild
cmake -G"Eclipse CDT4 - Unix Makefiles" -D CMAKE_BUILD_TYPE=Debug  -D_ECLIPSE_VERSION=4.2 ../ProjectDir

