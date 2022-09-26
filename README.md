# *bsc-snapshots*


*\> [geth-snapshots](#geth-snapshots)*

*\> [erigon-snapshots](#erigon-snapshots)*

Updated every ~24~ 36 hours

Old snapshot deleted ~1~ 12 hours after new snapshot generated

## geth-snapshots


> Database uses [geth(v1.1.13)](https://github.com/bnb-chain/bsc/releases/tag/v1.1.13) for sync


### download

<!-- begin_geth -->

!!! from block [21663758](https://bscscan.com/block/21663758)

#### pipeline download and extract
> skip checksum & uncompress if you used pipeline
```bash
wget https://snapshots.bnb48.club/geth.21663758.tar.lz4 -O - | lz4 -cd | tar xf -
```

#### multithreaded download

```bash
aria2c -s14 -x14 -k100M https://snapshots.bnb48.club/geth.21663758.tar.lz4 -o geth.tar.lz4
```


### checksum

!!! db size 583.03 gb, 595.77 gb after decompression
```bash
> openssl sha256 geth.tar.lz4
SHA256(geth.tar.lz4)= 3ae1499d125a5ec9d95e7c114d9c5ab442f48eeb39e37f62e631df0b9a45fa69
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

!!! from block [21662378](https://bscscan.com/block/21662378)

#### pipeline download and extract
> skip checksum & uncompress if you used pipeline
```bash
wget https://snapshots.bnb48.club/erigon.21662378.tar.lz4 -O - | lz4 -cd | tar xf -
```

#### multithreaded download

```bash
aria2c -s14 -x14 -k100M https://snapshots.bnb48.club/erigon.21662378.tar.lz4 -o erigon.tar.lz4
```


### checksum

!!! db size 829.38 gb, 1211.73 gb after decompression
```bash
> openssl sha256 erigon.tar.lz4
SHA256(erigon.tar.lz4)= 2dabbcc86306275c5eda9ab0616af8ff0f146472024c3e14339a7464b5dce9ee
```

<!-- end_erigon -->

### uncompress


running a script: _`lz4 -cd erigon.tar.lz4 | tar xf -`_


### flags


```bash
--chain=bsc --prune=hrtc --db.pagesize=16k
```
