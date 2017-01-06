#!/usr/bin/env bash
cd `dirname $0`

JAVA_OPTIONS="-server -showversion -XX:+AggressiveOpts -Xmx2g -Xms2g -XX:MaxPermSize=512m -XX:+HeapDumpOnOutOfMemoryError"

#java $JAVA_OPTIONS -jar alien4cloud-1.3.0-standalone.war
java -cp config/:alien4cloud-1.3.0-standalone.war \
     org.springframework.boot.loader.WarLauncher