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
| Version | [v1.3.5](https://github.com/bnb-chain/bsc/releases/tag/v1.3.5) (Must use v1.3.5 version [#132](https://github.com/48Club/bsc-snapshots/issues/132)) |
| Block | [35485953](https://bscscan.com/block/35485953) (Jan-23-2024 04:14:42 AM +UTC) |
| Link | `https://snapshots.48.club/geth.pbss.35485953.tar.zst` |
| Size | 779.61G <-> 915.99G |
| SHA256 | `fa4c23d35155328b27174d898d3606bfdd6732fcf0c35c45b888a8a7083ae3c7` |
| Flags | `--history.transactions=0 --syncmode=full --tries-verify-mode=local --pruneancient --db.engine=pebble --state.scheme=path` |
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
| Version | [v1.3.7](https://github.com/bnb-chain/bsc/releases/tag/v1.3.7) |
| Block | [35238461](https://bscscan.com/block/35238461) (Jan-14-2024 01:26:17 PM +UTC) |
| Link | `https://snapshots.48.club/geth.full.35238461.tar.zst` |
| Size | 1080.31G <-> 1182.82G |
| SHA256 | `88f89c76badfff5ef453c380e796219cdd0014394e48dcc00a36ec469c348f0b` |
| Flags | `--history.transactions=0 --syncmode=full --tries-verify-mode=local --pruneancient --db.engine=pebble` |
| Disk Suggestion | Minimum(NVMe ≥ 2T), Suggestion(NVMe ≥ 3T)|

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
