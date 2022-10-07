# *bsc-snapshots*


*\> [geth-snapshots](#geth-snapshots)*

*\> [erigon-snapshots](#erigon-snapshots)*

Updated every ~24~ 36 hours

Old snapshot deleted ~1~ 12 hours after new snapshot generated

## geth-snapshots


> Database uses [geth(v1.1.15)](https://github.com/bnb-chain/bsc/releases/tag/v1.1.15) for sync


### download

<!-- begin_geth -->

!!! from block [21969704](https://bscscan.com/block/21969704)

#### pipeline download and extract
> skip checksum & uncompress if you used pipeline
```bash
wget https://snapshots.bnb48.club/geth.21969704.tar.lz4 -O - | lz4 -cd | tar xf -
```

#### multithreaded download

```bash
aria2c -s14 -x14 -k100M https://snapshots.bnb48.club/geth.21969704.tar.lz4 -o geth.tar.lz4
```


### checksum

!!! db size 302.04 gb, 307.79 gb after decompression
```bash
> openssl sha256 geth.tar.lz4
SHA256(geth.tar.lz4)= 8107707ef939355c78004c48b5cde366a4232524ce958ae76599e5c8b01e2f1b
```

<!-- end_geth -->

### uncompress


running a script: _`lz4 -cd geth.tar.lz4 | tar xf -`_


### flags


```bash
--txlookuplimit=0 --diffsync=true --syncmode=full --tries-verify-mode=none --pruneancient=true --diffblock=5000
```


## erigon-snapshots


> Database uses [erigon(v2.27.0)](https://github.com/ledgerwatch/erigon/releases/tag/v2.27.0) for sync


### download

<!-- begin_erigon -->

!!! from block [21942222](https://bscscan.com/block/21942222)

#### pipeline download and extract
> skip checksum & uncompress if you used pipeline
```bash
wget https://snapshots.bnb48.club/erigon.21942222.tar.lz4 -O - | lz4 -cd | tar xf -
```

#### multithreaded download

```bash
aria2c -s14 -x14 -k100M https://snapshots.bnb48.club/erigon.21942222.tar.lz4 -o erigon.tar.lz4
```


### checksum

!!! db size 827.62 gb, 1215.78 gb after decompression
```bash
> openssl sha256 erigon.tar.lz4
SHA256(erigon.tar.lz4)= 0731f3c91c46fcf58c974edd71a2e6e85606a29e2744c0d921f355bedad732f8
```

<!-- end_erigon -->

### uncompress


running a script: _`lz4 -cd erigon.tar.lz4 | tar xf -`_


### flags


```bash
--chain=bsc --prune=hrtc --db.pagesize=16k
```
