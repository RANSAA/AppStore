#!/usr/bin/env bash 

#切换进入当前目录
path=$0
first=${path:0:1}
if [[ $first == "/" ]]; then
    path=${path%/*}
    cd $path
fi



# 推送到腾讯coding
git add .
git commit -m 'no message'
git push origin master




# 同步到github
git push git@github.com:RANSAA/AppStore.git