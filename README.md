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
| Block | [41743263](https://bscscan.com/block/41743263) (Aug-28-2024 12:02:20 AM +UTC) |
| Link | `https://snapshots.48.club/geth.fast.41743263.tar.zst` |
| Size | 319.20G <-> 351.42G |
| SHA256 | `35d13be4e12ce9c45a6af234002dce8b47c3440dfcf823054fc02051debfade1` |
| Flags | `--history.transactions=90000 --syncmode=full --db.engine=pebble --tries-verify-mode=none` |
| Disk Suggestion | Minimum(NVMe ≥ 500G), Suggestion(NVMe ≥ 1T)|

[Back to TOC](#bsc-snapshots)

### Geth full node

| Field |Value |
| --- | --- |
| Version | [v1.4.14](https://github.com/bnb-chain/bsc/releases/tag/v1.4.14) |
| Block | [41900885](https://bscscan.com/block/41900885) (Sep-02-2024 11:46:55 AM +UTC) |
| Link | `https://snapshots.48.club/geth.full.41900885.tar.zst` |
| Size | 869.34G <-> 950.91G |
| SHA256 | `f157d4d35a57987a8ee6b289db4eea1080d2fd4bcec30fa07b5dcd79cfa79095` |
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
