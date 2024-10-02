git checkout --orphan gh-pages Docs
git --work-tree dist add --all Docs
git --work-tree dist commit -m 'Deploy'
git push origin HEAD:gh-pages --force
rm -r dist
git checkout -f master
git branch -D gh-pages
