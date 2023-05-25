# *bsc-snapshots*


*\> [Fast node](#fast-node)*

*\> [Full node](#full-node)*

**Fast node is generated with `--tries-verify-mode=none`, Full node is generated with `--tries-verify-mode=local`**
**[Know more >>>](https://github.com/bnb-chain/bsc/pull/926)**

> Database uses [geth(v1.1.23)](https://github.com/bnb-chain/bsc/releases/tag/v1.1.23) for sync


## Fast node

### download

<!-- begin_none -->

!!! from block [28525706](https://bscscan.com/block/28525706)

#### pipeline download and extract
> skip checksum & uncompress if you used pipeline
```bash
wget https://snapshots.48.club/geth.none.28525706.tar.lz4 -O - | lz4 -cd | tar xf -
```

#### multithreaded download

```bash
aria2c -s4 -x4 -k1024M https://snapshots.48.club/geth.none.28525706.tar.lz4 -o none.tar.lz4
```


### checksum

!!! db size 382.19 gb, 389.95 gb after decompression
```bash
> openssl sha256 none.tar.lz4
SHA256(none.tar.lz4)= 98994604e73f4be39575f5ae8816603a6e5c4fa252a64c3799c5477fd42b576c
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

!!! from block [28442394](https://bscscan.com/block/28442394)

#### pipeline download and extract
> skip checksum & uncompress if you used pipeline
```bash
wget https://snapshots.48.club/geth.local.28442394.tar.lz4 -O - | lz4 -cd | tar xf -
```

#### multithreaded download

```bash
aria2c -s4 -x4 -k1024M https://snapshots.48.club/geth.local.28442394.tar.lz4 -o local.tar.lz4
```


### checksum

!!! db size 783.43 gb, 803.52 gb after decompression
```bash
> openssl sha256 local.tar.lz4
SHA256(local.tar.lz4)= 79ba9ebc7c8bb1dff09fda724494694b3f5f067318266b3aed8906b2c30bd840
```

<!-- end_local -->


### uncompress


running a script: _`lz4 -cd local.tar.lz4 | tar xf -`_


### flags


```bash
--txlookuplimit=0 --syncmode=full --tries-verify-mode=local
```
