
# this script pushes the regenerated website to github

# git add -A -v &&
 #  { echo added ; git commit -m "Update website `date`" ; } &&
  #   { echo commited ; git push && echo pushed ; }

# up to this part should work ... 
# BUT THE NEXT PART DOESN'T ...
# git subtree pull --prefix=public
# git subtree push --prefix=public origin gh-pages
# 
# It flakes out periodically for dumb stupid unknown reason, probably due
# to user error (what else? it's always the dumb user). Fail safe method?

TEMPDIR=`mktemp -d`
git clone -b gh-pages ssh://git@github.com/duncombe/glossary.git $TEMPDIR ||
  { echo failed to clone; exit 1 ; }
rm -rf $TEMPDIR/* ||
  { echo failed to clear old data ; exit 2 ; }
cp -a public/* $TEMPDIR ||
  { echo failed to copy website ; exit 3 ; }

(
    cd $TEMPDIR
    git add -v -A && 
      git commit -m "Updating website `date`" &&
        git push 
)

rm -rf dummy $TEMPDIR

