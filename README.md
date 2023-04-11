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

!!! from block [27240565](https://bscscan.com/block/27240565)

#### pipeline download and extract
> skip checksum & uncompress if you used pipeline
```bash
wget https://snapshots.48.club/geth.27240565.tar.lz4 -O - | lz4 -cd | tar xf -
```

#### multithreaded download

```bash
aria2c -s14 -x14 -k100M https://snapshots.48.club/geth.27240565.tar.lz4 -o geth.tar.lz4
```


### checksum

!!! db size 364.37 gb, 371.33 gb after decompression
```bash
> openssl sha256 geth.tar.lz4
SHA256(geth.tar.lz4)= 4124f3b9751f0fbd7724139d5cb65755c9394f587c15d2755ea24557cb9e8787
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

!!! from block [27238553](https://bscscan.com/block/27238553)

#### pipeline download and extract
> skip checksum & uncompress if you used pipeline
```bash
wget https://snapshots.48.club/erigon.27238553.tar.lz4 -O - | lz4 -cd | tar xf -
```

#### multithreaded download

```bash
aria2c -s14 -x14 -k100M https://snapshots.48.club/erigon.27238553.tar.lz4 -o erigon.tar.lz4
```


### checksum

!!! db size 1000.97 gb, 1573.95 gb after decompression
```bash
> openssl sha256 erigon.tar.lz4
SHA256(erigon.tar.lz4)= a5f735f5d11e95429ee8eff22c62f1ac821cdd9da4f610cba11e7f7d7f044478
```

<!-- end_erigon -->


### uncompress


running a script: _`lz4 -cd erigon.tar.lz4 | tar xf -`_


### flags


```bash
--chain=bsc --prune=hrtc --db.pagesize=16k
```
