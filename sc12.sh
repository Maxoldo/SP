#!/bin/bash
echo "Lipaev Maxim, search file softwate"
while [ 1 = 1 ]
do
echo"" 
echo "Select operating mode:"
echo "1 - search by name"
echo "2 - search by size"
echo "* - exit"

read doing
case $doing in
1)
	echo "Specify a directory to search "
	read path
	echo "Specify file name"
	read name
	find $path -maxdepth 1 -type f -name *$name*.*;;
2)
	echo "Specify a directory to search "
	read path
	echo "Specify file size in b"
	read size
	find $path -maxdepth 1 -type f -size +"$size"b;;
*)
	break;;
esac
done
