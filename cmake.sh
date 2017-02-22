#!/bin/sh

BUILD_DIR="ProjectBuild"

do_clean() {
	rm -rf $BUILD_DIR
}

do_build() {
	mkdir $BUILD_DIR; cd $BUILD_DIR
	cmake -DCMAKE_BUILD_TYPE=Debug ..
	make # VERBOSE=1
}

do_eclipse_build() {
	mkdir $BUILD_DIR; cd $BUILD_DIR
	cmake -G"Eclipse CDT4 - Unix Makefiles" -D CMAKE_BUILD_TYPE=Debug  -D_ECLIPSE_VERSION=4.2 ../ProjectDir		
}

do_unix_build() {
	mkdir $BUILD_DIR; cd $BUILD_DIR
	cmake -G "Unix Makefiles"  -D CMAKE_BUILD_TYPE=Debug ../ProjectDir
}

do_vs2015_build() {
	mkdir $BUILD_DIR; cd $BUILD_DIR
	cmake -G "Visual Studio 14 2015 Win64"  -D CMAKE_BUILD_TYPE=Debug ../ProjectDir
}

do_xcode_build() {
	mkdir $BUILD_DIR; cd $BUILD_DIR
	cmake -G "Xcode"  -D CMAKE_BUILD_TYPE=Debug  ../ProjectDir	
}



do_install() {
	cd $BUILD_DIR
	make install
}

case $1 in
clean)
	do_clean
	;;
build)
	do_build
	;;
install)
	do_install
	;;
*)
	echo "Usage: $0 { clean | build | install }"
	exit 1
	;;
esac

