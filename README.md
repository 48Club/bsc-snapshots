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

!!! from block [23013940](https://bscscan.com/block/23013940)

#### pipeline download and extract
> skip checksum & uncompress if you used pipeline
```bash
wget https://snapshots.bnb48.club/geth.23013940.tar.lz4 -O - | lz4 -cd | tar xf -
```

#### multithreaded download

```bash
aria2c -s14 -x14 -k100M https://snapshots.bnb48.club/geth.23013940.tar.lz4 -o geth.tar.lz4
```


### checksum

!!! db size 319.63 gb, 325.64 gb after decompression
```bash
> openssl sha256 geth.tar.lz4
SHA256(geth.tar.lz4)= 12913458e84f9563271f111a1e5279ceedbfd2bef9edf9a1b695cf173531408e
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

!!! from block [22987731](https://bscscan.com/block/22987731)

#### pipeline download and extract
> skip checksum & uncompress if you used pipeline
```bash
wget https://snapshots.bnb48.club/erigon.22987731.tar.lz4 -O - | lz4 -cd | tar xf -
```

#### multithreaded download

```bash
aria2c -s14 -x14 -k100M https://snapshots.bnb48.club/erigon.22987731.tar.lz4 -o erigon.tar.lz4
```


### checksum

!!! db size 891.99 gb, 1319.76 gb after decompression
```bash
> openssl sha256 erigon.tar.lz4
SHA256(erigon.tar.lz4)= edce95ddcae8b7829f09cf51b8cf47290de261ef5ee3273226883a3e68e38844
```

<!-- end_erigon -->

### uncompress


running a script: _`lz4 -cd erigon.tar.lz4 | tar xf -`_


### flags


```bash
--chain=bsc --prune=hrtc --db.pagesize=16k
```
