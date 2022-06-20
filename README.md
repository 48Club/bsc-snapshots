# *bsc-snapshots*


*\> [geth-snapshots](#geth-snapshots)*

*\> [erigon-snapshots](#erigon-snapshots)*


## geth-snapshots


> Database uses [geth(v1.1.11)](https://github.com/bnb-chain/bsc/releases/tag/v1.1.11) for sync


### download

<!-- begin_geth -->

!!! from block [18854600](https://bscscan.com/block/18854600)
```bash
aria2c -s14 -x14 -k100M https://snapshots.bnb48.club/geth.18854600.tar.lz4 -o geth.tar.lz4
```


### checksum


!!! db size 545.72 gb, 557.37 gb after decompression
```bash
> openssl sha256 geth.tar.lz4
SHA256(geth.tar.lz4)= 65b2bb539527e42c66400ed4a35fdfc68b14a5d9ca6a4f75410cdbfff8cebfdb
```

<!-- end_geth -->

### uncompress


running a script: _`lz4 -cd geth.tar.lz4 | tar xf -`_


### flags


```bash
--txlookuplimit=0 --diffsync --syncmode=snap
```


## erigon-snapshots


> Database uses [erigon(v2022.06.01)](https://github.com/ledgerwatch/erigon/releases/tag/v2022.06.01) for sync


### download

<!-- begin_erigon -->

!!! from block [18858447](https://bscscan.com/block/18858447)
```bash
aria2c -s14 -x14 -k100M https://snapshots.bnb48.club/erigon.18858447.tar.lz4 -o erigon.tar.lz4
```


### checksum


!!! db size 787.86 gb, 1803.00 gb after decompression
```bash
> openssl sha256 erigon.tar.lz4
SHA256(erigon.tar.lz4)= 2f8d086eb1ec8802db2ed4d986f2f7f3abece2ebb41f4014d227246a906735c0
```

<!-- end_erigon -->

### uncompress


running a script: _`lz4 -cd erigon.tar.lz4 | tar xf -`_


### flags


```bash
--snapshots=false --prune= --prune.h.older=5000 --prune.r.older=5000 --prune.t.older=5000 --prune.c.older=5000
```
