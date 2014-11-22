# after you have made your edits run this script

# do the stats on README.md

./stats.sh

files=$(git ls-files -m)
num=$(git ls-files -m | wc -l)

git add -A -v

if [ ${#files} -le 50 ]; then
	# git commit -m "Updating ${files}"
	git commit -m "`echo Updating ${files}`"
else
	git commit -m "Updating ${num} files"
fi

# our chosen website generation tool Hugo (genuflect) does not recognise
# symlinks (at least it follows them sometimes) and so hugo server --watch
# does not update when README.md is changed. But we can't have the symlink
# going the other way, because that complicates working with the repository
# on GitHub (genuflect).  So touch a file we don't care about, tricking
# stupid Hugo.

touch content/.gitkeep

