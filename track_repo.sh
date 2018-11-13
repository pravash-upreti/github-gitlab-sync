#!/bin/bash

#change repo dir
cd $LOCAL_REPO_PATH

# List all remote branch
git branch -r |

# remove the line containing line '->'
grep -v '\->' |

# for each branch
while read remote; 
    do
        # track all the branch        
        git branch --track "${remote#origin/}" "$remote";
    done
    

#git branch -r | grep -v '\->' | while read remote; do git branch --track "${remote#origin/}" "$remote"; done
    