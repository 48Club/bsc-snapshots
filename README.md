# *bsc-snapshots*


*\> [geth-snapshots](#geth-snapshots)*

*\> [erigon-snapshots](#erigon-snapshots)*

Updated every ~24~ 36 hours

Old snapshot deleted ~1~ 12 hours after new snapshot generated

## geth-snapshots


> Database uses [geth(v1.1.11)](https://github.com/bnb-chain/bsc/releases/tag/v1.1.11) for sync


### download

<!-- begin_geth -->

!!! from block [19767315](https://bscscan.com/block/19767315)
```bash
aria2c -s14 -x14 -k100M https://snapshots.bnb48.club/geth.19767315.tar.lz4 -o geth.tar.lz4
```


### checksum


!!! db size 550.42 gb, 562.18 gb after decompression
```bash
> openssl sha256 geth.tar.lz4
SHA256(geth.tar.lz4)= b2a9c11a9bb5398317f04da37c4007cb9662e17ed403d755fa591d5284ccb53f
```

<!-- end_geth -->

### uncompress


running a script: _`lz4 -cd geth.tar.lz4 | tar xf -`_


### flags


```bash
--txlookuplimit=0 --diffsync --syncmode=snap
```


## erigon-snapshots


> Database uses [erigon(v2022.07.02)](https://github.com/ledgerwatch/erigon/releases/tag/v2022.07.02) for sync


### download

<!-- begin_erigon -->

!!! from block [19763424](https://bscscan.com/block/19763424)
```bash
aria2c -s14 -x14 -k100M https://snapshots.bnb48.club/erigon.19763424.tar.lz4 -o erigon.tar.lz4
```


### checksum


!!! db size 755.09 gb, 1074.78 gb after decompression
```bash
> openssl sha256 erigon.tar.lz4
SHA256(erigon.tar.lz4)= 6d2b474d7a2064b993baa46de4cf01f742cb914fda2e2885edfad772f7c9817b
```

<!-- end_erigon -->

### uncompress


running a script: _`lz4 -cd erigon.tar.lz4 | tar xf -`_


### flags


```bash
--chain=bsc --prune= --prune.h.older=5000 --prune.r.older=5000 --prune.t.older=5000 --prune.c.older=5000 --db.pagesize=16k
```
