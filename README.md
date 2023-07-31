# *bsc-snapshots*


- *[Geth](#geth)*
    - *[Geth fast node](#geth-fast-node)*
    - *[Geth full node](#geth-full-node)*
- *[Erigon](#erigon)*
    - *[Erigon fast node](#erigon-fast-node)*
    - *[Erigon archive node](#erigon-archive-node)*
        - *[BSC mainnet](#bsc-mainnet)*
        - *[BSC testnet](#bsc-testnet)*
- *[How to download](#how-to-download)*
    - *[pipeline download and extract](#pipeline-download-and-extract)*
    - *[multithreaded download](#multithreaded-download)*
    - *[download in parts](#download-in-parts)*

## Geth
### Geth fast node

| Field |Value |
| --- | --- |
| Version | [v1.2.9](https://github.com/bnb-chain/bsc/releases/tag/v1.2.9) |
| Block | [30380180](https://bscscan.com/block/30380180) (Jul-29-2023 07:19:59 AM +UTC) |
| Link | `https://snapshots.48.club/geth.fast.30380180.tar.zst` |
| Size | 377.03G <-> 413.90G |
| SHA256 | `e2784389bc4fb11cb286411d2731fdd2d214b2981035f8f16d6c4c5a74a1ed4d` |
| Flags | `--txlookuplimit=0 --syncmode=full --tries-verify-mode=none --pruneancient=true` |

[Back to TOC](#bsc-snapshots)

### Geth full node

| Field |Value |
| --- | --- |
| Version | [v1.2.9](https://github.com/bnb-chain/bsc/releases/tag/v1.2.9) |
| Block | [30389515](https://bscscan.com/block/30389515) (Jul-29-2023 03:07:38 PM +UTC) |
| Link | `https://snapshots.48.club/geth.full.30389515.tar.zst` |
| Size | 806.52G <-> 866.09G |
| SHA256 | `ae4895142712f6c1ad4e8b3ae57dea46ee14c658cb3cdb0c7955dbbff26f880c` |
| Flags | `--txlookuplimit=0 --syncmode=full --tries-verify-mode=local` |

[Back to TOC](#bsc-snapshots)

## Erigon

### Erigon torrents files
| Field |Value |
| --- | --- |
| Link | [erigon_fast.list](list/erigon_fast.list?raw=1) |
| Size | 507.91G <-> 761.19G |
| SHA256 | `af97cefa228a0f7f427937f76477e1fa8c9476186465408cfd4a542e26918e0b`|

### Erigon fast node

| Field |Value |
| --- | --- |
| Version | [v1.1.6](https://github.com/node-real/bsc-erigon/releases/tag/v1.1.6) |
| Block | [29794104](https://bscscan.com/block/29794104) (Jul-08-2023 09:32:06 PM +UTC) |
| List | [erigon_fast.list](list/erigon_fast.list?raw=1) |
| Size | 881.09G <-> 1600.95G |
| SHA256 | `447ff5b0d452f0b1cb71ec30045ca894e71b33252ed25839e034d3f0e75158f6`|
| Flags | `--chain=bsc --prune=hrtc --db.pagesize=16k` |

[Back to TOC](#bsc-snapshots)

### Erigon archive node

#### BSC mainnet

| Field |Value |
| --- | --- |
| Version | [v1.1.6](https://github.com/node-real/bsc-erigon/releases/tag/v1.1.6) |
| Block | [29691730](https://bscscan.com/block/29691730) (Jul-05-2023 07:58:11 AM +UTC) |
| List | [erigon_archive.list](list/erigon_archive.list?raw=1) |
| Size | 1942.38G <-> 7147.83G |
| SHA256 | `f25e9c504a3a5f662bba602a9f0bad8f8825779007b2c612cb6f3e81129cc829` |
| Flags | `--chain=bsc --db.pagesize=16k` |

[Back to TOC](#bsc-snapshots)

#### BSC testnet

| Field |Value |
| --- | --- |
| Version | [v1.1.4](https://github.com/node-real/bsc-erigon/releases/tag/v1.1.4) |
| Block | [31436344](https://testnet.bscscan.com/block/31436344) (Jul-10-2023 04:04:58 PM +UTC) |
| Link | `https://snapshots.48.club/erigon.testnet.31436344.tar.zst` |
| Size | 160.59G <-> 594.00G |
| SHA256 | `e8a8484177753c16bfc5711fb06d69dc9bc0c51ed41280cee074ae4554a71e60` |
| Flags | `--chain=chapel --db.pagesize=16k` |

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
