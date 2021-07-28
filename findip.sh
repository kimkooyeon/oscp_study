#!/bin/bash

for hostname in $(cat out.txt); do
host $hostname | grep "has address"
done
