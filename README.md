# *bsc-snapshots*


*\> [geth-snapshots](#geth-snapshots)*

*\> [erigon-snapshots](#erigon-snapshots)*


## geth-snapshots


> Database uses [geth(v1.1.11)](https://github.com/bnb-chain/bsc/releases/tag/v1.1.11) for sync


### download

<!-- begin_geth -->

!!! from block [19235120](https://bscscan.com/block/19235120)
```bash
aria2c -s14 -x14 -k100M https://snapshots.bnb48.club/geth.19235120.tar.lz4 -o geth.tar.lz4
```


### checksum


!!! db size 538.03 gb, 549.64 gb after decompression
```bash
> openssl sha256 geth.tar.lz4
SHA256(geth.tar.lz4)= 93e828c947640b87cd69191ed36549b643c89eabf27e423a89f1f2636c8e0a0b
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

!!! from block [19231072](https://bscscan.com/block/19231072)
```bash
aria2c -s14 -x14 -k100M https://snapshots.bnb48.club/erigon.19231072.tar.lz4 -o erigon.tar.lz4
```


### checksum


!!! db size 731.60 gb, 1039.24 gb after decompression
```bash
> openssl sha256 erigon.tar.lz4
SHA256(erigon.tar.lz4)= 24e3094b393da2262c148d72e52f8d3da5adcf9e7f39629681e362422b026fff
```

<!-- end_erigon -->

### uncompress


running a script: _`lz4 -cd erigon.tar.lz4 | tar xf -`_


### flags


```bash
--chain=bsc --prune= --prune.h.older=5000 --prune.r.older=5000 --prune.t.older=5000 --prune.c.older=5000 --db.pagesize=16k
```
