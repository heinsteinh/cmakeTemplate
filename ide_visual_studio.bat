@rem rmdir ProjectBuild
mkdir ProjectBuild
cd ProjectBuild
"C:\Program Files\CMake\bin\cmake.exe"  -Dbuild_tests=False  -D CMAKE_BUILD_TYPE=Debug  -G "Visual Studio 14 2015 Win64" ../ProjectDir