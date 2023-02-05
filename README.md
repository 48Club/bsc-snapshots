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

!!! from block [25404080](https://bscscan.com/block/25404080)

#### pipeline download and extract
> skip checksum & uncompress if you used pipeline
```bash
wget https://snapshots.48.club/geth.25404080.tar.lz4 -O - | lz4 -cd | tar xf -
```

#### multithreaded download

```bash
aria2c -s14 -x14 -k100M https://snapshots.48.club/geth.25404080.tar.lz4 -o geth.tar.lz4
```


### checksum

!!! db size 342.54 gb, 349.04 gb after decompression
```bash
> openssl sha256 geth.tar.lz4
SHA256(geth.tar.lz4)= 85397fb94a0b6f842a432af7be91647267b2022c586cea0922815fb8776d363e
```

<!-- end_geth -->

### uncompress


running a script: _`lz4 -cd geth.tar.lz4 | tar xf -`_


### flags


```bash
--txlookuplimit=0 --syncmode=full --tries-verify-mode=none --pruneancient=true --diffblock=5000
```


## erigon-snapshots


> Database uses [erigon(v2.37.0)](https://github.com/ledgerwatch/erigon/releases/tag/v2.37.0) for sync


### download

<!-- begin_erigon -->

!!! from block [25400230](https://bscscan.com/block/25400230)

#### pipeline download and extract
> skip checksum & uncompress if you used pipeline
```bash
wget https://snapshots.48.club/erigon.25400230.tar.lz4 -O - | lz4 -cd | tar xf -
```

#### multithreaded download

```bash
aria2c -s14 -x14 -k100M https://snapshots.48.club/erigon.25400230.tar.lz4 -o erigon.tar.lz4
```


### checksum

!!! db size 977.08 gb, 1466.74 gb after decompression
```bash
> openssl sha256 erigon.tar.lz4
SHA256(erigon.tar.lz4)= c68f934ecbd2be1864f15c310cf6de13a410d9e2d2e56c5a0082856385cb5933
```

<!-- end_erigon -->


### uncompress


running a script: _`lz4 -cd erigon.tar.lz4 | tar xf -`_


### flags


```bash
--chain=bsc --prune=hrtc --db.pagesize=16k
```
