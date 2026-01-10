# *bsc-snapshots*

- *[Snapshots](#snapshots)*
- *[Incremental Snapshots](#incremental-snapshots)*
- *[User Guide](#user-guide)*
## Snapshots

Snapshots of the BSC mainnet, containing complete block data, suitable for quickly starting a node.

*Startup requires flags or environment variables provided in data.json.*

*Geth Snapshots are compatible with Geth v1.6.4 and above.*

| File | md5 | Size |
| --- | --- | --- |
| [geth.fast.81600000.tar.zst](https://complete.snapshots.48.club/geth.fast.81600000.tar.zst) | `2d42ead649816c08f7f9d9935183436d` | 529.16G |
| [geth.full.81600000.tar.zst](https://complete.snapshots.48.club/geth.full.81600000.tar.zst) | `1f661649a4bc0bbcf748caf3d6bd8752` | 1174.95G |
| [reth.full.70572117.tar.zst](https://complete.snapshots.48.club/reth.full.70572117.tar.zst) | `d427e0946d9a65865db4de9f1fabaf41` | 4288.60G |
| [reth.archive.70012269.tar.zst](https://complete.snapshots.48.club/reth.archive.70012269.tar.zst) | `021dc5cba6b41e3567d0198f099e282a` | 9,700.72G |

## Incremental Snapshots

The BSC-geth test function is currently unstable and may frequently fail. This issue is known, but no solution is provided for now.


~~Incremental snapshots is a feature that allow you to download only the changes made since the last snapshot, significantly reducing the amount of data you need to transfer.~~

~~If this is your first time using the `48Club` snapshots, start by downloading the full snapshot; thereafter, use incremental snapshots to keep your node up to date.~~

~~To enable incremental snapshots, use the `--incr.use-remote` flag, set the remote URL with `--incr.remote-url="https://incremental-snap.48.club/48club-full-incr"` and specify a directory for storing incremental data via `--incr.datadir`.~~


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
