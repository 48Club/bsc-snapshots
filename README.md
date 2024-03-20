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
| Block | [37101950](https://bscscan.com/block/37101950) (Mar-19-2024 09:42:53 AM +UTC) |
| Link | `https://snapshots.48.club/geth.pbss.37101950.tar.zst` |
| Size | 811.47G <-> 885.98G |
| SHA256 | `4c399eaef0fcf35b5e82e2eaed55757ba154c1bd81e726fde8314d23270578e8` |
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
