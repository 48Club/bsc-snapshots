# *bsc-snapshots*


*\> [geth-snapshots](#geth-snapshots)*

*\> [erigon-snapshots](#erigon-snapshots)*

Updated every ~24~ 36 hours

Old snapshot deleted ~1~ 12 hours after new snapshot generated

## geth-snapshots


> Database uses [geth(v1.1.12)](https://github.com/bnb-chain/bsc/releases/tag/v1.1.12) for sync


### download

<!-- begin_geth -->

!!! from block [20094119](https://bscscan.com/block/20094119)
```bash
aria2c -s14 -x14 -k100M https://snapshots.bnb48.club/geth.20094119.tar.lz4 -o geth.tar.lz4
```


### checksum


!!! db size 558.96 gb, 571.00 gb after decompression
```bash
> openssl sha256 geth.tar.lz4
SHA256(geth.tar.lz4)= 6a014aa28d6fcf436c47984b93c3fdeebddaa7877b755439ba579603f74a32b7
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

!!! from block [20089634](https://bscscan.com/block/20089634)
```bash
aria2c -s14 -x14 -k100M https://snapshots.bnb48.club/erigon.20089634.tar.lz4 -o erigon.tar.lz4
```


### checksum


!!! db size 754.34 gb, 1077.33 gb after decompression
```bash
> openssl sha256 erigon.tar.lz4
SHA256(erigon.tar.lz4)= c23adbbf1bf6604f7595b5479bb2ad14dd5214a5907e41d8684d2758a73de7c5
```

<!-- end_erigon -->

### uncompress


running a script: _`lz4 -cd erigon.tar.lz4 | tar xf -`_


### flags


```bash
--chain=bsc --prune= --prune.h.older=5000 --prune.r.older=5000 --prune.t.older=5000 --prune.c.older=5000 --db.pagesize=16k
```
