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
| Version | [v1.4.5](https://github.com/bnb-chain/bsc/releases/tag/v1.4.5) |
| Block | [38272690](https://bscscan.com/block/38272690) (Apr-29-2024 03:12:04 AM +UTC) |
| Link | `https://snapshots.48.club/geth.pbss.38272690.tar.zst` |
| Size | 832.64G <-> 911.51G |
| SHA256 | `53b128c100e56ed39467eaca9be5117778cf539260f445cd3c103a03e112d460` |
| Flags | `--history.transactions=0 --syncmode=full --db.engine=pebble --state.scheme=path` |
| Disk Suggestion | Minimum(NVMe ≥ 1T), Suggestion(NVMe ≥ 2T)|

[Back to TOC](#bsc-snapshots)

### Geth fast node

| Field |Value |
| --- | --- |
| Version | [v1.4.6](https://github.com/bnb-chain/bsc/releases/tag/v1.4.6) |
| Block | [38473517](https://bscscan.com/block/38473517) (May-06-2024 02:53:16 AM +UTC) |
| Link | `https://snapshots.48.club/geth.fast.38473517.tar.zst` |
| Size | 220.92G <-> 234.67G |
| SHA256 | `05827fe19d4a217f277ef0a77150e01c003effbfb6e2e1b6059b7aae144fafe9` |
| Flags | `--history.transactions=0 --syncmode=full --db.engine=pebble --tries-verify-mode=none` |
| Disk Suggestion | Minimum(NVMe ≥ 300G), Suggestion(NVMe ≥ 1T)|

[Back to TOC](#bsc-snapshots)

### Geth full node

| Field |Value |
| --- | --- |
| Version | [v1.4.5](https://github.com/bnb-chain/bsc/releases/tag/v1.4.5) |
| Block | [38253888](https://bscscan.com/block/38253888) (Apr-28-2024 11:31:12 AM +UTC) |
| Link | `https://snapshots.48.club/geth.full.38253888.tar.zst` |
| Size | 716.62G <-> 791.54G |
| SHA256 | `79138876148c389901bd9c7aa2657e0b1db51dc0ba5b20a95de0ff25eb69a54f` |
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
