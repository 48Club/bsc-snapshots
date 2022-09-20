# *bsc-snapshots*


*\> [geth-snapshots](#geth-snapshots)*

*\> [erigon-snapshots](#erigon-snapshots)*

Updated every ~24~ 36 hours

Old snapshot deleted ~1~ 12 hours after new snapshot generated

## geth-snapshots


> Database uses [geth(v1.1.13)](https://github.com/bnb-chain/bsc/releases/tag/v1.1.13) for sync


### download

<!-- begin_geth -->

!!! from block [21477864](https://bscscan.com/block/21477864)
```bash
aria2c -s14 -x14 -k100M https://snapshots.bnb48.club/geth.21477864.tar.lz4 -o geth.tar.lz4
```


### checksum


!!! db size 579.06 gb, 591.52 gb after decompression
```bash
> openssl sha256 geth.tar.lz4
SHA256(geth.tar.lz4)= 05cc7b944b0999f35c340238ed8952f122d832e0f7285ac76d9e1e75881ffe94
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

!!! from block [21476507](https://bscscan.com/block/21476507)
```bash
aria2c -s14 -x14 -k100M https://snapshots.bnb48.club/erigon.21476507.tar.lz4 -o erigon.tar.lz4
```


### checksum


!!! db size 827.76 gb, 1207.65 gb after decompression
```bash
> openssl sha256 erigon.tar.lz4
SHA256(erigon.tar.lz4)= 2e8cf7ee0d5d918cce979c2d91dbff580a91673455020aed5527ae5dae4519c6
```

<!-- end_erigon -->

### uncompress


running a script: _`lz4 -cd erigon.tar.lz4 | tar xf -`_


### flags


```bash
--chain=bsc --prune=hrtc --db.pagesize=16k
```
