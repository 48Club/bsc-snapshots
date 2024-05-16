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
| Version | [v1.4.6](https://github.com/bnb-chain/bsc/releases/tag/v1.4.6) |
| Block | [38704996](https://bscscan.com/block/38704996) (May-14-2024 04:11:34 AM +UTC) |
| Link | `https://snapshots.48.club/geth.pbss.38704996.tar.zst` |
| Size | 833.93G <-> 911.14G |
| SHA256 | `f67396b80166c4d0e1b1a0d3138b3369fa9a06ce30ccf822db92e72c2c79d4dd` |
| Flags | `--history.transactions=0 --syncmode=full --db.engine=pebble --state.scheme=path` |
| Disk Suggestion | Minimum(NVMe ≥ 1T), Suggestion(NVMe ≥ 2T)|

[Back to TOC](#bsc-snapshots)

### Geth fast node

| Field |Value |
| --- | --- |
| Version | [v1.4.6](https://github.com/bnb-chain/bsc/releases/tag/v1.4.6) |
| Block | [38739198](https://bscscan.com/block/38739198) (May-15-2024 08:44:29 AM +UTC) |
| Link | `https://snapshots.48.club/geth.fast.38739198.tar.zst` |
| Size | 229.37G <-> 242.95G |
| SHA256 | `c5dee263a24f57cb71e5266aafc13248da4a6934245e565304c12334ad11e65b` |
| Flags | `--history.transactions=0 --syncmode=full --db.engine=pebble --tries-verify-mode=none` |
| Disk Suggestion | Minimum(NVMe ≥ 300G), Suggestion(NVMe ≥ 1T)|

[Back to TOC](#bsc-snapshots)

### Geth full node

| Field |Value |
| --- | --- |
| Version | [v1.4.6](https://github.com/bnb-chain/bsc/releases/tag/v1.4.6) |
| Block | [38767853](https://bscscan.com/block/38767853) (May-16-2024 08:42:11 AM +UTC) |
| Link | `https://snapshots.48.club/geth.full.38767853.tar.zst` |
| Size | 728.72G <-> 804.72G |
| SHA256 | `91c6ee60aa681d929720f342f2a47a910de2e2ea7f7c4424fc7944c7a5d2ceb5` |
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
