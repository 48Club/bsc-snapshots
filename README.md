# *bsc-snapshots*


*\> [geth-snapshots](#geth-snapshots)*

*\> [erigon-snapshots](#erigon-snapshots)*

Updated every ~24~ 36 hours

Old snapshot deleted ~1~ 12 hours after new snapshot generated

## geth-snapshots


> Database uses [geth(v1.1.14)](https://github.com/bnb-chain/bsc/releases/tag/v1.1.14) for sync


### download

<!-- begin_geth -->

!!! from block [21890636](https://bscscan.com/block/21890636)

#### pipeline download and extract
> skip checksum & uncompress if you used pipeline
```bash
wget https://snapshots.bnb48.club/geth.21890636.tar.lz4 -O - | lz4 -cd | tar xf -
```

#### multithreaded download

```bash
aria2c -s14 -x14 -k100M https://snapshots.bnb48.club/geth.21890636.tar.lz4 -o geth.tar.lz4
```


### checksum

!!! db size 303.69 gb, 309.36 gb after decompression
```bash
> openssl sha256 geth.tar.lz4
SHA256(geth.tar.lz4)= 35b239210670c97b3bc83e0d63736d34fa7252c9812985567d1af2879e2ed806
```

<!-- end_geth -->

### uncompress


running a script: _`lz4 -cd geth.tar.lz4 | tar xf -`_


### flags


```bash
--txlookuplimit=0 --diffsync=true --syncmode=full --tries-verify-mode=none --pruneancient=true --diffblock=5000
```


## erigon-snapshots


> Database uses [erigon(v2022.09.03)](https://github.com/ledgerwatch/erigon/releases/tag/v2022.09.03) for sync


### download

<!-- begin_erigon -->

!!! from block [21888577](https://bscscan.com/block/21888577)

#### pipeline download and extract
> skip checksum & uncompress if you used pipeline
```bash
wget https://snapshots.bnb48.club/erigon.21888577.tar.lz4 -O - | lz4 -cd | tar xf -
```

#### multithreaded download

```bash
aria2c -s14 -x14 -k100M https://snapshots.bnb48.club/erigon.21888577.tar.lz4 -o erigon.tar.lz4
```


### checksum

!!! db size 825.46 gb, 1215.78 gb after decompression
```bash
> openssl sha256 erigon.tar.lz4
SHA256(erigon.tar.lz4)= ab72e89a6d4329f0540baa161c59d5257a7fb6af76f43c355036149c11d0f4b8
```

<!-- end_erigon -->

### uncompress


running a script: _`lz4 -cd erigon.tar.lz4 | tar xf -`_


### flags


```bash
--chain=bsc --prune=hrtc --db.pagesize=16k
```
