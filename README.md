# *bsc-snapshots*


*\> [geth-snapshots](#geth-snapshots)*

*\> [erigon-snapshots](#erigon-snapshots)*


## geth-snapshots


> Database uses [geth(v1.1.11)](https://github.com/bnb-chain/bsc/releases/tag/v1.1.11) for sync


### download

<!-- begin_geth -->

!!! from block [18644855](https://bscscan.com/block/18644855)
```bash
aria2c -s14 -x14 -k100M https://snapshots.bnb48.club/geth.18644855.tar.gz -o geth.tar.gz
```


### checksum


!!! db size 546.82 gb, 580.52 gb after decompression
```bash
> openssl sha256 geth.tar.gz
SHA256(geth.tar.gz)= e39029516b0a7efd0b28827cce36bbadd3ae877c72674fb471157c3719956e91
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