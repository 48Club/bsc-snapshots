# *bsc-snapshots*


*\> [geth-snapshots](#geth-snapshots)*

*\> [erigon-snapshots](#erigon-snapshots)*


## geth-snapshots


> Database uses [geth(v1.1.11)](https://github.com/bnb-chain/bsc/releases/tag/v1.1.11) for sync


### download

<!-- begin_geth -->

!!! from block [18699927](https://bscscan.com/block/18699927)
```bash
aria2c -s14 -x14 -k100M https://snapshots.bnb48.club/geth.18699927.tar.gz -o geth.tar.gz
```


### checksum


!!! db size 513.87 gb, 546.66 gb after decompression
```bash
> openssl sha256 geth.tar.gz
SHA256(geth.tar.gz)= 2293e7e6a654ba0ee2d017944b4da84b6ea2cf02e15a862cd037f5d41b493172
```

<!-- end_geth -->

### uncompress


running a script: _`pigz -dkc geth.tar.gz | tar xvf -`_


### flags


```bash
--txlookuplimit=0 --diffsync --syncmode=snap
```


## erigon-snapshots


> Database uses [erigon(v2022.06.01)](https://github.com/ledgerwatch/erigon/releases/tag/v2022.06.01) for sync


### download

<!-- begin_erigon -->

!!! from block [18707540](https://bscscan.com/block/18707540)
```bash
aria2c -s14 -x14 -k100M https://snapshots.bnb48.club/erigon.18707540.tar.gz -o erigon.tar.gz
```


### checksum


!!! db size 746.14 gb, 1803.00 gb after decompression
```bash
> openssl sha256 erigon.tar.gz
SHA256(erigon.tar.gz)= c58d8fd4a5e6833eb30d834874ebaf4d1085565a00b8179d9f3415bef549c8f3
```

<!-- end_erigon -->

### uncompress


running a script: _`pigz -dkc erigon.tar.gz | tar xvf -`_


### flags


```bash
--snapshots=false --prune= --prune.h.older=5000 --prune.r.older=5000 --prune.t.older=5000 --prune.c.older=5000
```
