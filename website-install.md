
# glossary structure and installation

The website relies on Hugo for creation and deployment.  The premise is to have
the document appear in both the github readme.md and the website index.html.
The way this is accomplished is to sym-link the README.md to index.md in the
content subdir. Thus Hugo creates index.html in public, while the same document
still appears in the github repository. Scripts like stats.sh need to be aware
of the sym-link so that they preserve it and the relationship between the
files.

# Installing changes to the website 

After struggling to get `git subtree` and `hugo` to update gh-pages properly,
this listing of commands seemed to work. Intend to turn it into a decent script.

``` 
# git status
# git remote -v
# git pull
# this is a housekeeping item: the script counts the number of entries (using
# the script stats.sh), changes number in the file and commits the changes to
# the repository.
./update.sh && git push

# git subtree pull --prefix=public 
# git status

# run hugo to build the website
hugo
# git status
# add everything that changed
git add -A -v
git commit -m "Update website `date`"

git push
# git subtree pull --prefix=public 
git subtree push --prefix=public origin gh-pages
```

<!-- vi:se nowrap tw=0: -->

