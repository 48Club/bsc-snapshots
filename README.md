# *bsc-snapshots*


*\> [geth-snapshots](#geth-snapshots)*

*\> [erigon-snapshots](#erigon-snapshots)*


## geth-snapshots


> Database uses [geth(v1.1.11)](https://github.com/bnb-chain/bsc/releases/tag/v1.1.11) for sync


### download

<!-- begin_geth -->

!!! from block [18944145](https://bscscan.com/block/18944145)
```bash
aria2c -s14 -x14 -k100M https://snapshots.bnb48.club/geth.18944145.tar.lz4 -o geth.tar.lz4
```


### checksum


!!! db size 543.61 gb, 555.25 gb after decompression
```bash
> openssl sha256 geth.tar.lz4
SHA256(geth.tar.lz4)= 872d7fa93a7f3d0f3f193794df3b76baddf60d1f111ef11a7e7c393f0eddb957
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

!!! from block [18947865](https://bscscan.com/block/18947865)
```bash
aria2c -s14 -x14 -k100M https://snapshots.bnb48.club/erigon.18947865.tar.lz4 -o erigon.tar.lz4
```


### checksum


!!! db size 787.59 gb, 1803.00 gb after decompression
```bash
> openssl sha256 erigon.tar.lz4
SHA256(erigon.tar.lz4)= 6c9241f9502597a97bb88c365b89b60fe1a254a3b48fa2d2262de8e1a96bcd55
```

<!-- end_erigon -->

### uncompress


running a script: _`lz4 -cd erigon.tar.lz4 | tar xf -`_


### flags


```bash
--snapshots=false --prune= --prune.h.older=5000 --prune.r.older=5000 --prune.t.older=5000 --prune.c.older=5000
```
