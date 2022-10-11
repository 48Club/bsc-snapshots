# *bsc-snapshots*


*\> [geth-snapshots](#geth-snapshots)*

**This geth snapshot is generated with `--tries-verify-mode=none` so it contains no MPT data. You should not build a validator upon this snapshot. [Know more >>>](https://github.com/bnb-chain/bsc/pull/926)**

*\> [erigon-snapshots](#erigon-snapshots)*

Updated every ~24~ 36 hours
Old snapshot deleted ~1~ 12 hours after new snapshot generated

## geth-snapshots


> Database uses [geth(v1.1.15)](https://github.com/bnb-chain/bsc/releases/tag/v1.1.15) for sync


### download

<!-- begin_geth -->

!!! from block [22078397](https://bscscan.com/block/22078397)

#### pipeline download and extract
> skip checksum & uncompress if you used pipeline
```bash
wget https://snapshots.bnb48.club/geth.22078397.tar.lz4 -O - | lz4 -cd | tar xf -
```

#### multithreaded download

```bash
aria2c -s14 -x14 -k100M https://snapshots.bnb48.club/geth.22078397.tar.lz4 -o geth.tar.lz4
```


### checksum

!!! db size 304.38 gb, 310.03 gb after decompression
```bash
> openssl sha256 geth.tar.lz4
SHA256(geth.tar.lz4)= e5eed73cefd9e7cef78d8fe06a4025a8908f91b159f215cd357e37dc3ba00a6d
```

<!-- end_geth -->

### uncompress


running a script: _`lz4 -cd geth.tar.lz4 | tar xf -`_


### flags


```bash
--txlookuplimit=0 --diffsync=true --syncmode=full --tries-verify-mode=none --pruneancient=true --diffblock=5000
```


## erigon-snapshots


> Database uses [erigon(v2.27.0)](https://github.com/ledgerwatch/erigon/releases/tag/v2.27.0) for sync


### download

<!-- begin_erigon -->

!!! from block [22010298](https://bscscan.com/block/22010298)

#### pipeline download and extract
> skip checksum & uncompress if you used pipeline
```bash
wget https://snapshots.bnb48.club/erigon.22010298.tar.lz4 -O - | lz4 -cd | tar xf -
```

#### multithreaded download

```bash
aria2c -s14 -x14 -k100M https://snapshots.bnb48.club/erigon.22010298.tar.lz4 -o erigon.tar.lz4
```


### checksum

!!! db size 831.48 gb, 1217.78 gb after decompression
```bash
> openssl sha256 erigon.tar.lz4
SHA256(erigon.tar.lz4)= 34c8a3a52e65b58cb9d39b46f8c289b0b8666853ae1904f0082ba1c98153f828
```

<!-- end_erigon -->

### uncompress


running a script: _`lz4 -cd erigon.tar.lz4 | tar xf -`_


### flags


```bash
--chain=bsc --prune=hrtc --db.pagesize=16k
```
