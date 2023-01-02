#!/bin/bash

set -eo pipefail

overallUt=`grep -n "Executed" ./log_results/xcodebuild.log | tail -1`
trimPrefix=`echo $overallUt  | cut -d " " -f 2-`
trimSuffix=`echo $trimPrefix | cut -f1 -d"("`
echo $trimSuffix
