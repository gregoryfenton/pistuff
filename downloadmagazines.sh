#!/bin/bash
echo "Downloading magazines"

a=~/magpi

mkdir -p "$a"
cd "$a"
for n in seq 1 1 10; do
    f="The-MagPi-issue-$n-en.pdf"
    if [ ! -f "$f" ]; then
        wget "http://www.themagpi.com/en/issue/$n/pdf/" -q -O "$f"
    else
        echo "$f already exists"
    fi
done

