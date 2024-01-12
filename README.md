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
| Version | [v1.3.6](https://github.com/bnb-chain/bsc/releases/tag/v1.3.6) (PBSS + V1.3.7 OOM, please keep version v1.3.6 [#132](https://github.com/48Club/bsc-snapshots/issues/132)) |
| Block | [35092542](https://bscscan.com/block/35092542) (Jan-09-2024 11:37:43 AM +UTC) |
| Link | `https://snapshots.48.club/geth.pbss.35092542.tar.zst` |
| Size | 776.14G <-> 910.00G |
| SHA256 | `46453880846d9ff094bf28d9bf6551d2b39fb1b5fbbc935d9f808f0125bce958` |
| Flags | `--history.transactions=0 --syncmode=full --tries-verify-mode=local --pruneancient --db.engine=pebble --state.scheme=path` |
| Disk Suggestion | Minimum(NVMe ≥ 1T), Suggestion(NVMe ≥ 2T)|

[Back to TOC](#bsc-snapshots)

### Geth fast node

| Field |Value |
| --- | --- |
| Version | [v1.3.7](https://github.com/bnb-chain/bsc/releases/tag/v1.3.7) |
| Block | [35176500](https://bscscan.com/block/35176500) (Jan-12-2024 09:42:30 AM +UTC) |
| Link | `https://snapshots.48.club/geth.fast.35176500.tar.zst` |
| Size | 364.13G <-> 415.32G |
| SHA256 | `8228597a1b46edc47c2059d511f6d9d05b879e667cdd627e9225038dad3cf881` |
| Flags | `--history.transactions=0 --syncmode=full --tries-verify-mode=none --pruneancient --db.engine=pebble` |
| Disk Suggestion | Minimum(NVMe ≥ 500G), Suggestion(NVMe ≥ 1T)|

[Back to TOC](#bsc-snapshots)

### Geth full node

| Field |Value |
| --- | --- |
| Version | [v1.3.7](https://github.com/bnb-chain/bsc/releases/tag/v1.3.7) |
| Block | [35152552](https://bscscan.com/block/35152552) (Jan-11-2024 01:43:01 PM +UTC) |
| Link | `https://snapshots.48.club/geth.full.35152552.tar.zst` |
| Size | 1056.88G <-> 1158.17G |
| SHA256 | `02a627eb5bef7d0362a2a74069465ccb6cade92dba92219e0844d99f16b7ef8f` |
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
