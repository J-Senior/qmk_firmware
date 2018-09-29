#!/bin/bash
#Sync personal QMK repo with official master
#Use git remote add [branch_name] git@github.com:[account_name]/[repo_name]

SOURCEBRANCH=official;
SYNCBRANCH=master;

env -i git fetch $SOURCEBRANCH;
env -i git checkout $SYNCBRANCH;
env -i git rebase $SOURCEBRANCH/$SYNCBRANCH;
echo "Run successful";
