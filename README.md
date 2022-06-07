# *bsc-snapshots*


*\> [geth-snapshots](#geth-snapshots)*

*\> [erigon-snapshots](#erigon-snapshots)*


## geth-snapshots


> Database uses [geth(v1.1.10)](https://github.com/bnb-chain/bsc/releases/tag/v1.1.10) for sync


### download

<!-- begin_geth -->

```bash
aria2c -s16 -x16 -k1M https://snapshots.bnb48.club/geth.18394756.tar.gz -o geth.tar.gz
```


### checksum


!!! db size 1327.31 gb, 1471.09 gb after decompression
```bash
> openssl sha256 geth.tar.gz
SHA256(geth.tar.gz)= 004c380a8496bdba56e0b66f730707f791c32b22efe061405298442338e091f9
```

<!-- end_geth -->

### uncompress


running a script: _`pigz -dkc geth.tar.gz | tar xvf -`_


## erigon-snapshots


> Database uses [erigon(v2022.06.01)](https://github.com/ledgerwatch/erigon/releases/tag/v2022.06.01) for sync


### download

<!-- begin_erigon -->


```zsh
aria2c -s16 -x16 -k1M https://snapshots.bnb48.club/erigon.18464771.tar.gz -o erigon.tar.gz
```


### checksum

!!! db size 0.00 gb, 0.00 gb after decompression
```bash
> openssl sha256 erigon.tar.gz
SHA256(erigon.tar.gz)= dabc75938c7e394ea3b400a7963d00465fd4e3d4c52a79012929f0ff554b9892
```

<!-- end_erigon -->

### uncompress


running a script: _`pigz -dkc erigon.tar.gz | tar xvf -`_


### flags


```bash
--snapshots=false --prune= --prune.h.older=5000 --prune.r.older=5000 --prune.t.older=5000 --prune.c.older=5000
```