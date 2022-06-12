# *bsc-snapshots*


*\> [geth-snapshots](#geth-snapshots)*

*\> [erigon-snapshots](#erigon-snapshots)*


## geth-snapshots


> Database uses [geth(v1.1.11)](https://github.com/bnb-chain/bsc/releases/tag/v1.1.11) for sync


### download

<!-- begin_geth -->

!!! from block [18630772](https://bscscan.com/block/18630772)
```bash
aria2c -s8 -x8 -k1M https://snapshots.bnb48.club/geth.18630772.tar.gz -o geth.tar.gz
```


### checksum


!!! db size 530.88 gb, 0.00 gb after decompression
```bash
> openssl sha256 geth.tar.gz
SHA256(geth.tar.gz)= 941f33cc81591797871ed74667f689f2cf8e13e917a5485d72b1381e3a0072a0
```

<!-- end_geth -->

### uncompress


running a script: _`pigz -dkc geth.tar.gz | tar xvf -`_


## erigon-snapshots


> Database uses [erigon(v2022.06.01)](https://github.com/ledgerwatch/erigon/releases/tag/v2022.06.01) for sync


### download

<!-- begin_erigon -->

!!! from block [18618356](https://bscscan.com/block/18618356)
```bash
aria2c -s8 -x8 -k1M https://snapshots.bnb48.club/erigon.18618356.tar.gz -o erigon.tar.gz
```


### checksum


!!! db size 748.52 gb, 1803.00 gb after decompression
```bash
> openssl sha256 erigon.tar.gz
SHA256(erigon.tar.gz)= 04e144f16d62cbb68b2361c18e196cebb612fe2d96c1aa98c3192fd56ef1a2f8
```

<!-- end_erigon -->

### uncompress


running a script: _`pigz -dkc erigon.tar.gz | tar xvf -`_


### flags


```bash
--snapshots=false --prune= --prune.h.older=5000 --prune.r.older=5000 --prune.t.older=5000 --prune.c.older=5000
```