# *bsc-snapshots*


- *[Geth](#geth)*
    - *[Geth full node with pbss](#geth-full-node-with-pbss)*
    - *[Geth fast node](#geth-fast-node)*
    - *[Geth full node](#geth-full-node)*
- *[How to download](#how-to-download)*
    - *[pipeline download and extract](#pipeline-download-and-extract)*
    - *[multithreaded download](#multithreaded-download)*

## Geth
### Geth full node with pbss

| Field |Value |
| --- | --- |
| Version | [v1.3.10](https://github.com/bnb-chain/bsc/releases/tag/v1.3.10) |
| Block | [36615706](https://bscscan.com/block/36615706) (Mar-02-2024 11:32:23 AM +UTC) |
| Link | `https://snapshots.48.club/geth.pbss.36615706.tar.zst` |
| Size | 808.11G <-> 884.28G |
| SHA256 | `615d30a39518f1add169a1279e84da455da3974ec3df043198182b8b247c5fdf` |
| Flags | `--history.transactions=0 --syncmode=full --db.engine=pebble --state.scheme=path` |
| Disk Suggestion | Minimum(NVMe ≥ 1T), Suggestion(NVMe ≥ 2T)|

[Back to TOC](#bsc-snapshots)

### Geth fast node

| Field |Value |
| --- | --- |
| Version | [v1.3.10](https://github.com/bnb-chain/bsc/releases/tag/v1.3.10) |
| Block | [36922701](https://bscscan.com/block/36922701) (Mar-13-2024 03:49:59 AM +UTC) |
| Link | `https://snapshots.48.club/geth.fast.36922701.tar.zst` |
| Size | 213.38G <-> 224.37G |
| SHA256 | `fe223a7a25678eb987e283c84654c7b74494e31a399cdbaa93f0db06a6f4d24c` |
| Flags | `--history.transactions=0 --syncmode=full --db.engine=pebble --tries-verify-mode=none` |
| Disk Suggestion | Minimum(NVMe ≥ 300G), Suggestion(NVMe ≥ 1T)|

[Back to TOC](#bsc-snapshots)

### Geth full node

| Field |Value |
| --- | --- |
| Version | [v1.3.10](https://github.com/bnb-chain/bsc/releases/tag/v1.3.10) |
| Block | [36670294](https://bscscan.com/block/36670294) (Mar-04-2024 09:06:27 AM +UTC) |
| Link | `https://snapshots.48.club/geth.full.36670294.tar.zst` |
| Size | 721.05G <-> 795.43G |
| SHA256 | `9cf0414cd99720009bfc594cfbe35b43945503e0579600485ff6e0cd17139de5` |
| Flags | `--history.transactions=0 --syncmode=full --db.engine=pebble` |
| Disk Suggestion | Minimum(NVMe ≥ 1T), Suggestion(NVMe ≥ 3T)|

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
