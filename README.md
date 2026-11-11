# *bsc-snapshots*

- *[Snapshots](#snapshots)*
- *[Incremental Snapshots](#incremental-snapshots)*
- *[User Guide](#user-guide)*
## Snapshots

Snapshots of the BSC mainnet, containing complete block data, suitable for quickly starting a node.

*Startup requires flags or environment variables provided in data.json.*

*Geth Snapshots are compatible with Geth v1.8.2 and above.*

| File | md5 | Size |
| --- | --- | --- |
| [geth.fast.132960000.tar.zst](https://complete.snapshots.48.club/geth.fast.132960000.tar.zst) | `6fe6aa2cdd381c2900cd5a0dd5314685` | 471.28G |
| [geth.full.132960000.tar.zst](https://complete.snapshots.48.club/geth.full.132960000.tar.zst) | `3a7f1de6267d07a1a6bac55a62489075` | 1417.18G |
| [reth.fast.115991001.tar.zst](https://complete.snapshots.48.club/reth.fast.115991001.tar.zst) | `0e9b5b238c68c7b8185ce44424acb098` | 834.54G |


### User Guide

```bash
# Using 48Club snapshots for the first time
# Install dependencies, using Debian 12 as an example
sudo apt install -yfqq aria2 zstd pv openssl tar screen
# Download the snapshot
aria2c -s4 -x4 -k1024M -o snapshot.tar.zst $SNAPSHOT_URL
# Optional: Verify file integrity
pv snapshot.tar.zst | openssl md5
# Extract the snapshot
pv snapshot.tar.zst | tar --use-compress-program="zstd -d --long=31" -xf -

# Stop the node
killall -9 geth ## or killall -9 erigon
# Start the node, the flags parameters can be obtained from the data.json file.
geth --datadir=$new_snapshot_path $flags...
```
