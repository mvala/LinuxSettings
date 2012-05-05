#!/bin/bash

echo "Doing init ..."
MY_DO_CLEAR="1"
MY_DO_APPLY="1"

MY_SYNCS="common kde flash pulse astyle google-chrome mc"
MY_SYNCS="$MY_SYNCS git root gimp"

if [ -n "$*" ];then
  MY_SYNCS="$*"
fi

for MY_SYNC in $MY_SYNCS;do
  if [ -d "$MY_SYNC" ];then
    echo "=== Sync '$MY_SYNC' ==="
    MY_PWD=`pwd`
    cd $MY_SYNC
    if [ $MY_DO_CLEAR = "1" -a -f clear.sh ];then
      echo " Clearing .."
      ./clear.sh
    fi
    if [ $MY_DO_APPLY = "1" -a -f apply.sh ];then
      echo " Applying ..."
      ./apply.sh
    fi
    cd $MY_PWD
  fi
done