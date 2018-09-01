#!/bin/sh
# Manifest writer

#	Takes input as space- or line-separated list of entities,
#	writes them to a file as a line-separated list

#	$1: manifest name

MANIFEST_HEADER="#<manifest> @title:\"$1\""


# 1 read stdin,
INPUT=$(cat /dev/stdin)

# 2 write to file

echo $MANIFEST_HEADER > $1.manifest
echo "" >> $1.manifest
#echo "manifest body:"
for e in $INPUT; do echo $e >> $1.manifest; done