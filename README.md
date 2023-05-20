# *bsc-snapshots*


*\> [Fast node](#fast-node)*

*\> [Full node](#full-node)*

**Fast node is generated with `--tries-verify-mode=none`, Full node is generated with `--tries-verify-mode=local`**
**[Know more >>>](https://github.com/bnb-chain/bsc/pull/926)**

> Database uses [geth(v1.1.23)](https://github.com/bnb-chain/bsc/releases/tag/v1.1.23) for sync


## Fast node

### download

<!-- begin_none -->

!!! from block [28352228](https://bscscan.com/block/28352228)

#### pipeline download and extract
> skip checksum & uncompress if you used pipeline
```bash
wget https://snapshots.48.club/geth.none.28352228.tar.lz4 -O - | lz4 -cd | tar xf -
```

#### multithreaded download

```bash
aria2c -s4 -x4 -k1024M https://snapshots.48.club/geth.none.28352228.tar.lz4 -o none.tar.lz4
```


### checksum

!!! db size 382.10 gb, 389.55 gb after decompression
```bash
> openssl sha256 none.tar.lz4
SHA256(none.tar.lz4)= dbfc8c87bf154fd786a97caf220dc1e3ce503241281b5b4d2a69d2da50a74d50
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

!!! from block [28355953](https://bscscan.com/block/28355953)

#### pipeline download and extract
> skip checksum & uncompress if you used pipeline
```bash
wget https://snapshots.48.club/geth.local.28355953.tar.lz4 -O - | lz4 -cd | tar xf -
```

#### multithreaded download

```bash
aria2c -s4 -x4 -k1024M https://snapshots.48.club/geth.local.28355953.tar.lz4 -o local.tar.lz4
```


### checksum

!!! db size 781.93 gb, 801.93 gb after decompression
```bash
> openssl sha256 local.tar.lz4
SHA256(local.tar.lz4)= c0e25624f3006f274ab52ed99ac9235393efcd5b7ac5271b42d0e9cbd00490b3
```

<!-- end_local -->


### uncompress


running a script: _`lz4 -cd local.tar.lz4 | tar xf -`_


### flags


```bash
--txlookuplimit=0 --syncmode=full --tries-verify-mode=local
```
