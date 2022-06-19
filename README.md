# *bsc-snapshots*


*\> [geth-snapshots](#geth-snapshots)*

*\> [erigon-snapshots](#erigon-snapshots)*


## geth-snapshots


> Database uses [geth(v1.1.11)](https://github.com/bnb-chain/bsc/releases/tag/v1.1.11) for sync


### download

<!-- begin_geth -->

!!! from block [18814560](https://bscscan.com/block/18814560)
```bash
aria2c -s14 -x14 -k100M https://snapshots.bnb48.club/geth.18814560.tar.gz -o geth.tar.gz
```


### checksum


!!! db size 511.55 gb, 544.27 gb after decompression
```bash
> openssl sha256 geth.tar.gz
SHA256(geth.tar.gz)= cd1cf57fc07bb234a257df7a8d68c6546ae2385f8cb0c218da67a6f9b17bb439
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

!!! from block [18817696](https://bscscan.com/block/18817696)
```bash
aria2c -s14 -x14 -k100M https://snapshots.bnb48.club/erigon.18817696.tar.gz -o erigon.tar.gz
```


### checksum


!!! db size 746.30 gb, 1803.00 gb after decompression
```bash
> openssl sha256 erigon.tar.gz
SHA256(erigon.tar.gz)= 3be020ad589a316266776c8583ee88b0093ade4f44ee30b45de3a54c3f702f42
```

<!-- end_erigon -->

### uncompress


running a script: _`pigz -dkc erigon.tar.gz | tar xvf -`_


### flags


```bash
--snapshots=false --prune= --prune.h.older=5000 --prune.r.older=5000 --prune.t.older=5000 --prune.c.older=5000
```
