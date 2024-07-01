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
| Version | [v1.4.11](https://github.com/bnb-chain/bsc/releases/tag/v1.4.11) |
| Block | [40088007](https://bscscan.com/block/40088007) (Jul-01-2024 08:41:51 AM +UTC) |
| Link | `https://snapshots.48.club/pbss.fast.40088007.tar.zst` |
| Size | 315.26G <-> 348.10G |
| SHA256 | `c57a31b80d17c2c335ca4ac38b70f212eb12f3d3ab539683a152308e905918e5` |
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
| Version | [v1.4.10](https://github.com/bnb-chain/bsc/releases/tag/v1.4.10) |
| Block | [39887829](https://bscscan.com/block/39887829) (Jun-24-2024 09:15:45 AM +UTC) |
| Link | `https://snapshots.48.club/geth.fast.39887829.tar.zst` |
| Size | 232.20G <-> 243.99G |
| SHA256 | `e6842860591042b1816963781dab93de437e796063d3262d3fe88c2f70811442` |
| Flags | `--history.transactions=90000 --syncmode=full --db.engine=pebble --tries-verify-mode=none` |
| Disk Suggestion | Minimum(NVMe ≥ 300G), Suggestion(NVMe ≥ 1T)|

[Back to TOC](#bsc-snapshots)

### Geth full node

| Field |Value |
| --- | --- |
| Version | [v1.4.11](https://github.com/bnb-chain/bsc/releases/tag/v1.4.11) |
| Block | [40064182](https://bscscan.com/block/40064182) (Jun-30-2024 12:47:59 PM +UTC) |
| Link | `https://snapshots.48.club/geth.full.40064182.tar.zst` |
| Size | 781.38G <-> 861.46G |
| SHA256 | `495b3e749ab47d72e7d522e1ea3055206c7ba3a5570a8d12528792a79ba62faa` |
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
