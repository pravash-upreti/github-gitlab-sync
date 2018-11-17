#!/bin/bash
git clone $GITHUB_REPO
cd $LOCAL_REPO_PATH
echo "Coloned locally"
# git remote set-url origin --add $GITHUB_REPO
git remote set-url origin --add $GITLAB_REPO
echo "Origin added"
# git config --global url.ssh://git@github.com/.insteadOf https://github.com/
# git config --global url.ssh://git@$GITLAB_DOMAIN/.insteadOf https://$GITLAB_DOMAIN/
git remote -v
# back to home directory
cd ../
echo "Setup Completed"