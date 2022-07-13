# *bsc-snapshots*


*\> [geth-snapshots](#geth-snapshots)*

*\> [erigon-snapshots](#erigon-snapshots)*


## geth-snapshots


> Database uses [geth(v1.1.11)](https://github.com/bnb-chain/bsc/releases/tag/v1.1.11) for sync


### download

<!-- begin_geth -->

!!! from block [19506840](https://bscscan.com/block/19506840)
```bash
aria2c -s14 -x14 -k100M https://snapshots.bnb48.club/geth.19506840.tar.lz4 -o geth.tar.lz4
```


### checksum


!!! db size 544.62 gb, 556.31 gb after decompression
```bash
> openssl sha256 geth.tar.lz4
SHA256(geth.tar.lz4)= a045bdb12605432b790149c704a93d4fd2422cf9f9aefa6153034874337c2a94
```

<!-- end_geth -->

### uncompress


running a script: _`lz4 -cd geth.tar.lz4 | tar xf -`_


### flags


```bash
--txlookuplimit=0 --diffsync --syncmode=snap
```


## erigon-snapshots


> Database uses [erigon(v2022.07.02)](https://github.com/ledgerwatch/erigon/releases/tag/v2022.07.02) for sync


### download

<!-- begin_erigon -->

!!! from block [19502716](https://bscscan.com/block/19502716)
```bash
aria2c -s14 -x14 -k100M https://snapshots.bnb48.club/erigon.19502716.tar.lz4 -o erigon.tar.lz4
```


### checksum


!!! db size 754.33 gb, 1071.55 gb after decompression
```bash
> openssl sha256 erigon.tar.lz4
SHA256(erigon.tar.lz4)= 1088978d50f2bae38540fb622b1af76d9a9e22d27f9722253eb2bb58e55bca2d
```

<!-- end_erigon -->

### uncompress


running a script: _`lz4 -cd erigon.tar.lz4 | tar xf -`_


### flags


```bash
--chain=bsc --prune= --prune.h.older=5000 --prune.r.older=5000 --prune.t.older=5000 --prune.c.older=5000 --db.pagesize=16k
```
