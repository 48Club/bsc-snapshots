# *bsc-snapshots*


*\> [geth-snapshots](#geth-snapshots)*

*\> [erigon-snapshots](#erigon-snapshots)*


## geth-snapshots


> Database uses [geth(v1.1.11)](https://github.com/bnb-chain/bsc/releases/tag/v1.1.11) for sync


### download

<!-- begin_geth -->

!!! from block [19477998](https://bscscan.com/block/19477998)
```bash
aria2c -s14 -x14 -k100M https://snapshots.bnb48.club/geth.19477998.tar.lz4 -o geth.tar.lz4
```


### checksum


!!! db size 543.30 gb, 554.97 gb after decompression
```bash
> openssl sha256 geth.tar.lz4
SHA256(geth.tar.lz4)= 95fe58ea890296e2b3fb1d7ffc9e34d21d52c3a738d96665d0c27f761e5f76c6
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
