# *bsc-snapshots*


*\> [geth-snapshots](#geth-snapshots)*

*\> [erigon-snapshots](#erigon-snapshots)*


## geth-snapshots


> Database uses [geth(v1.1.11)](https://github.com/bnb-chain/bsc/releases/tag/v1.1.11) for sync


### download

<!-- begin_geth -->

!!! from block [19351187](https://bscscan.com/block/19351187)
```bash
aria2c -s14 -x14 -k100M https://snapshots.bnb48.club/geth.19351187.tar.lz4 -o geth.tar.lz4
```


### checksum


!!! db size 541.54 gb, 553.19 gb after decompression
```bash
> openssl sha256 geth.tar.lz4
SHA256(geth.tar.lz4)= 57640f8c7a9411472a48e99b235bca5f5a716f84827dc545f6775bc066146811
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

!!! from block [19375577](https://bscscan.com/block/19375577)
```bash
aria2c -s14 -x14 -k100M https://snapshots.bnb48.club/erigon.19375577.tar.lz4 -o erigon.tar.lz4
```


### checksum


!!! db size 734.08 gb, 1045.93 gb after decompression
```bash
> openssl sha256 erigon.tar.lz4
SHA256(erigon.tar.lz4)= e77486b46f7a5179bee6f0fa8ebad6f34ada0875ea0e458764ece8ec4947f1b8
```

<!-- end_erigon -->

### uncompress


running a script: _`lz4 -cd erigon.tar.lz4 | tar xf -`_


### flags


```bash
--chain=bsc --prune= --prune.h.older=5000 --prune.r.older=5000 --prune.t.older=5000 --prune.c.older=5000 --db.pagesize=16k
```
