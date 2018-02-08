#!/bin/bash
for tag in `cat tags`;do
    mkdir $tag
    echo "FROM gcr.io/google-containers/${PWD##*/}:$tag" > $tag/Dockerfile
done

echo ""

for tag in `cat tags`;do
    echo "${PWD##*/}/$tag"
done