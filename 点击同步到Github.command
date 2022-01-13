#!/usr/bin/env bash 

#切换进入当前目录
path=$0
first=${path:0:1}
if [[ $first == "/" ]]; then
    path=${path%/*}
    cd $path
fi


git push git@github.com:RANSAA/AppStore.git