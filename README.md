# *bsc-snapshots*


*\> [geth-snapshots](#geth-snapshots)*

*\> [erigon-snapshots](#erigon-snapshots)*


## geth-snapshots


> Database uses [geth(v1.1.11)](https://github.com/bnb-chain/bsc/releases/tag/v1.1.11) for sync


### download

<!-- begin_geth -->

!!! from block [19149098](https://bscscan.com/block/19149098)
```bash
aria2c -s14 -x14 -k100M https://snapshots.bnb48.club/geth.19149098.tar.lz4 -o geth.tar.lz4
```


### checksum


!!! db size 536.61 gb, 548.21 gb after decompression
```bash
> openssl sha256 geth.tar.lz4
SHA256(geth.tar.lz4)= 37f262a08f2101d4d6dfc4be660dda6d46d2518685432285cba509f8d41609ac
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

!!! from block [19173451](https://bscscan.com/block/19173451)
```bash
aria2c -s14 -x14 -k100M https://snapshots.bnb48.club/erigon.19173451.tar.lz4 -o erigon.tar.lz4
```


### checksum


!!! db size 733.18 gb, 1039.24 gb after decompression
```bash
> openssl sha256 erigon.tar.lz4
SHA256(erigon.tar.lz4)= 7a6d6534460169c4c72a36480dd47a09903a0c3d9575527f813ffa6100aa29f6
```

<!-- end_erigon -->

### uncompress


running a script: _`lz4 -cd erigon.tar.lz4 | tar xf -`_


### flags


```bash
--chain=bsc --prune= --prune.h.older=5000 --prune.r.older=5000 --prune.t.older=5000 --prune.c.older=5000 --db.pagesize=16k
```
