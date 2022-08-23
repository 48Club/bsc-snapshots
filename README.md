# *bsc-snapshots*


*\> [geth-snapshots](#geth-snapshots)*

*\> [erigon-snapshots](#erigon-snapshots)*

Updated every ~24~ 36 hours

Old snapshot deleted ~1~ 12 hours after new snapshot generated

## geth-snapshots


> Database uses [geth(v1.1.12)](https://github.com/bnb-chain/bsc/releases/tag/v1.1.12) for sync


### download

<!-- begin_geth -->

!!! from block [20685301](https://bscscan.com/block/20685301)
```bash
aria2c -s14 -x14 -k100M https://snapshots.bnb48.club/geth.20685301.tar.lz4 -o geth.tar.lz4
```


### checksum


!!! db size 566.83 gb, 579.11 gb after decompression
```bash
> openssl sha256 geth.tar.lz4
SHA256(geth.tar.lz4)= d74e42943fbc8b5d2701551a7882484937ccf3ae04602de7b8f4286165d02f1e
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

!!! from block [20681513](https://bscscan.com/block/20681513)
```bash
aria2c -s14 -x14 -k100M https://snapshots.bnb48.club/erigon.20681513.tar.lz4 -o erigon.tar.lz4
```


### checksum


!!! db size 758.28 gb, 1085.80 gb after decompression
```bash
> openssl sha256 erigon.tar.lz4
SHA256(erigon.tar.lz4)= 42596e0e1ec5c1f1843fe3b499cb9942304b3e3a07d5fc7c2ae050081d3a0f1e
```

<!-- end_erigon -->

### uncompress


running a script: _`lz4 -cd erigon.tar.lz4 | tar xf -`_


### flags


```bash
--chain=bsc --prune= --prune.h.older=5000 --prune.r.older=5000 --prune.t.older=5000 --prune.c.older=5000 --db.pagesize=16k
```
