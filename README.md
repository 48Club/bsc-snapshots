# *bsc-snapshots*


*\> [geth-snapshots](#geth-snapshots)*

*\> [erigon-snapshots](#erigon-snapshots)*

Updated every ~24~ 36 hours

Old snapshot deleted ~1~ 12 hours after new snapshot generated

## geth-snapshots


> Database uses [geth(v1.1.12)](https://github.com/bnb-chain/bsc/releases/tag/v1.1.12) for sync


### download

<!-- begin_geth -->

!!! from block [20130605](https://bscscan.com/block/20130605)
```bash
aria2c -s14 -x14 -k100M https://snapshots.bnb48.club/geth.20130605.tar.lz4 -o geth.tar.lz4
```


### checksum


!!! db size 560.21 gb, 572.37 gb after decompression
```bash
> openssl sha256 geth.tar.lz4
SHA256(geth.tar.lz4)= e7c2468e9f2568966b53e41564f58f267eb0f810ecd5fd94918de3d339aa7433
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

!!! from block [20126292](https://bscscan.com/block/20126292)
```bash
aria2c -s14 -x14 -k100M https://snapshots.bnb48.club/erigon.20126292.tar.lz4 -o erigon.tar.lz4
```


### checksum


!!! db size 754.06 gb, 1077.33 gb after decompression
```bash
> openssl sha256 erigon.tar.lz4
SHA256(erigon.tar.lz4)= f0bde9e4e1d9de83abea0c686c758728d0f188f2211102b33eccb477391c3551
```

<!-- end_erigon -->

### uncompress


running a script: _`lz4 -cd erigon.tar.lz4 | tar xf -`_


### flags


```bash
--chain=bsc --prune= --prune.h.older=5000 --prune.r.older=5000 --prune.t.older=5000 --prune.c.older=5000 --db.pagesize=16k
```
