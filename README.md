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
| Version | [v1.3.13](https://github.com/bnb-chain/bsc/releases/tag/v1.3.13) |
| Block | [37903542](https://bscscan.com/block/37903542) (Apr-13-2024 06:22:58 AM +UTC) |
| Link | `https://snapshots.48.club/geth.pbss.37903542.tar.zst` |
| Size | 824.31G <-> 901.20G |
| SHA256 | `41731df1e6e463a6931be903a4846fdd9f9819d661d51b5e6743d152830713af` |
| Flags | `--history.transactions=0 --syncmode=full --db.engine=pebble --state.scheme=path` |
| Disk Suggestion | Minimum(NVMe ≥ 1T), Suggestion(NVMe ≥ 2T)|

[Back to TOC](#bsc-snapshots)

### Geth fast node

| Field |Value |
| --- | --- |
| Version | [v1.4.5](https://github.com/bnb-chain/bsc/releases/tag/v1.4.5) |
| Block | [38198925](https://bscscan.com/block/38198925) (Apr-26-2024 01:38:27 PM +UTC) |
| Link | `https://snapshots.48.club/geth.fast.38198925.tar.zst` |
| Size | 226.84G <-> 241.64G |
| SHA256 | `8be8f70491c69e90cc4289309de6d39416779fc997fa318c88d5e712e18a4a57` |
| Flags | `--history.transactions=0 --syncmode=full --db.engine=pebble --tries-verify-mode=none` |
| Disk Suggestion | Minimum(NVMe ≥ 300G), Suggestion(NVMe ≥ 1T)|

[Back to TOC](#bsc-snapshots)

### Geth full node

| Field |Value |
| --- | --- |
| Version | [v1.3.13](https://github.com/bnb-chain/bsc/releases/tag/v1.3.13) |
| Block | [37756285](https://bscscan.com/block/37756285) (Apr-11-2024 04:04:19 AM +UTC) |
| Link | `https://snapshots.48.club/geth.full.37756285.tar.zst` |
| Size | 720.37G <-> 795.03G |
| SHA256 | `e42bc8fd66a02060812373a3b9400646b2647034fac61faca335af6d18b9035f` |
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
