rem rmdir /S /q  ProjectBuild
mkdir ProjectBuild
cd ProjectBuild
"C:\Program Files\CMake\bin\cmake.exe"  -Dbuild_tests=False  -D CMAKE_BUILD_TYPE=Debug  -G "Visual Studio 14 2015 Win64" ../ProjectDir

"C:\Program Files (x86)\MSBuild\14.0\Bin\MSBuild.exe"   ALL_BUILD.vcxproj  /property:Configuration=Debug

ALL_BUILD.vcxproj

cd ../
