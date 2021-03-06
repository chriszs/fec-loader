#!/bin/bash

set -euo pipefail

for file in $(find $1 -name "*.fec");
do
	curl -s "https://docquery.fec.gov/dcdev/posted/$(basename $file)" | gzip -9 > $2"$(basename $file).gz"
done
