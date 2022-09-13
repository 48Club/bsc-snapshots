# *bsc-snapshots*


*\> [geth-snapshots](#geth-snapshots)*

*\> [erigon-snapshots](#erigon-snapshots)*

Updated every ~24~ 36 hours

Old snapshot deleted ~1~ 12 hours after new snapshot generated

## geth-snapshots


> Database uses [geth(v1.1.13)](https://github.com/bnb-chain/bsc/releases/tag/v1.1.13) for sync


### download

<!-- begin_geth -->

!!! from block [21284356](https://bscscan.com/block/21284356)
```bash
aria2c -s14 -x14 -k100M https://snapshots.bnb48.club/geth.21284356.tar.lz4 -o geth.tar.lz4
```


### checksum


!!! db size 577.14 gb, 589.51 gb after decompression
```bash
> openssl sha256 geth.tar.lz4
SHA256(geth.tar.lz4)= 3e65b367a665c411e7aa8dc52e9f0bc70fa827022c045af29a4a6dd66a726040
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

!!! from block [21282756](https://bscscan.com/block/21282756)
```bash
aria2c -s14 -x14 -k100M https://snapshots.bnb48.club/erigon.21282756.tar.lz4 -o erigon.tar.lz4
```


### checksum


!!! db size 815.52 gb, 1191.19 gb after decompression
```bash
> openssl sha256 erigon.tar.lz4
SHA256(erigon.tar.lz4)= 9f9df0c9b27d82a672af08e6176233e72a049949ed9d28662f739ad63ae69194
```

<!-- end_erigon -->

### uncompress


running a script: _`lz4 -cd erigon.tar.lz4 | tar xf -`_


### flags


```bash
--chain=bsc --prune=hrtc --db.pagesize=16k
```
