# after you have made your edits run this script
git add -A -v
files=$(git ls-files -c)
if [ ${#files} -le 50 ]; then
	# git commit -m "Updating ${files}"
	git commit -m "`echo Updating ${files}`"
else
	git commit -m "Updating files"
fi
	

