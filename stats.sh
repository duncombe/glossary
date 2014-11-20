#! /bin/bash

numdefs=$(
	cat README.md | awk '
	BEGIN{count=0}
	/<DT>/{count++}
	/<DT>.*name=.*href=#contents/{count--}
	/<DT>.*<DT>/{print "Warning: Two DT tags on the same line (" NR ")" > "/dev/stderr" }
	/<DD>.*<DD>/{print "Warning: Two DD tags on the same line (" NR ")" > "/dev/stderr" }
	END{print count}
	' )

tmpfile=`mktemp`

# README might be a symlink. We have to avoid overwriting that, so do not do
# sed in place!
cat README.md > $tmpfile 
cat $tmpfile | sed '/A glossary of[0-9 ]\+\(data management terms\)/s/\(A glossary of\)[0-9 ]\+\(data management terms\)/\1 '$numdefs' \2/' > README.md 
rm $tmpfile

# vim: se nowrap tw=0 : 
