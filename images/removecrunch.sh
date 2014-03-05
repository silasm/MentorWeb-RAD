#! /bin/bash
files=`ls *\#*`
echo $files

# remove crunches (#)
for f in $files
do
	newf=`echo $f | sed 's/\#//g'`
	mv $f $newf
done

files=`ls *\ *`
echo $files

# spaces to underscores
for f in $files
do
	newf=`echo $f | sed 's/ /_/g'`
	mv $f $newf
done
