For all information about log4cpp go to http://log4cpp.sf.net/

#Building

1) build c++_static for arm,arm-v7 and arm64 using: $ ndk-build NDK_APPLICATION_MK=`pwd`/Application.mk 
2) create a zip package from the build using: $ ./create_package.sh "1_1_0"


