# *bsc-snapshots*


*\> [geth-snapshots](#geth-snapshots)*

*\> [erigon-snapshots](#erigon-snapshots)*


## geth-snapshots


> Database uses [geth(v1.1.11)](https://github.com/bnb-chain/bsc/releases/tag/v1.1.11) for sync


### download

<!-- begin_geth -->

!!! from block [19292979](https://bscscan.com/block/19292979)
```bash
aria2c -s14 -x14 -k100M https://snapshots.bnb48.club/geth.19292979.tar.lz4 -o geth.tar.lz4
```


### checksum


!!! db size 539.85 gb, 551.48 gb after decompression
```bash
> openssl sha256 geth.tar.lz4
SHA256(geth.tar.lz4)= 7d0f07dd1aed0d12e0a30bf9869e32b8a0bfd39fefc809cd9b09b4a2b7d9e104
```

<!-- end_geth -->

### uncompress


running a script: _`lz4 -cd geth.tar.lz4 | tar xf -`_


### flags


```bash
--txlookuplimit=0 --diffsync --syncmode=snap
```


## erigon-snapshots


> Database uses [erigon(v2022.07.01)](https://github.com/ledgerwatch/erigon/releases/tag/v2022.07.01) for sync


### download

<!-- begin_erigon -->

!!! from block [19288670](https://bscscan.com/block/19288670)
```bash
aria2c -s14 -x14 -k100M https://snapshots.bnb48.club/erigon.19288670.tar.lz4 -o erigon.tar.lz4
```


### checksum


!!! db size 730.31 gb, 1039.24 gb after decompression
```bash
> openssl sha256 erigon.tar.lz4
SHA256(erigon.tar.lz4)= f298491f3badebc45bdd91aad30fe43cd9acfcf287f27af466f68bf2b42f3379
```

<!-- end_erigon -->

### uncompress


running a script: _`lz4 -cd erigon.tar.lz4 | tar xf -`_


### flags


```bash
--chain=bsc --prune= --prune.h.older=5000 --prune.r.older=5000 --prune.t.older=5000 --prune.c.older=5000 --db.pagesize=16k
```
