# *bsc-snapshots*


*\> [Fast node](#fast-node)*

*\> [Full node](#full-node)*

**Fast node is generated with `--tries-verify-mode=none`, Full node is generated with `--tries-verify-mode=local`**
**[Know more >>>](https://github.com/bnb-chain/bsc/pull/926)**

> Database uses [geth(v1.1.23)](https://github.com/bnb-chain/bsc/releases/tag/v1.1.23) for sync


## Fast node

### download

<!-- begin_none -->

!!! from block [28783283](https://bscscan.com/block/28783283)

#### pipeline download and extract
> skip checksum & uncompress if you used pipeline
```bash
wget https://snapshots.48.club/geth.none.28783283.tar.lz4 -O - | lz4 -cd | tar xf -
```

#### multithreaded download

```bash
aria2c -s4 -x4 -k1024M https://snapshots.48.club/geth.none.28783283.tar.lz4 -o none.tar.lz4
```


### checksum

!!! db size 391.15 gb, 399.10 gb after decompression
```bash
> openssl sha256 none.tar.lz4
SHA256(none.tar.lz4)= b1bddc347c78ec3b84694099ecf9213b835e9647b0f04abc3462d7e9cbca47d1
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

!!! from block [28786586](https://bscscan.com/block/28786586)

#### pipeline download and extract
> skip checksum & uncompress if you used pipeline
```bash
wget https://snapshots.48.club/geth.local.28786586.tar.lz4 -O - | lz4 -cd | tar xf -
```

#### multithreaded download

```bash
aria2c -s4 -x4 -k1024M https://snapshots.48.club/geth.local.28786586.tar.lz4 -o local.tar.lz4
```


### checksum

!!! db size 791.56 gb, 811.87 gb after decompression
```bash
> openssl sha256 local.tar.lz4
SHA256(local.tar.lz4)= 0de691df3a88c106ee553ba645d3f1980e52fc584274c378099013172091a22c
```

<!-- end_local -->


### uncompress


running a script: _`lz4 -cd local.tar.lz4 | tar xf -`_


### flags


```bash
--txlookuplimit=0 --syncmode=full --tries-verify-mode=local
```
