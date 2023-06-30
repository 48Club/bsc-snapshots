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
| Version | [v1.2.8](https://github.com/bnb-chain/bsc/releases/tag/v1.2.8) |
| Block | [29499780](https://bscscan.com/block/29499780) (Jun-28-2023 03:27:58 PM +UTC) |
| Link | `https://snapshots.48.club/geth.none.29499780.tar.zst` |
| Size | 368.97G <-> 405.12G |
| SHA256 | `d3b536629bee283c6b9f7cffbb67f7d6a25d44b68b1557ec765705c23e2e6b1a` |
| Flags | `--txlookuplimit=0 --syncmode=full --tries-verify-mode=none --pruneancient=true` |

[Back to TOC](#bsc-snapshots)

### Geth full node

| Field |Value |
| --- | --- |
| Version | [v1.2.8](https://github.com/bnb-chain/bsc/releases/tag/v1.2.8) |
| Block | [29501904](https://bscscan.com/block/29501904) (Jun-28-2023 05:14:17 PM +UTC) |
| Link | `https://snapshots.48.club/geth.full.29501904.tar.zst` |
| Size | 779.71G <-> 837.42G |
| SHA256 | `f5c26febdae1e317d5ffbb78706b80270d92ff83313913dd333c590a063754dc` |
| Flags | `--txlookuplimit=0 --syncmode=full --tries-verify-mode=local` |

[Back to TOC](#bsc-snapshots)

## Erigon
### Erigon fast node

| Field |Value |
| --- | --- |
| Version | [v1.1.4](https://github.com/node-real/bsc-erigon/releases/tag/v1.1.4) |
| Block | [29475087](https://bscscan.com/block/29475087) (Jun-27-2023 06:48:54 PM +UTC) |
| Link | `https://snapshots.48.club/erigon.fast.29475087.tar.zst` |
| Size | 383.04G <-> 824.00G |
| SHA256 | `08f95286ad0df0b8b30da182b3e2f2c65d47f0af9d959a26da67ed0403fe7520`|
| Flags | `--prune=hrtc --db.pagesize=16k` |

[Back to TOC](#bsc-snapshots)

### Erigon archive node

*\> todo - add archive node*
| Field |Value |
| --- | --- |
| Version | [v1.1.4](https://github.com/node-real/bsc-erigon/releases/tag/v1.1.4) |
| Block | [0](https://bscscan.com/block/0) |
| Link | `https://snapshots.48.club/erigon.archive.0.tar.zst` |
| Size | 0G <-> 0G |
| SHA256 | `null`|
| Flags | `--db.pagesize=16k` |

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
