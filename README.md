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
    - *[download in parts](#download-in-parts)*

## Geth
### Geth fast node

| Field |Value |
| --- | --- |
| Version | [v1.2.8](https://github.com/bnb-chain/bsc/releases/tag/v1.2.8) |
| Block | [29824901](https://bscscan.com/block/29824901) (Jul-09-2023 11:15:34 PM +UTC) |
| Link | `https://snapshots.48.club/geth.fast.29824901.tar.zst` |
| Size | 349.34G <-> 406.68G |
| SHA256 | `e2d2adc44e8a1286333e3b6f095e2d1eef194fd0f3012c2f70a49b11b7b83771` |
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
| Version | [v1.1.4](https://github.com/node-real/bsc-erigon/releases/tag/v1.1.4) |
| Block | [29794104](https://bscscan.com/block/29794104) (Jul-08-2023 09:32:06 PM +UTC) |
| List | [erigon_archive.list](list/erigon_fast.list?raw=1) |
| Size | 881.09G <-> 1600.95G |
| SHA256 | `447ff5b0d452f0b1cb71ec30045ca894e71b33252ed25839e034d3f0e75158f6`|
| Flags | `--prune=hrtc --db.pagesize=16k` |

[Back to TOC](#bsc-snapshots)

### Erigon archive node

| Field |Value |
| --- | --- |
| Version | [v1.1.4](https://github.com/node-real/bsc-erigon/releases/tag/v1.1.4) |
| Block | [29691730](https://bscscan.com/block/29691730) (Jul-05-2023 07:58:11 AM +UTC) |
| List | [erigon_archive.list](list/erigon_archive.list?raw=1) |
| Size | 1942.38G <-> 7147.83G |
| SHA256 | `f25e9c504a3a5f662bba602a9f0bad8f8825779007b2c612cb6f3e81129cc829` |
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

### download in parts

```bash
mkdir parts && cd parts
wget $List -O url.list
aria2c -s4 -x4 -k1024M -i url.list # multithreaded download
## or
# wget -i url.list
## checksum verification, optional
# cat erigon.$TYPE.$BLOCK.tar.zst.part_* | openssl sha256
## if checksum is not matched, try to check parts one by one
## you can get checksum of parts from list/erigon_$TYPE.sha256
cat erigon.$TYPE.$BLOCK.tar.zst.part_* | zstd -cd | tar xf -
```

[Back to TOC](#bsc-snapshots)
