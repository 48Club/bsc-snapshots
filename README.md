# *bsc-snapshots*


*\> [geth-snapshots](#geth-snapshots)*

*\> [erigon-snapshots](#erigon-snapshots)*


## geth-snapshots


> Database uses [geth(v1.1.11)](https://github.com/bnb-chain/bsc/releases/tag/v1.1.11) for sync


### download

<!-- begin_geth -->

!!! from block [18885829](https://bscscan.com/block/18885829)
```bash
aria2c -s14 -x14 -k100M https://snapshots.bnb48.club/geth.18885829.tar.lz4 -o geth.tar.lz4
```


### checksum


!!! db size 551.16 gb, 562.86 gb after decompression
```bash
> openssl sha256 geth.tar.lz4
SHA256(geth.tar.lz4)= f84ecc2607110a5cfa6dd802b7e146bb3276d9be5a1d5c74e65b6e7af6a6b59f
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

!!! from block [18879302](https://bscscan.com/block/18879302)
```bash
aria2c -s14 -x14 -k100M https://snapshots.bnb48.club/erigon.18879302.tar.lz4 -o erigon.tar.lz4
```


### checksum


!!! db size 787.22 gb, 1803.00 gb after decompression
```bash
> openssl sha256 erigon.tar.lz4
SHA256(erigon.tar.lz4)= 1684db28b0d0edd7faa1224bf3dc4ac8ce8c5059f9fc55a6e1f6f3d1ba4ffcb8
```

<!-- end_erigon -->

### uncompress


running a script: _`lz4 -cd erigon.tar.lz4 | tar xf -`_


### flags


```bash
--snapshots=false --prune= --prune.h.older=5000 --prune.r.older=5000 --prune.t.older=5000 --prune.c.older=5000
```
