#!/bin/bash

set -eo pipefail

overallUt="939:     Executed 97 tests, with 0 failures (0 unexpected) in 0.140 (0.160) seconds"
trimPrefix=`echo $overallUt  | cut -d " " -f 2-`
trimSuffix=`echo $trimPrefix | cut -f1 -d"("`
echo $trimSuffix
