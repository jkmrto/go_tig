#!/bin/bash
for i in $(seq 1 3600)
do
   echo "test value=$i"
   echo "test value=$i"> /dev/tcp/localhost/8094
   sleep 1
done
