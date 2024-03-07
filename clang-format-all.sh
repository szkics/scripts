#!/bin/bash

# clang-formatting all files in staging at once.
files=`git status -s`
for file in $files
do
	if [[ $file == *.cpp || $file == *.h ]]
	then
		clang-format-14 -i $file
		echo $file clang-formatted
	fi
done