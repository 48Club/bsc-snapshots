# *bsc-snapshots*


*\> [geth-snapshots](#geth-snapshots)*

*\> [erigon-snapshots](#erigon-snapshots)*


## geth-snapshots


> Database uses [geth(v1.1.11)](https://github.com/bnb-chain/bsc/releases/tag/v1.1.11) for sync


### download

<!-- begin_geth -->

!!! from block [18864196](https://bscscan.com/block/18864196)
```bash
aria2c -s14 -x14 -k100M https://snapshots.bnb48.club/geth.18864196.tar.lz4 -o geth.tar.lz4
```


### checksum


!!! db size 542.45 gb, 554.09 gb after decompression
```bash
> openssl sha256 geth.tar.lz4
SHA256(geth.tar.lz4)= 661592f8e4d7da8fc041ba6a196cfcf6cb7c3c224021788cddb5c05cf79a47b2
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

!!! from block [18867578](https://bscscan.com/block/18867578)
```bash
aria2c -s14 -x14 -k100M https://snapshots.bnb48.club/erigon.18867578.tar.lz4 -o erigon.tar.lz4
```


### checksum


!!! db size 788.58 gb, 1803.00 gb after decompression
```bash
> openssl sha256 erigon.tar.lz4
SHA256(erigon.tar.lz4)= 42f70a16eb48c19e55c53473a4d43c637a650577238259e58118fb3c8cee9643
```

<!-- end_erigon -->

### uncompress


running a script: _`lz4 -cd erigon.tar.lz4 | tar xf -`_


### flags


```bash
--snapshots=false --prune= --prune.h.older=5000 --prune.r.older=5000 --prune.t.older=5000 --prune.c.older=5000
```
