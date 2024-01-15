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
| Version | [v1.3.6](https://github.com/bnb-chain/bsc/releases/tag/v1.3.6) (PBSS + V1.3.7 OOM, please keep version v1.3.6 [#132](https://github.com/48Club/bsc-snapshots/issues/132)) |
| Block | [35210400](https://bscscan.com/block/35210400) (Jan-13-2024 01:59:37 PM +UTC) |
| Link | `https://snapshots.48.club/geth.pbss.35210400.tar.zst` |
| Size | 772.33G <-> 907.37G |
| SHA256 | `7e727476e030f8425aeb0e68aa2163574a4cbd3cc3ddd6dec86da2fa96ff0db0` |
| Flags | `--history.transactions=0 --syncmode=full --tries-verify-mode=local --pruneancient --db.engine=pebble --state.scheme=path` |
| Disk Suggestion | Minimum(NVMe ≥ 1T), Suggestion(NVMe ≥ 2T)|

[Back to TOC](#bsc-snapshots)

### Geth fast node

| Field |Value |
| --- | --- |
| Version | [v1.3.7](https://github.com/bnb-chain/bsc/releases/tag/v1.3.7) |
| Block | [35231496](https://bscscan.com/block/35231496) (Jan-14-2024 07:36:35 AM +UTC) |
| Link | `https://snapshots.48.club/geth.fast.35231496.tar.zst` |
| Size | 364.64G <-> 416.24G |
| SHA256 | `433ff701be7a5dfde46962b6c94cffb0026097be352cc6dcf5c29cc6746c1ccd` |
| Flags | `--history.transactions=0 --syncmode=full --tries-verify-mode=none --pruneancient --db.engine=pebble` |
| Disk Suggestion | Minimum(NVMe ≥ 500G), Suggestion(NVMe ≥ 1T)|

[Back to TOC](#bsc-snapshots)

### Geth full node

| Field |Value |
| --- | --- |
| Version | [v1.3.7](https://github.com/bnb-chain/bsc/releases/tag/v1.3.7) |
| Block | [35234021](https://bscscan.com/block/35234021) (Jan-14-2024 09:44:00 AM +UTC) |
| Link | `https://snapshots.48.club/geth.full.35234021.tar.zst` |
| Size | 1080.31G <-> 1182.82G |
| SHA256 | `88f89c76badfff5ef453c380e796219cdd0014394e48dcc00a36ec469c348f0b` |
| Flags | `--history.transactions=0 --syncmode=full --tries-verify-mode=local --pruneancient --db.engine=pebble` |
| Disk Suggestion | Minimum(NVMe ≥ 2T), Suggestion(NVMe ≥ 3T)|

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
