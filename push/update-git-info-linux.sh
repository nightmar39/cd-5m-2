#!/bin/bash
echo "Enter git user name" 

read GIT_USER

echo "Enter git repo name"

read GIT_REPO

for i in ../argocd-definitions/dev/app*; do 
	sed -i -e "s/GITHUB_USER/$GIT_USER/" -e "s/GITHUB_REPO/$GIT_REPO/" $i
done 

#git add ../argocd-definitions/dev/app.*.yaml

#git branch -M main 

#git commit -m "Update GITHUB_USER and GITHUB_REPO"

#git push -u origin main 

