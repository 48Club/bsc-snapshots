# *bsc-snapshots*


*\> [Fast node](#fast-node)*

*\> [Full node](#full-node)*

**Fast node is generated with `--tries-verify-mode=none`, Full node is generated with `--tries-verify-mode=local`**
**[Know more >>>](https://github.com/bnb-chain/bsc/pull/926)**

> Database uses [geth(v1.1.23)](https://github.com/bnb-chain/bsc/releases/tag/v1.1.23) for sync


## Fast node

### download

<!-- begin_none -->

!!! from block [28179587](https://bscscan.com/block/28179587)

#### pipeline download and extract
> skip checksum & uncompress if you used pipeline
```bash
wget https://snapshots.48.club/geth.none.28179587.tar.lz4 -O - | lz4 -cd | tar xf -
```

#### multithreaded download

```bash
aria2c -s4 -x4 -k1024M https://snapshots.48.club/geth.none.28179587.tar.lz4 -o none.tar.lz4
```


### checksum

!!! db size 383.67 gb, 391.38 gb after decompression
```bash
> openssl sha256 none.tar.lz4
SHA256(none.tar.lz4)= 543fecd72077100614b4bf7055735ca83b5b78a35e09779613892a77c72074e0
```

<!-- end_none -->

### uncompress


running a script: _`lz4 -cd none.tar.lz4 | tar xf -`_


### flags


```bash
--txlookuplimit=0 --syncmode=full --tries-verify-mode=none --pruneancient=true --diffblock=5000
```


## Full node


### download

<!-- begin_local -->

!!! from block [28182856](https://bscscan.com/block/28182856)

#### pipeline download and extract
> skip checksum & uncompress if you used pipeline
```bash
wget https://snapshots.48.club/geth.local.28182856.tar.lz4 -O - | lz4 -cd | tar xf -
```

#### multithreaded download

```bash
aria2c -s4 -x4 -k1024M https://snapshots.48.club/geth.local.28182856.tar.lz4 -o local.tar.lz4
```


### checksum

!!! db size 775.36 gb, 795.15 gb after decompression
```bash
> openssl sha256 local.tar.lz4
SHA256(local.tar.lz4)= cae1e8e452cab4e364e1798cdc18ca1a64aff5289f7fb0e0f366847f5bfae7a9
```

<!-- end_local -->


### uncompress


running a script: _`lz4 -cd local.tar.lz4 | tar xf -`_


### flags


```bash
--txlookuplimit=0 --syncmode=full --tries-verify-mode=local
```
