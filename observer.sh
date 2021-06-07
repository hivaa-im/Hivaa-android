#!/bin/sh

FILES="
vector/src/main/res/xml/*
vector/src/main/res/values/strings.xml
vector/src/main/res/values/config.xml
"

read -r -p "Enter first branch name [master] : " BRANCH1
read -r -p "Enter second branch name [vector-master] : " BRANCH2
BRANCH1=${BRANCH1:-master}
BRANCH2=${BRANCH2:-vector-master}
git diff "$BRANCH1" "$BRANCH2"  -- $FILES