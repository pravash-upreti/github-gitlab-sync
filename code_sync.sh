#!/bin/bash

#change repo dir
cd $LOCAL_REPO_PATH 

# fetch all tracked branch from all remote origin
git fetch --all

# pull all tracked branch from all remote origin
git pull --all

# push all tracked branch to all remote origin
git push --all origin

#call("cd sam-test && git fetch --all && git pull --all && git push --all origin",shell=True)