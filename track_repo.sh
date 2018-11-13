#!/bin/bash

#change repo dir
cd $LOCAL_REPO_PATH

# List all remote tracking branch
git fetch --all
git branch -r |

# remove the line containing line '->'
grep -v '\->' |

# for each branch
while read remote; 
    do
        # track all the branch       
        # this is like running git branch --track fe1 origin/fe1
          
        git branch --track "${remote#origin/}" "$remote";
    done
    

#git branch -r | grep -v '\->' | while read remote; do git branch --track "${remote#origin/}" "$remote"; done
    