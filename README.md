# *bsc-snapshots*


*\> [geth-snapshots](#geth-snapshots)*

*\> [erigon-snapshots](#erigon-snapshots)*

Updated every ~24~ 36 hours

Old snapshot deleted ~1~ 12 hours after new snapshot generated

## geth-snapshots


> Database uses [geth(v1.1.13)](https://github.com/bnb-chain/bsc/releases/tag/v1.1.13) for sync


### download

<!-- begin_geth -->

!!! from block [21196522](https://bscscan.com/block/21196522)
```bash
aria2c -s14 -x14 -k100M https://snapshots.bnb48.club/geth.21196522.tar.lz4 -o geth.tar.lz4
```


### checksum


!!! db size 576.28 gb, 588.85 gb after decompression
```bash
> openssl sha256 geth.tar.lz4
SHA256(geth.tar.lz4)= 6358894cb0c9a06ed76a3a06a121aebf138d72faeb4c8731912627411234df37
```

<!-- end_geth -->

### uncompress


running a script: _`lz4 -cd geth.tar.lz4 | tar xf -`_


### flags


```bash
--txlookuplimit=0 --diffsync=true --syncmode=full --tries-verify-mode=none --pruneancient=true --diffblock=5000
```


## erigon-snapshots


> Database uses [erigon(v2022.09.01)](https://github.com/ledgerwatch/erigon/releases/tag/v2022.09.01) for sync


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
