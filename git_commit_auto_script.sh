#!/bin/bash  
## git upload auto script - example script
## command line param, example for a repo:   $1 => username/username.github.io.git $2 ==> commit msg

PATH_REPO=$1
str=$2

git remote set-url origin git@github.com:$1

#cd $PATH_REPO
git add .

currentDate=`date +"%Y-%m-%d %T"`
git commit -m  "Updating the doc"
git pull origin master
git push origin master
