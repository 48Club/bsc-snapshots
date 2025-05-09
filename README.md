# *bsc-snapshots*

- *[Full Snapshots](#full-snapshots)*
- *[Incremental Snapshots](#incremental-snapshots)*
- *[User Guide](#user-guide)*
- *[简体中文](/README_zh-CN.md)*

## Full Snapshots

Full snapshots of the BSC mainnet, containing complete block data, suitable for quickly starting a node.

| File | md5 | Size |
| --- | --- | --- |
| [geth.fast.47532370.tar.zst](https://complete.snapshots.48.club/geth.fast.47532370.tar.zst) | `9bf23c68f6f4dc761638ed6fe53c83f6` | 239.99G |
| [geth.full.47532370.tar.zst](https://complete.snapshots.48.club/geth.full.47532370.tar.zst) | `5feb4a40cb391cd1e1e739499938e879` | 644.97G |
| [erigon.45809895.tar.zst](https://complete.snapshots.48.club/erigon.45809895.tar.zst) | `c29e56b7a44df4b098bf1e809f06c1b0` | 199.37G |


## Incremental Snapshots

_⚠️Note: Incremental snapshot service is a 48SoulPoint membership service_


BSC mainnet incremental snapshots allow you to quickly update to the latest snapshot from any version within the last 30 days.

You need to get the patch file for updating to the latest version from https://access.snapshots.48.club.


### User Guide

We recommend users to use file systems like `xfs` that support `reflink`, allowing you to create and update snapshots without taking up additional disk space.

This tutorial uses snapshot version `45012199` as an example to start a new node. Please adapt accordingly. If it's difficult to understand, use the full snapshot instead.


```bash
# Using 48Club snapshots for the first time
# Install dependencies, using Debian 12 as an example
sudo apt install -y aria2 zstd duplicity
# Download the snapshot
aria2c -s4 -x4 -k1024M https://snapshots.48.club/geth.fast.45012199.tar.zst
# Optional: Verify file integrity
openssl md5 geth.fast.45012199.tar.zst
# Extract the snapshot
zstd -cd geth.fast.45012199.tar.zst | tar xf -

# Create your working directory
mkdir -p bsc_node/geth
# Copy the snapshot to the working directory
cp -r geth.fast/geth/chaindata bsc_node/geth/
# If your file system supports reflink, the cp command will complete quickly and without additional disk space usage

# For systems which doesn't support reflinks use the following commands
# mkdir bsc_node/geth/chaindata
# rsync -a --progress geth.fast/geth/chaindata/ bsc_node/geth/chaindata/

# Check your disk space
du -h bsc_node/geth geth.fast/geth
64K	bsc_node/geth/chaindata/ancient/state
20G	bsc_node/geth/chaindata/ancient/chain
20G	bsc_node/geth/chaindata/ancient
378G	bsc_node/geth/chaindata
378G	bsc_node/geth
64K	geth.fast/geth/chaindata/ancient/state
20G	geth.fast/geth/chaindata/ancient/chain
20G	geth.fast/geth/chaindata/ancient
378G	geth.fast/geth/chaindata
378G	geth.fast/geth
# Start the node, the flags parameters can be obtained from the data.json file.
geth --datadir bsc_node $flags

# To update to block 45329863, replace $download_link with your download link
aria2c -s4 -x4 -k1024M $download_link -o geth_fast_45012199_to_45329863.patch
# Optional: Verify file integrity
openssl md5 geth_fast_45012199_to_45329863.patch
# Patch the snapshot
rdiffdir patch geth.fast geth_fast_45012199_to_45329863.patch

# Stop the node
killall geth

# Delete the old working directory
rm -rf bsc_node/geth/chaindata # if you used rsync, you can skip this step
# Replace with the patched data directory
cp -r geth.fast/geth/chaindata bsc_node/geth/
# For systems which doesn't support reflinks use the following commands
# rsync -a --progress geth.fast/geth/chaindata/ bsc_node/geth/chaindata/

# Start the patched node
geth --datadir bsc_node $flags

# Note: Your geth.fast directory version is now 45329863
#      For the next update, use geth_fast_45329863_to_xxxxxx.patch
#      Do not perform any operations in the geth.fast directory to avoid affecting the update
```
