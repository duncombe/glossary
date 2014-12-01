
# this script pushes the regenerated website to github

git add -A -v
git commit -m "Update website `date`"
git push

# up to this part shopuld work ... 
# BUT THE NEXT PART DOESN'T ...
# git subtree pull --prefix=public
# git subtree push --prefix=public origin gh-pages
# It flakes out periodically for dumb stupid unknown reason, probably due
# to user error (what else? dumb user.) Fail safe method?





