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
| Block | [42240522](https://bscscan.com/block/42240522) (Sep-14-2024 07:31:36 AM +UTC) |
| Link | `https://snapshots.48.club/geth.fast.42240522.tar.zst` |
| Size | 319.71G <-> 352.30G |
| SHA256 | `a04d8413c78276f89a57887305d17eba8df4b4c4d1f4a490eecb717a2ea9c2a0` |
| Flags | `--history.transactions=90000 --syncmode=full --db.engine=pebble --tries-verify-mode=none` |
| Disk Suggestion | Minimum(NVMe ≥ 500G), Suggestion(NVMe ≥ 1T) |

[Back to TOC](#bsc-snapshots)

### Geth full node

| Field |Value |
| --- | --- |
| Version | [v1.4.14](https://github.com/bnb-chain/bsc/releases/tag/v1.4.14) |
| Block | [42214346](https://bscscan.com/block/42214346) (Sep-13-2024 09:39:59 AM +UTC) |
| Link | `https://snapshots.48.club/geth.full.42214346.tar.zst` |
| Size | 871.28G <-> 953.45G |
| SHA256 | `74351179a0fdd6dd418d0d4433abd48941700fbd9b836c97e5987678da43ec89` |
| Flags | `--history.transactions=90000 --syncmode=full --db.engine=pebble` |
| Disk Suggestion | Minimum(NVMe ≥ 1.2T), Suggestion(NVMe ≥ 2T) |

[Back to TOC](#bsc-snapshots)

## Erigon
### Erigon fast node

| Field |Value |
| --- | --- |
| Version | [v1.2.15](https://github.com/node-real/bsc-erigon/releases/tag/v1.2.15) |
| Block | [42098328](https://bscscan.com/block/42098328) (Sep-09-2024 08:49:22 AM +UTC) |
| Chaindata | `https://snapshots.48.club/erigon.42098328.tar.zst` |
| Size | 404.99G <-> 818.03G |
| SHA256 | `6abb0b69d57a8c396563470ef2f2b212ff7ae1eb96e0e7fa8b89813a3593b1b7` |
| Flags | `--prune=htrc --db.pagesize=16k --prune.h.older=5000 --prune.r.older=5000 --prune.t.older=5000 --prune.c.older=5000` |
| Disk Suggestion | Minimum(NVMe ≥ 1T & HDD > 2T), Suggestions(NVMe ≥ 4T) |

### Erigon Snapshot Directory

| Field |Value |
| --- | --- |
| Snapshots | `https://snapshots.48.club/snapshots.42000000.tar.zst` |
| Size | 975.13G <-> 1175.34G |
| SHA256 | `cdb55fbf43e44f0a294f6c7e2a663681161357784290b2f5bceb337d24f75c70` |

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
