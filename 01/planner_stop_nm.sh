DATE="$(date +"%Y.%b.%d_%H.%M")"

git status -s
git add .
git commit -m "changed on $DATE by GS"
git push origin master
