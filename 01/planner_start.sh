DATE="$(date +"%Y.%b.%d_%H.%M")"
MYAPP="planner"

#echo -n "1. deleting tmp files...\n"
#rm -rf ~/ember/code/$MYAPP/tmp/*

echo -n "
---------------- Planner προετοιμασία για development ---------------------
1. Fetching planner source from Github (git pull origin)...\n"
	cd ~/code/RoR/$MYAPP
	git pull origin master

echo -n "2. starting IDE\n"
	atom --dev

echo -n "

----------------------------------------------
οδηγίες για branch
----------------------------------------------
αρχικά:

git checkout -b my_todo
κάνω αλλαγές στα αρχεία
git commit -a -m 'changes regarding my_todo'
git push origin my_todo

τελικά:
git checkout master
git merge my_todo
git branch -d my_todo
git push origin :my_todo

----------------------------- happy coding George! -------------------------
"
