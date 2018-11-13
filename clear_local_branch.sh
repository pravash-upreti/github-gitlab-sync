#!/bin/bash

#change repo dir
cd $LOCAL_REPO_PATH

# checkout to master and we are not deleting this branch
git checkout master 

# escape line containing '->' string
git fetch -p

# list branch with verbose enabled
git branch -vv |

# select all the deleted branch line
grep ': gone]' | 

# scan first text which is branch name
awk '{print $1}' |

# for each branch
while read remote; 
    do
        # delete the branch locally
        # this will prevent from pushing the same branch to github
        echo "deleting branch : $branch"
        git push gitlab --delete $branch
        git branch -D $branch;
        
    done
    

#git checkout master && git fetch -p && for branch in `git branch -vv | grep ': gone]' | awk '{print $1}'`; do git branch -D $branch; done
    