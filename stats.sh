#! /bin/bash

cat README.md | awk '
	BEGIN{count=0}
	/<DT>/{count++}
	/<DT>.*name=.*href=#contents/{count--}
	END{print count}
	' 
