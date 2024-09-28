# *bsc-snapshots*


- *[Geth](#geth)*
    - *[Geth fast node](#geth-fast-node)*
    - *[Geth full node](#geth-full-node)*
- *[Erigon](#erigon)*
    - *[Erigon fast node](#erigon-fast-node)*
    - *[Erigon archive node](#erigon-archive-node)*
- *[How to download](#how-to-download)*
    - *[pipeline download and extract](#pipeline-download-and-extract)*
    - *[multithreaded download](#multithreaded-download)*

## Geth
### Geth fast node

| Field |Value |
| --- | --- |
| Version | [v1.4.15](https://github.com/bnb-chain/bsc/releases/tag/v1.4.15) |
| Block | [42563551](https://bscscan.com/block/42563551) (Sep-25-2024 01:18:11 PM +UTC) |
| Link | `https://snapshots.48.club/geth.fast.42563551.tar.zst` |
| Size | 321.13G <-> 354.18G |
| SHA256 | `b4e940a67e63b0f6292517ff309572711921319f1eb2378e98d950ac6db38882` |
| Flags | `--history.transactions=90000 --syncmode=full --db.engine=pebble --tries-verify-mode=none` |
| Disk Suggestion | Minimum(NVMe ≥ 500G), Suggestion(NVMe ≥ 1T) |

[Back to TOC](#bsc-snapshots)

### Geth full node

| Field |Value |
| --- | --- |
| Version | [v1.4.15](https://github.com/bnb-chain/bsc/releases/tag/v1.4.15) |
| Block | [42615347](https://bscscan.com/block/42615347) (Sep-27-2024 08:30:33 AM +UTC) |
| Link | `https://snapshots.48.club/geth.full.42615347.tar.zst` |
| Size | 873.39G <-> 954.28G |
| SHA256 | `b28a23a4184b913e8c4254d1845452fd16caf31e0f7aa0c9533a60d373e21263` |
| Flags | `--history.transactions=90000 --syncmode=full --db.engine=pebble` |
| Disk Suggestion | Minimum(NVMe ≥ 1.2T), Suggestion(NVMe ≥ 2T) |

[Back to TOC](#bsc-snapshots)

## Erigon
### Erigon fast node

| Field |Value |
| --- | --- |
| Version | [Erigon3-alpha3](https://github.com/node-real/bsc-erigon/releases/tag/1.3.0-alpha3) |
| Block | [42468051](https://bscscan.com/block/42468051) (Sep-22-2024 05:31:31 AM +UTC) |
| Chaindata | `https://snapshots.48.club/erigon.42468051.tar.zst` |
| Size | 377.65G <-> 613.72G |
| SHA256 | `663bedb6d8a1cfcc775fa5dfc61a07c2d8c690e07965256d5ee11fd927d000ad` |
| Flags | `--prune.mode=minimal --chain=bsc` |
| Disk Suggestion | Minimum(NVMe ≥ 1T), Suggestions(NVMe ≥ 2T) |

[Back to TOC](#bsc-snapshots)

### Erigon archive node

Multi-threaded download via aria2, nothing more

```bash
# install dependencies
sudo apt-get install -y aria2 curl jq
# download snapshot
curl -skL https://raw.githubusercontent.com/48Club/bsc-snapshots/refs/heads/main/script/erigon_archive_download.sh | bash
mv snapshots /data/erigon
# start erigon
erigon3 --prune.mode=archive --chain=bsc --datadir=/data/erigon ...
```

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
