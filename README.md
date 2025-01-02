# *bsc-snapshots*

- *[Full Snapshots](#full-snapshots)*
- *[Incremental Snapshots](#incremental-snapshots)*
- *[User Guide](#user-guide)*
- *[简体中文](/README_zh-CN.md)*

## Full Snapshots

Full snapshots of the BSC mainnet, containing complete block data, suitable for quickly starting a node.

| File | md5 | Size |
| --- | --- | --- |
| [geth.fast.45012199.tar.zst](https://complete.snapshots.48.club/geth.fast.45012199.tar.zst) | `f11f5ec9afc7ae67d69e28060b6c3dad` | 324.26G |
| [geth.full.45003222.tar.zst](https://complete.snapshots.48.club/geth.full.45003222.tar.zst) | `9cd00a2ecba312692cfcbb86433962e4` | 823.79G |
| [erigon.45363273.tar.zst](https://complete.snapshots.48.club/erigon.45363273.tar.zst) | `054c93b4617550bfcf61cb0be5566efb` | 346.31G |


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
# Start the node
geth --datadir bsc_node $flags

# To update to block 45329863, replace $download_link with your download link
wget $download_link -O geth_fast_45012199_to_45329863.patch
# Optional: Verify file integrity
openssl md5 geth_fast_45012199_to_45329863.patch
# Patch the snapshot
rdiffdir patch geth.fast geth_fast_45012199_to_45329863.patch

# Stop the node
killall geth

# Delete the old working directory
rm -rf bsc_node/geth/chaindata
# Replace with the patched data directory
cp -r geth.fast/geth/chaindata bsc_node/geth/
# Start the patched node
geth --datadir bsc_node $flags

# Note: Your geth.fast directory version is now 45329863
#      For the next update, use geth_fast_45329863_to_xxxxxx.patch
#      Do not perform any operations in the geth.fast directory to avoid affecting the update
```