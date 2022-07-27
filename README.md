# *bsc-snapshots*


*\> [geth-snapshots](#geth-snapshots)*

*\> [erigon-snapshots](#erigon-snapshots)*

Updated every ~24~ 36 hours

Old snapshot deleted ~1~ 12 hours after new snapshot generated

## geth-snapshots


> Database uses [geth(v1.1.11)](https://github.com/bnb-chain/bsc/releases/tag/v1.1.11) for sync


### download

<!-- begin_geth -->

!!! from block [19855651](https://bscscan.com/block/19855651)
```bash
aria2c -s14 -x14 -k100M https://snapshots.bnb48.club/geth.19855651.tar.lz4 -o geth.tar.lz4
```


### checksum


!!! db size 554.36 gb, 566.17 gb after decompression
```bash
> openssl sha256 geth.tar.lz4
SHA256(geth.tar.lz4)= 06278caf4ccadf681a6336faf5a7ec3f8b253c2961fc24c422d8c03726460983
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

!!! from block [19909593](https://bscscan.com/block/19909593)
```bash
aria2c -s14 -x14 -k100M https://snapshots.bnb48.club/erigon.19909593.tar.lz4 -o erigon.tar.lz4
```


### checksum


!!! db size 753.14 gb, 1075.33 gb after decompression
```bash
> openssl sha256 erigon.tar.lz4
SHA256(erigon.tar.lz4)= cd667d2087a97a349efc62b0e6d0fc42093bde3c3a6b6ac0c1e0530e58745f33
```

<!-- end_erigon -->

### uncompress


running a script: _`lz4 -cd erigon.tar.lz4 | tar xf -`_


### flags


```bash
--chain=bsc --prune= --prune.h.older=5000 --prune.r.older=5000 --prune.t.older=5000 --prune.c.older=5000 --db.pagesize=16k
```
