# *bsc-snapshots*


*\> [geth-snapshots](#geth-snapshots)*

*\> [erigon-snapshots](#erigon-snapshots)*

Updated every ~24~ 36 hours

Old snapshot deleted ~1~ 12 hours after new snapshot generated

## geth-snapshots


> Database uses [geth(v1.1.13)](https://github.com/bnb-chain/bsc/releases/tag/v1.1.13) for sync


### download

<!-- begin_geth -->

!!! from block [21520876](https://bscscan.com/block/21520876)
```bash
aria2c -s14 -x14 -k100M https://snapshots.bnb48.club/geth.21520876.tar.lz4 -o geth.tar.lz4
```


### checksum


!!! db size 579.91 gb, 592.47 gb after decompression
```bash
> openssl sha256 geth.tar.lz4
SHA256(geth.tar.lz4)= f04a144994d333294776cc13b0544690f39af16b755a48c47b7ac0211b5e1ca2
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

!!! from block [21637821](https://bscscan.com/block/21637821)
```bash
aria2c -s14 -x14 -k100M https://snapshots.bnb48.club/erigon.21637821.tar.lz4 -o erigon.tar.lz4
```


### checksum


!!! db size 831.17 gb, 1211.70 gb after decompression
```bash
> openssl sha256 erigon.tar.lz4
SHA256(erigon.tar.lz4)= 97cd0608330a70cdf52606c6e97ba79bfc21432db1d429d4e7a6c5049d33a9c7
```

<!-- end_erigon -->

### uncompress


running a script: _`lz4 -cd erigon.tar.lz4 | tar xf -`_


### flags


```bash
--chain=bsc --prune=hrtc --db.pagesize=16k
```
