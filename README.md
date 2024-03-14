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
| Version | [v1.3.10](https://github.com/bnb-chain/bsc/releases/tag/v1.3.10) |
| Block | [36947148](https://bscscan.com/block/36947148) (Mar-14-2024 12:14:41 AM +UTC) |
| Link | `https://snapshots.48.club/geth.pbss.36947148.tar.zst` |
| Size | 812.21G <-> 888.47G |
| SHA256 | `2b322dd55c5d2924f44f49ad27fae2679fd5bb66de9962d33ab799d547b2af1b` |
| Flags | `--history.transactions=0 --syncmode=full --db.engine=pebble --state.scheme=path` |
| Disk Suggestion | Minimum(NVMe ≥ 1T), Suggestion(NVMe ≥ 2T)|

[Back to TOC](#bsc-snapshots)

### Geth fast node

| Field |Value |
| --- | --- |
| Version | [v1.3.10](https://github.com/bnb-chain/bsc/releases/tag/v1.3.10) |
| Block | [36922701](https://bscscan.com/block/36922701) (Mar-13-2024 03:49:59 AM +UTC) |
| Link | `https://snapshots.48.club/geth.fast.36922701.tar.zst` |
| Size | 213.38G <-> 224.37G |
| SHA256 | `fe223a7a25678eb987e283c84654c7b74494e31a399cdbaa93f0db06a6f4d24c` |
| Flags | `--history.transactions=0 --syncmode=full --db.engine=pebble --tries-verify-mode=none` |
| Disk Suggestion | Minimum(NVMe ≥ 300G), Suggestion(NVMe ≥ 1T)|

[Back to TOC](#bsc-snapshots)

### Geth full node

| Field |Value |
| --- | --- |
| Version | [v1.3.10](https://github.com/bnb-chain/bsc/releases/tag/v1.3.10) |
| Block | [36922701](https://bscscan.com/block/36922701) (Mar-13-2024 03:49:59 AM +UTC) |
| Link | `https://snapshots.48.club/geth.full.36922701.tar.zst` |
| Size | 705.00G <-> 778.01G |
| SHA256 | `b5b5c2aa27b53be4d1f59206f2770e820ef2e1fcb936c1e4244f5314094fa9d2` |
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
