
# Installing changes to the website 

After struggling to get git subtree and hugo to update gh-pages properly,
this listing of commands seemed to work. Intend to turn it into a decent script.

``` 
# git status
# git remote -v
# git pull
# this is a housekeeping item: the script counts the number of entries,
# changes number in the file and commits the changes to the repository.
./update.sh 
git subtree pull --prefix=public 
git status
git push
hugo
# git status
git add -A
git push
# git status
msg="Update website `date`"
git commit -m "${msg}"
git push
git subtree pull --prefix=public 
git subtree push --prefix=public origin gh-pages
```

<!-- vi:se nowrap tw=0: -->
