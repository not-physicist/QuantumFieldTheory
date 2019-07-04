#!/usr/bin/bash
# Bash script to compile individual chapter script.tex

if [ -z ${1+x} ]; then 
	echo "Input chapter is unset. Compiling the whole file..."; 
	for i in chapter*.tex; do 
		j=${i%.tex};
		lualatex -jobname=the$j "\includeonly{$j}\input{script.tex}";
	done
else 
	echo "Input chapter is set to '$1'."; 
	i="chapter$1"
	echo $i
	lualatex -jobname=the$i "\includeonly{$i}\input{script.tex}";
fi
