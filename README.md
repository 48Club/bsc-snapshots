# *bsc-snapshots*


*\> [geth-snapshots](#geth-snapshots)*

*\> [erigon-snapshots](#erigon-snapshots)*

Updated every ~24~ 36 hours

Old snapshot deleted ~1~ 12 hours after new snapshot generated

## geth-snapshots


> Database uses [geth(v1.1.12)](https://github.com/bnb-chain/bsc/releases/tag/v1.1.12) for sync


### download

<!-- begin_geth -->

!!! from block [20767065](https://bscscan.com/block/20767065)
```bash
aria2c -s14 -x14 -k100M https://snapshots.bnb48.club/geth.20767065.tar.lz4 -o geth.tar.lz4
```


### checksum


!!! db size 569.37 gb, 581.66 gb after decompression
```bash
> openssl sha256 geth.tar.lz4
SHA256(geth.tar.lz4)= 403e19d4282f964b4ee3ffcd50a2c5ab6fcd1e23afec2880a2424dddb39fca0d
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

!!! from block [20761900](https://bscscan.com/block/20761900)
```bash
aria2c -s14 -x14 -k100M https://snapshots.bnb48.club/erigon.20761900.tar.lz4 -o erigon.tar.lz4
```


### checksum


!!! db size 823.78 gb, 1189.93 gb after decompression
```bash
> openssl sha256 erigon.tar.lz4
SHA256(erigon.tar.lz4)= e4548d52ced68572a9dcb340ad2dad72718a52fe699ea0765a544703640e7656
```

<!-- end_erigon -->

### uncompress


running a script: _`lz4 -cd erigon.tar.lz4 | tar xf -`_


### flags


```bash
--chain=bsc --prune=hrtc --db.pagesize=16k
```
