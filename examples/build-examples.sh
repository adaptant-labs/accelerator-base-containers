#!/bin/sh

if [ $# -eq 0 ]; then
	dockerfiles=$(find * -type f -name Dockerfile)
else
	dockerfiles=$1
fi

for i in $dockerfiles; do
	dir_name=$(dirname `echo $i`)
	image_name=acceleratorbase/example-$dir_name
	docker buildx build \
		--platform=`cat $dir_name/.platform` \
		-t $image_name \
		-f $i $dir_name \
		--push
done
