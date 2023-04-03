# *bsc-snapshots*


*\> [geth-snapshots](#geth-snapshots)*

**This geth snapshot is generated with `--tries-verify-mode=none` so it contains no MPT data. You should not build a validator upon this snapshot. [Know more >>>](https://github.com/bnb-chain/bsc/pull/926)**

*\> [erigon-snapshots](#erigon-snapshots)*

Updated every ~24~ 36 hours

Old snapshot deleted ~1~ 12 hours after new snapshot generated

## geth-snapshots


> Database uses [geth(v1.1.21)](https://github.com/bnb-chain/bsc/releases/tag/v1.1.21) for sync


### download

<!-- begin_geth -->

!!! from block [27026486](https://bscscan.com/block/27026486)

#### pipeline download and extract
> skip checksum & uncompress if you used pipeline
```bash
wget https://snapshots.48.club/geth.27026486.tar.lz4 -O - | lz4 -cd | tar xf -
```

#### multithreaded download

```bash
aria2c -s14 -x14 -k100M https://snapshots.48.club/geth.27026486.tar.lz4 -o geth.tar.lz4
```


### checksum

!!! db size 362.20 gb, 368.98 gb after decompression
```bash
> openssl sha256 geth.tar.lz4
SHA256(geth.tar.lz4)= 7630b1b17f9af8637e5c7bcb24632ba472adfb4071504b580de7d57fff32b434
```

<!-- end_geth -->

### uncompress


running a script: _`lz4 -cd geth.tar.lz4 | tar xf -`_


### flags


```bash
--txlookuplimit=0 --syncmode=full --tries-verify-mode=none --pruneancient=true --diffblock=5000
```


## erigon-snapshots


> Database uses [erigon(v2.42.0)](https://github.com/ledgerwatch/erigon/releases/tag/v2.42.0) for sync


### download

<!-- begin_erigon -->

!!! from block [27024789](https://bscscan.com/block/27024789)

#### pipeline download and extract
> skip checksum & uncompress if you used pipeline
```bash
wget https://snapshots.48.club/erigon.27024789.tar.lz4 -O - | lz4 -cd | tar xf -
```

#### multithreaded download

```bash
aria2c -s14 -x14 -k100M https://snapshots.48.club/erigon.27024789.tar.lz4 -o erigon.tar.lz4
```


### checksum

!!! db size 986.89 gb, 1537.82 gb after decompression
```bash
> openssl sha256 erigon.tar.lz4
SHA256(erigon.tar.lz4)= bbb974f02e8366c818d52cc290587cd583e8880b3bbee3551f9a7e755baa18da
```

<!-- end_erigon -->


### uncompress


running a script: _`lz4 -cd erigon.tar.lz4 | tar xf -`_


### flags


```bash
--chain=bsc --prune=hrtc --db.pagesize=16k
```
