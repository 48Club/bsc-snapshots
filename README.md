# *bsc-snapshots*


*\> [geth-snapshots](#geth-snapshots)*

*\> [erigon-snapshots](#erigon-snapshots)*


## geth-snapshots


> Database uses [geth(v1.1.11)](https://github.com/bnb-chain/bsc/releases/tag/v1.1.11) for sync


### download

<!-- begin_geth -->

!!! from block [19206816](https://bscscan.com/block/19206816)
```bash
aria2c -s14 -x14 -k100M https://snapshots.bnb48.club/geth.19206816.tar.lz4 -o geth.tar.lz4
```


### checksum


!!! db size 537.73 gb, 549.34 gb after decompression
```bash
> openssl sha256 geth.tar.lz4
SHA256(geth.tar.lz4)= c73cfd24e7bc6ec8a04bd9d44d9c35bf0e9a18304f558799226d4459e1be079e
```

<!-- end_geth -->

### uncompress


running a script: _`lz4 -cd geth.tar.lz4 | tar xf -`_


### flags


```bash
--txlookuplimit=0 --diffsync --syncmode=snap
```


## erigon-snapshots


> Database uses [erigon(v2022.07.01)](https://github.com/ledgerwatch/erigon/releases/tag/v2022.07.01) for sync


### download

<!-- begin_erigon -->

!!! from block [19202502](https://bscscan.com/block/19202502)
```bash
aria2c -s14 -x14 -k100M https://snapshots.bnb48.club/erigon.19202502.tar.lz4 -o erigon.tar.lz4
```


### checksum


!!! db size 732.53 gb, 1039.24 gb after decompression
```bash
> openssl sha256 erigon.tar.lz4
SHA256(erigon.tar.lz4)= 46d40d3e059b1fde1e6ee0b441d634db04b7418db2ae23af5b7533a2401c0143
```

<!-- end_erigon -->

### uncompress


running a script: _`lz4 -cd erigon.tar.lz4 | tar xf -`_


### flags


```bash
--chain=bsc --prune= --prune.h.older=5000 --prune.r.older=5000 --prune.t.older=5000 --prune.c.older=5000 --db.pagesize=16k
```
