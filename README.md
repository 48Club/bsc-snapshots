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

!!! from block [26856729](https://bscscan.com/block/26856729)

#### pipeline download and extract
> skip checksum & uncompress if you used pipeline
```bash
wget https://snapshots.48.club/geth.26856729.tar.lz4 -O - | lz4 -cd | tar xf -
```

#### multithreaded download

```bash
aria2c -s14 -x14 -k100M https://snapshots.48.club/geth.26856729.tar.lz4 -o geth.tar.lz4
```


### checksum

!!! db size 357.91 gb, 364.56 gb after decompression
```bash
> openssl sha256 geth.tar.lz4
SHA256(geth.tar.lz4)= f89825a3f804df8baab3c2aa37b2f8341fbbf3e9bafc04a4653668c655faa052
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

!!! from block [26854789](https://bscscan.com/block/26854789)

#### pipeline download and extract
> skip checksum & uncompress if you used pipeline
```bash
wget https://snapshots.48.club/erigon.26854789.tar.lz4 -O - | lz4 -cd | tar xf -
```

#### multithreaded download

```bash
aria2c -s14 -x14 -k100M https://snapshots.48.club/erigon.26854789.tar.lz4 -o erigon.tar.lz4
```


### checksum

!!! db size 980.58 gb, 1523.76 gb after decompression
```bash
> openssl sha256 erigon.tar.lz4
SHA256(erigon.tar.lz4)= 3fcdf7450168ca7a5ed07d9c0fee853b78ed5af2f0d33c993b2d88c9c312ca8e
```

<!-- end_erigon -->


### uncompress


running a script: _`lz4 -cd erigon.tar.lz4 | tar xf -`_


### flags


```bash
--chain=bsc --prune=hrtc --db.pagesize=16k
```
