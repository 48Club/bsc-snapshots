# *bsc-snapshots*


*\> [geth-snapshots](#geth-snapshots)*

*\> [erigon-snapshots](#erigon-snapshots)*

Updated every ~24~ 36 hours

Old snapshot deleted ~1~ 12 hours after new snapshot generated

## geth-snapshots


> Database uses [geth(v1.1.12)](https://github.com/bnb-chain/bsc/releases/tag/v1.1.12) for sync


### download

<!-- begin_geth -->

!!! from block [20252980](https://bscscan.com/block/20252980)
```bash
aria2c -s14 -x14 -k100M https://snapshots.bnb48.club/geth.20252980.tar.lz4 -o geth.tar.lz4
```


### checksum


!!! db size 562.13 gb, 574.33 gb after decompression
```bash
> openssl sha256 geth.tar.lz4
SHA256(geth.tar.lz4)= 8bc0d4db25e110b73139f5c570bb0def90eeb8f70430c4be8b1c4d904cbebcb6
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

!!! from block [20248676](https://bscscan.com/block/20248676)
```bash
aria2c -s14 -x14 -k100M https://snapshots.bnb48.club/erigon.20248676.tar.lz4 -o erigon.tar.lz4
```


### checksum


!!! db size 754.98 gb, 1079.61 gb after decompression
```bash
> openssl sha256 erigon.tar.lz4
SHA256(erigon.tar.lz4)= 57f7796e284cec4201d334b3bf537dc962b5b014ff7459d355f6c63313503dc7
```

<!-- end_erigon -->

### uncompress


running a script: _`lz4 -cd erigon.tar.lz4 | tar xf -`_


### flags


```bash
--chain=bsc --prune= --prune.h.older=5000 --prune.r.older=5000 --prune.t.older=5000 --prune.c.older=5000 --db.pagesize=16k
```
