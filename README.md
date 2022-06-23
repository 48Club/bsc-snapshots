# *bsc-snapshots*


*\> [geth-snapshots](#geth-snapshots)*

*\> [erigon-snapshots](#erigon-snapshots)*


## geth-snapshots


> Database uses [geth(v1.1.11)](https://github.com/bnb-chain/bsc/releases/tag/v1.1.11) for sync


### download

<!-- begin_geth -->

!!! from block [18927283](https://bscscan.com/block/18927283)
```bash
aria2c -s14 -x14 -k100M https://snapshots.bnb48.club/geth.18927283.tar.lz4 -o geth.tar.lz4
```


### checksum


!!! db size 601.01 gb, 613.12 gb after decompression
```bash
> openssl sha256 geth.tar.lz4
SHA256(geth.tar.lz4)= c68d9ce0348b8d1384d7d93241fb633695f8278f815b1c002f266386cd834673
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

!!! from block [18889595](https://bscscan.com/block/18889595)
```bash
aria2c -s14 -x14 -k100M https://snapshots.bnb48.club/erigon.18889595.tar.lz4 -o erigon.tar.lz4
```


### checksum


!!! db size 787.73 gb, 1803.00 gb after decompression
```bash
> openssl sha256 erigon.tar.lz4
SHA256(erigon.tar.lz4)= a385a888d13f27c7aeb1957e29b042fef003a90bc34de398be36f5cdc495c725
```

<!-- end_erigon -->

### uncompress


running a script: _`lz4 -cd erigon.tar.lz4 | tar xf -`_


### flags


```bash
--snapshots=false --prune= --prune.h.older=5000 --prune.r.older=5000 --prune.t.older=5000 --prune.c.older=5000
```
