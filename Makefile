SHELL := /bin/bash
FILES = \
		akamai-v4-ip-ranges.txt \
		akamai-v6-ip-ranges.txt \
		apple-icloud-private-relay-ip-ranges.csv \
		aws-ip-ranges.json \
		cloudflare-v4-ip-ranges.txt \
		cloudflare-v6-ip-ranges.txt \
		digitalocean.csv \
		fastly-ip-ranges.json \
		github-ip-ranges.json \
		google-cloud-ip-ranges.json \
		linode.txt \
		Makefile \
		microsoft-azure-ip-ranges.json \
		oracle-cloud-ip-ranges.json \
		README.md \
		make_cloud_cidr.sh

cloud_cidr.tsv:
	bash make_cloud_cidr.sh | grep -v ":" | sort -u > cloud_cidr.tsv

