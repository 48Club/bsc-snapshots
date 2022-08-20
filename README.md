# *bsc-snapshots*


*\> [geth-snapshots](#geth-snapshots)*

*\> [erigon-snapshots](#erigon-snapshots)*

Updated every ~24~ 36 hours

Old snapshot deleted ~1~ 12 hours after new snapshot generated

## geth-snapshots


> Database uses [geth(v1.1.12)](https://github.com/bnb-chain/bsc/releases/tag/v1.1.12) for sync


### download

<!-- begin_geth -->

!!! from block [20599679](https://bscscan.com/block/20599679)
```bash
aria2c -s14 -x14 -k100M https://snapshots.bnb48.club/geth.20599679.tar.lz4 -o geth.tar.lz4
```


### checksum


!!! db size 565.24 gb, 577.40 gb after decompression
```bash
> openssl sha256 geth.tar.lz4
SHA256(geth.tar.lz4)= a79cdcaa1691819e1a153f61b9d3be1f20c036fed222be5ca1b2df07bbdda2d7
```

<!-- end_geth -->

### uncompress


running a script: _`lz4 -cd geth.tar.lz4 | tar xf -`_


### flags


```bash
--txlookuplimit=0 --diffsync=true --syncmode=full --tries-verify-mode=none --pruneancient=true --diffblock=5000
```


## erigon-snapshots


> Database uses [erigon(v2022.08.02)](https://github.com/ledgerwatch/erigon/releases/tag/v2022.08.02) for sync


### download

<!-- begin_erigon -->

!!! from block [20595001](https://bscscan.com/block/20595001)
```bash
aria2c -s14 -x14 -k100M https://snapshots.bnb48.club/erigon.20595001.tar.lz4 -o erigon.tar.lz4
```


### checksum


!!! db size 757.03 gb, 1083.80 gb after decompression
```bash
> openssl sha256 erigon.tar.lz4
SHA256(erigon.tar.lz4)= b4c898187b21b81f93f6e7377c6a9929d1a7330a108e85ec840a4451449aa5cd
```

<!-- end_erigon -->

### uncompress


running a script: _`lz4 -cd erigon.tar.lz4 | tar xf -`_


### flags


```bash
--chain=bsc --prune= --prune.h.older=5000 --prune.r.older=5000 --prune.t.older=5000 --prune.c.older=5000 --db.pagesize=16k
```
