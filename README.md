# *bsc-snapshots*


*\> [geth-snapshots](#geth-snapshots)*

*\> [erigon-snapshots](#erigon-snapshots)*


## geth-snapshots


> Database uses [geth(v1.1.11)](https://github.com/bnb-chain/bsc/releases/tag/v1.1.11) for sync


### download

<!-- begin_geth -->

!!! from block [18649934](https://bscscan.com/block/18649934)
```bash
aria2c -s14 -x14 -k100M https://snapshots.bnb48.club/geth.18649934.tar.gz -o geth.tar.gz
```


### checksum


!!! db size 558.58 gb, 592.60 gb after decompression
```bash
> openssl sha256 geth.tar.gz
SHA256(geth.tar.gz)= 203a5141d9fffadcd1da236299cc22cf228dfc15d3f2bc3d1625da816093ea56
```

<!-- end_geth -->

### uncompress


running a script: _`pigz -dkc geth.tar.gz | tar xvf -`_


## erigon-snapshots


> Database uses [erigon(v2022.06.01)](https://github.com/ledgerwatch/erigon/releases/tag/v2022.06.01) for sync


### download

<!-- begin_erigon -->

!!! from block [18654996](https://bscscan.com/block/18654996)
```bash
aria2c -s14 -x14 -k100M https://snapshots.bnb48.club/erigon.18654996.tar.gz -o erigon.tar.gz
```


### checksum


!!! db size 747.70 gb, 1803.00 gb after decompression
```bash
> openssl sha256 erigon.tar.gz
SHA256(erigon.tar.gz)= 984e91adcd2c6c89702862ca9496aac1b54b6d000ba7d8c7440cae2ae580fce6
```

<!-- end_erigon -->

### uncompress


running a script: _`pigz -dkc erigon.tar.gz | tar xvf -`_


### flags


```bash
--snapshots=false --prune= --prune.h.older=5000 --prune.r.older=5000 --prune.t.older=5000 --prune.c.older=5000
```