:se expandtab
:se shiftwidth=2
:se softtabstop=2
:se autoindent

:map =dt :s/^[ ]*\([A-Z/0-9 	]\+\) \([A-Z][a-z]\)/  <DT>\1 <DD>\2/
:map =sw :s/^\(.*\)[ 	]*(\([A-Z0-9a-z]*\))/\2 \1/

