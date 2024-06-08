# *bsc-snapshots*


- *[Geth](#geth)*
    - *[Geth fast node with pbss](#geth-fast-node-with-pbss)*
    - *[Geth full node with pbss](#geth-full-node-with-pbss)*
    - *[Geth fast node](#geth-fast-node)*
    - *[Geth full node](#geth-full-node)*
- *[How to download](#how-to-download)*
    - *[pipeline download and extract](#pipeline-download-and-extract)*
    - *[multithreaded download](#multithreaded-download)*

## Geth
### Geth fast node with pbss

| Field |Value |
| --- | --- |
| Version | [v1.4.8](https://github.com/bnb-chain/bsc/releases/tag/v1.4.8) |
| Block | [39221903](https://bscscan.com/block/39221903) (Jun-01-2024 04:00:57 AM +UTC) |
| Link | `https://snapshots.48.club/pbss.fast.39221903.tar.zst` |
| Size | 306.68G <-> 337.79G |
| SHA256 | `e5a7a8e7d5693abcb7b12f175d5e7c26501b905947a141e5b971849807de1ba6` |
| Flags | `--history.transactions=90000 --syncmode=full --db.engine=pebble --tries-verify-mode=none` |
| Disk Suggestion | Minimum(NVMe ≥ 500G), Suggestion(NVMe ≥ 1T)|

[Back to TOC](#bsc-snapshots)

### Geth full node with pbss

| Field |Value |
| --- | --- |
| Version | [v1.4.8](https://github.com/bnb-chain/bsc/releases/tag/v1.4.8) |
| Block | [39422280](https://bscscan.com/block/39422280) (Jun-08-2024 03:37:58 AM +UTC) |
| Link | `https://snapshots.48.club/geth.pbss.39422280.tar.zst` |
| Size | 845.45G <-> 925.36G |
| SHA256 | `c4ff74d78f1240c2432192c1b5f10ef01224a0d6c260bd57244431df2529b3a9` |
| Flags | `--history.transactions=90000 --syncmode=full --db.engine=pebble` |
| Disk Suggestion | Minimum(NVMe ≥ 1T), Suggestion(NVMe ≥ 2T)|

[Back to TOC](#bsc-snapshots)

### Geth fast node

| Field |Value |
| --- | --- |
| Version | [v1.4.8](https://github.com/bnb-chain/bsc/releases/tag/v1.4.8) |
| Block | [39347770](https://bscscan.com/block/39347770) (Jun-05-2024 01:12:44 PM +UTC) |
| Link | `https://snapshots.48.club/geth.fast.39347770.tar.zst` |
| Size | 233.57G <-> 245.80G |
| SHA256 | `a1497a80f03a66c1f60a081db233b84b762b8040d047d5c2a8a990a330dbf18c` |
| Flags | `--history.transactions=90000 --syncmode=full --db.engine=pebble --tries-verify-mode=none` |
| Disk Suggestion | Minimum(NVMe ≥ 300G), Suggestion(NVMe ≥ 1T)|

[Back to TOC](#bsc-snapshots)

### Geth full node

| Field |Value |
| --- | --- |
| Version | [v1.4.8](https://github.com/bnb-chain/bsc/releases/tag/v1.4.8) |
| Block | [39378647](https://bscscan.com/block/39378647) (Jun-06-2024 03:08:57 PM +UTC) |
| Link | `https://snapshots.48.club/geth.full.39378647.tar.zst` |
| Size | 760.64G <-> 838.36G |
| SHA256 | `5ad5c683b4068a1ca55488c5ffdde008fd1551880334a7e1ad303e028763b455` |
| Flags | `--history.transactions=90000 --syncmode=full --db.engine=pebble` |
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
