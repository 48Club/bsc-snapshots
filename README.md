# *bsc-snapshots*


- *[Geth](#geth)*
    - *[Geth fast node](#geth-fast-node)*
    - *[Geth full node](#geth-full-node)*
- *[How to download](#how-to-download)*
    - *[pipeline download and extract](#pipeline-download-and-extract)*
    - *[multithreaded download](#multithreaded-download)*

## Geth
### Geth fast node

| Field |Value |
| --- | --- |
| Version | [v1.3.4](https://github.com/bnb-chain/bsc/releases/tag/v1.3.4) |
| Block | [33660414](https://bscscan.com/block/33660414) (Nov-20-2023 02:40:35 PM +UTC) |
| Link | `https://snapshots.48.club/geth.fast.33660414.tar.zst` |
| Size | 346.82G <-> 400.02G |
| SHA256 | `5e74f4fc5a667f63c3187d3fd0263ff170014730abffd398b92adf2acfedb7ca` |
| Flags | `--history.transactions=0 --syncmode=full --tries-verify-mode=none --pruneancient --db.engine=pebble` |
| Disk Suggestion | Minimum(NVMe ≥ 500G), Suggestion(NVMe ≥ 1T)|

[Back to TOC](#bsc-snapshots)

### Geth full node

| Field |Value |
| --- | --- |
| Version | [v1.3.4](https://github.com/bnb-chain/bsc/releases/tag/v1.3.4) |
| Block | [33620169](https://bscscan.com/block/33620169) (Nov-19-2023 05:01:22 AM +UTC) |
| Link | `https://snapshots.48.club/geth.full.33620169.tar.zst` |
| Size | 643.89G <-> 726.18G |
| SHA256 | `84342a72c391292ffd8a981ca796efc59393386612ad0b7a48a3d733f915dfe3` |
| Flags | `--history.transactions=0 --syncmode=full --tries-verify-mode=local --pruneancient --db.engine=pebble` |
| Disk Suggestion | Minimum(NVMe ≥ 1T), Suggestion(NVMe ≥ 1.3T)|

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
