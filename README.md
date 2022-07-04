# *bsc-snapshots*


*\> [geth-snapshots](#geth-snapshots)*

*\> [erigon-snapshots](#erigon-snapshots)*


## geth-snapshots


> Database uses [geth(v1.1.11)](https://github.com/bnb-chain/bsc/releases/tag/v1.1.11) for sync


### download

<!-- begin_geth -->

!!! from block [19264202](https://bscscan.com/block/19264202)
```bash
aria2c -s14 -x14 -k100M https://snapshots.bnb48.club/geth.19264202.tar.lz4 -o geth.tar.lz4
```


### checksum


!!! db size 538.88 gb, 550.49 gb after decompression
```bash
> openssl sha256 geth.tar.lz4
SHA256(geth.tar.lz4)= 5619f7a84006eb1268b3577f848fabeefd84f30e3615477824700889e33875f3
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

!!! from block [19260100](https://bscscan.com/block/19260100)
```bash
aria2c -s14 -x14 -k100M https://snapshots.bnb48.club/erigon.19260100.tar.lz4 -o erigon.tar.lz4
```


### checksum


!!! db size 731.16 gb, 1039.24 gb after decompression
```bash
> openssl sha256 erigon.tar.lz4
SHA256(erigon.tar.lz4)= afa6c38d1a25a03d9d3905738a748998b602dd7d468c43db0b844b6b8d64ec66
```

<!-- end_erigon -->

### uncompress


running a script: _`lz4 -cd erigon.tar.lz4 | tar xf -`_


### flags


```bash
--chain=bsc --prune= --prune.h.older=5000 --prune.r.older=5000 --prune.t.older=5000 --prune.c.older=5000 --db.pagesize=16k
```
