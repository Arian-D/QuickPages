#!/bin/bash
if [ -z "$1" ] 
	then
		echo "Specify the qck file name is the following format:"
		echo "setup.sh example.qck"
		exit
fi
folder_name=`basename $1 .qck`
if [ ! -d "$folder_name" ]
	then
		mkdir "$PWD/$folder_name"
fi
cp template.css "$PWD/$folder_name/style.css"
sed -f quicky.sed "$1" > "$PWD/$folder_name/index.html"
