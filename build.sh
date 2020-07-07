#!/bin/sh

if [ $# -eq 0 ]; then
	dockerfiles=$(find * -type f -name Dockerfile)
else
	dockerfiles=$1
fi

for i in $dockerfiles; do
	image_name=acceleratorbase/$(echo $i | awk -F/ '{ print $2 }')
	dir_name=$(dirname `echo $i`)
	docker buildx build \
		--platform=`cat $dir_name/.platform` \
		-t $image_name \
		-f $i $dir_name \
		--push
done
