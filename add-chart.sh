#!/bin/bash

BASEDIR=$(dirname "$0")

echo "USAGE $0 [Path to the chart]"

if helm package $1 -d $BASEDIR ; then
	cd $BASEDIR && helm repo index .
	cd $BASEDIR && git add -A && git commit -m "add new chart" && git push
else
	echo "Error chart not pushed"
fi
