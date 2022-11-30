#!/bin/bash

gitbook build
cp -rf '/Users/liushuaicai/boke/redisbook/_book/' '/Users/liushuaicai/boke/redis.github.io/'
cd '../redis.github.io/'
msg=$1  # $1为第一个参数

if [ ! -n "$msg" ] ;then
    msg='update'
fi
echo ${msg}
git add -A
git commit -am "${msg}"
git push origin master