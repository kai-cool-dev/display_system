git add .
COMMIT=$(curl -s https://whatthecommit.com/index.txt)
git commit -m "$COMMIT"
git push -u origin master
