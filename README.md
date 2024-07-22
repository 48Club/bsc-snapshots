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
| Block | [40684478](https://bscscan.com/block/40684478) (Jul-22-2024 03:25:16 AM +UTC) |
| Link | `https://snapshots.48.club/pbss.fast.40684478.tar.zst` |
| Size | 316.20G <-> 348.86G |
| SHA256 | `4b60b4bf7263baefaaa79f1e02b772fbd4bb0994c3156506ecf9a6d5a6ebf636` |
| Flags | `--history.transactions=90000 --syncmode=full --db.engine=pebble --tries-verify-mode=none` |
| Disk Suggestion | Minimum(NVMe ≥ 500G), Suggestion(NVMe ≥ 1T)|

[Back to TOC](#bsc-snapshots)

### Geth full node with pbss

| Field |Value |
| --- | --- |
| Version | [v1.4.11](https://github.com/bnb-chain/bsc/releases/tag/v1.4.11) |
| Block | [40661128](https://bscscan.com/block/40661128) (Jul-21-2024 07:53:53 AM +UTC) |
| Link | `https://snapshots.48.club/geth.pbss.40661128.tar.zst` |
| Size | 857.33G <-> 937.62G |
| SHA256 | `c1266f05c9d1cb79ebb7703eae77e3b2ac5718c32a0242707ac2c3cae1c319bd` |
| Flags | `--history.transactions=90000 --syncmode=full --db.engine=pebble` |
| Disk Suggestion | Minimum(NVMe ≥ 1T), Suggestion(NVMe ≥ 2T)|

[Back to TOC](#bsc-snapshots)

### Geth fast node

| Field |Value |
| --- | --- |
| Version | [v1.4.11](https://github.com/bnb-chain/bsc/releases/tag/v1.4.11) |
| Block | [40554701](https://bscscan.com/block/40554701) (Jul-17-2024 02:57:50 PM +UTC) |
| Link | `https://snapshots.48.club/geth.fast.40554701.tar.zst` |
| Size | 248.31G <-> 248.31G |
| SHA256 | `86ee0503ed3daf0eef0a9e4f67d6043d94693a846c1a675b7e0a00f0b74c1e0b` |
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
