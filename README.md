# *bsc-snapshots*


*\> [geth-snapshots](#geth-snapshots)*

*\> [erigon-snapshots](#erigon-snapshots)*


## geth-snapshots


> Database uses [geth(v1.1.11)](https://github.com/bnb-chain/bsc/releases/tag/v1.1.11) for sync


### download

<!-- begin_geth -->

!!! from block [18558285](https://bscscan.com/block/18558285)
```bash
aria2c -s8 -x8 -k1M https://snapshots.bnb48.club/geth.18558285.tar.gz -o geth.tar.gz
```


### checksum


!!! db size 526.69 gb, 559.84 gb after decompression
```bash
> openssl sha256 geth.tar.gz
SHA256(geth.tar.gz)= c2d063cca29109c468cba441b7493284bb05bca23954bd92d9a9a65c2160bc41
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