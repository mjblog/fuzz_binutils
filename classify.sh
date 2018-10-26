#!/bin/sh
basedir=`pwd`/classify/
for file in `find asan.log.*`
do

fsize=`stat --printf "%s" $file`
if [ ! -d ${basedir}/${fsize} ] ; then
	mkdir -p ${basedir}/${fsize}
fi

mv ${file} ${basedir}/${fsize}/
echo ${file} >> ${basedir}/${fsize}/filelist

done

