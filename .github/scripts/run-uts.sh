#!/bin/bash

set -eo pipefail

overallUt="939:     Executed 97 tests, with 0 failures (0 unexpected) in 0.140 (0.160) seconds"
echo $overallUt
trimPrefix=`echo $overallUt  | cut -d " " -f 5-`
echo $trimPrefix
trimSuffix=`echo $trimPrefix | cut -f3 -d"("`
echo $trimSuffix
