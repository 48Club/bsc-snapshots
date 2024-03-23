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
| Version | [v1.3.12](https://github.com/bnb-chain/bsc/releases/tag/v1.3.12) |
| Block | [37215413](https://bscscan.com/block/37215413) (Mar-23-2024 08:26:15 AM +UTC) |
| Link | `https://snapshots.48.club/geth.pbss.37215413.tar.zst` |
| Size | 813.55G <-> 889.02G |
| SHA256 | `f06d590bd25681ecb28c3dae920cedb84fef511ec65340060ef8ac9b02c2a62e` |
| Flags | `--history.transactions=0 --syncmode=full --db.engine=pebble --state.scheme=path` |
| Disk Suggestion | Minimum(NVMe ≥ 1T), Suggestion(NVMe ≥ 2T)|

[Back to TOC](#bsc-snapshots)

### Geth fast node

| Field |Value |
| --- | --- |
| Version | [v1.3.12](https://github.com/bnb-chain/bsc/releases/tag/v1.3.12) |
| Block | [37178735](https://bscscan.com/block/37178735) (Mar-22-2024 01:48:44 AM +UTC) |
| Link | `https://snapshots.48.club/geth.fast.37178735.tar.zst` |
| Size | 211.67G <-> 222.31G |
| SHA256 | `c929905ed7a2faade6df33291899f8421a1c9cceca960e40cb3387bdcebc9e77` |
| Flags | `--history.transactions=0 --syncmode=full --db.engine=pebble --tries-verify-mode=none` |
| Disk Suggestion | Minimum(NVMe ≥ 300G), Suggestion(NVMe ≥ 1T)|

[Back to TOC](#bsc-snapshots)

### Geth full node

| Field |Value |
| --- | --- |
| Version | [v1.3.12](https://github.com/bnb-chain/bsc/releases/tag/v1.3.12) |
| Block | [37132345](https://bscscan.com/block/37132345) (Mar-20-2024 11:05:44 AM +UTC) |
| Link | `https://snapshots.48.club/geth.full.37132345.tar.zst` |
| Size | 772.69G <-> 849.62G |
| SHA256 | `feaade4225c27711a03ac17aad02b8d9f650677948da9688685c9b28658251e9` |
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
