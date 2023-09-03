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
| Version | [v1.2.11](https://github.com/bnb-chain/bsc/releases/tag/v1.2.11) |
| Block | [31410771](https://bscscan.com/block/31410771) (Sep-03-2023 05:16:16 AM +UTC) |
| Link | `https://snapshots.48.club/geth.fast.31410771.tar.zst` |
| Size | 385.47G <-> 422.00G |
| SHA256 | `e1bec2779fc1c92b473f871f9517b32131525f2bd07cfac7b3d31f65f7864b6c` |
| Flags | `--txlookuplimit=0 --syncmode=full --tries-verify-mode=none --pruneancient=true` |
| Disk Suggestion | Minimum(NVMe ≥ 500G), Suggestion(NVMe ≥ 1T)|

[Back to TOC](#bsc-snapshots)

### Geth full node

| Field |Value |
| --- | --- |
| Version | [v1.2.11](https://github.com/bnb-chain/bsc/releases/tag/v1.2.11) |
| Block | [31271683](https://bscscan.com/block/31271683) (Aug-29-2023 09:01:42 AM +UTC) |
| Link | `https://snapshots.48.club/geth.full.31271683.tar.zst` |
| Size | 821.12G <-> 882.09G |
| SHA256 | `bc67827b22390aee34d5bbb5a94002ed73bb9c259167211a75e89f2686392be4` |
| Flags | `--txlookuplimit=0 --syncmode=full --tries-verify-mode=local` |
| Disk Suggestion | Minimum(NVMe ≥ 1T), Suggestion(NVMe ≥ 2T)|

[Back to TOC](#bsc-snapshots)

## Erigon

### Erigon torrents files
| Field |Value |
| --- | --- |
| Usage | [#82](https://github.com/48Club/bsc-snapshots/issues/82) |
| Link | `https://snapshots.48.club/erigon.torrents.20230830.tar.zst` |
| Size | 629.45G <-> 774.94G |
| SHA256 | `f0aa102ee88bd15a9247df2f00023ed5e0b949402bb77af396e758995008599f`|

### Erigon fast node

| Field |Value |
| --- | --- |
| Version | [v1.1.9](https://github.com/node-real/bsc-erigon/releases/tag/v1.1.9) |
| Block | [31306137](https://bscscan.com/block/31306137) (Aug-30-2023 01:52:39 PM +UTC) |
| Link | `https://snapshots.48.club/erigon.fast.31306137.tar.zst` |
| Size | 390.01G <-> 818.00G |
| SHA256 | `dab42346af7cabb59a99d85855d8f805393988b0520b3268ccf98e89cf3a5e6d`|
| Flags | `--chain=bsc --prune=hrtc --db.pagesize=16k` |
| Disk Suggestion | Minimum(NVMe ≥ 1.7T), Suggestion(NVMe ≥ 2.5T)|

[Back to TOC](#bsc-snapshots)

### Erigon archive node

#### BSC mainnet

| Field |Value |
| --- | --- |
| Version | | Version | [v1.1.9](https://github.com/node-real/bsc-erigon/releases/tag/v1.1.9) |
| Block | [31386800](https://bscscan.com/block/31386800) (Sep-02-2023 09:15:38 AM +UTC) |
| List | [erigon_archive.list](list/erigon_archive.list?raw=1) |
| Size | 1984.59G <-> 6558.00G |
| SHA256 | `7c357fcb431661e66db1b63c2b9b3042e7ffe136ed141e3744748a2e8939667b` |
| Flags | `--chain=bsc --db.pagesize=16k` |
| Disk Suggestion | Minimum(NVMe ≥ 7.5T), Suggestion(NVMe ≥ 9T)|

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
| Disk Suggestion | Minimum(NVMe ≥ 700G), Suggestion(NVMe ≥ 1T)|

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
