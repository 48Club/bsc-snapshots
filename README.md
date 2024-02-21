# *bsc-snapshots*


- *[Geth](#geth)*
    - *[Geth full node with pbss](#geth-full-node-with-pbss)*
    - *[Geth fast node](#geth-fast-node)*
    - *[Geth full node](#geth-full-node)*
- *[How to download](#how-to-download)*
    - *[pipeline download and extract](#pipeline-download-and-extract)*
    - *[multithreaded download](#multithreaded-download)*

## Geth
### Geth full node with pbss

| Field |Value |
| --- | --- |
| Version | [v1.3.8](https://github.com/bnb-chain/bsc/releases/tag/v1.3.8) |
| Block | [36290248](https://bscscan.com/block/36290248) (Feb-20-2024 03:45:09 AM +UTC) |
| Link | `https://snapshots.48.club/geth.pbss.36290248.tar.zst` |
| Size | 801.67G <-> 877.04G |
| SHA256 | `92263032e25f55ad03a3bc7723cb7f6d8580b54a495545d439f7ce9f0c33f375` |
| Flags | `--history.transactions=0 --syncmode=full --db.engine=pebble --state.scheme=path` |
| Disk Suggestion | Minimum(NVMe ≥ 1T), Suggestion(NVMe ≥ 2T)|

[Back to TOC](#bsc-snapshots)

### Geth fast node

| Field |Value |
| --- | --- |
| Version | [v1.3.7](https://github.com/bnb-chain/bsc/releases/tag/v1.3.7) |
| Block | [35407303](https://bscscan.com/block/35407303) (Jan-20-2024 10:27:11 AM +UTC) |
| Link | `https://snapshots.48.club/geth.fast.35407303.tar.zst` |
| Size | 367.24G <-> 419.32G |
| SHA256 | `b3d562b9c2c64b22475b9af93ade57b0d3c978a625205a9321e313781e169d7a` |
| Flags | `--history.transactions=0 --syncmode=full --tries-verify-mode=none --pruneancient --db.engine=pebble` |
| Disk Suggestion | Minimum(NVMe ≥ 500G), Suggestion(NVMe ≥ 1T)|

[Back to TOC](#bsc-snapshots)

### Geth full node

| Field |Value |
| --- | --- |
| Version | [v1.3.9](https://github.com/bnb-chain/bsc/releases/tag/v1.3.9) |
| Block | [36318889](https://bscscan.com/block/36318889) (Feb-21-2024 03:39:52 AM +UTC) |
| Link | `https://snapshots.48.club/geth.full.36318889.tar.zst` |
| Size | 676.89G <-> 748.31G |
| SHA256 | `507bc55e1f58bafa8961f604a6daac0ca433b29a8918a6f05ef56fe760951470` |
| Flags | `--history.transactions=0 --syncmode=full --db.engine=pebble` |
| Disk Suggestion | Minimum(NVMe ≥ 1T), Suggestion(NVMe ≥ 3T)|

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
