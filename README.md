# *bsc-snapshots*


*\> [geth-snapshots](#geth-snapshots)*

*\> [erigon-snapshots](#erigon-snapshots)*


## geth-snapshots


> Database uses [geth(v1.1.11)](https://github.com/bnb-chain/bsc/releases/tag/v1.1.11) for sync


### download

<!-- begin_geth -->

!!! from block [19682108](https://bscscan.com/block/19682108)
```bash
aria2c -s14 -x14 -k100M https://snapshots.bnb48.club/geth.19682108.tar.lz4 -o geth.tar.lz4
```


### checksum


!!! db size 549.65 gb, 561.40 gb after decompression
```bash
> openssl sha256 geth.tar.lz4
SHA256(geth.tar.lz4)= b9ef7cd0a2b7120b3adbc3829ee3ebdc4a5bc3039f0760a2d298ccc8d44a51ee
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

!!! from block [19678090](https://bscscan.com/block/19678090)
```bash
aria2c -s14 -x14 -k100M https://snapshots.bnb48.club/erigon.19678090.tar.lz4 -o erigon.tar.lz4
```


### checksum


!!! db size 755.28 gb, 1074.28 gb after decompression
```bash
> openssl sha256 erigon.tar.lz4
SHA256(erigon.tar.lz4)= e30198b929ca44773ad594137b16eb34133f3582dc93f8d653e07fcd1ebc8af4
```

<!-- end_erigon -->

### uncompress


running a script: _`lz4 -cd erigon.tar.lz4 | tar xf -`_


### flags


```bash
--chain=bsc --prune= --prune.h.older=5000 --prune.r.older=5000 --prune.t.older=5000 --prune.c.older=5000 --db.pagesize=16k
```
