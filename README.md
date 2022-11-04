# *bsc-snapshots*


*\> [geth-snapshots](#geth-snapshots)*

**This geth snapshot is generated with `--tries-verify-mode=none` so it contains no MPT data. You should not build a validator upon this snapshot. [Know more >>>](https://github.com/bnb-chain/bsc/pull/926)**

*\> [erigon-snapshots](#erigon-snapshots)*

Updated every ~24~ 36 hours

Old snapshot deleted ~1~ 12 hours after new snapshot generated

## geth-snapshots


> Database uses [geth(v1.1.17)](https://github.com/bnb-chain/bsc/releases/tag/v1.1.17) for sync


### download

<!-- begin_geth -->

!!! from block [22578104](https://bscscan.com/block/22578104)

#### pipeline download and extract
> skip checksum & uncompress if you used pipeline
```bash
wget https://snapshots.bnb48.club/geth.22578104.tar.lz4 -O - | lz4 -cd | tar xf -
```

#### multithreaded download

```bash
aria2c -s14 -x14 -k100M https://snapshots.bnb48.club/geth.22578104.tar.lz4 -o geth.tar.lz4
```


### checksum

!!! db size 311.59 gb, 317.38 gb after decompression
```bash
> openssl sha256 geth.tar.lz4
SHA256(geth.tar.lz4)= 50f3af8de7fa8cb6e44825737c5fae23b7db78da844af06e89df63c812172b22
```

<!-- end_geth -->

### uncompress


running a script: _`lz4 -cd geth.tar.lz4 | tar xf -`_


### flags


```bash
--txlookuplimit=0 --syncmode=full --tries-verify-mode=none --pruneancient=true --diffblock=5000
```


## erigon-snapshots


> Database uses [erigon(v2.28.1)](https://github.com/ledgerwatch/erigon/releases/tag/v2.28.1) for sync


### download

<!-- begin_erigon -->

!!! from block [22575695](https://bscscan.com/block/22575695)

#### pipeline download and extract
> skip checksum & uncompress if you used pipeline
```bash
wget https://snapshots.bnb48.club/erigon.22575695.tar.lz4 -O - | lz4 -cd | tar xf -
```

#### multithreaded download

```bash
aria2c -s14 -x14 -k100M https://snapshots.bnb48.club/erigon.22575695.tar.lz4 -o erigon.tar.lz4
```


### checksum

!!! db size 854.22 gb, 1260.31 gb after decompression
```bash
> openssl sha256 erigon.tar.lz4
SHA256(erigon.tar.lz4)= 95aaa0ee1d4d095c60927516861c76e46816b99a8b4fd943ae634fd36a87a9e3
```

<!-- end_erigon -->

### uncompress


running a script: _`lz4 -cd erigon.tar.lz4 | tar xf -`_


### flags


```bash
--chain=bsc --prune=hrtc --db.pagesize=16k
```
