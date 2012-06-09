#!/bin/bash

if [ -z "$1" ];then
  echo "Modules : "
  for m in $(ls -1 | grep -v init | grep -v README);do
    echo "    $m"
  done
  exit 0
fi

echo "Doing init ..."
MY_DO_CLEAR="1"
MY_DO_APPLY="1"
MY_SYNCS=""

if [ "$1" = "all" ];then
  MY_SYNCS="common kde flash pulse astyle google-chrome mc bash"
  MY_SYNCS="$MY_SYNCS git root gimp"
else 
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
