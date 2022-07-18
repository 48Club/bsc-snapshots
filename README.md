# *bsc-snapshots*


*\> [geth-snapshots](#geth-snapshots)*

*\> [erigon-snapshots](#erigon-snapshots)*


## geth-snapshots


> Database uses [geth(v1.1.11)](https://github.com/bnb-chain/bsc/releases/tag/v1.1.11) for sync


### download

<!-- begin_geth -->

!!! from block [19650230](https://bscscan.com/block/19650230)
```bash
aria2c -s14 -x14 -k100M https://snapshots.bnb48.club/geth.19650230.tar.lz4 -o geth.tar.lz4
```


### checksum


!!! db size 547.66 gb, 559.39 gb after decompression
```bash
> openssl sha256 geth.tar.lz4
SHA256(geth.tar.lz4)= 7001709a1afb0f11ceb45003bb979255605430d9c37ef70626e5d380f0924a64
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

!!! from block [19646308](https://bscscan.com/block/19646308)
```bash
aria2c -s14 -x14 -k100M https://snapshots.bnb48.club/erigon.19646308.tar.lz4 -o erigon.tar.lz4
```


### checksum


!!! db size 755.40 gb, 1073.83 gb after decompression
```bash
> openssl sha256 erigon.tar.lz4
SHA256(erigon.tar.lz4)= 0048e08247c9748910de4dd23a995fa4b52f69b270f8794356d45d5feafc7104
```

<!-- end_erigon -->

### uncompress


running a script: _`lz4 -cd erigon.tar.lz4 | tar xf -`_


### flags


```bash
--chain=bsc --prune= --prune.h.older=5000 --prune.r.older=5000 --prune.t.older=5000 --prune.c.older=5000 --db.pagesize=16k
```
