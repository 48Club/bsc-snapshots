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

!!! from block [27427360](https://bscscan.com/block/27427360)

#### pipeline download and extract
> skip checksum & uncompress if you used pipeline
```bash
wget https://snapshots.48.club/geth.27427360.tar.lz4 -O - | lz4 -cd | tar xf -
```

#### multithreaded download

```bash
aria2c -s4 -x4 -k100M https://snapshots.48.club/geth.27427360.tar.lz4 -o geth.tar.lz4
```


### checksum

!!! db size 367.51 gb, 374.54 gb after decompression
```bash
> openssl sha256 geth.tar.lz4
SHA256(geth.tar.lz4)= 6d76b9e67a0c28e9bd2c53b77b39c98133789f9614b5aed883fc4620d069f0ec
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

!!! from block [27281392](https://bscscan.com/block/27281392)

#### pipeline download and extract
> skip checksum & uncompress if you used pipeline
```bash
wget https://snapshots.48.club/erigon.27281392.tar.lz4 -O - | lz4 -cd | tar xf -
```

#### multithreaded download

```bash
aria2c -s14 -x14 -k100M https://snapshots.48.club/erigon.27281392.tar.lz4 -o erigon.tar.lz4
```


### checksum

!!! db size 1002.43 gb, 1573.97 gb after decompression
```bash
> openssl sha256 erigon.tar.lz4
SHA256(erigon.tar.lz4)= 48af8a05691fc16afb849692f708d1afe42eb8c9be0beb828bfe04a381fa93d5
```

<!-- end_erigon -->


### uncompress


running a script: _`lz4 -cd erigon.tar.lz4 | tar xf -`_


### flags


```bash
--chain=bsc --prune=hrtc --db.pagesize=16k
```
