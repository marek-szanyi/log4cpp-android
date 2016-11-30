# log4cpp-Android

Port of the log4cpp logging library to Android. For all info about log4cpp goto its [official webpage](http://log4cpp.sf.net/)


## Building:
first build it all :+1:

```bash
$ ndk-build NDK_APPLICATION_MK=`pwd`/Application.mk 
```

then create a zip package from the build

```bash
$ ./create_package.sh "1_1_0"
```
