#!/bin/bash

set -eo pipefail

cd RazorpayIOS/

overallUt="939:     Executed 97 tests, with 0 failures (0 unexpected) in 0.140 (0.160) seconds"
trimPrefix= exec overallUt  | cut -d " " -f 9-
trimSuffix=${{trimPrefix | cut -f1 -d"("}}
echo trimSuffix
