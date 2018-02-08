#!/bin/bash
for repo in `cat repositories`;do
    mkdir $repo
    touch $repo/tags
    cp ./generator.sh $repo/
    cp ./print.sh $repo/
    touch $repo/README.md
done
