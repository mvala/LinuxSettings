#!/bin/bash

if [ -z "$1" ];then
  echo "Modules : "
  for m in $(ls -1 | grep -v init | grep -v README);do
    echo "    $m"
  done
  echo ""
  echo "mvala's default :"
  echo "    ./init_settings.sh common bash mc git astyle root"
  exit 0
fi

echo "Doing init ..."
MY_DO_CLEAR="0"
MY_DO_APPLY="1"
MY_SYNCS=""

if [ "$1" = "all" ];then
  MY_SYNCS="common mc bash vim"
  MY_SYNCS="$MY_SYNCS git root"
else 
  MY_SYNCS="$*"
fi

# clearing ...
for MY_SYNC in $MY_SYNCS;do
  if [ -d "$MY_SYNC" ];then
    MY_PWD=`pwd`
    cd $MY_SYNC
    if [ $MY_DO_CLEAR = "1" -a -f clear.sh ];then
      echo " Clearing $MY_SYNC ..."
      ./clear.sh
    fi
    cd $MY_PWD
  fi
done

# appling
for MY_SYNC in $MY_SYNCS;do
  if [ -d "$MY_SYNC" ];then
    MY_PWD=`pwd`
    cd $MY_SYNC
    if [ $MY_DO_APPLY = "1" -a -f apply.sh ];then
      echo " Applying $MY_SYNC ..."
      ./apply.sh
    fi
    cd $MY_PWD
  fi
done

