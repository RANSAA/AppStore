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




# 添加一个子git用于存储HTML资源，
# childGit：子仓库目录
git submodule add git@github.com:RANSAA/AppStore.git childGit


## 同步到github
## 1.先拷贝相关HTML资源到github目录(不需要拷贝应用包)
## 2.进入github目录
## 3.推送到github
# cd github
cd childGit
# git add .
# git commit -m 'no message'
git push git@github.com:RANSAA/AppStore.git