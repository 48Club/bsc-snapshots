# *bsc-snapshots*


*\> [geth-snapshots](#geth-snapshots)*

*\> [erigon-snapshots](#erigon-snapshots)*

Updated every ~24~ 36 hours

Old snapshot deleted ~1~ 12 hours after new snapshot generated

## geth-snapshots


> Database uses [geth(v1.1.12)](https://github.com/bnb-chain/bsc/releases/tag/v1.1.12) for sync


### download

<!-- begin_geth -->

!!! from block [20295341](https://bscscan.com/block/20295341)
```bash
aria2c -s14 -x14 -k100M https://snapshots.bnb48.club/geth.20295341.tar.lz4 -o geth.tar.lz4
```


### checksum


!!! db size 562.55 gb, 574.82 gb after decompression
```bash
> openssl sha256 geth.tar.lz4
SHA256(geth.tar.lz4)= f00733ba949973d098742203dafc3290ba8c72dcb1e2bbfdc2a9d6b27d61aa13
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

!!! from block [20334970](https://bscscan.com/block/20334970)
```bash
aria2c -s14 -x14 -k100M https://snapshots.bnb48.club/erigon.20334970.tar.lz4 -o erigon.tar.lz4
```


### checksum


!!! db size 755.19 gb, 1079.61 gb after decompression
```bash
> openssl sha256 erigon.tar.lz4
SHA256(erigon.tar.lz4)= 188f2d73e8ba4a791a25eae624099c93a5b164077fa807bdcf0d749eb999c460
```

<!-- end_erigon -->

### uncompress


running a script: _`lz4 -cd erigon.tar.lz4 | tar xf -`_


### flags


```bash
--chain=bsc --prune= --prune.h.older=5000 --prune.r.older=5000 --prune.t.older=5000 --prune.c.older=5000 --db.pagesize=16k
```
