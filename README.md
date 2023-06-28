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
| Block | [29353321](https://bscscan.com/block/29353321) |
| Link | `https://snapshots.48.club/geth.none.29353321.tar.zst` |
| Size | 367.53G <-> 403.09G |
| SHA256 | `28e60f1a5005944f07cee4cf466b1df415744c19daf3fb2a6879de15e3da1e0a` |
| Flags | `--txlookuplimit=0 --syncmode=full --tries-verify-mode=none --pruneancient=true` |

[Back to TOC](#bsc-snapshots)

### Geth full node

| Field |Value |
| --- | --- |
| Version | [v1.2.8](https://github.com/bnb-chain/bsc/releases/tag/v1.2.8) |
| Block | [29379621](https://bscscan.com/block/29379621) |
| Link | `https://snapshots.48.club/geth.local.29379621.tar.zst` |
| Size | 777.33G <-> 834.86G |
| SHA256 | `851ffb576e764341f02dcbc0a8eacb264ed7ac0efb0935adfb0c504d4191665f` |
| Flags | `--txlookuplimit=0 --syncmode=full --tries-verify-mode=local` |

[Back to TOC](#bsc-snapshots)

## Erigon
### Erigon fast node

| Field |Value |
| --- | --- |
| Version | [v1.1.2](https://github.com/node-real/bsc-erigon/releases/tag/v1.1.2) |
| Block | [29475087](https://bscscan.com/block/29475087) |
| Link | `https://snapshots.48.club/erigon.fast.29475087.tar.zst` |
| Size | 383.04G <-> 824.00G |
| SHA256 | `08f95286ad0df0b8b30da182b3e2f2c65d47f0af9d959a26da67ed0403fe7520`|
| Flags | `--prune=hrtc --db.pagesize=16k` |

[Back to TOC](#bsc-snapshots)

### Erigon archive node

*\> todo - add archive node*
| Field |Value |
| --- | --- |
| Version | [v1.1.2](https://github.com/node-real/bsc-erigon/releases/tag/v1.1.2) |
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
