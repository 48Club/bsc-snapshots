# *bsc-snapshots*


*\> [geth-snapshots](#geth-snapshots)*

*\> [erigon-snapshots](#erigon-snapshots)*

Updated every ~24~ 36 hours

Old snapshot deleted ~1~ 12 hours after new snapshot generated

## geth-snapshots


> Database uses [geth(v1.1.12)](https://github.com/bnb-chain/bsc/releases/tag/v1.1.12) for sync


### download

<!-- begin_geth -->

!!! from block [19914938](https://bscscan.com/block/19914938)
```bash
aria2c -s14 -x14 -k100M https://snapshots.bnb48.club/geth.19914938.tar.lz4 -o geth.tar.lz4
```


### checksum


!!! db size 553.76 gb, 565.56 gb after decompression
```bash
> openssl sha256 geth.tar.lz4
SHA256(geth.tar.lz4)= ea55fcdefea15cdee621733a7f3578f9f58e4d30c489b1b20108de2c69b67f2c
```

<!-- end_geth -->

### uncompress


running a script: _`lz4 -cd geth.tar.lz4 | tar xf -`_


### flags


```bash
--txlookuplimit=0 --diffsync --syncmode=snap
```


## erigon-snapshots


> Database uses [erigon(v2022.07.04)](https://github.com/ledgerwatch/erigon/releases/tag/v2022.07.04) for sync


### download

<!-- begin_erigon -->

!!! from block [19951271](https://bscscan.com/block/19951271)
```bash
aria2c -s14 -x14 -k100M https://snapshots.bnb48.club/erigon.19951271.tar.lz4 -o erigon.tar.lz4
```


### checksum


!!! db size 754.68 gb, 1075.33 gb after decompression
```bash
> openssl sha256 erigon.tar.lz4
SHA256(erigon.tar.lz4)= 7bc5fe23dfea97cc51b0f24de0839d453087f20f6fdab2008194d841c76013bc
```

<!-- end_erigon -->

### uncompress


running a script: _`lz4 -cd erigon.tar.lz4 | tar xf -`_


### flags


```bash
--chain=bsc --prune= --prune.h.older=5000 --prune.r.older=5000 --prune.t.older=5000 --prune.c.older=5000 --db.pagesize=16k
```
