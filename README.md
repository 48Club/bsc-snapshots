# *bsc-snapshots*


*\> [geth-snapshots](#geth-snapshots)*

*\> [erigon-snapshots](#erigon-snapshots)*


## geth-snapshots


> Database uses [geth(v1.1.11)](https://github.com/bnb-chain/bsc/releases/tag/v1.1.11) for sync


### download

<!-- begin_geth -->

!!! from block [18806597](https://bscscan.com/block/18806597)
```bash
aria2c -s14 -x14 -k100M https://snapshots.bnb48.club/geth.18806597.tar.gz -o geth.tar.gz
```


### checksum


!!! db size 517.00 gb, 549.87 gb after decompression
```bash
> openssl sha256 geth.tar.gz
SHA256(geth.tar.gz)= e9714f59642b46b0895c10a025edfa4c4ffc184fc32e725caaa9673a07ef9b5e
```

<!-- end_geth -->

### uncompress


running a script: _`pigz -dkc geth.tar.gz | tar xvf -`_


### flags


```bash
--txlookuplimit=0 --diffsync --syncmode=snap
```


## erigon-snapshots


> Database uses [erigon(v2022.06.01)](https://github.com/ledgerwatch/erigon/releases/tag/v2022.06.01) for sync


### download

<!-- begin_erigon -->

!!! from block [18809786](https://bscscan.com/block/18809786)
```bash
aria2c -s14 -x14 -k100M https://snapshots.bnb48.club/erigon.18809786.tar.gz -o erigon.tar.gz
```


### checksum


!!! db size 746.64 gb, 1803.00 gb after decompression
```bash
> openssl sha256 erigon.tar.gz
SHA256(erigon.tar.gz)= 19013b3efc335e0f5feffbecac50a781fa59207b394e8e4474dedf2e0439deef
```

<!-- end_erigon -->

### uncompress


running a script: _`pigz -dkc erigon.tar.gz | tar xvf -`_


### flags


```bash
--snapshots=false --prune= --prune.h.older=5000 --prune.r.older=5000 --prune.t.older=5000 --prune.c.older=5000
```
