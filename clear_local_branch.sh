#!/bin/bash

#change repo dir
cd $LOCAL_REPO_PATH

# checkout to master and we are not deleting this branch
git checkout master 

# fetch all the branch and if branch is deleted from remote then mark as delete
git fetch -p

# for each remotely deleted branch get branch name
for branch in `git branch -vv | grep ': gone]' | awk '{print $1}'`; 
do 
    # show message on console
    echo "deleting branch : $branch";
    
    # delete the branch to origin. github already deleted so gitlab will delete
    git push ssh://git@$GITLAB_DOMAIN/InHouse/$REPO_NAME.git --delete $branch;

    # also delete from local repo
    git branch -D $branch; 
done
    