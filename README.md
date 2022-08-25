# *bsc-snapshots*


*\> [geth-snapshots](#geth-snapshots)*

*\> [erigon-snapshots](#erigon-snapshots)*

Updated every ~24~ 36 hours

Old snapshot deleted ~1~ 12 hours after new snapshot generated

## geth-snapshots


> Database uses [geth(v1.1.12)](https://github.com/bnb-chain/bsc/releases/tag/v1.1.12) for sync


### download

<!-- begin_geth -->

!!! from block [20730694](https://bscscan.com/block/20730694)
```bash
aria2c -s14 -x14 -k100M https://snapshots.bnb48.club/geth.20730694.tar.lz4 -o geth.tar.lz4
```


### checksum


!!! db size 567.96 gb, 580.22 gb after decompression
```bash
> openssl sha256 geth.tar.lz4
SHA256(geth.tar.lz4)= d8c00882b2e60b50772925913263bfcd486a66635c1717af53a9909b801f0bf0
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

!!! from block [20726895](https://bscscan.com/block/20726895)
```bash
aria2c -s14 -x14 -k100M https://snapshots.bnb48.club/erigon.20726895.tar.lz4 -o erigon.tar.lz4
```


### checksum


!!! db size 758.97 gb, 1085.27 gb after decompression
```bash
> openssl sha256 erigon.tar.lz4
SHA256(erigon.tar.lz4)= a166a5351f3ffeb960eee36b7558209a6bb94cfec353cb0e4b8feaf3cb244729
```

<!-- end_erigon -->

### uncompress


running a script: _`lz4 -cd erigon.tar.lz4 | tar xf -`_


### flags


```bash
--chain=bsc --prune=hrtc --db.pagesize=16k
```
