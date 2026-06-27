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
| [geth.fast.106560000.tar.zst](https://complete.snapshots.48.club/geth.fast.106560000.tar.zst) | `8251db95a27a03e8a8c7e7901c18599f` | 400.90G |
| [geth.full.106560000.tar.zst](https://complete.snapshots.48.club/geth.full.106560000.tar.zst) | `1dc97bf0ae84df8eeef5205cc100f621` | 1188.32G |
| [reth.full.70572117.tar.zst](https://complete.snapshots.48.club/reth.full.70572117.tar.zst) | `d427e0946d9a65865db4de9f1fabaf41` | 4288.60G |
| [reth.archive.70012269.tar.zst](https://complete.snapshots.48.club/reth.archive.70012269.tar.zst) | `021dc5cba6b41e3567d0198f099e282a` | 9,700.72G |


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
