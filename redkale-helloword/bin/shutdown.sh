#!/bin/sh

export LC_ALL="zh_CN.UTF-8"

APP_HOME=`dirname "$0"`

cd "$APP_HOME"/..

APP_HOME=`pwd`

if [ ! -f "$APP_HOME"/conf/application.xml ]; then 
     APP_HOME="$APP_HOME"/..  
fi

lib="$APP_HOME"/lib
for jar in `ls $APP_HOME/lib/*.jar`
do
    lib=$lib:$jar
done
export CLASSPATH=$CLASSPATH:$lib

echo "$APP_HOME"
java -DCMD=SHUTDOWN  -DAPP_HOME="$APP_HOME"  org.redkale.boot.Application
