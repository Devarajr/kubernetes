#!/bin/bash
while true
do
nc -v chnsrc 8000
  if [ $? -eq 0 ]
  then
        exit
  else
     sleep 2
  fi

done
