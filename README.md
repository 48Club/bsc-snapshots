# *bsc-snapshots*


*\> [geth-snapshots](#geth-snapshots)*

**This geth snapshot is generated with `--tries-verify-mode=none` so it contains no MPT data. You should not build a validator upon this snapshot. [Know more >>>](https://github.com/bnb-chain/bsc/pull/926)**

*\> [erigon-snapshots](#erigon-snapshots)*

Updated every ~24~ 36 hours

Old snapshot deleted ~1~ 12 hours after new snapshot generated

## geth-snapshots


> Database uses [geth(v1.1.23)](https://github.com/bnb-chain/bsc/releases/tag/v1.1.23) for sync


### download

<!-- begin_geth -->

!!! from block [27531838](https://bscscan.com/block/27531838)

#### pipeline download and extract
> skip checksum & uncompress if you used pipeline
```bash
wget https://snapshots.48.club/geth.27531838.tar.lz4 -O - | lz4 -cd | tar xf -
```

#### multithreaded download

```bash
aria2c -s4 -x4 -k100M https://snapshots.48.club/geth.27531838.tar.lz4 -o geth.tar.lz4
```


### checksum

!!! db size 366.96 gb, 373.77 gb after decompression
```bash
> openssl sha256 geth.tar.lz4
SHA256(geth.tar.lz4)= c2827e6ce2905caec19a0be040ba58ff0c301bc20014a918437ca22b6ea92156
```

<!-- end_geth -->

### uncompress


running a script: _`lz4 -cd geth.tar.lz4 | tar xf -`_


### flags


```bash
--txlookuplimit=0 --syncmode=full --tries-verify-mode=none --pruneancient=true --diffblock=5000
```


## erigon-snapshots


> Database uses [erigon(v1.0.2)](https://github.com/node-real/bsc-erigon/releases/tag/v1.0.2) for sync


### download

<!-- begin_erigon -->

!!! from block [27422705](https://bscscan.com/block/27422705)

#### pipeline download and extract
> skip checksum & uncompress if you used pipeline
```bash
wget https://snapshots.48.club/erigon.27422705.tar.lz4 -O - | lz4 -cd | tar xf -
```

#### multithreaded download

```bash
aria2c -s4 -x4 -k100M https://snapshots.48.club/erigon.27422705.tar.lz4 -o erigon.tar.lz4
```


### checksum

!!! db size 1038.59 gb, 1625.98 gb after decompression
```bash
> openssl sha256 erigon.tar.lz4
SHA256(erigon.tar.lz4)= 60854bd3d3e536ba24a2e0c3cd7e3c0528107d2f2a511975e41e8c3c2b698c07
```

<!-- end_erigon -->


### uncompress


running a script: _`lz4 -cd erigon.tar.lz4 | tar xf -`_


### flags


```bash
--chain=bsc --prune=hrtc --db.pagesize=16k
```
