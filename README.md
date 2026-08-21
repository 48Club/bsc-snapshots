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
| [geth.fast.117120000.tar.zst](https://complete.snapshots.48.club/geth.fast.117120000.tar.zst) | `2d558cc26720ba66480a3f992f27fd69` | 447.55G |
| [geth.full.117120000.tar.zst](https://complete.snapshots.48.club/geth.full.117120000.tar.zst) | `adb4a3adb0904575ae7f5a0e60798231` | 1302.76G |
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
