# *bsc-snapshots*


*\> [geth-snapshots](#geth-snapshots)*

**This geth snapshot is generated with `--tries-verify-mode=none` so it contains no MPT data. You should not build a validator upon this snapshot. [Know more >>>](https://github.com/bnb-chain/bsc/pull/926)**

*\> [erigon-snapshots](#erigon-snapshots)*

Updated every ~24~ 36 hours
Old snapshot deleted ~1~ 12 hours after new snapshot generated

## geth-snapshots


> Database uses [geth(v1.1.16)](https://github.com/bnb-chain/bsc/releases/tag/v1.1.16) for sync


### download

<!-- begin_geth -->

!!! from block [22451729](https://bscscan.com/block/22451729)

#### pipeline download and extract
> skip checksum & uncompress if you used pipeline
```bash
wget https://snapshots.bnb48.club/geth.22451729.tar.lz4 -O - | lz4 -cd | tar xf -
```

#### multithreaded download

```bash
aria2c -s14 -x14 -k100M https://snapshots.bnb48.club/geth.22451729.tar.lz4 -o geth.tar.lz4
```


### checksum

!!! db size 310.79 gb, 316.55 gb after decompression
```bash
> openssl sha256 geth.tar.lz4
SHA256(geth.tar.lz4)= 974ad07be4546ffed4f3889e0d6170481dc6cab0bd49bb2a23522d36bdc2e26e
```

<!-- end_geth -->

### uncompress


running a script: _`lz4 -cd geth.tar.lz4 | tar xf -`_


### flags


```bash
--txlookuplimit=0 --diffsync=true --syncmode=full --tries-verify-mode=none --pruneancient=true --diffblock=5000
```


## erigon-snapshots


> Database uses [erigon(v2.28.1)](https://github.com/ledgerwatch/erigon/releases/tag/v2.28.1) for sync


### download

<!-- begin_erigon -->

!!! from block [22448135](https://bscscan.com/block/22448135)

#### pipeline download and extract
> skip checksum & uncompress if you used pipeline
```bash
wget https://snapshots.bnb48.club/erigon.22448135.tar.lz4 -O - | lz4 -cd | tar xf -
```

#### multithreaded download

```bash
aria2c -s14 -x14 -k100M https://snapshots.bnb48.club/erigon.22448135.tar.lz4 -o erigon.tar.lz4
```


### checksum

!!! db size 848.34 gb, 1252.25 gb after decompression
```bash
> openssl sha256 erigon.tar.lz4
SHA256(erigon.tar.lz4)= bfbda196f679bb0228e0cdcfcab3f8182f8b71240f5071bcfaf17f285cb0ab95
```

<!-- end_erigon -->

### uncompress


running a script: _`lz4 -cd erigon.tar.lz4 | tar xf -`_


### flags


```bash
--chain=bsc --prune=hrtc --db.pagesize=16k
```
