#!/bin/bash

#change repo dir
cd $LOCAL_REPO_PATH

# checkout to master and we are not deleting this branch
git checkout master 

git fetch -p


for branch in `git branch -vv | grep ': gone]' | awk '{print $1}'`; 
do 
    echo "deleting branch : $branch";
    git push origin --delete $branch;
    git branch -D $branch; 
done
    