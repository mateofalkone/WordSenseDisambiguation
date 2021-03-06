#!/bin/bash

# A script to run WordSensor on data in the TestData set.

src=java
jars=jars/*

os="`uname`"

echo Your OS is $os

# If not linux, we assume Windows.
case $os in
	Linux*) path=$src:$jars ;;
	*) path="$src;$jars" ;;
esac

echo Classpath is $path

java -cp $path WordSensor TestData false
