# *bsc-snapshots*


*\> [geth-snapshots](#geth-snapshots)*

*\> [erigon-snapshots](#erigon-snapshots)*


## geth-snapshots


> Database uses [geth(v1.1.11)](https://github.com/bnb-chain/bsc/releases/tag/v1.1.11) for sync


### download

<!-- begin_geth -->

!!! from block [19452575](https://bscscan.com/block/19452575)
```bash
aria2c -s14 -x14 -k100M https://snapshots.bnb48.club/geth.19452575.tar.lz4 -o geth.tar.lz4
```


### checksum


!!! db size 541.85 gb, 553.50 gb after decompression
```bash
> openssl sha256 geth.tar.lz4
SHA256(geth.tar.lz4)= 0031dc5759c9817e45bdc0c387066fadbc40a38507dc009d9821f61f358e120d
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

!!! from block [19473534](https://bscscan.com/block/19473534)
```bash
aria2c -s14 -x14 -k100M https://snapshots.bnb48.club/erigon.19473534.tar.lz4 -o erigon.tar.lz4
```


### checksum


!!! db size 754.99 gb, 1070.96 gb after decompression
```bash
> openssl sha256 erigon.tar.lz4
SHA256(erigon.tar.lz4)= 8fa2e9b36c2edb417d0c2f8e7bc9629d6a9a9b706dd427e5182d39c4e9da1722
```

<!-- end_erigon -->

### uncompress


running a script: _`lz4 -cd erigon.tar.lz4 | tar xf -`_


### flags


```bash
--chain=bsc --prune= --prune.h.older=5000 --prune.r.older=5000 --prune.t.older=5000 --prune.c.older=5000 --db.pagesize=16k
```
