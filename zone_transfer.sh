#!/bin/bash

# Check if argument was given. If not print usage
if [ -z "$1" ]; then
        echo "Usage:"
        echo "$0 abc.com"
        exit 0
fi

for server in $(host -t ns $1 | cut -d" " -f4); do
host -l kim.sg $server;
done
