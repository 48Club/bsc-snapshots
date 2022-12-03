# *bsc-snapshots*


*\> [geth-snapshots](#geth-snapshots)*

**This geth snapshot is generated with `--tries-verify-mode=none` so it contains no MPT data. You should not build a validator upon this snapshot. [Know more >>>](https://github.com/bnb-chain/bsc/pull/926)**

*\> [erigon-snapshots](#erigon-snapshots)*

Updated every ~24~ 36 hours

Old snapshot deleted ~1~ 12 hours after new snapshot generated

## geth-snapshots


> Database uses [geth(v1.1.17)](https://github.com/bnb-chain/bsc/releases/tag/v1.1.17) for sync


### download

<!-- begin_geth -->

!!! from block [23569214](https://bscscan.com/block/23569214)

#### pipeline download and extract
> skip checksum & uncompress if you used pipeline
```bash
wget https://snapshots.bnb48.club/geth.23569214.tar.lz4 -O - | lz4 -cd | tar xf -
```

#### multithreaded download

```bash
aria2c -s14 -x14 -k100M https://snapshots.bnb48.club/geth.23569214.tar.lz4 -o geth.tar.lz4
```


### checksum

!!! db size 322.66 gb, 328.43 gb after decompression
```bash
> openssl sha256 geth.tar.lz4
SHA256(geth.tar.lz4)= c477174ed4d2640e9b6beb0d41f95f9fe0b71b47a143d4b057ab97deadbdfd8a
```

<!-- end_geth -->

### uncompress


running a script: _`lz4 -cd geth.tar.lz4 | tar xf -`_


### flags


```bash
--txlookuplimit=0 --syncmode=full --tries-verify-mode=none --pruneancient=true --diffblock=5000
```


## erigon-snapshots


> Database uses [erigon(v2.30.0)](https://github.com/ledgerwatch/erigon/releases/tag/v2.30.0) for sync


### download

<!-- begin_erigon -->

!!! from block [23568305](https://bscscan.com/block/23568305)

#### pipeline download and extract
> skip checksum & uncompress if you used pipeline
```bash
wget https://snapshots.bnb48.club/erigon.23568305.tar.lz4 -O - | lz4 -cd | tar xf -
```

#### multithreaded download

```bash
aria2c -s14 -x14 -k100M https://snapshots.bnb48.club/erigon.23568305.tar.lz4 -o erigon.tar.lz4
```


### checksum

!!! db size 923.69 gb, 1377.03 gb after decompression
```bash
> openssl sha256 erigon.tar.lz4
SHA256(erigon.tar.lz4)= b0ece0f742c5b81b2b3cf7d35661b0e9496233d8881efbdf3a497d1f708948d6
```

<!-- end_erigon -->


### uncompress


running a script: _`lz4 -cd erigon.tar.lz4 | tar xf -`_


### flags


```bash
--chain=bsc --prune=hrtc --db.pagesize=16k
```
