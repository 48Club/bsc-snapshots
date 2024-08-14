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
| Version | [v1.4.13](https://github.com/bnb-chain/bsc/releases/tag/v1.4.13) |
| Block | [41342101](https://bscscan.com/block/41342101) (Aug-14-2024 12:48:03 AM +UTC) |
| Link | `https://snapshots.48.club/geth.pbss.41342101.tar.zst` |
| Size | 870.42G <-> 953.20G |
| SHA256 | `1eb1304745e5847c3d704161e6351ad3c07f59682404669874531d8484d31296` |
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
| Block | [40716054](https://bscscan.com/block/40716054) (Jul-23-2024 05:48:03 AM +UTC) |
| Link | `https://snapshots.48.club/geth.full.40716054.tar.zst` |
| Size | 769.38G <-> 849.45G |
| SHA256 | `9cab923795a79ae7ef18ef70ff14af40e09cbad2b5e24c54d54e2d1da48ca790` |
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
