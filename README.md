# *bsc-snapshots*


*\> [geth-snapshots](#geth-snapshots)*

**This geth snapshot is generated with `--tries-verify-mode=none` so it contains no MPT data. You should not build a validator upon this snapshot. [Know more >>>](https://github.com/bnb-chain/bsc/pull/926)**

*\> [erigon-snapshots](#erigon-snapshots)*

Updated every ~24~ 36 hours

Old snapshot deleted ~1~ 12 hours after new snapshot generated

## geth-snapshots


> Database uses [geth(v1.1.19)](https://github.com/bnb-chain/bsc/releases/tag/v1.1.19) for sync


### download

<!-- begin_geth -->

!!! from block [26727949](https://bscscan.com/block/26727949)

#### pipeline download and extract
> skip checksum & uncompress if you used pipeline
```bash
wget https://snapshots.48.club/geth.26727949.tar.lz4 -O - | lz4 -cd | tar xf -
```

#### multithreaded download

```bash
aria2c -s14 -x14 -k100M https://snapshots.48.club/geth.26727949.tar.lz4 -o geth.tar.lz4
```


### checksum

!!! db size 359.31 gb, 365.88 gb after decompression
```bash
> openssl sha256 geth.tar.lz4
SHA256(geth.tar.lz4)= 68a389dc5090b17a886949017d21c6aba8e5f6971a591e9f9c972ab2a48fb873
```

<!-- end_geth -->

### uncompress


running a script: _`lz4 -cd geth.tar.lz4 | tar xf -`_


### flags


```bash
--txlookuplimit=0 --syncmode=full --tries-verify-mode=none --pruneancient=true --diffblock=5000
```


## erigon-snapshots


> Database uses [erigon(v2.39.0)](https://github.com/ledgerwatch/erigon/releases/tag/v2.39.0) for sync


### download

<!-- begin_erigon -->

!!! from block [26681370](https://bscscan.com/block/26681370)

#### pipeline download and extract
> skip checksum & uncompress if you used pipeline
```bash
wget https://snapshots.48.club/erigon.26681370.tar.lz4 -O - | lz4 -cd | tar xf -
```

#### multithreaded download

```bash
aria2c -s14 -x14 -k100M https://snapshots.48.club/erigon.26681370.tar.lz4 -o erigon.tar.lz4
```


### checksum

!!! db size 974.25 gb, 1507.72 gb after decompression
```bash
> openssl sha256 erigon.tar.lz4
SHA256(erigon.tar.lz4)= 0dda589a9f53434c6f66d6873099ae73f91b092a02026e3d6a717f92e4cb11e8
```

<!-- end_erigon -->


### uncompress


running a script: _`lz4 -cd erigon.tar.lz4 | tar xf -`_


### flags


```bash
--chain=bsc --prune=hrtc --db.pagesize=16k
```
