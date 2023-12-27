# *bsc-snapshots*


- *[Geth](#geth)*
    - *[Geth fast node](#geth-fast-node)*
    - *[Geth full node](#geth-full-node)*
    - *[Geth full node with pbss](#geth-full-node-with-pbss)*
- *[How to download](#how-to-download)*
    - *[pipeline download and extract](#pipeline-download-and-extract)*
    - *[multithreaded download](#multithreaded-download)*

## Geth
### Geth fast node

| Field |Value |
| --- | --- |
| Version | [v1.3.7](https://github.com/bnb-chain/bsc/releases/tag/v1.3.7) |
| Block | [34152285](https://bscscan.com/block/34152285) (Dec-07-2023 05:51:37 PM +UTC) |
| Link | `https://snapshots.48.club/geth.fast.34152285.tar.zst` |
| Size | 353.59G <-> 407.81G |
| SHA256 | `a77592c6ff8b15d50abd85ab4d798afe16ae9529c939e87a76c1ab7b2fc2f962` |
| Flags | `--history.transactions=0 --syncmode=full --tries-verify-mode=none --pruneancient --db.engine=pebble` |
| Disk Suggestion | Minimum(NVMe ≥ 500G), Suggestion(NVMe ≥ 1T)|

[Back to TOC](#bsc-snapshots)

### Geth full node

| Field |Value |
| --- | --- |
| Version | [v1.3.7](https://github.com/bnb-chain/bsc/releases/tag/v1.3.7) |
| Block | [34148567](https://bscscan.com/block/34148567) (Dec-07-2023 02:45:15 PM +UTC) |
| Link | `https://snapshots.48.club/geth.full.34148567.tar.zst` |
| Size | 773.89G <-> 862.79G |
| SHA256 | `b8b13f93cba9bb5b4f62d1586a10ae3b9615a3975e129503ab8692dff698bae0` |
| Flags | `--history.transactions=0 --syncmode=full --tries-verify-mode=local --pruneancient --db.engine=pebble` |
| Disk Suggestion | Minimum(NVMe ≥ 1T), Suggestion(NVMe ≥ 1.98T)|

[Back to TOC](#bsc-snapshots)

### Geth full node with pbss

| Field |Value |
| --- | --- |
| Version | [v1.3.7](https://github.com/bnb-chain/bsc/releases/tag/v1.3.7) |
| Block | [34712063](https://bscscan.com/block/34712063) (Dec-27-2023 05:55:40 AM +UTC) |
| Link | `https://snapshots.48.club/geth.pbss.34712063.tar.zst` |
| Size | 767.36G <-> 904.04G |
| SHA256 | `a6d9c259b309731522da1c221727d421a9c1fb3eaf6b9ba5a0c9d7aa3904d8b4` |
| Flags | `--history.transactions=0 --syncmode=full --tries-verify-mode=local --pruneancient --db.engine=pebble --state.scheme=path` |
| Disk Suggestion | Minimum(NVMe ≥ 1T), Suggestion(NVMe ≥ 1.98T)|

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
