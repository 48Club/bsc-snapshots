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
| Version | [v1.3.13](https://github.com/bnb-chain/bsc/releases/tag/v1.3.13) |
| Block | [37497301](https://bscscan.com/block/37497301) (Apr-02-2024 03:50:32 AM +UTC) |
| Link | `https://snapshots.48.club/geth.pbss.37497301.tar.zst` |
| Size | 818.53G <-> 895.22G |
| SHA256 | `560c7f7840d67364a85d47cbce7241ada240ab2dc81120dc310c064d104ef60e` |
| Flags | `--history.transactions=0 --syncmode=full --db.engine=pebble --state.scheme=path` |
| Disk Suggestion | Minimum(NVMe ≥ 1T), Suggestion(NVMe ≥ 2T)|

[Back to TOC](#bsc-snapshots)

### Geth fast node

| Field |Value |
| --- | --- |
| Version | [v1.3.13](https://github.com/bnb-chain/bsc/releases/tag/v1.3.13) |
| Block | [37731483](https://bscscan.com/block/37731483) (Apr-10-2024 07:21:07 AM +UTC) |
| Link | `https://snapshots.48.club/geth.fast.37731483.tar.zst` |
| Size | 218.28G <-> 230.06G |
| SHA256 | `1c88b39f97393d2bc2a34e3f34cacfca32f7a64ae4dc535b505bc2b953bafc4c` |
| Flags | `--history.transactions=0 --syncmode=full --db.engine=pebble --tries-verify-mode=none` |
| Disk Suggestion | Minimum(NVMe ≥ 300G), Suggestion(NVMe ≥ 1T)|

[Back to TOC](#bsc-snapshots)

### Geth full node

| Field |Value |
| --- | --- |
| Version | [v1.3.13](https://github.com/bnb-chain/bsc/releases/tag/v1.3.13) |
| Block | [37478842](https://bscscan.com/block/37478842) (Apr-01-2024 12:25:38 PM +UTC) |
| Link | `https://snapshots.48.club/geth.full.37478842.tar.zst` |
| Size | 709.48G <-> 783.06G |
| SHA256 | `f41f1e5cb19197dee90827e4211e098e6d5e2a2d2c236560addb885b0fcf0606` |
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
