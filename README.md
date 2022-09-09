# *bsc-snapshots*


*\> [geth-snapshots](#geth-snapshots)*

*\> [erigon-snapshots](#erigon-snapshots)*

Updated every ~24~ 36 hours

Old snapshot deleted ~1~ 12 hours after new snapshot generated

## geth-snapshots


> Database uses [geth(v1.1.12)](https://github.com/bnb-chain/bsc/releases/tag/v1.1.12) for sync


### download

<!-- begin_geth -->

!!! from block [21150556](https://bscscan.com/block/21150556)
```bash
aria2c -s14 -x14 -k100M https://snapshots.bnb48.club/geth.21150556.tar.lz4 -o geth.tar.lz4
```


### checksum


!!! db size 575.21 gb, 587.66 gb after decompression
```bash
> openssl sha256 geth.tar.lz4
SHA256(geth.tar.lz4)= 7679439053c3fec7a577945743b142c031a5fbb0fb557d2c7417d0e6289fc559
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

!!! from block [21182614](https://bscscan.com/block/21182614)
```bash
aria2c -s14 -x14 -k100M https://snapshots.bnb48.club/erigon.21182614.tar.lz4 -o erigon.tar.lz4
```


### checksum


!!! db size 818.00 gb, 1191.21 gb after decompression
```bash
> openssl sha256 erigon.tar.lz4
SHA256(erigon.tar.lz4)= 3ee54c8ee1e8e1d67a179938e1a5e952d2a58aa2d33224242b0a5ac36a8b19d4
```

<!-- end_erigon -->

### uncompress


running a script: _`lz4 -cd erigon.tar.lz4 | tar xf -`_


### flags


```bash
--chain=bsc --prune=hrtc --db.pagesize=16k
```
