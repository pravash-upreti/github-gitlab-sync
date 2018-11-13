#!/bin/bash

#change repo dir
cd $LOCAL_REPO_PATH

# fetch all changes in remote
git fetch --all

# list all the fetched remote branch
git branch -r |

# remove the line containing line '->'
grep -v '\->' |

# for each branch
while read remote; 
    do
        # track all the branch       
        # this is like running git branch --track fe1 origin/fe1 ie copy the remote branch to local

        git branch --track "${remote#origin/}" "$remote";
    done
    

#git branch -r | grep -v '\->' | while read remote; do git branch --track "${remote#origin/}" "$remote"; done
    