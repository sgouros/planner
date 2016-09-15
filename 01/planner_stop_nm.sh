DATE="$(date +"%Y.%b.%d_%H.%M")"
cd ~/code/RoR/planner
echo -n "-- Planner stop session -----------\n"
echo -n "1. git status\n"
git status -s
echo -n "2. git add .\n"
git add .
echo -n '3. git commit with prefixed message'
git commit -m "changed on $DATE by GS"
echo -n "4. git push origin master\n"
git push origin master
