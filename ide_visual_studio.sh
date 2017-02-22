#!/bin/bash
rm -rf ProjectBuild
mkdir ProjectBuild
cd ProjectBuild
cmake -G "Visual Studio 14 2015 Win64"  -D CMAKE_BUILD_TYPE=Debug ../ProjectDir

