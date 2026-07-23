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
| [geth.fast.111360000.tar.zst](https://complete.snapshots.48.club/geth.fast.111360000.tar.zst) | `623e979bd2c891da5cf42fa0726d9202` | 413.11G |
| [geth.full.111360000.tar.zst](https://complete.snapshots.48.club/geth.full.111360000.tar.zst) | `8468af6e742b4f7ed53dab6ef54f95e2` | 1233.75G |
| [reth.fast.110146784.tar.zst](https://complete.snapshots.48.club/reth.fast.110146784.tar.zst) | `58565b58c56794d7bf481aa720a95757` | 680.52G |


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
