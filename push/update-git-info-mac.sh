#!/bin/bash
echo "Enter git user name" 

read GIT_USER

echo "Enter git repo name"

read GIT_REPO

for i in ./argocd-definitions/dev/app*; do 
	sed -i '' -e "s/GITHUB_USER/$GIT_USER/" -e "s/GITHUB_REPO/$GIT_REPO/" -e "s/CLUSTER_NAME/arn-aws-eks-us-east-2-835357571861-cluster-us-support-v2-clus/" $i
done 

git add ./argocd-definitions/dev/app*

git branch -M main 

git commit -m "Update GITHUB_USER and GITHUB_REPO"

git push -u origin main 

