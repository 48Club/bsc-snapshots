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

!!! from block [26983845](https://bscscan.com/block/26983845)

#### pipeline download and extract
> skip checksum & uncompress if you used pipeline
```bash
wget https://snapshots.48.club/geth.26983845.tar.lz4 -O - | lz4 -cd | tar xf -
```

#### multithreaded download

```bash
aria2c -s14 -x14 -k100M https://snapshots.48.club/geth.26983845.tar.lz4 -o geth.tar.lz4
```


### checksum

!!! db size 362.04 gb, 368.86 gb after decompression
```bash
> openssl sha256 geth.tar.lz4
SHA256(geth.tar.lz4)= 6ca9bb924eff74e2c88b0dcb060a82073161f51c967b91249d2e42e2a47d0772
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

!!! from block [26941133](https://bscscan.com/block/26941133)

#### pipeline download and extract
> skip checksum & uncompress if you used pipeline
```bash
wget https://snapshots.48.club/erigon.26941133.tar.lz4 -O - | lz4 -cd | tar xf -
```

#### multithreaded download

```bash
aria2c -s14 -x14 -k100M https://snapshots.48.club/erigon.26941133.tar.lz4 -o erigon.tar.lz4
```


### checksum

!!! db size 983.73 gb, 1529.81 gb after decompression
```bash
> openssl sha256 erigon.tar.lz4
SHA256(erigon.tar.lz4)= e2ef2d67163c69b1598103c85d86f98c0a0d1697453fa3530928dd77a57c2be4
```

<!-- end_erigon -->


### uncompress


running a script: _`lz4 -cd erigon.tar.lz4 | tar xf -`_


### flags


```bash
--chain=bsc --prune=hrtc --db.pagesize=16k
```
