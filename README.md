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
| Version | [v1.4.11](https://github.com/bnb-chain/bsc/releases/tag/v1.4.11) |
| Block | [40684478](https://bscscan.com/block/40684478) (Jul-22-2024 03:25:16 AM +UTC) |
| Link | `https://snapshots.48.club/pbss.fast.40684478.tar.zst` |
| Size | 316.20G <-> 348.86G |
| SHA256 | `4b60b4bf7263baefaaa79f1e02b772fbd4bb0994c3156506ecf9a6d5a6ebf636` |
| Flags | `--history.transactions=90000 --syncmode=full --db.engine=pebble --tries-verify-mode=none` |
| Disk Suggestion | Minimum(NVMe ≥ 500G), Suggestion(NVMe ≥ 1T)|

[Back to TOC](#bsc-snapshots)

### Geth full node

| Field |Value |
| --- | --- |
| Version | [v1.4.14](https://github.com/bnb-chain/bsc/releases/tag/v1.4.14) |
| Block | [41723605](https://bscscan.com/block/41723605) (Aug-27-2024 07:35:47 AM +UTC) |
| Link | `https://snapshots.48.club/geth.full.41723605.tar.zst` |
| Size | 867.71G <-> 948.75G |
| SHA256 | `d218463e0d50f35690c5ccfd2dff52efd8506fd0383baf156b12f7edde71970e` |
| Flags | `--history.transactions=90000 --syncmode=full --db.engine=pebble` |
| Disk Suggestion | Minimum(NVMe ≥ 1.2T), Suggestion(NVMe ≥ 2T)|

[Back to TOC](#bsc-snapshots)

## Erigon
### Erigon fast node

| Field |Value |
| --- | --- |
| Version | [v1.2.14](https://github.com/node-real/bsc-erigon/releases/tag/v1.2.14) |
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
