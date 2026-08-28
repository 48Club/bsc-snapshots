# *bsc-snapshots*

- *[Snapshots](#snapshots)*
- *[Incremental Snapshots](#incremental-snapshots)*
- *[User Guide](#user-guide)*
## Snapshots

Snapshots of the BSC mainnet, containing complete block data, suitable for quickly starting a node.

*Startup requires flags or environment variables provided in data.json.*

*Geth Snapshots are compatible with Geth v1.7.3 and above.*

| File | md5 | Size |
| --- | --- | --- |
| [geth.fast.118560000.tar.zst](https://complete.snapshots.48.club/geth.fast.118560000.tar.zst) | `5b4c314247a0d01924425d2cfb635c7c` | 439.37G |
| [geth.full.118560000.tar.zst](https://complete.snapshots.48.club/geth.full.118560000.tar.zst) | `04c2209974167a2b4de4442214406059` | 1290.99G |
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
