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
	

