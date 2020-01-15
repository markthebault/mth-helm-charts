#!/bin/bash

BASEDIR=$(dirname "$0")

echo "USAGE $0 [Path to the chart]

helm package $1 -d $BASEDIR
helm repo index .
