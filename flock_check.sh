#!/bin/sh
(
 flock -n 9
 if [ $? -eq 1 ] ; then
  echo "file locked"
  exit 1
 fi
 echo "file not locked"
) 9<$INSTALL_PREFIX/var/lib/lock_file.lock
