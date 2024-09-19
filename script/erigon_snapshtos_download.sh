#!/bin/bash
webseed_url=https://pub-60a193f9bd504900a520f4f260497d1c.r2.dev/bsc
snapshot_content=$(curl -s $webseed_url/manifest.txt)
IFS=$'\n'
jq_str='{}'

for file_name in $snapshot_content; do
    if [[ $file_name == *.torrent ]]; then
        continue
    fi
    target_dir=snapshots
    if [[ $(dirname "$file_name") != "." ]]; then
        target_dir=snapshots/$(dirname "$file_name")
    fi
    jq_str=$(echo $jq_str | jq --arg target_dir "$target_dir" --arg url "$webseed_url/$file_name" -c '.[$target_dir] += [$url]' -c)
done


for key in $(echo $jq_str | jq -r 'keys[]'); do
    jq_str=$(echo $jq_str | jq --arg arg_key "$key" '.[$arg_key] |= unique')
done

echo $jq_str | jq > erigon_snapshots.json

for key in $(jq -r 'keys[]' < erigon_snapshots.json); do
    jq -r --arg arg_key "$key" '.[$arg_key][]' < erigon_snapshots.json > _download_list.txt
    mkdir -p $key
    aria2c -i _download_list.txt -d $key -x 16 -s 16
done

rm -f _download_list.txt
