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
| Block | [34908794](https://bscscan.com/block/34908794) (Jan-03-2024 02:11:01 AM +UTC) |
| Link | `https://snapshots.48.club/geth.pbss.34908794.tar.zst` |
| Size | 788.59G <-> 927.72G |
| SHA256 | `a322edeaf3c4c8e4093199ea12a04532cbf3492acb0cecc50e23afcd059def64` |
| Flags | `--history.transactions=0 --syncmode=full --tries-verify-mode=local --pruneancient --db.engine=pebble --state.scheme=path` |
| Disk Suggestion | Minimum(NVMe ≥ 1T), Suggestion(NVMe ≥ 2T)|

[Back to TOC](#bsc-snapshots)

### Geth fast node

| Field |Value |
| --- | --- |
| Version | [v1.3.7](https://github.com/bnb-chain/bsc/releases/tag/v1.3.7) |
| Block | [34939947](https://bscscan.com/block/34939947) (Jan-04-2024 04:11:25 AM +UTC) |
| Link | `https://snapshots.48.club/geth.fast.34939947.tar.zst` |
| Size | 361.36G <-> 412.95G |
| SHA256 | `03e1132d966d85862c63ea82fc32a56a8e4a8666a27fee4de57749b051eb3bea` |
| Flags | `--history.transactions=0 --syncmode=full --tries-verify-mode=none --pruneancient --db.engine=pebble` |
| Disk Suggestion | Minimum(NVMe ≥ 500G), Suggestion(NVMe ≥ 1T)|

[Back to TOC](#bsc-snapshots)

### Geth full node

| Field |Value |
| --- | --- |
| Version | [v1.3.7](https://github.com/bnb-chain/bsc/releases/tag/v1.3.7) |
| Block | [34882141](https://bscscan.com/block/34882141) (Jan-02-2024 03:56:41 AM +UTC) |
| Link | `https://snapshots.48.club/geth.full.34882141.tar.zst` |
| Size | 983.84G <-> 1081.33G |
| SHA256 | `020e0151ff45170d5f767a86b5895af72f56f19d5e144b23e5a0b9a4b1e447c4` |
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
