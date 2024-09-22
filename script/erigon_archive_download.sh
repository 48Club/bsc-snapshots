#!/bin/bash

curl -skL https://github.com/48Club/bsc-snapshots/blob/main/script/erigon_snapshots.json?raw=1 > erigon_snapshots.json


for key in $(jq -r 'keys[]' < erigon_snapshots.json); do
    jq -r --arg arg_key "$key" '.[$arg_key][]' < erigon_snapshots.json > _download_list.txt
    mkdir -p $key
    aria2c -i _download_list.txt -d $key -x 16 -s 16
done

rm -f _download_list.txt erigon_snapshots.json