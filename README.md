# *bsc-snapshots*


*\> [geth-snapshots](#geth-snapshots)*

**This geth snapshot is generated with `--tries-verify-mode=none` so it contains no MPT data. You should not build a validator upon this snapshot. [Know more >>>](https://github.com/bnb-chain/bsc/pull/926)**

*\> [erigon-snapshots](#erigon-snapshots)*

Updated every ~24~ 36 hours

Old snapshot deleted ~1~ 12 hours after new snapshot generated

## geth-snapshots


> Database uses [geth(v1.1.18)](https://github.com/bnb-chain/bsc/releases/tag/v1.1.18) for sync


### download

<!-- begin_geth -->

!!! from block [25104018](https://bscscan.com/block/25104018)

#### pipeline download and extract
> skip checksum & uncompress if you used pipeline
```bash
wget https://snapshots.48.club/geth.25104018.tar.lz4 -O - | lz4 -cd | tar xf -
```

#### multithreaded download

```bash
aria2c -s14 -x14 -k100M https://snapshots.48.club/geth.25104018.tar.lz4 -o geth.tar.lz4
```


### checksum

!!! db size 337.07 gb, 343.37 gb after decompression
```bash
> openssl sha256 geth.tar.lz4
SHA256(geth.tar.lz4)= 35885d69c457736ae5ffd11e481a08872ef27d2d283d822e71b81f86a6cd0ecf
```

<!-- end_geth -->

### uncompress


running a script: _`lz4 -cd geth.tar.lz4 | tar xf -`_


### flags


```bash
--txlookuplimit=0 --syncmode=full --tries-verify-mode=none --pruneancient=true --diffblock=5000
```


## erigon-snapshots


> Database uses [erigon(v2.31.0-rc.2)](https://github.com/ledgerwatch/erigon/releases/tag/v2.31.0-rc.2) for sync


### download

<!-- begin_erigon -->

!!! from block [25102234](https://bscscan.com/block/25102234)

#### pipeline download and extract
> skip checksum & uncompress if you used pipeline
```bash
wget https://snapshots.48.club/erigon.25102234.tar.lz4 -O - | lz4 -cd | tar xf -
```

#### multithreaded download

```bash
aria2c -s14 -x14 -k100M https://snapshots.48.club/erigon.25102234.tar.lz4 -o erigon.tar.lz4
```


### checksum

!!! db size 974.88 gb, 1461.38 gb after decompression
```bash
> openssl sha256 erigon.tar.lz4
SHA256(erigon.tar.lz4)= 84b79e2b9a5c353c037db559bc22421c5bc2a6af208d08a7bac52d1d8b1a1ce4
```

<!-- end_erigon -->


### uncompress


running a script: _`lz4 -cd erigon.tar.lz4 | tar xf -`_


### flags


```bash
--chain=bsc --prune=hrtc --db.pagesize=16k
```
