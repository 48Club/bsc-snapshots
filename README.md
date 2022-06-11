# *bsc-snapshots*


*\> [geth-snapshots](#geth-snapshots)*

*\> [erigon-snapshots](#erigon-snapshots)*


## geth-snapshots


> Database uses [geth(v1.1.11)](https://github.com/bnb-chain/bsc/releases/tag/v1.1.11) for sync


### download

<!-- begin_geth -->

!!! from block [18578214](https://bscscan.com/block/18578214)
```bash
aria2c -s8 -x8 -k1M https://snapshots.bnb48.club/geth.18578214.tar.gz -o geth.tar.gz
```


### checksum


!!! db size 560.52 gb, 594.60 gb after decompression
```bash
> openssl sha256 geth.tar.gz
SHA256(geth.tar.gz)= 9482689b88ec60ff8a451edd0d1ace2450a6426293219c4f9ae78e170e025c8a
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