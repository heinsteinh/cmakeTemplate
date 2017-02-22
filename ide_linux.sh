#!/bin/bash
rm -rf ProjectBuild
mkdir ProjectBuild
cd ProjectBuild
cmake -G "Unix Makefiles"  -D CMAKE_BUILD_TYPE=Debug ../ProjectDir
make
cd ..