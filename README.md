# *bsc-snapshots*


*\> [geth-snapshots](#geth-snapshots)*

*\> [erigon-snapshots](#erigon-snapshots)*


## geth-snapshots


> Database uses [geth(v1.1.11)](https://github.com/bnb-chain/bsc/releases/tag/v1.1.11) for sync


### download

<!-- begin_geth -->

!!! from block [19028554](https://bscscan.com/block/19028554)
```bash
aria2c -s14 -x14 -k100M https://snapshots.bnb48.club/geth.19028554.tar.lz4 -o geth.tar.lz4
```


### checksum


!!! db size 532.79 gb, 544.34 gb after decompression
```bash
> openssl sha256 geth.tar.lz4
SHA256(geth.tar.lz4)= c4b114ed710cb60635a650215a10e2cd9654239861199a02dede8665c4bc1395
```

<!-- end_geth -->

### uncompress


running a script: _`lz4 -cd geth.tar.lz4 | tar xf -`_


### flags


```bash
--txlookuplimit=0 --diffsync --syncmode=snap
```


## erigon-snapshots


> Database uses [erigon(v2022.06.06)](https://github.com/ledgerwatch/erigon/releases/tag/v2022.06.06) for sync


### download

<!-- begin_erigon -->

!!! from block [19058874](https://bscscan.com/block/19058874)
```bash
aria2c -s14 -x14 -k100M https://snapshots.bnb48.club/erigon.19058874.tar.lz4 -o erigon.tar.lz4
```


### checksum


!!! db size 736.11 gb, 1039.24 gb after decompression
```bash
> openssl sha256 erigon.tar.lz4
SHA256(erigon.tar.lz4)= 14f47bcde439dba52d05c0f201d4a49908e5b19ca7f9c428ce34d4b43a78f67c
```

<!-- end_erigon -->

### uncompress


running a script: _`lz4 -cd erigon.tar.lz4 | tar xf -`_


### flags


```bash
--chain=bsc --prune= --prune.h.older=5000 --prune.r.older=5000 --prune.t.older=5000 --prune.c.older=5000 --db.pagesize=16k
```
