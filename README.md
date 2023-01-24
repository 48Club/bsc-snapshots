# *bsc-snapshots*


*\> [geth-snapshots](#geth-snapshots)*

**This geth snapshot is generated with `--tries-verify-mode=none` so it contains no MPT data. You should not build a validator upon this snapshot. [Know more >>>](https://github.com/bnb-chain/bsc/pull/926)**

*\> [erigon-snapshots](#erigon-snapshots)*

Updated every ~24~ 36 hours

Old snapshot deleted ~1~ 12 hours after new snapshot generated

## geth-snapshots


> Database uses [geth(v1.1.18)](https://github.com/bnb-chain/bsc/releases/tag/v1.1.18) for sync


### download

<!-- begin_geth -->

!!! from block [25062177](https://bscscan.com/block/25062177)

#### pipeline download and extract
> skip checksum & uncompress if you used pipeline
```bash
wget https://snapshots.48.club/geth.25062177.tar.lz4 -O - | lz4 -cd | tar xf -
```

#### multithreaded download

```bash
aria2c -s14 -x14 -k100M https://snapshots.48.club/geth.25062177.tar.lz4 -o geth.tar.lz4
```


### checksum

!!! db size 336.57 gb, 342.87 gb after decompression
```bash
> openssl sha256 geth.tar.lz4
SHA256(geth.tar.lz4)= 15b7e8785d5d8bbc39019f77bb67237122520e8abcc47c33dea7bbe31ba5238c
```

<!-- end_geth -->

### uncompress


running a script: _`lz4 -cd geth.tar.lz4 | tar xf -`_


### flags


```bash
--txlookuplimit=0 --syncmode=full --tries-verify-mode=none --pruneancient=true --diffblock=5000
```


## erigon-snapshots


> Database uses [erigon(v2.31.0-rc.2)](https://github.com/ledgerwatch/erigon/releases/tag/v2.31.0-rc.2) for sync


### download

<!-- begin_erigon -->

!!! from block [25060432](https://bscscan.com/block/25060432)

#### pipeline download and extract
> skip checksum & uncompress if you used pipeline
```bash
wget https://snapshots.48.club/erigon.25060432.tar.lz4 -O - | lz4 -cd | tar xf -
```

#### multithreaded download

```bash
aria2c -s14 -x14 -k100M https://snapshots.48.club/erigon.25060432.tar.lz4 -o erigon.tar.lz4
```


### checksum

!!! db size 975.47 gb, 1460.60 gb after decompression
```bash
> openssl sha256 erigon.tar.lz4
SHA256(erigon.tar.lz4)= 71178168edcee2a8d08efac585aa6b1ee0bff827ad2a9027421d664877356aa8
```

<!-- end_erigon -->


### uncompress


running a script: _`lz4 -cd erigon.tar.lz4 | tar xf -`_


### flags


```bash
--chain=bsc --prune=hrtc --db.pagesize=16k
```
