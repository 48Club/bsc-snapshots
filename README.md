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
| Block | [29635710](https://bscscan.com/block/29635710) (Jul-03-2023 09:04:32 AM +UTC) |
| Link | `https://snapshots.48.club/geth.none.29635710.tar.zst` |
| Size | 369.90G <-> 405.90G |
| SHA256 | `896e237f3e3f9930bb96ba10f577d221af83ff0cc3346b97b813eba270cb6607` |
| Flags | `--txlookuplimit=0 --syncmode=full --tries-verify-mode=none --pruneancient=true` |

[Back to TOC](#bsc-snapshots)

### Geth full node

| Field |Value |
| --- | --- |
| Version | [v1.2.8](https://github.com/bnb-chain/bsc/releases/tag/v1.2.8) |
| Block | [29638207](https://bscscan.com/block/29638207) (Jul-03-2023 11:09:44 AM +UTC) |
| Link | `https://snapshots.48.club/geth.full.29638207.tar.zst` |
| Size | 784.35G <-> 842.34G |
| SHA256 | `847c3068e0ea339a54087f422b510feca88a39a0ecddc6d1dc97db924491a318` |
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
