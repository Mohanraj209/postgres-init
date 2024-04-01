#!/usr/bin/env bash

while IFS= read -r line; do
  REPO_NAME=$line
  if [ -z $line ]; then
    continue;
  fi
  if [ $REPO_NAME == "otp-manager" ]
  then
  branch=develop
  git clone -b $branch https://github.com/Mohanraj209/$REPO_NAME.git ./repos/$REPO_NAME
  else
  git clone -b $1 https://github.com/mosip/$REPO_NAME.git ./repos/$REPO_NAME
  fi
  done < ./repo-list.txt
