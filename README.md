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
| Version | [v1.4.11](https://github.com/bnb-chain/bsc/releases/tag/v1.4.11) |
| Block | [40115523](https://bscscan.com/block/40115523) (Jul-02-2024 07:41:33 AM +UTC) |
| Link | `https://snapshots.48.club/geth.pbss.40115523.tar.zst` |
| Size | 855.98G <-> 936.70G |
| SHA256 | `64ca1fbe796fa86b37c10d090ab7229c03e785613d783643832f528f30870277` |
| Flags | `--history.transactions=90000 --syncmode=full --db.engine=pebble` |
| Disk Suggestion | Minimum(NVMe ≥ 1T), Suggestion(NVMe ≥ 2T)|

[Back to TOC](#bsc-snapshots)

### Geth fast node

| Field |Value |
| --- | --- |
| Version | [v1.4.11](https://github.com/bnb-chain/bsc/releases/tag/v1.4.11) |
| Block | [40151030](https://bscscan.com/block/40151030) (Jul-03-2024 01:22:05 PM +UTC) |
| Link | `https://snapshots.48.club/geth.fast.40151030.tar.zst` |
| Size | 239.08G <-> 253.07G |
| SHA256 | `2fb3c881c6eb73ac01202fd03ba1b25a47c1edf24a11b1ca073c6d7531bf775c` |
| Flags | `--history.transactions=90000 --syncmode=full --db.engine=pebble --tries-verify-mode=none` |
| Disk Suggestion | Minimum(NVMe ≥ 300G), Suggestion(NVMe ≥ 1T)|

[Back to TOC](#bsc-snapshots)

### Geth full node

| Field |Value |
| --- | --- |
| Version | [v1.4.11](https://github.com/bnb-chain/bsc/releases/tag/v1.4.11) |
| Block | [40261468](https://bscscan.com/block/40261468) (Jun-30-2024 12:47:59 PM +UTC) |
| Link | `https://snapshots.48.club/geth.full.40261468.tar.zst` |
| Size | 757.15G <-> 836.36G |
| SHA256 | `6a81383d98a83e9ea36b76e9cf2ee3798a75c352c5fdc45ed7d7cf5a3c262fe3` |
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
