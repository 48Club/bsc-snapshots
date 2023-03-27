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

!!! from block [26812261](https://bscscan.com/block/26812261)

#### pipeline download and extract
> skip checksum & uncompress if you used pipeline
```bash
wget https://snapshots.48.club/geth.26812261.tar.lz4 -O - | lz4 -cd | tar xf -
```

#### multithreaded download

```bash
aria2c -s14 -x14 -k100M https://snapshots.48.club/geth.26812261.tar.lz4 -o geth.tar.lz4
```


### checksum

!!! db size 356.12 gb, 362.89 gb after decompression
```bash
> openssl sha256 geth.tar.lz4
SHA256(geth.tar.lz4)= 066bd9c25e3fcc1fe6ae4c602a76f8658cd0ae8b32322783f075786246b22a40
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

!!! from block [26810542](https://bscscan.com/block/26810542)

#### pipeline download and extract
> skip checksum & uncompress if you used pipeline
```bash
wget https://snapshots.48.club/erigon.26810542.tar.lz4 -O - | lz4 -cd | tar xf -
```

#### multithreaded download

```bash
aria2c -s14 -x14 -k100M https://snapshots.48.club/erigon.26810542.tar.lz4 -o erigon.tar.lz4
```


### checksum

!!! db size 973.74 gb, 1509.75 gb after decompression
```bash
> openssl sha256 erigon.tar.lz4
SHA256(erigon.tar.lz4)= 679f2afb5d64871d61f52ef2d54e6ae4b4a72dc5396e4101adb13fd679c9da38
```

<!-- end_erigon -->


### uncompress


running a script: _`lz4 -cd erigon.tar.lz4 | tar xf -`_


### flags


```bash
--chain=bsc --prune=hrtc --db.pagesize=16k
```
