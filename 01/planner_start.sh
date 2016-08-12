DATE="$(date +"%Y.%b.%d_%H.%M")"
MYAPP="planner"

#echo -n "1. deleting tmp files...\n"
#rm -rf ~/ember/code/$MYAPP/tmp/*

echo -n "Fetching planner source from Github (git pull origin)...\n"
	cd ~/code/RoR/$MYAPP
	git pull origin

echo -n "3. starting IDE...\n"
	atom --dev
