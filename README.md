# *bsc-snapshots*


*\> [geth-snapshots](#geth-snapshots)*

*\> [erigon-snapshots](#erigon-snapshots)*

Updated every ~24~ 36 hours

Old snapshot deleted ~1~ 12 hours after new snapshot generated

## geth-snapshots


> Database uses [geth(v1.1.12)](https://github.com/bnb-chain/bsc/releases/tag/v1.1.12) for sync


### download

<!-- begin_geth -->

!!! from block [21129542](https://bscscan.com/block/21129542)
```bash
aria2c -s14 -x14 -k100M https://snapshots.bnb48.club/geth.21129542.tar.lz4 -o geth.tar.lz4
```


### checksum


!!! db size 574.90 gb, 587.31 gb after decompression
```bash
> openssl sha256 geth.tar.lz4
SHA256(geth.tar.lz4)= f4e388d1b1d8892e9e907cc5b4ac9c232ea54f8487b947c4ae241c87fa52ef28
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

!!! from block [21141949](https://bscscan.com/block/21141949)
```bash
aria2c -s14 -x14 -k100M https://snapshots.bnb48.club/erigon.21141949.tar.lz4 -o erigon.tar.lz4
```


### checksum


!!! db size 817.10 gb, 1191.21 gb after decompression
```bash
> openssl sha256 erigon.tar.lz4
SHA256(erigon.tar.lz4)= 3b5e2e6fe99a51786a6c10ee2c1879e496e3060f178a57aa2242c66b59e6bf1a
```

<!-- end_erigon -->

### uncompress


running a script: _`lz4 -cd erigon.tar.lz4 | tar xf -`_


### flags


```bash
--chain=bsc --prune=hrtc --db.pagesize=16k
```
