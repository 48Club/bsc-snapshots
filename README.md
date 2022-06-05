# *bsc-snapshots*


*\> [geth-snapshots](#geth-snapshots)*

*\> [erigon-snapshots](#erigon-snapshots)*


## geth-snapshots


> Database uses [geth(v1.1.10)](https://github.com/bnb-chain/bsc/releases/tag/v1.1.10) for sync


### download


```bash
aria2c -s16 -x16 -k1M https://snapshots.bnb48.club/geth.18394756.tar.gz -o geth.tar.gz
```


### checksum


!!! db size 1327.31 gb, 1471.09 gb after decompression
```bash
> openssl sha256 geth.tar.gz
SHA256(geth.tar.gz)= 004c380a8496bdba56e0b66f730707f791c32b22efe061405298442338e091f9
```


### uncompress


running a script: _`pigz -dkc geth.tar.gz | tar xvf -`_


## erigon-snapshots


> Database uses [erigon(v2022.05.09)](https://github.com/ledgerwatch/erigon/releases/tag/v2022.05.09) for sync


### download


```zsh
aria2c -s16 -x16 -k1M https://snapshots.bnb48.club/erigon.18422790.tar.gz -o erigon.tar.gz
```


### checksum

!!! db size 716.22 gb, 1690.99 gb after decompression
```bash
> openssl sha256 erigon.tar.gz
SHA256(erigon.tar.gz)= e77f44142772a782ebe426584fd149582582b6d767e14fbb89e9da574d76edfd
```


### uncompress


running a script: _`pigz -dkc erigon.tar.gz | tar xvf -`_


### flags


```bash
--syncmode=full --prune= --prune.h.older=5000 --prune.r.older=5000 --prune.t.older=5000 --prune.c.older=5000
```