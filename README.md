# *bsc-snapshots*


- *[Geth](#geth)*
    - *[Geth fast node](#geth-fast-node)*
    - *[Geth full node](#geth-full-node)*
- *[Erigon](#erigon)*
    - *[Erigon fast node](#erigon-fast-node)*
- *[How to download](#how-to-download)*
    - *[pipeline download and extract](#pipeline-download-and-extract)*
    - *[multithreaded download](#multithreaded-download)*

## Geth
### Geth fast node

| Field |Value |
| --- | --- |
| Version | [v1.4.14](https://github.com/bnb-chain/bsc/releases/tag/v1.4.14) |
| Block | [42017852](https://bscscan.com/block/42017852) (Sep-06-2024 01:37:31 PM +UTC) |
| Link | `https://snapshots.48.club/geth.fast.42017852.tar.zst` |
| Size | 318.12G <-> 350.53G |
| SHA256 | `2cd12e6b3d24acf67f9e6cbf8487d9c46a5ba968d5caa5961774730e7fd822b5` |
| Flags | `--history.transactions=90000 --syncmode=full --db.engine=pebble --tries-verify-mode=none` |
| Disk Suggestion | Minimum(NVMe ≥ 500G), Suggestion(NVMe ≥ 1T)|

[Back to TOC](#bsc-snapshots)

### Geth full node

| Field |Value |
| --- | --- |
| Version | [v1.4.14](https://github.com/bnb-chain/bsc/releases/tag/v1.4.14) |
| Block | [42009486](https://bscscan.com/block/42009486) (Sep-06-2024 06:38:22 AM +UTC) |
| Link | `https://snapshots.48.club/geth.full.42009486.tar.zst` |
| Size | 869.02G <-> 950.28G |
| SHA256 | `663ddb36a69d8c5af9edccf7c9b85aed78960071edc8f4f10472a59761815718` |
| Flags | `--history.transactions=90000 --syncmode=full --db.engine=pebble` |
| Disk Suggestion | Minimum(NVMe ≥ 1.2T), Suggestion(NVMe ≥ 2T)|

[Back to TOC](#bsc-snapshots)

## Erigon
### Erigon fast node

| Field |Value |
| --- | --- |
| Version | [v1.2.15](https://github.com/node-real/bsc-erigon/releases/tag/v1.2.15) |
| Tips | Comimg sooooon! |

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

[Back to TOC](#bsc-snapshots)
