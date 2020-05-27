#!/bin/sh

echo "these are the files:"

ls -a

ls -a ../
ls -a ../../ 

echo "those were the files"
cd ../../

error=0
find . -name '*.md' -exec proselint {} + || error=1

echo $error
exit $error
