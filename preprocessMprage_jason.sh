#!/bin/bash

for dir in $(cd $(dirname $0); pwd)/*_*/;
do
	cd $dir
	cd *mprage*
	[ -r mprage_final.nii.gz ] && continue
	[ -r mprage.nii.gz ] && echo "Warning: $dir/mprage.nii.gz exists" && continue
	preprocessMprage -d n &
	cd ../..
	while [ $( jobs -p | wc -l ) -ge 5 ];
	do
		sleep 10
		jobs -p
	done
done
wait
