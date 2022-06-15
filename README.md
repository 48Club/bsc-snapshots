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


## erigon-snapshots


> Database uses [erigon(v2022.06.01)](https://github.com/ledgerwatch/erigon/releases/tag/v2022.06.01) for sync


### download

<!-- begin_erigon -->

!!! from block [18695061](https://bscscan.com/block/18695061)
```bash
aria2c -s14 -x14 -k100M https://snapshots.bnb48.club/erigon.18695061.tar.gz -o erigon.tar.gz
```


### checksum


!!! db size 745.96 gb, 1803.00 gb after decompression
```bash
> openssl sha256 erigon.tar.gz
SHA256(erigon.tar.gz)= 5a7b6b01b263d6ab4ec39d818e9ba75ff0e97ca0520f3fc859eb03718e57cf5c
```

<!-- end_erigon -->

### uncompress


running a script: _`pigz -dkc erigon.tar.gz | tar xvf -`_


### flags


```bash
--snapshots=false --prune= --prune.h.older=5000 --prune.r.older=5000 --prune.t.older=5000 --prune.c.older=5000
```