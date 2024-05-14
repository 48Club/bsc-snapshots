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
| Block | [38572390](https://bscscan.com/block/38572390) (May-09-2024 01:26:09 PM +UTC) |
| Link | `https://snapshots.48.club/geth.fast.38572390.tar.zst` |
| Size | 228.05G <-> 242.12G |
| SHA256 | `ba3211f02688467d615890be57c453dd641d1d328538a3a98ecc505b8215e48a` |
| Flags | `--history.transactions=0 --syncmode=full --db.engine=pebble --tries-verify-mode=none` |
| Disk Suggestion | Minimum(NVMe ≥ 300G), Suggestion(NVMe ≥ 1T)|

[Back to TOC](#bsc-snapshots)

### Geth full node

| Field |Value |
| --- | --- |
| Version | [v1.4.6](https://github.com/bnb-chain/bsc/releases/tag/v1.4.6) |
| Block | [38625976](https://bscscan.com/block/38625976) (May-11-2024 10:11:48 AM +UTC) |
| Link | `https://snapshots.48.club/geth.full.38625976.tar.zst` |
| Size | 738.14G <-> 814.19G |
| SHA256 | `749b057ddebd4ec93aaed2bb3ee60eee1c81147b3a57fc538f61f24c1deb1b5d` |
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
