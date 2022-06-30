# *bsc-snapshots*


*\> [geth-snapshots](#geth-snapshots)*

*\> [erigon-snapshots](#erigon-snapshots)*


## geth-snapshots


> Database uses [geth(v1.1.11)](https://github.com/bnb-chain/bsc/releases/tag/v1.1.11) for sync


### download

<!-- begin_geth -->

!!! from block [19121039](https://bscscan.com/block/19121039)
```bash
aria2c -s14 -x14 -k100M https://snapshots.bnb48.club/geth.19121039.tar.lz4 -o geth.tar.lz4
```


### checksum


!!! db size 535.75 gb, 547.33 gb after decompression
```bash
> openssl sha256 geth.tar.lz4
SHA256(geth.tar.lz4)= 4076ed700e967d7be77fb04a186ca1b0f0a76d9882a034f0e7fc0b6fd5d81fcb
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

!!! from block [19144712](https://bscscan.com/block/19144712)
```bash
aria2c -s14 -x14 -k100M https://snapshots.bnb48.club/erigon.19144712.tar.lz4 -o erigon.tar.lz4
```


### checksum


!!! db size 733.92 gb, 1039.24 gb after decompression
```bash
> openssl sha256 erigon.tar.lz4
SHA256(erigon.tar.lz4)= 4ed4151c93d7c32aaf61c83704a1d17df68123a2627e755e4a025f1df77b2ad7
```

<!-- end_erigon -->

### uncompress


running a script: _`lz4 -cd erigon.tar.lz4 | tar xf -`_


### flags


```bash
--chain=bsc --prune= --prune.h.older=5000 --prune.r.older=5000 --prune.t.older=5000 --prune.c.older=5000 --db.pagesize=16k
```
