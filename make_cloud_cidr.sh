#!/bin/bash

set -eu -o pipefail

jq -rc .regions[].cidrs[].cidr oracle-cloud-ip-ranges.json
jq -rc .values[].properties.addressPrefixes[] microsoft-azure-ip-ranges.json
cat linode.txt | cut -d , -f1 | grep -v ^#
jq -rc .addresses[] fastly-ip-ranges.json
cat digitalocean.csv | cut -d , -f1
cat cloudflare-v4-ip-ranges.txt
jq -rc .prefixes[].ip_prefix aws-ip-ranges.json
cat apple-icloud-private-relay-ip-ranges.csv | cut -d , -f 1
cat akamai-v4-ip-ranges.txt

