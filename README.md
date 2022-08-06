# *bsc-snapshots*


*\> [geth-snapshots](#geth-snapshots)*

*\> [erigon-snapshots](#erigon-snapshots)*

Updated every ~24~ 36 hours

Old snapshot deleted ~1~ 12 hours after new snapshot generated

## geth-snapshots


> Database uses [geth(v1.1.12)](https://github.com/bnb-chain/bsc/releases/tag/v1.1.12) for sync


### download

<!-- begin_geth -->

!!! from block [20165939](https://bscscan.com/block/20165939)
```bash
aria2c -s14 -x14 -k100M https://snapshots.bnb48.club/geth.20165939.tar.lz4 -o geth.tar.lz4
```


### checksum


!!! db size 560.85 gb, 572.92 gb after decompression
```bash
> openssl sha256 geth.tar.lz4
SHA256(geth.tar.lz4)= c52b0e52a461856e469885cfd2b3320a5e0d30a5e8eeb793d3fe8da4c86130b5
```

<!-- end_geth -->

### uncompress


running a script: _`lz4 -cd geth.tar.lz4 | tar xf -`_


### flags


```bash
--txlookuplimit=0 --diffsync=true --syncmode=full --tries-verify-mode=none --pruneancient=true --diffblock=5000
```


## erigon-snapshots


> Database uses [erigon(v2022.07.04)](https://github.com/ledgerwatch/erigon/releases/tag/v2022.07.04) for sync


### download

<!-- begin_erigon -->

!!! from block [20205320](https://bscscan.com/block/20205320)
```bash
aria2c -s14 -x14 -k100M https://snapshots.bnb48.club/erigon.20205320.tar.lz4 -o erigon.tar.lz4
```


### checksum


!!! db size 754.78 gb, 1079.61 gb after decompression
```bash
> openssl sha256 erigon.tar.lz4
SHA256(erigon.tar.lz4)= c9a7206f9c6b0d4a3793817ab47f25a2e663f895cf40dfe0ee53dfd26be7d407
```

<!-- end_erigon -->

### uncompress


running a script: _`lz4 -cd erigon.tar.lz4 | tar xf -`_


### flags


```bash
--chain=bsc --prune= --prune.h.older=5000 --prune.r.older=5000 --prune.t.older=5000 --prune.c.older=5000 --db.pagesize=16k
```
