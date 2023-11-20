# *bsc-snapshots*


- *[Geth](#geth)*
    - *[Geth fast node](#geth-fast-node)*
    - *[Geth full node](#geth-full-node)*
- *[Erigon](#erigon)*
    - *[Erigon fast node](#erigon-fast-node)*
    - *[Erigon archive node](#erigon-archive-node)*
        - *[BSC mainnet](#bsc-mainnet)*
        - *[BSC testnet](#bsc-testnet)*
- *[How to download](#how-to-download)*
    - *[pipeline download and extract](#pipeline-download-and-extract)*
    - *[multithreaded download](#multithreaded-download)*
    - *[download in parts](#download-in-parts)*

## Geth
### Geth fast node

| Field |Value |
| --- | --- |
| Version | [develop@8b94dd](https://github.com/bnb-chain/bsc/tree/8b94dd6b5929f26c24701ed5074b490e7d4e23ab) |
| Block | [33660414](https://bscscan.com/block/33660414) (Nov-20-2023 02:40:35 PM +UTC) |
| Link | `https://snapshots.48.club/geth.fast.33660414.tar.zst` |
| Size | 346.82G <-> 400.02G |
| SHA256 | `5e74f4fc5a667f63c3187d3fd0263ff170014730abffd398b92adf2acfedb7ca` |
| Flags | `--history.transactions=0 --syncmode=full --tries-verify-mode=none --pruneancient=true --db.engine=pebble` |
| Disk Suggestion | Minimum(NVMe ≥ 500G), Suggestion(NVMe ≥ 1T)|

[Back to TOC](#bsc-snapshots)

### Geth full node

| Field |Value |
| --- | --- |
| Version | [v1.3.1-beta](https://github.com/bnb-chain/bsc/releases/tag/v1.3.1-beta) |
| Block | [33620169](https://bscscan.com/block/33620169) (Nov-19-2023 05:01:22 AM +UTC) |
| Link | `https://snapshots.48.club/geth.full.33620169.tar.zst` |
| Size | 643.89G <-> 726.18G |
| SHA256 | `84342a72c391292ffd8a981ca796efc59393386612ad0b7a48a3d733f915dfe3` |
| Flags | `--history.transactions=0 --syncmode=full --tries-verify-mode=local --db.engine=pebble` |
| Disk Suggestion | Minimum(NVMe ≥ 1T), Suggestion(NVMe ≥ 1.3T)|

[Back to TOC](#bsc-snapshots)

## Erigon

### Erigon torrents files
| Field |Value |
| --- | --- |
| Usage | [#82](https://github.com/48Club/bsc-snapshots/issues/82) |
| Link | `https://snapshots.48.club/erigon.torrents.20231109.tar.zst` |
| Size | 674.50G <-> 829.73G |
| SHA256 | `05c3050b89a7817c11c59fad7151700a34dc56a7c78d7cb19bbd2ffc9865fced`|

### Erigon fast node

| Field |Value |
| --- | --- |
| Version | [v1.1.9](https://github.com/node-real/bsc-erigon/releases/tag/v1.1.9) |
| Block | [31306137](https://bscscan.com/block/31306137) (Aug-30-2023 01:52:39 PM +UTC) |
| Link | `https://snapshots.48.club/erigon.fast.31306137.tar.zst` |
| Size | 390.01G <-> 818.00G |
| SHA256 | `dab42346af7cabb59a99d85855d8f805393988b0520b3268ccf98e89cf3a5e6d`|
| Flags | `--chain=bsc --prune=hrtc --db.pagesize=16k` |
| Disk Suggestion | Minimum(NVMe ≥ 1.7T), Suggestion(NVMe ≥ 2.5T)|

[Back to TOC](#bsc-snapshots)

### Erigon archive node

#### BSC mainnet

| Field |Value |
| --- | --- |
| Version | | Version | [v1.1.9](https://github.com/node-real/bsc-erigon/releases/tag/v1.1.9) |
| Block | [33620326](https://bscscan.com/block/33620326) (Nov-19-2023 05:09:13 AM +UTC) |
| List | [erigon_archive.list](list/erigon_archive.list?raw=1) |
| Size | 2382.82G <-> 7404.00G |
| SHA256 | `1e2899895543b04aaf31bb6cb953c07a6acc4d67b81798a9c9fee50b66aad468` |
| Flags | `--chain=bsc --db.pagesize=16k` |
| Disk Suggestion | Minimum(NVMe ≥ 8.0T), Suggestion(NVMe ≥ 10T)|

[Back to TOC](#bsc-snapshots)

#### BSC testnet

| Field |Value |
| --- | --- |
| Version | [v1.1.4](https://github.com/node-real/bsc-erigon/releases/tag/v1.1.4) |
| Block | [31436344](https://testnet.bscscan.com/block/31436344) (Jul-10-2023 04:04:58 PM +UTC) |
| Link | `https://snapshots.48.club/erigon.testnet.31436344.tar.zst` |
| Size | 160.59G <-> 594.00G |
| SHA256 | `e8a8484177753c16bfc5711fb06d69dc9bc0c51ed41280cee074ae4554a71e60` |
| Flags | `--chain=chapel --db.pagesize=16k` |
| Disk Suggestion | Minimum(NVMe ≥ 700G), Suggestion(NVMe ≥ 1T)|

[Back to TOC](#bsc-snapshots)

## How to download
### pipeline download and extract

```bash
wget $Link -O - | zstd -cd | tar xf -
```

### multithreaded download

```bash
aria2c -s4 -x4 -k1024M $Link -o $save_path
zstd -cd $save_path | tar xf -
openssl sha256 $save_path # checksum verification, optional
```

### download in parts

```bash
mkdir parts && cd parts
wget $List -O url.list
aria2c -s4 -x4 -k1024M -i url.list # multithreaded download
## or
# wget -i url.list
## checksum verification, optional
# cat erigon.$TYPE.$BLOCK.tar.zst.part_* | openssl sha256
## if checksum is not matched, try to check parts one by one
## you can get checksum of parts from list/erigon_$TYPE.sha256
cat erigon.$TYPE.$BLOCK.tar.zst.part_* | zstd -cd | tar xf -
```

[Back to TOC](#bsc-snapshots)
