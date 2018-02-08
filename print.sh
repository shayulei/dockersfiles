#!/bin/bash
x=0
echo "|id|tag|update time|pull command|"
echo "|--|---|-----------|------------|"
for tag in `cat tags`;do
    let "x+=1"
    if (("$x" < 10));then
        echo "|0$x|$tag|2018.1.5|docker pull dolphintwo/${PWD##*/}:$tag|"
    else
        echo "|$x|$tag|2018.1.5|docker pull dolphintwo/${PWD##*/}:$tag|"
    fi
done