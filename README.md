# *bsc-snapshots*


*\> [geth-snapshots](#geth-snapshots)*

*\> [erigon-snapshots](#erigon-snapshots)*

Updated every ~24~ 36 hours

Old snapshot deleted ~1~ 12 hours after new snapshot generated

## geth-snapshots


> Database uses [geth(v1.1.12)](https://github.com/bnb-chain/bsc/releases/tag/v1.1.12) for sync


### download

<!-- begin_geth -->

!!! from block [21016695](https://bscscan.com/block/21016695)
```bash
aria2c -s14 -x14 -k100M https://snapshots.bnb48.club/geth.21016695.tar.lz4 -o geth.tar.lz4
```


### checksum


!!! db size 573.53 gb, 585.84 gb after decompression
```bash
> openssl sha256 geth.tar.lz4
SHA256(geth.tar.lz4)= 11a56cc32a663861b7efce6d40c4653762ec0ea9578a3143cd3fa3097ca45f6c
```

<!-- end_geth -->

### uncompress


running a script: _`lz4 -cd geth.tar.lz4 | tar xf -`_


### flags


```bash
--txlookuplimit=0 --diffsync=true --syncmode=full --tries-verify-mode=none --pruneancient=true --diffblock=5000
```


## erigon-snapshots


> Database uses [erigon(v2022.08.03)](https://github.com/ledgerwatch/erigon/releases/tag/v2022.08.03) for sync


### download

<!-- begin_erigon -->

!!! from block [21010923](https://bscscan.com/block/21010923)
```bash
aria2c -s14 -x14 -k100M https://snapshots.bnb48.club/erigon.21010923.tar.lz4 -o erigon.tar.lz4
```


### checksum


!!! db size 818.34 gb, 1191.18 gb after decompression
```bash
> openssl sha256 erigon.tar.lz4
SHA256(erigon.tar.lz4)= d36958287c0d22510e041db6c498876e4791daaea6d7c6cabc741af85cb17597
```

<!-- end_erigon -->

### uncompress


running a script: _`lz4 -cd erigon.tar.lz4 | tar xf -`_


### flags


```bash
--chain=bsc --prune=hrtc --db.pagesize=16k
```
