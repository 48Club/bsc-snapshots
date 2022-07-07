# *bsc-snapshots*


*\> [geth-snapshots](#geth-snapshots)*

*\> [erigon-snapshots](#erigon-snapshots)*


## geth-snapshots


> Database uses [geth(v1.1.11)](https://github.com/bnb-chain/bsc/releases/tag/v1.1.11) for sync


### download

<!-- begin_geth -->

!!! from block [19325106](https://bscscan.com/block/19325106)
```bash
aria2c -s14 -x14 -k100M https://snapshots.bnb48.club/geth.19325106.tar.lz4 -o geth.tar.lz4
```


### checksum


!!! db size 540.93 gb, 552.57 gb after decompression
```bash
> openssl sha256 geth.tar.lz4
SHA256(geth.tar.lz4)= 0241beec90d9fc4d09209f86649e46985f00409365521b06b40d3303b2ed5390
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

!!! from block [19347090](https://bscscan.com/block/19347090)
```bash
aria2c -s14 -x14 -k100M https://snapshots.bnb48.club/erigon.19347090.tar.lz4 -o erigon.tar.lz4
```


### checksum


!!! db size 734.98 gb, 1045.93 gb after decompression
```bash
> openssl sha256 erigon.tar.lz4
SHA256(erigon.tar.lz4)= f6f54ad07e1d92563d92ac21110d229b5ecbe4f3a6262142f38eb15a6d812fd1
```

<!-- end_erigon -->

### uncompress


running a script: _`lz4 -cd erigon.tar.lz4 | tar xf -`_


### flags


```bash
--chain=bsc --prune= --prune.h.older=5000 --prune.r.older=5000 --prune.t.older=5000 --prune.c.older=5000 --db.pagesize=16k
```
