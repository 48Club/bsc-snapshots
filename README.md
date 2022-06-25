# *bsc-snapshots*


*\> [geth-snapshots](#geth-snapshots)*

*\> [erigon-snapshots](#erigon-snapshots)*


## geth-snapshots


> Database uses [geth(v1.1.11)](https://github.com/bnb-chain/bsc/releases/tag/v1.1.11) for sync


### download

<!-- begin_geth -->

!!! from block [18971122](https://bscscan.com/block/18971122)
```bash
aria2c -s14 -x14 -k100M https://snapshots.bnb48.club/geth.18971122.tar.lz4 -o geth.tar.lz4
```


### checksum


!!! db size 569.55 gb, 581.43 gb after decompression
```bash
> openssl sha256 geth.tar.lz4
SHA256(geth.tar.lz4)= 234088307af2a605a74ec381137c4da0bcb053fe483a86a1c620b81f841a27e9
```

<!-- end_geth -->

### uncompress


running a script: _`lz4 -cd geth.tar.lz4 | tar xf -`_


### flags


```bash
--txlookuplimit=0 --diffsync --syncmode=snap
```


## erigon-snapshots


> Database uses [erigon(v2022.06.06)](https://github.com/ledgerwatch/erigon/releases/tag/v2022.06.06) for sync


### download

<!-- begin_erigon -->

!!! from block [18965409](https://bscscan.com/block/18965409)
```bash
aria2c -s14 -x14 -k100M https://snapshots.bnb48.club/erigon.18965409.tar.lz4 -o erigon.tar.lz4
```


### checksum


!!! db size 736.27 gb, 1033.24 gb after decompression
```bash
> openssl sha256 erigon.tar.lz4
SHA256(erigon.tar.lz4)= 169f0dbd96156d36f233b4a3947604d6317f785d29608bada1ea6a6b83695a45
```

<!-- end_erigon -->

### uncompress


running a script: _`lz4 -cd erigon.tar.lz4 | tar xf -`_


### flags


```bash
--chain=bsc --prune= --prune.h.older=5000 --prune.r.older=5000 --prune.t.older=5000 --prune.c.older=5000 --db.pagesize=16k
```
