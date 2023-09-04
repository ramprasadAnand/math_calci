#!/bin/bash

set -eo pipefail

overallUt=`grep -n "Executed" "$1" | tail -1`
trimPrefix=`echo $overallUt  | cut -d " " -f 2-`
trimSuffix=`echo $trimPrefix | cut -f1 -d"("`
echo $trimSuffix
