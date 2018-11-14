#!/bin/bash

#change repo dir
cd $LOCAL_REPO_PATH 

# pull all tracked branch from all remote origin
git pull --all

# push all tracked branch to gitlab remote origin
git push --all $GITLAB_REPO

#call("cd sam-test && git fetch --all && git pull --all && git push --all origin",shell=True)