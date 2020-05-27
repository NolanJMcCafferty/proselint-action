#!/bin/sh

error=0
find . -name '*.md' -exec proselint {} + || error=1

echo $error
exit $error
