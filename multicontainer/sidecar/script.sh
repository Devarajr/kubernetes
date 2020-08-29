#!/bin/bash

while true 
do
   aws s3 sync s3://kubemedia /data
   sleep 60
done
