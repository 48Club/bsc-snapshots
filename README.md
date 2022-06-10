# *bsc-snapshots*


*\> [geth-snapshots](#geth-snapshots)*

*\> [erigon-snapshots](#erigon-snapshots)*


## geth-snapshots


> Database uses [geth(v1.1.11)](https://github.com/bnb-chain/bsc/releases/tag/v1.1.11) for sync


### download

<!-- begin_geth -->

```bash
aria2c -s8 -x8 -k1M https://snapshots.bnb48.club/geth.18544401.tar.gz -o geth.tar.gz
```


### checksum


!!! db size 512.44 gb, 545.19 gb after decompression
```bash
> openssl sha256 geth.tar.gz
SHA256(geth.tar.gz)= d153959220fdeb7d4d7dddd2874c4d06faf2cbc37430add636fb23dc2b2ffde8
```

<!-- end_geth -->

### uncompress


running a script: _`pigz -dkc geth.tar.gz | tar xvf -`_


## erigon-snapshots


> Database uses [erigon(v2022.06.01)](https://github.com/ledgerwatch/erigon/releases/tag/v2022.06.01) for sync


### download

<!-- begin_erigon -->


```zsh
aria2c -s8 -x8 -k1M https://snapshots.bnb48.club/erigon.18551038.tar.gz -o erigon.tar.gz
```


### checksum

!!! db size 748.23 gb, 1803.00 gb after decompression
```bash
> openssl sha256 erigon.tar.gz
SHA256(erigon.tar.gz)= c1c97ac80c1b644b3c85c6fb7e1cbc868cd106c269d080b72fd5c8488016dde6
```

<!-- end_erigon -->

### uncompress


running a script: _`pigz -dkc erigon.tar.gz | tar xvf -`_


### flags


```bash
--snapshots=false --prune= --prune.h.older=5000 --prune.r.older=5000 --prune.t.older=5000 --prune.c.older=5000
```