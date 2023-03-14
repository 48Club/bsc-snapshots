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

!!! from block [26451843](https://bscscan.com/block/26451843)

#### pipeline download and extract
> skip checksum & uncompress if you used pipeline
```bash
wget https://snapshots.48.club/geth.26451843.tar.lz4 -O - | lz4 -cd | tar xf -
```

#### multithreaded download

```bash
aria2c -s14 -x14 -k100M https://snapshots.48.club/geth.26451843.tar.lz4 -o geth.tar.lz4
```


### checksum

!!! db size 357.46 gb, 364.19 gb after decompression
```bash
> openssl sha256 geth.tar.lz4
SHA256(geth.tar.lz4)= 2d9cec89e510ef3514bbfb30bf7b8d235572b2bb1aa942359f98b5b5d687a7f0
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

!!! from block [26450990](https://bscscan.com/block/26450990)

#### pipeline download and extract
> skip checksum & uncompress if you used pipeline
```bash
wget https://snapshots.48.club/erigon.26450990.tar.lz4 -O - | lz4 -cd | tar xf -
```

#### multithreaded download

```bash
aria2c -s14 -x14 -k100M https://snapshots.48.club/erigon.26450990.tar.lz4 -o erigon.tar.lz4
```


### checksum

!!! db size 977.28 gb, 1507.67 gb after decompression
```bash
> openssl sha256 erigon.tar.lz4
SHA256(erigon.tar.lz4)= 894fa76f14842904af6850b0c7b24dd05bdf68ec77ad345563119b595526b22f
```

<!-- end_erigon -->


### uncompress


running a script: _`lz4 -cd erigon.tar.lz4 | tar xf -`_


### flags


```bash
--chain=bsc --prune=hrtc --db.pagesize=16k
```
