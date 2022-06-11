# *bsc-snapshots*


*\> [geth-snapshots](#geth-snapshots)*

*\> [erigon-snapshots](#erigon-snapshots)*


## geth-snapshots


> Database uses [geth(v1.1.11)](https://github.com/bnb-chain/bsc/releases/tag/v1.1.11) for sync


### download

<!-- begin_geth -->

!!! from block [18583092](https://bscscan.com/block/18583092)
```bash
aria2c -s8 -x8 -k1M https://snapshots.bnb48.club/geth.18583092.tar.gz -o geth.tar.gz
```


### checksum


!!! db size 563.55 gb, 597.72 gb after decompression
```bash
> openssl sha256 geth.tar.gz
SHA256(geth.tar.gz)= 8179bdddc14c3f2d8dd211fb8fee309804a0118c5651c097f37192f62f8e1906
```

<!-- end_geth -->

### uncompress


running a script: _`pigz -dkc geth.tar.gz | tar xvf -`_


## erigon-snapshots


> Database uses [erigon(v2022.06.01)](https://github.com/ledgerwatch/erigon/releases/tag/v2022.06.01) for sync


### download

<!-- begin_erigon -->

!!! from block [18573462](https://bscscan.com/block/18573462)
```bash
aria2c -s8 -x8 -k1M https://snapshots.bnb48.club/erigon.18573462.tar.gz -o erigon.tar.gz
```


### checksum


!!! db size 747.79 gb, 1803.00 gb after decompression
```bash
> openssl sha256 erigon.tar.gz
SHA256(erigon.tar.gz)= 4ca90f805c4f548203eeb4c211f08bcb55c517aff9eea2aa6964cb5f5ddedaa4
```

<!-- end_erigon -->

### uncompress


running a script: _`pigz -dkc erigon.tar.gz | tar xvf -`_


### flags


```bash
--snapshots=false --prune= --prune.h.older=5000 --prune.r.older=5000 --prune.t.older=5000 --prune.c.older=5000
```