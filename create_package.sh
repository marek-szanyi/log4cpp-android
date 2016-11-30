#!/bin/bash 
	
VERSION="1_0_0"

if [[ -z "$1" ]] ; then
    echo 'using default version 1,0.0'
else
	VERSION=$1
fi	

#create a zip with libs and include dir as well
zip -r ./log4cpp-android-$VERSION.zip ./include/ ./libs/