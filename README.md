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
| Block | [42242388](https://bscscan.com/block/42242388) (Sep-14-2024 09:04:59 AM +UTC) |
| Link | `https://snapshots.48.club/geth.full.42242388.tar.zst` |
| Size | 871.16G <-> 953.11G |
| SHA256 | `fdf99fdd920e77dea6d85c9ccbf7194a8da2b0a5c67b05296909ce11e5bdf2d8` |
| Flags | `--history.transactions=90000 --syncmode=full --db.engine=pebble` |
| Disk Suggestion | Minimum(NVMe ≥ 1.2T), Suggestion(NVMe ≥ 2T) |

[Back to TOC](#bsc-snapshots)

## Erigon
### Erigon fast node

| Field |Value |
| --- | --- |
| Version | [v1.2.16](https://github.com/node-real/bsc-erigon/releases/tag/v1.2.16) |
| Block | [42332397](https://bscscan.com/block/42332397) (Sep-17-2024 12:12:43 PM +UTC) |
| Chaindata | `https://snapshots.48.club/erigon.42332397.tar.zst` |
| Size | 388.67G <-> 823.70G |
| SHA256 | `12f4fcc4b6871a345678ae22da2268f43cd054694a56fcf675c8460bd6b9780b` |
| Flags | `--prune=htrc --db.pagesize=16k --prune.h.older=5000 --prune.r.older=5000 --prune.t.older=5000 --prune.c.older=5000` |
| Disk Suggestion | Minimum(NVMe ≥ 1T & HDD > 2T), Suggestions(NVMe ≥ 4T) |

### Erigon Snapshot Directory

| Field |Value |
| --- | --- |
| Snapshots | `https://snapshots.48.club/snapshots.42210000.tar.zst` |
| Size | 985.45G <-> 1186.84G |
| SHA256 | `41b6eb22a590a8a558340ebdf55e5e59e46719957b2c0d4b46ca50745d8b41c3` |

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
