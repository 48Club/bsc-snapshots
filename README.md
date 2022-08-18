# *bsc-snapshots*


*\> [geth-snapshots](#geth-snapshots)*

*\> [erigon-snapshots](#erigon-snapshots)*

Updated every ~24~ 36 hours

Old snapshot deleted ~1~ 12 hours after new snapshot generated

## geth-snapshots


> Database uses [geth(v1.1.12)](https://github.com/bnb-chain/bsc/releases/tag/v1.1.12) for sync


### download

<!-- begin_geth -->

!!! from block [20555109](https://bscscan.com/block/20555109)
```bash
aria2c -s14 -x14 -k100M https://snapshots.bnb48.club/geth.20555109.tar.lz4 -o geth.tar.lz4
```


### checksum


!!! db size 565.11 gb, 577.27 gb after decompression
```bash
> openssl sha256 geth.tar.lz4
SHA256(geth.tar.lz4)= 4dc6ab8fc10117b708e54416e0baba7483fe33598488d9183cb163eaa5a24ada
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

!!! from block [20550640](https://bscscan.com/block/20550640)
```bash
aria2c -s14 -x14 -k100M https://snapshots.bnb48.club/erigon.20550640.tar.lz4 -o erigon.tar.lz4
```


### checksum


!!! db size 754.99 gb, 1081.61 gb after decompression
```bash
> openssl sha256 erigon.tar.lz4
SHA256(erigon.tar.lz4)= 0381f2ec6219e53f94df71b184cc1f6612ebd8c5a175d0d7e81c5d924f787b7f
```

<!-- end_erigon -->

### uncompress


running a script: _`lz4 -cd erigon.tar.lz4 | tar xf -`_


### flags


```bash
--chain=bsc --prune= --prune.h.older=5000 --prune.r.older=5000 --prune.t.older=5000 --prune.c.older=5000 --db.pagesize=16k
```
